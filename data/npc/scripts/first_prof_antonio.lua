local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(player)              npcHandler:onCreatureAppear(player)            end
function onCreatureDisappear(player)           npcHandler:onCreatureDisappear(player)         end
function onCreatureSay(player, type, msg)      npcHandler:onCreatureSay(player, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(player) npcHandler:onPlayerCloseChannel(player) end
npcHandler:addModule(FocusModule:new())

local storage = storages.firstQuest

local function creatureGreetCallback(player, message)
    local npc = Npc()
	local player = Player(player)
    if player:getStorageValue(storage) >= 1 then
        dialog = "Voc� j� me entregou minha pesquisa, agora volte pra casa! Aqui � perigoso!"
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
        return false
    else
        if player:hasKilledBossPokemon() then
            dialog = "Ol� jovem, est� perdido?"
            buttons = {
                {type = "Button", text = "Voc� � o professor Antonio?"},
            }
            doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)
        else
            dialog = "Tome cuidado! O boss est� por perto! Enfrente e derrote ele!"
            doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
            npcHandler:releaseFocus(player)
            return false
        end
    end
	return true
end

local function creatureSayCallback(player, type, msg)
    if(not npcHandler:isFocused(player)) then 
        return false
    end
    local npc = Npc()
	local player = Player(player)
	if msg == 'Voc� � o professor Antonio?' then
	    dialog = "Eu mesmo, andaram falando de mim por a�?"
        buttons = {
            {type = "Button", text = "Sua aluna Selene me pediu para entregar isso..."},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Sua aluna Selene me pediu para entregar isso...' then
        dialog = "Minha pesquisa! Nossa estava precisando dela! Achei que ia ter que voltar ao laborat�rio busc�-la, obrigado Jovem! Por entrar nesta caverna perigosa e me poupar o trabalho de ir at� meu laborat�rio, por favor, aceite algum desses brindes. N�o � muito, mas � tudo que tenho por hora..."
        if player:getStorageValue(storages.pokeInicial) == 2 then
            buttons = {
                {type = "itemsSelector", item = "Fire Stone"},
                {type = "itemsSelector", item = "Water Stone"},
                {type = "itemsSelector", item = "Leaf Stone"},
                {type = "Button", text = "N�o h� nenhuma outra stone?"},
            }
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
        else
            buttons = {
                {type = "itemsSelector", item = "Fire Stone"},
                {type = "itemsSelector", item = "Water Stone"},
                {type = "itemsSelector", item = "Leaf Stone"},
            }
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
        end
    elseif msg == 'N�o h� nenhuma outra stone?' then
        dialog = "Eu tenho tamb�m uma Thunder aqui, mas n�o sei se vai te servir de algo..."
        buttons = {
            {type = "itemsSelector", item = "Thunder Stone"},
        }
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Fire Stone' or msg == 'Water Stone' or msg == 'Leaf Stone' or msg == 'Thunder Stone' then
        if msg == 'Thunder Stone' and not player:getStorageValue(storages.pokeInicial) == 2 then
            dialog = "Voc� n�o pode pegar a Thunder Stone..."
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
            npcHandler:releaseFocus(player)
            return true
        end
        if player:getStorageValue(storage) == 1 then
            dialog = "Voc� j� me entregou minha pesquisa, agora volte pra casa! Aqui � perigoso!"
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
            npcHandler:releaseFocus(player)
            return true
        end
        player:addUniqueItem(msg, 1)
        player:addExperience(10000)
        player:setStorageValue(storage, 1)
        dialog = "Mais uma vez obrigado, mas agora volte pra casa! Aqui � perigoso!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
        return true
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)