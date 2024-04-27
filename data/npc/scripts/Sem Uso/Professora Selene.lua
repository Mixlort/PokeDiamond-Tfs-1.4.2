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
    if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
        dialog = "Voc� j� recebeu uma pedra de evolu��o, jovem treinador. N�o posso te dar outra."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    end
    if player:getStorageValue(storages.firstQuest.drHaroldo) < 0 and player:getStorageValue(storages.firstQuest.professoraSelene) < 0 then
        dialog = "Ol�, jovem treinador! Sou a Professora Selene, uma pesquisadora dedicada aos segredos das criaturas pok�mon. Vejo que voc� est� prestes a adentrar a Caverna das Sombras, um local conhecido por abrigar Pok�mons raros e misteriosos. Estou aqui para fornecer informa��es valiosas sobre os desafios que voc� encontrar� l� dentro. Voc� est� preparado para esta jornada?"
        buttons = {
            {type = "Button", text = "Sim, estou pronto para enfrentar os desafios!"},
            {type = "Button", text = "Estou nervoso, mas acho que posso lidar com isso."},
            {type = "Button", text = "Eu n�o tenho certeza se estou preparado..."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) <= 0 then
        dialog = "Voc� precisa voltar � caverna, derrotar todos os pokemons, falar com o Dr. Haroldo e depois voltar aqui!"
        buttons = {
            {type = "Button", text = "Ok, vou fazer isso agora mesmo!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    elseif player:getStorageValue(storages.firstQuest.drHaroldo) == 1 then
        dialog = "Ah, voc� retornou! Vejo que enfrentou os desafios da caverna com bravura. Estou impressionada com sua determina��o. Agora, me conte, o que encontrou l� dentro? Os Pok�mons da caverna s�o fascinantes, n�o s�o?"
        buttons = {
            {type = "Button", text = "Encontrei v�rios Pok�mons interessantes! Foi uma experi�ncia incr�vel."},
            {type = "Button", text = "Foi uma luta �rdua, mas consegui derrotar todos os Pok�mons da caverna."},
            {type = "Button", text = "A caverna estava cheia de desafios, mas infelizmente n�o consegui superar todos."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    end
end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local npc = Npc()
    local player = Player(cid)

    if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
        dialog = "Voc� j� recebeu uma pedra de evolu��o, jovem treinador. N�o posso te dar outra."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Sim, estou pronto para enfrentar os desafios!' then
        dialog = "Fant�stico! Lembre-se, cada Pok�mon encontrado dentro da caverna possui caracter�sticas �nicas. Estude-os com cuidado e utilize estrat�gias inteligentes para superar qualquer obst�culo."
        buttons = {
            {type = "Button", text = "Obrigado pelas dicas, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Estou nervoso, mas acho que posso lidar com isso.' then
        dialog = "N�o se preocupe, a ansiedade � natural em situa��es como essa. Confie em seus Pok�mons e em suas habilidades como treinador. Estou aqui para ajud�-lo no que for necess�rio."
        buttons = {
            {type = "Button", text = "Obrigado pelas dicas, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Eu n�o tenho certeza se estou preparado...' then
        dialog = "N�o subestime a import�ncia da prepara��o, jovem treinador. Se voc� sentir que n�o est� pronto, talvez seja melhor retornar quando estiver mais confiante. A seguran�a vem sempre em primeiro lugar."
        buttons = {
            {type = "Button", text = "Voc� est� certa, eu vou me preparar melhor antes de entrar."},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Obrigado pelas dicas, Professora Selene!' then
        dialog = "De nada, jovem treinador. Boa sorte em sua jornada. Agora v� e derrote todos os pokemons daquela caverna!."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Voc� est� certa, eu vou me preparar melhor antes de entrar.' then
        dialog = "Boa escolha, jovem treinador. A prepara��o � essencial para enfrentar os desafios que aguardam voc� na Caverna das Sombras. Quando se sentir pronto, volte e me conte sobre suas descobertas."
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Encontrei v�rios Pok�mons interessantes! Foi uma experi�ncia incr�vel.' then
        dialog = "Maravilhoso! Cada encontro com pokemons selvagens � uma oportunidade de aprender e crescer como treinador. Espero que tenha aproveitado ao m�ximo essa experi�ncia. Eu trouxe comigo algumas pedras de evolu��o, estava guardando para entregar ao professor Carvalho, mas uma n�o vai fazer diferen�a, vou te dar para ajudar em sua jornada, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "N�o existe nenhuma outra op��o de pedra de evolu��o que esteja sobrando com voc�? O professor Carvalho me deu um pok�mon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'Foi uma luta �rdua, mas consegui derrotar todos os Pok�mons da caverna.' then
        dialog = "Impressionante! A Caverna das Sombras � um local desafiador, e superar todos os pokemon que l� habitam � uma grande conquista. Voc� provou ser um treinador corajoso e habilidoso. Como recompensa, vou te dar uma pedra de evolu��o, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "N�o existe nenhuma outra op��o de pedra de evolu��o que esteja sobrando com voc� O professor Carvalho me deu um pokemon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'A caverna estava cheia de desafios, mas infelizmente n�o consegui superar todos.' then
        dialog = "Impressionante! A Caverna das Sombras � um local desafiador, e superar todos os pokemon que l� habitam � uma grande conquista. Voc� provou ser um treinador corajoso e habilidoso. Como recompensa, vou te dar uma pedra de evolu��o, escolha uma delas..."
        buttons1 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
        }
        buttons2 = {
            {type = "Button", text = "Leaf Stone"},
            {type = "Button", text = "Fire Stone"},
            {type = "Button", text = "Water Stone"},
            {type = "Button", text = "N�o existe nenhuma outra op��o de pedra de evolu��o que esteja sobrando com voc� O professor Carvalho me deu um pokemon diferente..."},
        }
        if player:getStorageValue(storages.pokeInicial) == 2 then
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons2)
        else
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons1)
        end
    elseif msg == 'N�o existe nenhuma outra op��o de pedra de evolu��o que esteja sobrando com voc�? O professor Carvalho me deu um pok�mon diferente...' then
        dialog = "Ah, entendo. Voc� recebeu um Pok�mon diferente do que eu esperava. Nesse caso, vou te dar uma pedra de evolu��o que pode ser �til para o seu Pok�mon."
        buttons = {
            {type = "Button", text = "Thunder Stone"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Leaf Stone' or msg == 'Fire Stone' or msg == 'Water Stone' then
        if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
            dialog = "Voc� j� recebeu uma pedra de evolu��o, jovem treinador. N�o posso te dar outra."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        player:addItem(msg, 1)
        player:setStorageValue(storages.firstQuest.professoraSelene, 1)
        dialog = "�tima escolha! Essa � uma pedra de evolu��o muito especial, capaz de transformar certos Pok�mon em criaturas ainda mais poderosas. Espero que ela te ajude em sua jornada. Boa sorte, jovem treinador!"
        buttons = {
            {type = "Button", text = "Obrigado, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Thunder Stone' then
        if player:getStorageValue(storages.firstQuest.professoraSelene) > 0 then
            dialog = "Voc� j� recebeu uma pedra de evolu��o, jovem treinador. N�o posso te dar outra."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        player:addItem(msg, 1)
        player:setStorageValue(storages.firstQuest.professoraSelene, 1)
        dialog = "�tima escolha! Essa � uma pedra de evolu��o muito especial, capaz de transformar certos Pok�mon em criaturas ainda mais poderosas. Espero que ela te ajude em sua jornada. Boa sorte, jovem treinador!"
        buttons = {
            {type = "Button", text = "Obrigado, Professora Selene!"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
        npcHandler:releaseFocus(cid)
        return true
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)