local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local npcMinDistance = 3

local function getDistance(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx^2 + dy^2)
end

local function creatureGreetCallback(cid, message)
    -- if message == nil then
    --     return true
    -- end
    local npc = Npc()
    local player = Player(cid)
    local pName = Player(cid):getName()
    local npcPosition = npc:getPosition()
    local PlayerPosition = player:getPosition()
    local distance = getDistance(PlayerPosition.x, PlayerPosition.y, npcPosition.x, npcPosition.y)

    if distance < npcMinDistance then
      dialog = "Ol�, jovem treinador! � um prazer conhec�-lo tamb�m. Estou em busca de algu�m corajoso o suficiente para me ajudar em uma miss�o importante. Voc� parece ter um grande potencial. O que me diz, aceita me ajudar?"
      buttons = {
        {type = "Button", text = "Claro, estou disposto a ajudar. Que tipo de miss�o � essa?"},
      }
      doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
    end

    return true
end

local function creatureSayCallback(cid, type, msg)
    local npc = Npc()
    local player = Player(cid)
    local pName = Player(cid):getName()
    local npcPosition = npc:getPosition()
    local PlayerPosition = player:getPosition()
    local distance = getDistance(PlayerPosition.x, PlayerPosition.y, npcPosition.x, npcPosition.y)

    if distance < npcMinDistance then
      if msgcontains(msg, "Claro, estou disposto a ajudar. Que tipo de miss�o � essa?") then
        dialog = "Excelente! Preciso derrotar 10 Bulbasaurs para proteger a regi�o dos Pok�mon selvagens que amea�am a popula��o. Seria uma grande ajuda se voc� pudesse me ajudar nessa tarefa."
        buttons = {
          {type = "Defeat", text = "Voc� deve derrotar os seguintes Pok�mons:", 
            creatures = {
              {name = "Bulbasaur", count = 10, id = nil},
              -- {name = "Rattata", count = 15, id = nil},
              -- {name = "Caterpie", count = 25, id = nil},
            }
          },
          {type = "Button", text = "Certo, entendi. Onde posso encontrar esses Pok�mon?"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)

      elseif msgcontains(msg, "Certo, entendi. Onde posso encontrar esses Pok�mon?") then
        dialog = "Voc� pode encontrar esses Pok�mon em �reas espec�ficas do mapa. Eu posso te dar algumas dicas de onde encontr�-los, se quiser."
        buttons = {
          {type = "Button", text = "Sim, por favor!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
      
      elseif msgcontains(msg, "Sim, por favor!") then
        dialog = "Os Bulbasaurs costumam aparecer com frequ�ncia em �reas com muitas plantas, como florestas e jardins."
        buttons = {
          {type = "Button", text = "Entendi, vou come�ar a busca agora mesmo."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
      
      elseif msgcontains(msg, "Entendi, vou come�ar a busca agora mesmo.") then
        dialog = "Muito obrigado pela sua ajuda, jovem treinador! Lembre-se, sua coragem e habilidade s�o muito importantes para o sucesso dessa miss�o. Quando voltar, n�o se esque�a de me mostrar os Pok�mon que voc� derrotou. Boa sorte!"
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
      
      elseif msgcontains(msg, "Return") then
        dialog = "Se quer alcan�ar a vit�ria, deve primeiro acreditar em si mesmo e confiar em sua equipe. Juntos, voc�s s�o invenc�veis!"
        doSendCallForNpc(npc, player, "conversation", "#12819c", "siraron", dialog, {{"Quest"},{"Next"}})

      end
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
