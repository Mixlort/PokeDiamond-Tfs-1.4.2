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

	local effD = 5
	local eff = 248
	local master = isSummon(cid) and getCreatureMaster(cid) or cid

	local function doFall(cid)
        if not isOnline(cid) then return true end
        if isNumber(cid) then cid = Creature(cid) end   
		for rocks = 5, 42 do
		    addEvent(fall, rocks*35, cid:getId(), master:getId(), DRAGONDAMAGE, effD, eff)
		end
	end

	for up = 1, 10 do
	    addEvent(upEffect, up*75, cid:getId(), effD)
	end
	addEvent(doFall, 450, cid:getId())
	addEvent(doDanoWithProtect, 1400, cid:getId(), DRAGONDAMAGE, getThingPosWithDebug(cid:getId()), waterarea, -min, -max, 0)

return true
end