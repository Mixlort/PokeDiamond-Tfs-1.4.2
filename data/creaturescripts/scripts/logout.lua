function onLogout(player)
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
	end

    if hasSummons(player) then
        doRemoveSummon(playerId)
        local ball = player:getUsingBall()
        if ball then
            transformBallItem(ball, STATUS_BALL_NORMAL)
            player:setStorageValue(storageGoback, -1)
        end
    end

    if player:getStorageValue(storageBike) > 0 then
        player:removeCondition(CONDITION_OUTFIT)
        player:changeSpeed(-player:getStorageValue(storageBike))
        player:setStorageValue(storageBike, -1)
    end

    if player:getStorageValue(storageArenaEvent) == 2 then
        local town = player:getTown()
        player:teleportToPlus(town:getTemplePosition())
        player:unregisterEvent("PrepareDeathArena")
        player:setStorageValue(storageArenaEvent, -1)
    end

    local guid = player:getGuid()
    for i = 1, 6 do
        local ball = player:getBall()[i]
        if ball then 
            local name = ball:getPokeName() or ""
            if not name or not MonsterType(name) then return true end
            local description = ball:getPokeName() or ""
            local number = MonsterType(name):getNumber()
            db.query(string.concat("INSERT INTO `player_pokemon` (`player_id`, `slot`, `pokemon_number`, `description`) VALUES('", guid, "', '", i, "', '", number, "', '", description, "') ON DUPLICATE KEY UPDATE `pokemon_number`='", number, "', `description`='", description, "' ;"))
        else  
            db.query(string.concat("DELETE FROM `player_pokemon` WHERE `player_id`='", guid, "' AND `slot`='", i, "' ;"))
        end
    end

	return true
end
