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

	local pos = getThingPosWithDebug(cid)
	local areas = {rock1, rock2, rock3, rock4, rock5, rock4, rock3, rock2, rock1}
	local ret = {}
		ret.id = 0
		ret.cd = 9
		ret.eff = 1
		ret.check = 0
		ret.spell = spell

	for i = 0, 8 do
	    addEvent(doMoveInArea2, i*400, cid:getId(), 1, areas[i+1], NORMALDAMAGE, min, max, spell, ret)
	    addEvent(doMoveInArea2, i*410, cid:getId(), 1, areas[i+1], NORMALDAMAGE, 0, 0, spell)
	end

return true
end