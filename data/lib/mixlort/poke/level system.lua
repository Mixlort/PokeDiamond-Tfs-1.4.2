function getStatusW(name)
    local isShiny = isShinyName(name)
    local newStats = MonsterType(name)
    local level = newStats:getMaxlevel() or 1
  	local status = {}
	local pokeAtk = (newStats:getAtk()/10)
	status.atk = pokeAtk * level * 0.5
	local pokeDef = (newStats:getDef()/10)
	status.def = pokeDef
	local pokeSpeed = newStats:getBaseSpeed()
	status.speed = pokeSpeed + 200
	local pokeVit = (newStats:getMaxHealth()/10)
	status.vit = (pokeVit * level) / 2
    local pokeLife = math.floor(status.vit)
    status.life = pokeLife * HPperVITwild
	local pokeSpAtk = (newStats:getSpAtk()/10)
	status.spAtk = pokeSpAtk * level * 7
	local pokeSpDef = (newStats:getSpDef()/10)
	status.spDef = pokeSpDef
	local pokeExp = newStats:getExperience()
	status.exp = pokeExp * baseExpRate + pokeVit * pokemonExpPerLevelRate
    status.exp = (status.exp * generalExpRate / 2) * 10
    return status
end

function getStatusWild(poke)
	if isNumber(poke) then poke = Creature(poke) end
	if not poke then return false end
	local name = poke:getName()
    if not getStatusW(name) then return false end
    local status = {}
    status.atk = math.floor(getStatusW(name).atk * bonusSpawnPos(poke).atk or 1)
    status.def = math.floor(getStatusW(name).def * bonusSpawnPos(poke).def or 1)
    status.speed = getStatusW(name).speed or 1
    status.vit = math.floor(getStatusW(name).vit * bonusSpawnPos(poke).vit or 1)
    status.life = math.floor(getStatusW(name).life * bonusSpawnPos(poke).life or 1)
    status.spAtk = math.floor(getStatusW(name).spAtk * bonusSpawnPos(poke).spAtk or 1)
    status.spDef = math.floor(getStatusW(name).spDef * bonusSpawnPos(poke).spDef or 1)
    status.exp = getStatusW(name).exp * bonusSpawnPos(poke).exp or 1
    return status
end

function getStatusS(name, boost, masterLevel, gender)
    boost = boost or 0
    gender = gender or 0
    local newStats = MonsterType(name)
  	local status = {}
	local pokeAtk = (newStats:getAtk()/10)
	status.atk = pokeAtk * (masterLevel + boost)
    if gender == SEX_MALE then status.atk = status.atk + 20 end
	local pokeDef = (newStats:getDef()/10)
	status.def = pokeDef 
	local pokeSpeed = newStats:getBaseSpeed()
	status.speed = pokeSpeed + 160
	local pokeVit = (newStats:getMaxHealth()/10)
	status.vit = pokeVit * 75 + (50 * boost)
    local pokeLife = math.floor(status.vit)
    status.life = pokeLife * HPperVITsummon
    if gender == SEX_FEMALE then status.vit = status.vit + 90 end
	local pokeSpAtk = (newStats:getSpAtk()/10)
	status.spAtk = pokeSpAtk * (masterLevel + boost ) * 9
	local pokeSpDef = (newStats:getSpDef()/10)
	status.spDef = pokeSpDef + (2 * boost)
	local pokeExp = newStats:getExperience()
	status.exp = pokeExp * baseExpRate + pokeVit * pokemonExpPerLevelRate
    status.exp = (status.exp * generalExpRate / 2) * 10
    return status
end

function getStatusSummon(poke)
	if isNumber(poke) then poke = Creature(poke) end
	if not poke then return false end
	local name = poke:getName()
	local boost = poke:getBoost()
	local masterLevel = poke:getMaster():getLevel()
    local status = {}
    if not getStatusS(name, boost, masterLevel) then return 1 end
    status.atk = math.floor(getStatusS(name, boost, masterLevel).atk or 0)
    status.def = math.floor(getStatusS(name, boost, masterLevel).def or 0)
    status.speed = getStatusS(name, boost, masterLevel).speed or 0
    status.vit = math.floor(getStatusS(name, boost, masterLevel).vit or 0)
    status.life = math.floor(getStatusS(name, boost, masterLevel).life or 0)
    status.spAtk = math.floor(getStatusS(name, boost, masterLevel).spAtk or 0)
    status.spDef = math.floor(getStatusS(name, boost, masterLevel).spDef or 0)
    status.exp = getStatusS(name, boost, masterLevel).exp or 0
    return status
end

function getStatus(poke)
	if isNumber(poke) then poke = Creature(poke) end
    if isSummon(poke) then
        local status = getStatusSummon(poke)    
		return status
	else
        local status = getStatusWild(poke)
        -- print("nome: "..poke:getName().." atk: "..status.atk.." def: "..status.def.." vit: "..status.vit.." spAtk: "..status.spAtk.." spDef: "..status.spDef)
		return status
	end
end

function bonusSpawnPos(poke)
	local spawn_arrs = {
	    {
	    	frompos = {x = 1, y = 1, z = 1}, 
	    	topos = {x = 1, y = 1, z = 1}, 
	    	atk = 1, def = 1, vit = 1, life = 1, spAtk = 1, spDef = 1, exp = 1
	    },
	}
    local poss = getCreaturePosition(poke)
	local bonus = {}
	bonus.atk = 1
	bonus.def = 1
	bonus.vit = 1
	bonus.life = 1
	bonus.spAtk = 1
	bonus.spDef = 1
	bonus.exp = 1
    for _, arr in pairs(spawn_arrs) do
        if isInRange(poss, arr.frompos, arr.topos) then
			bonus.atk = arr.atk
			bonus.def = arr.def
			bonus.vit = arr.vit
			bonus.life = arr.life
			bonus.spAtk = arr.spAtk
			bonus.spDef = arr.spDef
			bonus.exp = arr.exp
			break
        end
    end
    return bonus
end

function adjustWildPoke(cid, optionalLevel)
	if isNumber(cid) then cid = Creature(cid) end
    if not getStatus(cid) then return true end
    if isSummon(cid) then return true end
    setCreatureMaxHealth(cid, getStatus(cid).life)
	doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
	cid:changeSpeed(-cid:getSpeed() + getStatus(cid).speed)
end 

--funções inúteis ou desativadas
-- local function volta(cid, init)
-- function getPokemonXMLOutfit(name) 
-- function doEvolutionOutfit(cid, oldout, outfit)

function getOffense(cid)
	if not isCreature(cid) then return 0 end
    return math.floor(getStatus(cid).atk)
end

function getDefense(cid)
	if not isCreature(cid) then return 0 end
    return math.floor(getStatus(cid).def)
end

function getSpecialDefense(cid)
	if not isCreature(cid) then return 0 end
return math.floor(getStatus(cid).spDef)
end

function getSpeed(cid)
	if not isCreature(cid) then return 0 end
return math.floor(getStatus(cid).speed)
end

function getVitality(cid)
	if not isCreature(cid) then return 0 end
return math.floor(getStatus(cid).vit)
end

function getSpecialAttack(cid)
	if not isCreature(cid) then return 0 end
return math.floor(getStatus(cid).spAtk)
end

function getHappiness(cid) -- ???
	if not isCreature(cid) then return 0 end
return math.floor(getPlayerStorageValue(cid, 1008))
end

function doSendEvolutionEffect(cid, pos, evolution, turn, ssj, evolve, f, h)
	if not isCreature(cid) then
		doSendAnimatedText(pos, "CANCEL", 215)
	    return true 
    end
	doSendMagicEffect(pos, 18)
	if ssj then
		sendSSJEffect(evo)
	end
	doEvolutionOutfit(cid, f, h)
	addEvent(doSendEvolutionEffect, math.pow(1900, turn/20), cid, getThingPos(cid), evolution, turn - 1, turn == 19, turn == 2, f, h)
end

function sendSSJEffect(cid)
	if not isCreature(cid) then return true end
	local pos1 = getThingPos(cid)
	local pos2 = getThingPos(cid)
	pos2.x = pos2.x + math.random(-1, 1)
	pos2.y = pos2.y - math.random(1, 2)
	doSendDistanceShoot(pos1, pos2, 37)
	addEvent(sendSSJEffect, 45, cid)
end

function sendFinishEvolutionEffect(cid, alternate)
	if not isCreature(cid) then return true end
	local pos1 = getThingPos(cid)

	if alternate then
		local pos = {
		[1] = {-2, 0},
		[2] = {-1, -1},
		[3] = {0, -2},
		[4] = {1, -1},
		[5] = {2, 0},
		[6] = {1, 1},
		[7] = {0, 2},
		[8] = {-1, 1}}
		for a = 1, 8 do
			local pos2 = getThingPos(cid)
			pos2.x = pos2.x + pos[a][1]
			pos2.y = pos2.y + pos[a][2]
			local pos = getThingPos(cid)
			doSendDistanceShoot(pos2, pos, 37)
			addEvent(doSendDistanceShoot, 300, pos, pos2, 37)
		end
	else
		for a = 0, 3 do
			doSendDistanceShoot(pos1, getPositionByDirection(pos1, a), 37)
		end
		for a = 4, 7 do
			addEvent(doSendDistanceShoot, 600, pos1, getPositionByDirection(pos1, a), 37)
		end
	end
end

-- function doPokemonUpdate(name, owner, position)
-- function doEvolvePokemon(cid, item2, theevo, stone1, stone2)
-- function doMathDecimal(number, casas)
-- function doAdjustWithDelay(cid, pk, health, vit, status)

function adjustStatus(pk, item, health, vite, conditions)

	if not isCreature(pk) then return true end
    if isNumber(pk) then pk = Creature(pk) end	

    local gender = getItemAttribute(item, "gender") and getItemAttribute(item, "gender") or 0
	addEvent(doCreatureSetSkullType, 10, pk:getId(), gender)

	if isSummon(pk) and conditions then
		local burn = getItemAttribute(item, "burn")   
		if burn and burn >= 0 then
		   local ret = {id = pk, cd = burn, check = false, damage = getItemAttribute(item, "burndmg"), cond = "Burn"}
		   addEvent(doCondition2, 3500, ret)
		end

		local poison = getItemAttribute(item, "poison")
		if poison and poison >= 0 then
		   local ret = {id = pk, cd = poison, check = false, damage = getItemAttribute(item, "poisondmg"), cond = "Poison"}
		   addEvent(doCondition2, 1500, ret)
		end

        local confuse = getItemAttribute(item, "confuse")
		if confuse and confuse >= 0 then
		   local ret = {id = pk, cd = confuse, check = false, cond = "Confusion"}
		   addEvent(doCondition2, 1200, ret)                                                
		end

        local sleep = getItemAttribute(item, "sleep")
		if sleep and sleep >= 0 then
		   local ret = {id = pk, cd = sleep, check = false, first = true, cond = "Sleep"}
		   doCondition2(ret)
		end
		
		local miss = getItemAttribute(item, "miss")     
		if miss and miss >= 0 then      
        end
        
        local fear = getItemAttribute(item, "fear")
        if fear and fear >= 0 then
           local ret = {id = pk, cd = fear, check = false, skill = getItemAttribute(item, "fearSkill"), cond = "Fear"}
           doCondition2(ret)
        end
        
        local silence = getItemAttribute(item, "silence")
        if silence and silence >= 0 then      
           local ret = {id = pk, cd = silence, eff = getItemAttribute(item, "silenceEff"), check = false, cond = "Silence"}
           doCondition2(ret)
        end                                     
        
        local stun = getItemAttribute(item, "stun")
        if stun and stun >= 0 then
           local ret = {id = pk, cd = stun, eff = getItemAttribute(item, "stunEff"), check = false, spell = getItemAttribute(item, "stunSpell"), cond = "Stun"}
           doCondition2(ret)
        end 
                                                       
        local paralyze = getItemAttribute(item, "paralyze")
        if paralyze and paralyze >= 0 then
           local ret = {id = pk, cd = paralyze, eff = getItemAttribute(item, "paralyzeEff"), check = false, first = true, cond = "Paralyze"}
           doCondition2(ret)
        end  
                                                     
        local slow = getItemAttribute(item, "slow")
        if slow and slow >= 0 then
           local ret = {id = pk, cd = slow, eff = getItemAttribute(item, "slowEff"), check = false, first = true, cond = "Slow"}
           doCondition2(ret)
        end                                              
        
        local leech = getItemAttribute(item, "leech")
        if leech and leech >= 0 then
           local ret = {id = pk, cd = leech, attacker = 0, check = false, damage = getItemAttribute(item, "leechdmg"), cond = "Leech"}
           doCondition2(ret)
        end                               
        
        for i = 1, 3 do
            local buff = getItemAttribute(item, "Buff"..i)
            if buff and buff >= 0 then
               local ret = {id = pk, cd = buff, eff = getItemAttribute(item, "Buff"..i.."eff"), check = false, 
               buff = getItemAttribute(item, "Buff"..i.."skill"), first = true, attr = "Buff"..i}
               doCondition2(ret)
            end
        end
               
	end
	                                                                      --alterado v1.9
    -- if getItemAttribute(item, "boost") and getItemAttribute(item, "boost") >= 50 and getItemAttribute(item, "aura") then
    --    sendAuraEffect(pk, auraSyst[getItemAttribute(item, "aura")])        
    -- end
    
    if getPlayerStorageValue(getCreatureMaster(pk), 6598754) >= 1 then
        setPlayerStorageValue(pk, 6598754, 1)                               
    elseif getPlayerStorageValue(getCreatureMaster(pk), 6598755) >= 1 then
        setPlayerStorageValue(pk, 6598755, 1)
    end
	
	if getPlayerStorageValue(getCreatureMaster(pk), 84929) >= 1 then--torneio viktor
        setPlayerStorageValue(pk, 84929, 1)                               
    end

	return true
end

-- function getOffense(cid)
-- function getDefense(cid)
-- function getSpeed(cid)
-- function getVitality(cid)
-- function getSpecialAttack(cid)
-- function getHappiness(cid)
-- function getPokemonLevel(cid, dex)
-- function getPokeLevel(cid, dex)
-- function getPokemonLevelByName(name)

-- function getSpecialDefense(cid) --?? mixlort
-- 	if not isCreature(cid) then return 0 end
--     return getSpecialAttack(cid) * 0.4 + getDefense(cid) * 0.8 -- 0.4, 0.7 
-- end

function getMasterLevel(poke)
    if not isSummon(poke) then return 0 end
return getPlayerLevel(getCreatureMaster(poke))
end

function getPokemonBoost(poke)
    if not isSummon(poke) then return 0 end
return getItemAttribute(getPlayerSlotItem(getCreatureMaster(poke), 8).uid, "boost") or 0
end

function getPokeballBoost(ball)
    if not isPokeball(ball.itemid) then return 0 end  --alterado v1.8
return getItemAttribute(ball.uid, "boost") or 0
end

function getPokeName(cid)
	if not isSummon(cid) then return getCreatureName(cid) end
	if getCreatureName(cid) == "Evolution" then return getPlayerStorageValue(cid, 1007) end
	
local item = getPlayerSlotItem(getCreatureMaster(cid), 8)
	if getItemAttribute(item.uid, "nome") then
	   return getItemAttribute(item.uid, "nome")
	end
return getCreatureName(cid)
end

function getPokeballName(item, truename)
if not truename and getItemAttribute(item, "nome") then
return getItemAttribute(item, "nome")
end
return getItemAttribute(item, "pokeName")
end

function getPokemonName(cid)
return getCreatureName(cid)
end

-- function getWildPokemonExp(cid, name)
-- 	if not name then
-- 		name = getCreatureName(cid)
--  end
--     if not mixlortStatus(name) then return 0 end
--     local wildXp = mixlortStatus(name).statusExp
--     return wildXp
-- end

-- function mixlortCatch(name)
-- 	if not name then print("ErroMixlortCatch") return end
-- 	-- if not pokes[name] then print("ErroMixlortCatch2: "..name) return end
-- 	if not pokeChance[name] then print("ErroMixlortCatch3: "..name) return end
--     local normalName = retireShinyName(name)
--     local isShiny = isShinyName(name)

--     --Balancemanto Shinys
--     local mediaCatchSh = 3 -- quantas vezes a média de captura dos shinys vai ser maior que a do normal

--     if isShiny then
--     	catchTab = pokeChance[normalName]
--     	catchSto = catchTab.storage + 2000
--     	catchMedia = catchTab.media * mediaCatchSh
--     else
-- 	    catchTab = pokeChance[name]
--     	catchSto = catchTab.storage
--     	catchMedia = catchTab.media
--     end

--     local status = {}
--     status.catchTab = catchTab
--     status.catchSto = catchSto
--     status.catchMedia = catchMedia

--     return status
-- end

-- function mixlortStatus(name)
-- 	if not name then print("ErroMixlortStatus") return end
-- 	-- if not pokes[name] then print("ErroMixlortStatus2: "..name) return end
--     local normalName = retireShinyName(name)
--     local isShiny = isShinyName(name)

--     --Balancemanto Shinys
--     local rateExpSh = 3 -- quanto de xp a mais que os shinys vão dar
-- 	local multiplyLevelUseSh = 2 -- level do normal vezes esse valor para usar pokes shinys
-- 	local multiplyShSummon = 1.6 -- quantas vezes o shiny summon vai ser mais forte que o normal (em todos os status)
-- 	local multiplyShWild = 2.5 -- quantas vezes o shiny selvagem vai ser mais forte que o normal (em todos os status)

--     if isShiny then
--     	local tabPokes = MonsterType(normalName)
--     	statusExp = tabPokes:getExperience() * rateExpSh
--     	levelUse = tabPokes:getMaxlevel() * multiplyLevelUseSh
--     	multiplySummon = multiplyShSummon
--     	multiplyWild = multiplyShWild
--     else
--     	local tabPokes = MonsterType(name)
-- 	    statusExp = tabPokes:getExperience()
--     	levelUse = tabPokes:getMaxlevel()
--     	multiplySummon = 1
--     	multiplyWild = 1
--     end

--     local status = {}
--     status.statusExp = statusExp
--     status.levelUse = levelUse
--     status.multiplySummon = multiplySummon
--     status.multiplyWild = multiplyWild

--     return status
-- end