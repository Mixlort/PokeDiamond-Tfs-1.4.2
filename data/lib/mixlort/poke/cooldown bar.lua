function getPlayerPokeballs(cid)                                   --alterado v1.9 \/
    local ret = {}
    local container = 0

    if isCreature(cid) then
        container = getPlayerSlotItem(cid, 3).uid
        local myball = getPlayerSlotItem(cid, 8)
        if myball.uid > 0 then
            table.insert(ret, myball)
        end
    else
        container = cid
    end

    if isContainer(container) and getContainerSize(container) > 0 then
        for slot = 0, (getContainerSize(container) - 1) do
            local item = getContainerItem(container, slot)
            if isContainer(item.uid) then
                local itemsbag = getPlayerPokeballs(item.uid)
                if itemsbag and #itemsbag > 0 then
                    for i = 0, #itemsbag do
                        table.insert(ret, itemsbag[i])
                    end
                end
            elseif isPokeball(item.itemid) then
                table.insert(ret, item)
            end
        end
    end
    return ret
end

function getNewMoveTable(moves, n)
    if not moves then return false end
    returnValue = moves[n]
    return returnValue
end

function getMoveMix(summon)
    if isNumber(summon) then summon = Creature(summon) end
    local name = summon:getName()
    if isTransformed(summon) then
        name = getPlayerStorageValue(summon, 1010)
    end
    local monsterType = MonsterType(name)
    local moves = monsterType:getMoveList()
    return moves
end

function doUpdateMoves(cid)
    if isNumber(cid) then cid = Creature(cid) end
    if not isCreature(cid) or not isPlayer(cid) then return true end
    local summon = getCreatureSummons(cid)[1]
    local aBall = getPlayerSlotItem(cid, 8)
    if aBall.uid <= 0 or #getCreatureSummons(cid) <= 0 then --vks
        return true
    end
    local ret = {}
    local retOt = {}
    if not summon then return true end

    moves = getMoveMix(summon)
    for a = 1, 12 do
        local b = getNewMoveTable(moves, a)
        cdzin = "move"..a
        
        if b then
            table.insert(ret, (b.name:find("Sketch") and "Sketch" or b.name)..",")
            if a > 1 then
                table.insert(retOt, '|')
            end
            table.insert(retOt, (b.name:find("Sketch") and "Sketch" or b.name)..","..getCD(aBall.uid, cdzin)..','.. b.speed ..','..b.level)
        end
    end
    doSendPlayerExtendedOpcode(cid, 82,  'c;'..table.concat(retOt))
    addEvent(doUpdateCooldowns, 100, cid:getId())  
end

function doUpdateCooldowns(cid)
    if isNumber(cid) then cid = Creature(cid) end
    if not isCreature(cid) then return true end
    local a = getPlayerSlotItem(cid, 8)
    local ret = {}
    table.insert(ret, "12|,")
    if a.uid <= 0 or #getCreatureSummons(cid) <= 0 then
        for cds = 1, 12 do
		    table.insert(ret, "-1|0,")
        end
        doPlayerSendCancel(cid, table.concat(ret))
        return true
    end
    for cds = 1, 12 do
        local summon = getCreatureSummons(cid)[1]
        cdzin = "move"..cds
        moves = getMoveMix(summon)
        local b = getNewMoveTable(moves, cds)
        if not b then
            for cds = 1, 12 do
			    table.insert(ret, "-1|0,")
            end
            doPlayerSendCancel(cid, table.concat(ret))
            return true
        end
        if getCD(a.uid, cdzin) > 0 then
            table.insert(ret, (getCD(a.uid, cdzin)).."|"..b.level..",")
        else
		    table.insert(ret, "0,")
        end
    end

    doPlayerSendCancel(cid, table.concat(ret))    
end

function doUpdateCooldownsZ(cid, move) 
    if isNumber(cid) then cid = Creature(cid) end
    if not isCreature(cid) then return true end
    local a = getPlayerSlotItem(cid, 8)
	local summon = getCreatureSummons(cid)[1]
    cdzin = "move"..move
	moves = getMoveMix(summon)
    local b = getNewMoveTable(moves, move)
    if not b then
        return true
    end

    doSendPlayerExtendedOpcode(cid, 82,  'm;'..move..';'..getCD(a.uid, cdzin)..','..b.speed..','..b.level)
end
