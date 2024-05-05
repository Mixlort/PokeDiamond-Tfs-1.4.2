local EFFECTS = {
	--[OutfitID] = {Effect}
	["Magmar"] = 35,   
	["Jynx"] = 17,          --alterado v1.5
	["Shiny Jynx"] = 17, 
    ["Piloswine"] = 205,  --alterado v1.8
    ["Swinub"] = 205,   
}

function onUse(cid, item, frompos, item2, topos)

if exhaustion.get(cid, 6666) and exhaustion.get(cid, 6666) > 0 then return true end

if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) >= 1 or getPlayerStorageValue(cid, 63215) >= 1 
or getPlayerStorageValue(cid, 75846) >= 1 or getPlayerStorageValue(cid, 5700) >= 1  then    --alterado v1.9 <<
   return true                                                                                                                        
end

local ballName = getItemAttribute(item.uid, "pokeName")
local btype = getPokeballType(item.itemid)
local usando = pokeballs[btype].use

local effect = pokeballs[btype].effect
	if not effect then
		effect = 21
	end
	
unLock(item.uid) --alterado v1.8

if item.itemid == usando then                           

	if getPlayerStorageValue(cid, 990) == 1 then -- GYM
		doPlayerSendCancel(cid, "You can't return your pokemon during gym battles.")
	return true
	end
	if #getCreatureSummons(cid) > 1 and getPlayerStorageValue(cid, 212124) <= 0 then     --alterado v1.6
       if getPlayerStorageValue(cid, 637501) == -2 or getPlayerStorageValue(cid, 637501) >= 1 then  
          BackTeam(cid)       
       end
    end   
    if #getCreatureSummons(cid) == 2 and getPlayerStorageValue(cid, 212124) >= 1 then
       doPlayerSendCancel(cid, "You can't do that while is controling a mind")
       return true     --alterado v1.5
    end
    if #getCreatureSummons(cid) <= 0 then
		if isInArray(pokeballs[btype].all, item.itemid) then
			doTransformItem(item.uid, pokeballs[btype].off)
			doItemSetAttribute(item.uid, "hp", 0)
			doPlayerSendCancel(cid, "This pokemon is fainted.")
		    return true
		end
	end

    local cd = getCD(item.uid, "blink", 30)
    if cd > 0 then
       setCD(item.uid, "blink", 0)
    end
    
	local z = getCreatureSummons(cid)[1]

	if getCreatureCondition(z, CONDITION_INVISIBLE) and not isGhostPokemon(z) then
	   return true
	end
	doReturnPokemon(cid, z, item, effect)

elseif item.itemid == pokeballs[btype].on then

	if item.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
		doPlayerSendCancel(cid, "You must put your pokeball in the correct place!")
	return TRUE
	end

	local thishp = getItemAttribute(item.uid, "hp")

	if getItemAttribute(item.uid, "hp") == 0 then
		if isInArray(pokeballs[btype].all, item.itemid) then
			doTransformItem(item.uid, pokeballs[btype].off)
			doItemSetAttribute(item.uid, "hp", 0)
			doPlayerSendCancel(cid, "This pokemon is fainted.")
		    return true
		end
	end

	local pokemon = getItemAttribute(item.uid, "pokeName")

	if not pokes[pokemon] then
	return true
	end

	local x = pokes[pokemon]
	local boost = getItemAttribute(item.uid, "boost") or 0

	if getPlayerLevel(cid) < (x.level) then
	   doPlayerSendCancel(cid, "You need level "..(x.level).." to use this pokemon.")
	   return true
	end
	if getItemAttribute(item.uid, "unique") then
	        doItemEraseAttribute(item.uid, "unique")
	end
	local pk = getCreatureSummons(cid)[1]
	
	doSummonMonster(cid, pokemon)
	doItemSetAttribute(item.uid, "pokeballusada", 0)

	local pk = getCreatureSummons(cid)[1]
	if not isCreature(pk) then return true end
	

	if getCreatureName(pk) == "Ditto" or getCreatureName(pk) == "Shiny Ditto" then --edited

		local left = getItemAttribute(item.uid, "transLeft")
		local name = getItemAttribute(item.uid, "transName")

		if left and left > 0 then
			setPlayerStorageValue(pk, 1010, name)
			doSetCreatureOutfit(pk, {lookType = getItemAttribute(item.uid, "transOutfit")}, -1)
			addEvent(deTransform, left * 1000, pk:getId(), getItemAttribute(item.uid, "transTurn"))
			doItemSetAttribute(item.uid, "transBegin", os.clock())
		else
			setPlayerStorageValue(pk, 1010, getCreatureName(pk) == "Ditto" and "Ditto" or "Shiny Ditto")     --edited
		end
	end

	if isGhostPokemon(pk) then doTeleportThing(pk, getPositionByDirection(getThingPos(cid), math.random(0, 7)), false) end

	doCreatureSetLookDir(pk, 2)
	doCreatureSetNick(pk, nick)	
	adjustStatus(pk, item.uid, true, true, true)
	doAddPokemonInOwnList(cid, pokemon)

	doTransformItem(item.uid, item.itemid+1)

	local pokename = getPokeName(pk) --alterado v1.7 

	local mgo = gobackmsgs[math.random(1, #gobackmsgs)].go:gsub("doka", pokename)
	local mgoen = gobackmsgsen[math.random(1, #gobackmsgsen)].go:gsub("doka", pokename)
	local mgoes = gobackmsgses[math.random(1, #gobackmsgses)].go:gsub("doka", pokename)
	if getPlayerLanguage(cid) == 2 then
	doCreatureSay(cid, mgoen, 19)
	end
	if getPlayerLanguage(cid) == 0 then
	doCreatureSay(cid, mgo, 19)
	end
	if getPlayerLanguage(cid) == 1 then
	doCreatureSay(cid, mgoes, 19)
	end
    
	-- doItemSetAttribute(item.uid, "gender", math.random(3, 4))	
	doSendMagicEffect(getCreaturePosition(pk), effect)
	
	if useOTClient then
	   doPlayerSendCancel(cid, '12//,show') --alterado v1.7
    end
    
local pk = getCreatureSummons(cid)[1]
                local pb = getPlayerSlotItem(cid, 8).uid
                local look = getItemAttribute(pb,"addon")
                if not getItemAttribute(pb,"addon") then
                                doSetItemAttribute(pb,"addon",0) 

                end
                if getItemAttribute(pb,"addon") > 0 then
                                doSetCreatureOutfit(pk, {lookType = look}, -1)

                end	
	
else

    doPlayerSendCancel(cid, "This pokemon is fainted.")

end

	if useKpdoDlls then
		doUpdateMoves(cid)
	end
return true
end