local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(player)              npcHandler:onCreatureAppear(player)            end
function onCreatureDisappear(player)           npcHandler:onCreatureDisappear(player)         end
function onCreatureSay(player, type, msg)      npcHandler:onCreatureSay(player, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(player) npcHandler:onPlayerCloseChannel(player) end
npcHandler:addModule(FocusModule:new())

local storage = storages.pokeInicial

local function creatureGreetCallback(player, message)
    local npc = Npc()
	local player = Player(player)
	local playerName = player:getName()
    if player:getStorageValue(storage) >= 1 then
        dialog = "Voc� j� pegou seu pok�mon, boa sorte em sua jornada!"
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(player)
        return false
    elseif player:getStorageValue(storages.openPokeInicial) >= 1 then
        dialog = "Ol� "..playerName..", n�o achou nada na bancada?"
        buttons = {
            {type = "Button", text = "Vou dar mais uma olhada..."},
            {type = "Button", text = "N�o achei nada..."},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)        
    else
        dialog = "Ol� "..playerName..", voc� veio atr�s do seu pok�mon inical?"
        buttons = {
            {type = "Button", text = "Sim! Estou ansioso pra me tornar um treinador pokemon!"},
        }
        doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog, buttons)
    end
	return true
end

local function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then 
        return false
    end
    local npc = Npc()
	local player = Player(cid)
	if msg == 'Sim! Estou ansioso pra me tornar um treinador pokemon!' then
	    dialog = "Voc� chegou atrasado, v�rios treinadores j� vieram e levaram a maioria dos pok�mons que tenho aqui em meu laborat�rio, mas veja o que tem em minha bancada..."
        buttons = {
            {type = "Button", text = "Espero que tenha sobrado pokemons pra mim..."},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Espero que tenha sobrado pokemons pra mim...' then
        if player:getStorageValue(storages.itensIniciais) >= 1 then
            dialog = "Voc� j� pegou seus itens, boa sorte em sua jornada!"
            doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
            npcHandler:releaseFocus(cid)
            return true
        end
        dialog = "Acho que sobram sim, olhe na bancada, ainda tem algumas pokebolas l�! Tamb�m vou te dar alguns itens para te ajudar em sua jornada..."
        buttons = {
            {type = "Reward", text = "Itens:", 
                rewards = {
                    {item = 26662, count = 15},
                    {item = 27642, count = 20},
                    {item = 27641, count = 10},
                    {item = 27645, count = 5},
                    {item = 27644, count = 15, close = true}
                } 
            },
        }
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
        player:setStorageValue(storages.itensIniciais, 1)
		player:addUniqueItem(26662, 15)
		player:addUniqueItem(27642, 20)
		player:addUniqueItem(27641, 10)
		player:addUniqueItem(27645, 5)
		player:addUniqueItem(27644, 15)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'Vou dar mais uma olhada...' then
        dialog = "Claro, fique a vontade!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        npcHandler:releaseFocus(cid)
        return true
    elseif msg == 'N�o achei nada...' then
	    dialog = "Olha parece que j� levaram todos os pok�mons que eu tinha, lamento jovem..."
        buttons = {
            {type = "Button", text = "Acho que cheguei muito tarde..."},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)
    elseif msg == 'Acho que cheguei muito tarde...' then
	    dialog = "Na verdade restou apenas um, mas n�o sei se � uma boa escolha, esse pokemon � um pouco diferente dos outros, � um Pikachu, ele pode ser meio teimoso, mas � um bom pokemon, voc� quer ele?"
        buttons = {
            {type = "Button", text = "Sim, eu quero!"},
        }
	    doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog, buttons)        
    elseif msg == 'Sim, eu quero!' then
        dialog = "Ent�o tudo bem, aqui est�, mas tome cuidado!"
        doSendCallForNpc(npc, player, "conversation", "#8461b2", nil, dialog)
        player:addPokeToPlayer("Baby Pikachu", 0, "normal")
        player:setStorageValue(storage, 2)
        npcHandler:releaseFocus(cid)
        return true
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)