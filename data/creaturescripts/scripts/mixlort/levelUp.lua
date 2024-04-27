-- PREMIO POR LEVEL
local premio = { 
    [20] = {
        reward = {
            {id = "empty pokeball", count = 15, unique = true},
            {id = "Small Potion", count = 15, unique = true},
            {id = "revive", count = 10, unique = true}
        },
        str = storages.LEVELUP_REWARD_20
    },
    [30] = {
        reward = {
            {id = "empty pokeball", count = 20, unique = true},
            {id = "empty greatball", count = 15, unique = true},
            {id = "Small Potion", count = 20, unique = true},
            {id = "revive", count = 10, unique = true}
        },
        str = storages.LEVELUP_REWARD_30
    },
    [40] = {
        reward = {
            {id = "empty greatball", count = 40, unique = true},
            {id = "Great Potion", count = 30, unique = true},
            {id = "revive", count = 20, unique = true}
        },
        str = storages.LEVELUP_REWARD_40
    },
    [60] = {
        reward = {
            {id = "empty superball", count = 30, unique = true},
            {id = "empty ultraball", count = 20, unique = true},
            {id = "Hyper Potion", count = 25, unique = true},
            {id = "revive", count = 20, unique = true},
            {id = 39875, count = 1, unique = true} -- experience potion 10% 1h
        },
        str = storages.LEVELUP_REWARD_60
    },    
    [80] = {
        reward = {
            {id = "empty ultraball", count = 25, unique = true},
            {id = "Hyper Potion", count = 25, unique = true},
            {id = "revive", count = 20, unique = true},
            {id = 39875, count = 1, unique = true} -- experience potion 10% 1h
        },
        str = storages.LEVELUP_REWARD_80
    },
    [100] = {
        reward = {
            {id = 39876, count = 1}, -- experience potion 20% 1h
            {id = "essence shiny", count = 5}
        },
        str = storages.LEVELUP_REWARD_100
    },
    [150] = {
        reward = {
            {id = 39877, count = 1}, -- experience potion 10% 1semana
            {id = "essence shiny", count = 10}
        },
        str = storages.LEVELUP_REWARD_150
    },    
    [200] = {
        reward = {
            {id = "boost stone", count = 1}
        },
        str = storages.LEVELUP_REWARD_200
    },    
}

function onAdvance(player, skill, oldLevel, newLevel)
    if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
        return true
    end

    player:getPosition():sendMagicEffect(29)
    player:say('LEVEL UP!', TALKTYPE_MONSTER_SAY)
    doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Parabéns, você atingiu o level "..newLevel.."!")
    player:save()

    if premio[newLevel] then
	    if getPlayerStorageValue(player, premio[newLevel].str) >= 1 then return true end
		for i, item in pairs (premio[newLevel].reward) do
			if not hasSpaceInContainer(getPlayerSlotItem(player, 3).uid) then
                local depot = player:getInbox()
                if item.unique and item.unique == true then
                    addBall = depot:addUniqueItem(item.id, item.count, INDEX_WHEREEVER, FLAG_NOLIMIT)
                else    
                    addBall = depot:addItem(item.id, item.count, INDEX_WHEREEVER, FLAG_NOLIMIT)
                end
                doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você não tem espaço, os itens foram enviados para o DP.")
			else
                if item.unique and item.unique == true then
				    player:addUniqueItem(item.id, item.count, true)
                else
                    player:addItem(item.id, item.count, true)
                end
			end
            doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você recebeu "..item.count.." "..getItemNameById(item.id)..(item.count > 1 and "s" or "").."!")
		end
        setPlayerStorageValue(player, premio[newLevel].str, 1)
    end    
    return true
end