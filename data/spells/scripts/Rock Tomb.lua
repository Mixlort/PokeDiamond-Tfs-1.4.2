function onCastSpell(cid, var)

    ----Novo padrão by Mixlort---------------------------------------------------------------------

    if hasSummons(cid) then
        cid = cid:getSummon()
    end
    
    local baseSpell = mixlortBaseSpell(cid, var.string)
    if not baseSpell then
        print("Erro novo sistema de spells: "..var.string)
        -- return true
    end
    if baseSpell == "true" then
        return true
    elseif baseSpell == "false" then
        return false
    end

    local spell = var.string
    local min = baseSpell.min or 0
    local max = baseSpell.max or 0
    local target = baseSpell.target or cid
    local getDistDelay = baseSpell.getDistDelay or 0

     --Posições--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padrão by Mixlort---------------------------------------------------------------------

	local ret = {}
		ret.id = target
		ret.cd = 9
		ret.eff = 0
		ret.check = getPlayerStorageValue(target, conds["Slow"])
		ret.first = true
		ret.cond = "Slow"

    local function doRockFall(cid, frompos, target)
		if not isCreature(target) or not isCreature(cid) then return true end
        if not isOnline(cid) or not isOnline(target) then return true end
        if isNumber(cid) then cid = Creature(cid) end
        if isNumber(target) then target = Creature(target) end
	    local pos = getThingPosWithDebug(target)
	    local ry = math.abs(frompos.y - pos.y)
	    doSendDistanceShoot(frompos, pos, 39)
	    addEvent(doMoveDano2, ry * 11, cid:getId(), target:getId(), ROCKDAMAGE, min, max, ret, spell)
	    addEvent(sendEffWithProtect, ry*11, cid:getId(), pos, 157)
    end

	local function doRockUp(cid, target)
		if not isCreature(target) or not isCreature(cid) then return true end
        if not isOnline(cid) or not isOnline(target) then return true end
        if isNumber(cid) then cid = Creature(cid) end
        if isNumber(target) then target = Creature(target) end
	    local pos = getThingPosWithDebug(target)
	    local mps = getThingPosWithDebug(cid)
	    local xrg = math.floor((pos.x - mps.x) / 2)
	    local topos = mps
	    topos.x = topos.x + xrg
	    local rd =  7
	    topos.y = topos.y - rd
	    doSendDistanceShoot(getThingPosWithDebug(cid), topos, 39)
	    addEvent(doRockFall, rd * 49, cid:getId(), topos, target:getId())
	end		

    addEvent(doRockUp, 155, cid:getId(), target:getId())

return true
end