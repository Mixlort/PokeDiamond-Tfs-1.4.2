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

	local p = getThingPosWithDebug(cid)
	p.x = p.x+1
	p.y = p.y+1

	sendEffWithProtect(cid, p, 151)   --send eff

	local function doDano(cid)
		local pos = getThingPosWithDebug(cid)

	    local function doSendBubble(cid, pos)
			if not isCreature(cid) then return true end
			doSendDistanceShoot(getThingPosWithDebug(cid), pos, 39)
			doSendMagicEffect(pos, 239)
		end
		                                                          --alterado!!
		for a = 1, 20 do
		    local r1 = math.random(-4, 4)
		    local r2 = r1 == 0 and choose(-3, -2, -1, 2, 3) or math.random(-3, 3)
		    --
		    local lugar = {x = pos.x + r1, y = pos.y + r2, z = pos.z}
		    addEvent(doSendBubble, a * 25, cid:getId(), lugar)
		end

		addEvent(doDanoWithProtect, 150, cid:getId(), ROCKDAMAGE, pos, waterarea, -min, -max, 0)
	end

	addEvent(doDano, 1250, cid:getId())

return true
end