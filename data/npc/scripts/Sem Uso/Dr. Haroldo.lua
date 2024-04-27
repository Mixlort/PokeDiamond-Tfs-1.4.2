local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(cid) npcHandler:onPlayerCloseChannel(cid) end

npcHandler:addModule(FocusModule:new())

local function creatureGreetCallback(cid, message)
    local npc = Npc()
    local player = Player(cid)
    local pName = Player(cid):getName()
    if player:getStorageValue(storages.firstQuest.drHaroldo) < 0 then
        dialog = "Ah, finalmente voc� chegou at� aqui! Sou o Dr. Haroldo, um cientista apaixonado pelo estudo dos Pok�mon e suas habilidades. Vejo que voc� enfrentou alguns pokemons para chegar at� aqui, mas antes de prosseguir, h� uma �ltima tarefa que voc� deve completar."
        buttons = {
            {type = "Button", text = "O que mais preciso fazer?"},
            {type = "Button", text = "Estou pronto para enfrentar esse desafio!"},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) == 0 then
        if player:hasKilledBossPokemon() then 
            dialog = "Vejo que voc� retornou, treinador. Sua determina��o � admir�vel, e sua coragem � evidente. Reconhe�o sua bravura ao enfrentar os desafios desta caverna. Agora, h� algo importante que voc� precisa fazer. Encontre a Professora Selene e conte a ela sobre sua jornada e as descobertas que fez na caverna. Ela certamente ficar� interessada em ouvir o que voc� tem a dizer."
            buttons = {
                {type = "Button", text = "Obrigado, Dr. Haroldo. Farei isso agora mesmo!"},
            }
            doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
        else
            dialog = "Derrote todos os pok�mons, e depois venha falar comigo!"
            doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
    else
        dialog = "Ol� novamente, " .. pName .. ". Como anda sua jornada? Se precisar de alguma coisa, estou � disposi��o para ajudar."
        doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then 
        return false
    end
    local npc = Npc()
    local player = Player(cid)

    if msg == 'O que mais preciso fazer?' then
        dialog = "Antes de prosseguir, voc� deve provar sua coragem derrotando todos os Pok�mon que habitam esta caverna, incluindo o pokemon diferente no fim dela. E depois volte e fale comigo..."
        buttons = {
            {type = "Button", text = "Ok, irei derrota-los e depois volto!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Estou pronto para enfrentar esse desafio!' then
        dialog = "Bom ouvir isso! Mostre sua determina��o e coragem derrotando os Pok�mon que est�o � frente. Estarei aqui esperando para reconhecer sua bravura."
        buttons = {
            {type = "Button", text = "Ok, irei derrota-los e depois volto!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Ok, irei derrota-los e depois volto!' then
        dialog = "Boa sorte, treinador. Que sua jornada seja repleta de descobertas e aventuras! E n�o esque�a de voltar aqui depois!"
        player:setStorageValue(storages.firstQuest.drHaroldo, 0)
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)    
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Obrigado, Dr. Haroldo. Farei isso agora mesmo!' then
        dialog = "Boa sorte, treinador. Que sua jornada seja repleta de descobertas e aventuras!"
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        player:setStorageValue(storages.firstQuest.drHaroldo, 1)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)