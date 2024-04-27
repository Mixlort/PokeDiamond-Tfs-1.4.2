local msgs = {"use ", ""}

function doAlertReady(cid, id, movename, n, cd)
	if not isCreature(cid) then return true end
	local myball = cid:getUsingBall()
	if myball and myball.itemid > 0 and getItemAttribute(myball.uid, cd) == "cd:"..id.."" then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, getPokeballName(myball.uid).." - "..movename.." (m"..n..") is ready!")
	return true
	end
	local p = getPokeballsInContainer(getPlayerSlotItem(cid, 3).uid)
	if not p or #p <= 0 then return true end
	for a = 1, #p do
		if getItemAttribute(p[a], cd) == "cd:"..id.."" then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, getPokeballName(p[a]).." - "..movename.." (m"..n..") is ready!")
		return true
		end
	end
end

function onSay(cid, words, param, channel)
	if param ~= "" then return false end
	if string.len(words) > 3 then return false end

	if #getCreatureSummons(cid) == 0 then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You need a pokemon to use moves.")
		return false
	end

	local mypoke = getCreatureSummons(cid)[1]

	if getCreatureCondition(cid, CONDITION_EXHAUST) then return false end
	if getCreatureName(mypoke) == "Evolution" then return false end

    if getCreatureName(mypoke) == "Ditto" or getCreatureName(mypoke) == "Shiny Ditto" then
       name = getPlayerStorageValue(mypoke, 1010)
    else
       name = getCreatureName(mypoke)
    end  
	
	local monsterType = MonsterType(name)
	local it = string.sub(words, 2, 3)
	it = tonumber(it)
	local move = monsterType:getMoveList()
	move = move[it]
	cdzin = "move"..it..""

	if not move then
        -- local moveTable, index = getNewMoveTable(movestable[name]), 0
        -- for i = 1, 12 do
        --     if not moveTable[i] then
        --         index = i
        --         break
        --     end
        -- end
        -- if tonumber(it) ~= index then
            doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Your pokemon doesn't recognize this move.")
            return false
        -- end
    end

    -- printTable(move)
    
	if getPlayerLevel(cid) < move.level then
	   doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You need be atleast level "..move.level.." to use this move.")
	   return false
    end

    if not cid:getUsingBall() then return true end
	if cid:getUsingBall() and getCD(cid:getUsingBall().uid, cdzin) > 0 and getCD(cid:getUsingBall().uid, cdzin) < (move.speed + 2) then
		-- doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You have to wait "..getCD(cid:getUsingBall().uid, cdzin).." seconds to use "..move.name.." again.")
		return false
	end

	if getTileInfo(getThingPos(mypoke)).protection then
		doPlayerSendCancel(cid, "Your pokemon cannot use moves while in protection zone.")
		return false
	end
	
    if getPlayerStorageValue(mypoke, 3894) >= 1 then
        return doPlayerSendCancel(cid, "You can't attack because you is with fear")
    end

	if (move.name == "Team Slice" or move.name == "Team Claw") and #getCreatureSummons(cid) < 2 then       
	    doPlayerSendCancel(cid, "Your pokemon need be in a team for use this move!")
    	return false
    end

	if move.passive and move.passive == "sim" then
		return false
	end      

	if isCreature(getCreatureTarget(cid)) and isInArray(specialabilities["Evasion"], getCreatureName(getCreatureTarget(cid))) then 
   		local target = getCreatureTarget(cid)                                                                                       
   		if math.random(1, 100) <= passivesChances["Evasion"][getCreatureName(target)] then 
        	if isCreature(getMasterTarget(target)) then   --alterado v1.6                                                                   
         		doSendMagicEffect(getThingPos(target), 211)
        		doSendAnimatedText(getThingPos(target), "TOO BAD", 215)                                
         		doTeleportThing(target, getClosestFreeTile(target, getThingPos(mypoke)), false)
         		doSendMagicEffect(getThingPos(target), 211)
         		doFaceCreature(target, getThingPos(mypoke))    		
         		return false
      		end
  		end
	end

	if move.isTarget == 1 then
		if not isCreature(getCreatureTarget(cid)) then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You don\'t have any targets.")
			return false
		end

		if getCreatureCondition(getCreatureTarget(cid), CONDITION_INVISIBLE) then
			return false
		end

		if getCreatureHealth(getCreatureTarget(cid)) <= 0 then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Your have already defeated your target.")
			return false
		end

		if not isCreature(getCreatureSummons(cid)[1]) then
			return false
		end

		if getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid))) > move.range then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Get closer to the target to use this move.")
			return false
		end

		if not isSightClear(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), false) then
			return false
		end
	end

	local newid = 0
	
	-- Cooldown -- 
	local Tiers = {
		[113] = {bonus = Cdown1},
		[114] = {bonus = Cdown2},
		[115] = {bonus = Cdown3},
	}
	local Tier = getItemAttribute(cid:getUsingBall().uid, "heldx")
	local cdzao = {}
	if Tier and Tier > 112 and Tier < 116 then
		cdzao = math.ceil(move.speed - (move.speed * Tiers[Tier].bonus))
	else
		cdzao = move.speed
	end
	-- Cooldown -- 

    if isSleeping(mypoke) or isSilence(mypoke) then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Sorry you can't do that right now.")
		return false
	else
		newid = setCD(cid:getUsingBall().uid, cdzin, cdzao, cid) --MIXLORT NEW UPDATE
	end
		
	if getPlayerStorageValue(mypoke, 93828) > os.time() then
    	return doPlayerSendCancel(cid, "Your pokemon can't use moves right now.")
	end
		
	local spellMessage = msgs[math.random(#msgs)]..""..move.name.."!"
	doCreatureSay(cid, getPokeName(mypoke)..", "..spellMessage, TALKTYPE_MONSTER)
	
    local summons = getCreatureSummons(cid)

	for i = 2, #summons do
        if isCreature(summons[i]) and getPlayerStorageValue(cid, 637501) >= 1 then
            if not summons[i] then return true end
			doCreatureCastSpell(summons[i], move.name)
        end
    end 
	
    if not mypoke then return true end
	if not doCreatureCastSpell(mypoke, move.name) then 
	    print("Está faltando o move ("..move.name..") no spells.")
		-- local test = io.open("data/moves.txt", "a+")
 		-- local read = ""
 		-- if test then
  		-- 	read = test:read("*all")
  		-- 	test:close()
 		-- end
 		-- read = read.." - ".."Está faltando o move ("..move.name..") no spells.\n"..""
 		-- local reopen = io.open("data/moves.txt", "w")
 		-- reopen:write(read)
 		-- reopen:close()
	end

	doCreatureAddCondition(cid, playerexhaust)
	doUpdateCooldowns(cid)	
    doUpdateCooldownsZ(cid, tonumber(it))

	return false
end
