local condition = Condition(CONDITION_OUTFIT)
condition:setTicks(-1)

local conditions = {
	CONDITION_POISON, CONDITION_FIRE, CONDITION_ENERGY,
	CONDITION_PARALYZE, CONDITION_DRUNK, CONDITION_DROWN,
	CONDITION_FREEZING, CONDITION_DAZZLED, CONDITION_CURSED,
	CONDITION_BLEEDING
}

function onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end

    if creature:getStorageValue(storageBike) > 0 then
        creature:sendCancelMessage("Sorry, not possible while on bicycle.")
        creature:teleportTo(fromPosition, false)
        return false
    end
    local outfit = 267
    if hasSummons(creature) then
        local summon = creature:getSummon()
        local summonName = summon:getName()
        local summonSpeed = summon:getTotalSpeed()
        local monsterType = MonsterType(summonName)
        local surfOutfit = monsterType:isSurfable()

        if surfOutfit > 0 then
            if surfOutfit > 1 then outfit = surfOutfit end
            creature:changeSpeed(summonSpeed)
            creature:setStorageValue(storageSurf, outfit)
            doChangeOutfit(creature:getId(), {lookType = outfit})
            -- creature:addCondition(condition)
            doRemoveSummon(creature:getId(), false, nil, false)
            creature:say(summonName .. ", let's surf!", TALKTYPE_SAY)
        else
            creature:sendCancelMessage("Sorry, not possible. You summon can not surf.")
            creature:teleportTo(fromPosition, false)
            return false        
        end
    else
        if creature:getStorageValue(storageSurf) == -1 then
            creature:sendCancelMessage("Sorry, not possible. You need a summon to surf.")
            creature:teleportTo(fromPosition, false)
            return false
        else
            local surfOutfit = creature:getStorageValue(storageSurf)
            doChangeOutfit(creature:getId(), {lookType = surfOutfit})
            -- creature:addCondition(condition)         
        end
    end

	-- for i = 1, #conditions do
	-- 	creature:removeCondition(conditions[i])
	-- end
	-- creature:addAchievementProgress("Waverider", 100000)
	-- creature:addCondition(condition)
	return true
end

function onStepOut(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end
    
    local tile = Tile(creature:getPosition())
    if not tile or not tile:getGround() then
        return false
    end

    local tileId = tile:getGround():getId()
    if (not isInArray(waterIds, tileId) and position == fromPosition) or (creature:getStorageValue(storageDive) > 0) then
        creature:changeSpeed(creature:getBaseSpeed()-creature:getSpeed())
        creature:setStorageValue(storageSurf, -1)
        doReleaseSummon(creature:getId(), creature:getPosition(), false, false)
        creature:say("Thanks!", TALKTYPE_SAY)
    end

    if not (creature:getStorageValue(storageRide) > 0 or creature:getStorageValue(storageFly) > 0 or creature:getStorageValue(storageBike) > 0 or creature:getStorageValue(storageDive) > 0) then
        creature:removeCondition(CONDITION_OUTFIT)
    end

	-- creature:removeCondition(CONDITION_OUTFIT)
	return true
end
