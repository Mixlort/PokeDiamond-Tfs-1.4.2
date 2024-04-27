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
	local d = getCreatureLookDirection(cid)

	function sendAtk(cid, area)
		if isCreature(cid) then
		   if not isSightClear(p, area, false) then return true end
		   doAreaCombatHealth(cid, ROCKDAMAGE, area, pulse2, -min, -max, 255)
		end
	end

	for a = 0, 3 do
		local t = {
			[0] = {29, {x=p.x, y=p.y-(a+1), z=p.z}},     
			[1] = {29, {x=p.x+(a+1), y=p.y, z=p.z}},
			[2] = {29, {x=p.x, y=p.y+(a+1), z=p.z}},
			[3] = {29, {x=p.x-(a+1), y=p.y, z=p.z}}                            
		}   
		addEvent(sendAtk, 400*a, cid:getId(), t[d][2])
		addEvent(doAreaCombatHealth, 400*a, cid:getId(), ROCKDAMAGE, t[d][2], pulse1, 0, 0, t[d][1])
		addEvent(doAreaCombatHealth, 400*a, cid:getId(), ROCKDAMAGE, t[d][2], pulse1, 0, 0, 103)
	end	

return true
end