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

	local a = getCreatureLookDirection(cid)
	local p = getThingPosWithDebug(cid)
	local t = {
		[0] = {73, {x=p.x, y=p.y-1, z=p.z}},
		[1] = {74, {x=p.x+6, y=p.y, z=p.z}},      --alterado v1.8
		[2] = {75, {x=p.x, y=p.y+6, z=p.z}},
		[3] = {76, {x=p.x-1, y=p.y, z=p.z}},
	}

	doMoveInArea2(cid, 0, triplo6, ELECTRICDAMAGE, min, max, spell)
	doMoveInArea2(cid, 177, reto6, ELECTRICDAMAGE, 0, 0, "Zap Cannon Eff")
	doSendMagicEffect(t[a][2], t[a][1])

return true
end