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

	local master = isSummon(cid) and getCreatureMaster(cid) or cid

	local ret = {}
		ret.id = 0
		ret.cd = 9
		ret.check = 0
		ret.eff = 1
		ret.cond = "Silence"

	local function doFall(cid)
		for rocks = 1, 42 do --62
		    addEvent(fall, rocks*35, cid:getId(), master:getId(), WATERDAMAGE, 52, 1)
		end
	end

	local function doRain(cid)
		if isSummon(cid) then 
			if not getCreatureMaster(cid):getUsingBall() then return true end
		   doCureBallStatus(getCreatureMaster(cid):getUsingBall().uid, "all")
		end                                                      --cura status
		doCureStatus(cid, "all")

		setPlayerStorageValue(cid, 253, 1)  --focus
		doSendMagicEffect(getThingPosWithDebug(cid), 132)

		doMoveInArea2(cid, 0, confusion, WATERDAMAGE, 0, 0, spell, ret)
	end

	addEvent(doFall, 200, cid:getId())
	addEvent(doRain, 1000, cid:getId())

return true
end