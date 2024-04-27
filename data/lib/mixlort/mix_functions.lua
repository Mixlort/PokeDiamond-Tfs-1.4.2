staffAcess = {"Mixlord"} 

staminaMinutesMaximo = 56 -- 150%
staminaMinutesPadrao = 54  -- 100%
staminaMinutes1 = 15 -- 50%
staminaMinutes2 = 5 -- 15%
staminaMinutes3 = 2 -- 0%

function isGod(cid)
  if isPlayer(cid) then 
    if getPlayerGroupId(cid) >= 6 then
      return true 
    end
    return false
  end
end

function Player.teleportToPlus(self, position) 
    self:sendExtendedOpcode(133, "fade")
    addEvent(function()
        if self:getId() and Creature(self:getId()) then
            self:teleportTo(position)
        end
    end, 450)
end

function selectTargetSpell(creature)
    local target = creature:getTarget()
    if target then
        return target
    else
        if creature:getMaster() and creature:getMaster():getTarget() then
            return creature:getMaster():getTarget()
        end
    end
end

function isShinyName(name)
    return tostring(name) and string.find(doCorrectString(name), "Shiny") --alterado v1.9
end

function retireShinyName(str)
    if not str then 
        print("erro retireShinyName")
        return 
    end
    if string.find(str, "Shiny") then
        return str:match("Shiny (.*)") 
    end
    return str
end  

function isRiderOrFlyOrSurf(cid)
  if getPlayerStorageValue(cid, orderTalks["surf"].storage) == 1 or getPlayerStorageValue(cid, orderTalks["ride"].storage) == 1 or getPlayerStorageValue(cid, orderTalks["fly"].storage) == 1 then
    return true 
  end
  return false
end

function transformBallItem(item, id, ballKey)
    if item and isNumber(item) then item = Item(item) end
    if not item then return false end
    if not ballKey then ballKey = getBallKey(item:getId()) end
    if id == STATUS_BALL_NORMAL then
        item:setSpecialAttribute("isBeingUsed", 0)
        ballKey = item:getSpecialAttribute("ballKey") or ballKey
        item:transform(balls[ballKey].usedOff)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOn)
    elseif id == STATUS_BALL_USE then
        item:setSpecialAttribute("isBeingUsed", 1) 
        if not item:getSpecialAttribute(item, "ballKey") then
            item:setSpecialAttribute("ballKey", ballKey)
        end
        item:transform(balls[ballKey].usedOn)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOff)
        -- item:transform(balls["premier"].usedOff)
    elseif id == STATUS_BALL_DEATH then
        item:setSpecialAttribute("isBeingUsed", 0)
        ballKey = item:getSpecialAttribute("ballKey") or ballKey
        item:transform(balls[ballKey].usedOn)
        item:setSpecialAttribute("statusBall", id)
        item:transform(balls[ballKey].usedOff)
    end
end

function onUseRevive(player, item, fromPosition, target)
    if not target then return false end
    if type(target) ~= "userdata" then return false end
    if target:isCreature() or not target:isItem() then return false end

	if not target:isPokeball() then
		player:sendCancelMessage("Sorry, not possible. You can only use on pokeballs.")
		return true
	end

    -- if hasSummons(player) and (player:getUsingBall():getUniqueId() == target:getUniqueId()) then
    --     player:sendCancelMessage("Sorry, not possible.")
    --     return true
    -- end   

    if hasSummons(player) then
        player:sendCancelMessage("Você não pode usar revive com pokemons pra fora.")
        return true
    end   

    local summonMaxHealth = target:getPokeMaxHealth()
	local summonName = target:getPokeName()

	if player:isDuelingWithNpc() then
		player:sendCancelMessage("Sorry, not possible while in duels.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	if player:isOnLeague() then
		if not player:canUseReviveOnLeague() then
			player:sendCancelMessage("Sorry, you can not use revive anymore.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return true
		end
	end

    for c = 1, 15 do
        local str = "move"..c
        setCD(target.uid, str, 0)
    end

    setCD(target.uid, "control", 0)
    setCD(target.uid, "blink", 0)
    doCureBallStatus(target.uid, "all")
    doCureStatus(cid, "all", true)
    cleanBuffs2(target.uid)

	target:setSpecialAttribute("pokeHealth", summonMaxHealth)
    transformBallItem(target, STATUS_BALL_NORMAL)
    player:setStorageValue(storageGoback, -1)
    player:pokeBarUpdatePoke(target) -- Refresh Pokemon Bar
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	item:remove(1)

    return true
end

function revivePokemonByNumber(cid, pokeNumber)
    if not cid:getId() or (cid:getItemCount(27645) < 1) then return false end
    local revive = Player(cid):getItemById(27645, true)
    for i, poke in pairs(cid:getPokeballs()) do
        if i == pokeNumber then
            onUseRevive(cid, revive, nil, poke)
            return true
        end
    end
    return false
end

function getHealthPercent(ball)
    if not ball then return nil end
    local healthNow = math.floor(ball:getPokeHealth()) * 100
    local healthMax = math.floor(ball:getPokeMaxHealth())
    return math.floor(healthNow / healthMax)
end

function Player.updatePokebar(player)
    for i, ball in pairs(player:getPokeballs()) do
        if not ball then
            player:pokeBarRemoveOnePoke(ball)
            return false
        end
        local name = ball:getPokeName()
        if not name then return false end
        local outfit = getOutfitOtclient({ lookType = MonsterType(name):getOutfit().lookType })
        local health = getHealthPercent(ball) or 0
        local fastcallNumber = ball:getBallUniqueId()
        local tipo = ""
        if ball:getSpecialAttribute("isBeingUsed") == 1 then tipo = "USE" end
        local data = { 
            fastcallNumber = fastcallNumber, 
            health = health, 
            name = name, 
            outfit = outfit,
            text = tipo
        }
        player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_UPDATE, data = data}))
    end
end

function Player.pokeBarUpdatePoke(player, ball)
    local name = ball:getPokeName()
    local outfit = getOutfitOtclient({ lookType = MonsterType(name):getOutfit().lookType })
    local health = getHealthPercent(ball) or 0
    local fastcallNumber = ball:getBallUniqueId()
    local tipo = ""
    if ball:getSpecialAttribute("isBeingUsed") == 1 then tipo = "USE" end
    local data = { 
        fastcallNumber = fastcallNumber,
        health = health,
        name = name, 
        outfit = outfit,
        text = tipo
    }
    player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_UPDATE, data = data}))
end

function Player.pokeBarRemoveOnePoke(player, item)
    local name = item:getPokeName()
    local number = item:getBallUniqueId()
    player:sendExtendedOpcode(POKEBAR_OPCODE, json.encode({action = ACTION_POKEBAR_REMOVE, data = number}))
end

function onUsePokemon(player, item)
    if player:isSummonBlocked() then if debugGoback then print("Test1") end return true end
    if player:getStorageValue(storageGoback) > 0 and not player:getUsingBall() then if debugGoback then print("Test2") end return true end

	local ballKey = getBallKey(item:getId())
	local summon = player:getSummon()
	local fromPosition2 = getCreaturePosition(player)
	local toPosition2 = getCreaturePosition(summon)
	local creature = Creature(summon)

	if hasSummons(player) then
		local usingBall = player:getUsingBall()
        local ballKeyTwo = getBallKey(usingBall:getId())		
        doRemoveSummon(player:getId(), balls[ballKeyTwo].effectRelease, false, true, balls[ballKeyTwo].missile)
        if usingBall == item then return true end

        if item:getTopParent() == player then

            local health = item:getPokeHealth() or 0
            if health <= 0 then
                if debugGoback then print("33") end
                player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
                transformBallItem(item, STATUS_BALL_DEATH)
                player:setStorageValue(storageGoback, -1)
                return true
            end 

            if player:canReleaseSummon(item) then
                if player:getSummons()[1] then player:setStorageValue(storageGoback, -1) return true end
                addEvent(function()
                    if player:getId() and isPlayer(player:getId()) then
                        doReleaseSummon(player:getId(), getPlayerPosition(player:getId()), balls[ballKey].effectRelease, true, balls[ballKey].missile)
                    end
                end, 600)
            end
        -- else
        --     if item:getSpecialAttribute("isBeingUsed") == 1 then --corrects the bug of players using balls that were not holding
        --         transformBallItem(item, STATUS_BALL_NORMAL)
        --         player:setStorageValue(storageGoback, -1)
        --     end
        end
        return true
    end

    if item:getTopParent() == player then

        local health = item:getPokeHealth() or 0
        if health <= 0 then
            if debugGoback then print("35") end
            player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
            transformBallItem(item, STATUS_BALL_DEATH)
            player:setStorageValue(storageGoback, -1)
            return true
        end 

        if player:canReleaseSummon(item) then
            if player:getSummons()[1] then player:setStorageValue(storageGoback, -1) return true end
            addEvent(function()
                if player:getId() and isPlayer(player:getId()) then
                    doReleaseSummon(player:getId(), getPlayerPosition(player:getId()), balls[ballKey].effectRelease, true, balls[ballKey].missile)
                end
            end, 250)
        end
    -- else
    --     if item:getSpecialAttribute("isBeingUsed") == 1 then --corrects the bug of players using balls that were not holding
    --         transformBallItem(item, STATUS_BALL_DEATH)
    --         player:setStorageValue(storageGoback, -1)
    --     end
    end
	return true
end

function Item.getBallUniqueId(item)
    local attribute = item:getSpecialAttribute(BALLS_UNIQUE_ATT)
    if not attribute then return item:setBallUniqueId() end
    return attribute
end

function Item.setBallUniqueId(item)
    local attribute = item:getSpecialAttribute(BALLS_UNIQUE_ATT)
    if attribute then return attribute end    
    local resultId = db.storeQuery("SELECT `value` FROM `pokeballs_uniqueid` WHERE `value`")
    if resultId ~= false then
        local value = result.getNumber(resultId, "value")
        local valueAtt = value + 1
        result.free(resultId)
        db.query("UPDATE `pokeballs_uniqueid` SET `value` = " .. valueAtt)
        item:setSpecialAttribute(BALLS_UNIQUE_ATT, valueAtt)
        return valueAtt
    end
end

function Item.getPokeName(item)
    local attribute = item:getSpecialAttribute("pokeName")
    if not attribute then return false end
    return attribute
end

-- function Item.getPokeLevel(item)
--     local attribute = item:getSpecialAttribute("pokeLevel")
--     if not attribute then return false end
--     return attribute
-- end

function Item.getPokeBoost(item)
    local attribute = item:getSpecialAttribute("pokeBoost") or 0
    if not attribute then return false end
    return attribute
end

function Item.getPokeHealth(item)
    local attribute = tonumber(item:getSpecialAttribute("pokeHealth"))
    if not attribute then return false end
    return attribute
end

function Item.getPokeMaxHealth(item)
    local attribute = item:getSpecialAttribute("pokeMaxHealth")
    if not attribute then return false end
    return attribute
end

function Player.addPokeToPlayer(player, name, boost, ballKey, dp, unique)
    local player = Player(player)
    if not player then return false end
    local name, monsterType, boost = firstToUpper(name), MonsterType(name), boost or 0
    if not monsterType then return false end
    if (player:getPokeballCount() > LIMIT_POKES - 1) and not player:getGroup():getAccess() then dp = true end 
    local addBall
    if dp then
        local depot = player:getInbox()
        addBall = depot:addItem(balls[ballKey].usedOn, 1, INDEX_WHEREEVER, FLAG_NOLIMIT)
        doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você já está carregando a capacidade máxima, a ball foi enviada para o DP.")
    else
        if unique then 
            addBall = player:addUniqueItem(balls[ballKey].usedOn, 1, false)
        else
            addBall = player:addItem(balls[ballKey].usedOn, 1, false)
        end
    end
    if not addBall then
        if dp then -- try send to CP because BP is full
            addEvent(doPlayerSendTextMessage, "", player, MESSAGE_STATUS_WARNING, "Pokemon lost. Your CP is full!")
        else
            local depot = player:getInbox()
            addBall = depot:addItem(balls[ballKey].usedOn, 1, INDEX_WHEREEVER, FLAG_NOLIMIT)
            addEvent(doPlayerSendTextMessage, "", player, MESSAGE_EVENT_ADVANCE, "Since you are at maximum capacity, your ball was sent to CP.")
            dp = true
        end
    end
    if addBall then
        local gender = gender or 0
        local genders = {
            ["male"] = 4,
            ["female"] = 3,
            ["indefinido"] = 1,
            ["genderless"] = 1,
            [1] = 4,
            [0] = 3,
            [4] = 4,
            [3] = 3,
        }
        local GENDER = (gender and genders[gender]) and genders[gender] or getRandomGenderByName(pokemon)
        local happy = 250
        local maxHealth = getStatusS(name, boost, player:getLevel()).life
        addBall:setSpecialAttribute("pokeName", name)
        addBall:setSpecialAttribute("pokeBoost", boost)
        addBall:setSpecialAttribute("pokeHealth", maxHealth)
        addBall:setSpecialAttribute("pokeMaxHealth", maxHealth)
        addBall:setSpecialAttribute("happy", happy)
        addBall:setSpecialAttribute("gender", GENDER)
        transformBallItem(addBall, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        if not dp then
            player:pokeBarUpdatePoke(addBall)
        end
        return true
    else
        print("ERROR! Player " .. player:getName() .. " lost pokemon " .. name .. " for unknown reason.")
    end
    return false
end

function Player.addUniqueItem(player, itemId, count)
    item = Game.createItem(itemId, count)
    if not item then return false end
    local itemType = ItemType(itemId)
    if not itemType then return false end
    local description = itemType:getDescription()
    if description ~= "" then
        description = description .. "\n"
    end
    item:setAttribute(ITEM_ATTRIBUTE_ACTIONID, UNIQUE_ITEM_ACTIONID)
    item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, description .. "(Item Unico)")
    if player:addItemEx(item) ~= RETURNVALUE_NOERROR then
        item:remove()
        local depot = player:getInbox()
        item = depot:addItem(itemId, count, INDEX_WHEREEVER, FLAG_NOLIMIT)
        doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "Você não tem espaço, o item foi enviado para o DP.")
    end
    return item
end

function Item.isUniqueItem(item)
    local itemAtt = item:getAttribute(ITEM_ATTRIBUTE_ACTIONID)
    if itemAtt and itemAtt == UNIQUE_ITEM_ACTIONID then 
        return true 
    else
        return false
    end
end

function Container.getUniqueItems(self)
    local size = self:getSize()
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isUniqueItem() then
            return true
        elseif item:isContainer() then
            if item:getUniqueItems() then
                return true
            end
        end
    end
    return false
end

function Player.getUniqueItems(self)
    local unique = {}
    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        unique = backpack:getUniqueItems()
    end     
    return unique
end

function Container.getContainers(self)
    local size = self:getSize()
    local novaTabela = {}
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isContainer() then
            table.insert(novaTabela, item.uid) 
            for i, container in pairs(item:getContainers()) do
                if container:isContainer() then 
                    table.insert(novaTabela, container.uid)
                end
            end
        end
    end
    return novaTabela
end

function Player.getContainers(self)
    local containers = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        containers = backpack:getContainers()
    end 
    
    return containers
end

function Container.getPokeballs(self)
    local size = self:getSize()
    local novaTabela = {}
    for i = 0, size - 1 do
        local item = self:getItem(i)
        if item:isPokeball() then
            if item:getPokeName() then 
                local number = item:getBallUniqueId()
                novaTabela[number] = item
            end
        elseif item:isContainer() then
            for i, ball in pairs(item:getPokeballs()) do
                if ball:getPokeName() then 
                    local number = ball:getBallUniqueId()
                    novaTabela[number] = ball
                end
            end
        end
    end
    return novaTabela
end

function Player.getPokeballs(self)
    local pokeballs = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        pokeballs = backpack:getPokeballs()
    end 
    
    return pokeballs
end

function Container.getBall(self, param)
    local ret = {}
    local size = self:getSize()
    for i = size - 1, 0, -1 do
        local item = self:getItem(i)
        if item:isPokeball() then
            table.insert(ret, item)
        elseif item:isContainer() then
            local itemsInside = item:getBall()
            for i=0, #itemsInside do
                table.insert(ret, itemsInside[i])
            end
        end
    end
    return ret
end

function Player.getBall(self)
    local pokeballs = {}

    local backpack = self:getSlotItem(CONST_SLOT_BACKPACK)
    if backpack then
        pokeballs = backpack:getBall()
    end 
    
    return pokeballs
end

typeTableByRaceName = {
    ["normal"] = {color = 129},
    ["fire"] = {color = 192}, -- color 144
    ["fighting"] = {color = 127}, 
    ["water"] = {color = 29},
    ["flying"] = {color = 137}, -- 172
    ["grass"] = {color = 26},
    ["poison"] = {color = 103}, 
    ["electric"] = {color = 210},
    ["ground"] = {color = 121},
    ["psychic"] = {color = 125},
    ["rock"] = {color = 127},
    ["ice"] = {color = 71},
    ["bug"] = {color = 132}, -- 30 trocado por 132
    ["dragon"] = {color = 175},
    ["ghost"] = {color = 77},
    ["dark"] = {color = 53},
    ["steel"] = {color = 172},
} 


function damageColorByRace(combat, name)
    local monsterType = MonsterType(name)
    -- local race = monsterType:getRace()
    local raceName = monsterType:getRaceName()
    if typeTable[combat] and typeTable[combat].color then
        return typeTable[combat].color
    -- elseif typeTable[race] and typeTable[race].color then
    --     return typeTable[race].color
    elseif typeTableByRaceName[raceName] and typeTableByRaceName[raceName].color then
        return typeTableByRaceName[raceName].color
    else
        return 0
    end
end

function doCreatureAddHealth(cid, health, effect, color) 
    local c = Creature(cid) 
    if not c then return true end
    if effect then 
        if effect > 0 then
            effect = effect + 1 
        end
        c:getPosition():sendMagicEffect(effect) 
    end
    if color then 
        if health == -0 then 
            health = health * -1
        end
        doSendAnimatedText(c:getPosition(), math.floor(health), color) 
    end
    return c and c:addHealth(health) or false 
end

function Player.addBossesClient(player)
    local BOSS_HEALTH_OPCODE = 67
    local bosses = {"Boss Golem", "Boss Kingler", "Boss Machamp", "Boss Parasect", "Boss Poliwhirl", "Boss Seadra", "Boss Venomoth", "Boss Vileplume"}
    player:sendExtendedOpcode(BOSS_HEALTH_OPCODE, json.encode({data = bosses}))
end

function Monster.getLevel(poke)
    local name = poke:getName()
    local monsterType = MonsterType(name)
    if monsterType then
        return monsterType:getMaxlevel()
    else
        print("Error: Monster.getLevel(poke) - poke not found: "..poke:getName())
        return 0
    end
end

function setPassiveSpells(poke)
    if poke:getStorageStringValue(storages.STORAGE_PASSIVESPELL) ~= -1 then return true end
    local name = poke:getName()
    local monsterType = MonsterType(name)
    local moves = monsterType:getMoveList()
    local passivas = {}
    local passiveChances = {}
    if monsterType and moves then
        for i = 1, #moves do
            if moves[i].passive and moves[i].passive == "sim" then
                table.insert(passivas, moves[i].name) -- Insere a passiva na lista
                table.insert(passiveChances, moves[i].speed) -- Insere a passiva na lista
            end
        end
        if #passivas > 0 then
            poke:setStorageStringValue(storages.STORAGE_PASSIVESPELL, table.concat(passivas, ",")) -- Concatena as passivas separadas por vírgula
            poke:setStorageStringValue(storages.STORAGE_PASSIVESPELL_CHANCE, table.concat(passiveChances, ",")) -- Concatena as passivas separadas por vírgula
        end
    end
end

function getPassiveRandomSpell(poke)
    if poke:getStorageStringValue(storages.STORAGE_PASSIVESPELL) == -1 then return false end
    local passivasSto = poke:getStorageStringValue(storages.STORAGE_PASSIVESPELL)
    local passivas = string.explode(passivasSto, ",")
    local random = math.random(1, #passivas)

    local passivasChanceSto = poke:getStorageStringValue(storages.STORAGE_PASSIVESPELL_CHANCE)
    local passivasChance = string.explode(passivasChanceSto, ",")
    local randomChance = passivasChance[random]

    if randomChance then
        randomChance = tonumber(randomChance)
        if math.random(1, 100) <= randomChance then
	        doCreatureSay(poke, passivas[random], TALKTYPE_MONSTER)
            if not poke then return true end
            doCreatureCastSpell(poke, passivas[random])
        end
    end
    
    return true
end

function getPokemonLevel(cid)
    if not isCreature(cid) then return 0 end 
    return MonsterType(cid:getName()):getMaxlevel()
end

function Player.setSurfing(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageSurf, 1)
    else
        self:setStorageValue(storageSurf, -1)
    end
end

function Player.isSurfing(self)
    return self:getStorageValue(storageSurf) == 1
end

function Player.setRiding(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageRide, 1)
    else
        self:setStorageValue(storageRide, -1)
    end
end

function Player.isRiding(self)
    return self:getStorageValue(storageRide) == 1
end

function Player.setFlying(self, bool)
    if bool and bool == 1 then
        self:setStorageValue(storageFly, 1)
    else
        self:setStorageValue(storageFly, -1)
    end
end

function Player.isFlying(self)
    return self:getStorageValue(storageFly) == 1
end

function Item.setAbilityCd(self, ability, time)
    if not self:isItem() then return false end
    self:setSpecialAttribute(ability, ((time * 60) + os.time()))
    return true
end

function Item.getAbilityCd(self, ability)
    if not self:isItem() then return false end
    local atribute = self:getSpecialAttribute(ability)
    if atribute and atribute - os.time() > 0 then 
        return atribute - os.time()
    else
        return 0
    end
end

function Player.addAbility(player, ball, ability, teleportPos)
    if not player or not player:isPlayer() then return false end
    if not ball or not ball:isItem() then return false end
    local pokeName = ball:getPokeName()
    local monsterType = MonsterType(pokeName)
    local outfit, speed
    if ability == "surf" then
        if teleportPos then player:teleportTo(teleportPos) end
        local tileUnder = Tile(player:getPosition())
        local groundUnder = tileUnder:getGround()
        if not isInArray(waterIds, groundUnder:getId()) then
            player:setSurfing()
            player:teleportTo(player:getTown():getTemplePosition())
            player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
            transformBallItem(ball, STATUS_BALL_NORMAL)
            player:setStorageValue(storageGoback, -1)
            return true
        end
        player:setSurfing(1)
        speed = 300 + surfs[pokeName].speed * 3
        outfit = monsterType:isSurfable()
    elseif ability == "ride" then
        player:setRiding(1)
        speed = rides[pokeName][2] * 1.5
        outfit = monsterType:isRideable()
    elseif ability == "fly" then
        player:setFlying(1)
        speed = flys[pokeName][2] * 1.5
        outfit = monsterType:isFlyable()
    end
    if not outfit then return false end
    if not speed then print("poke sem speed no surf:"..pokeName) return false end
    transformBallItem(ball, STATUS_BALL_USE)
    player:setStorageValue(storageGoback, 1)
    speed = speed + 20
    player:changeSpeed(speed)
    doSetCreatureOutfit(player, {lookType=outfit}, -1)
    if player:getSummon() then
        player:getSummon():remove()
    end
    return true
end

function Player.removeAbility(player, ball, ability, toPosition, target)
    if not player or not player:isPlayer() then return false end
    if not ball or not ball:isItem() then return false end
    local toPosition = toPosition or player:getPosition()
    local ballName = ball:getPokeName()
    local newPos = toPosition
    if ability == "surf" then
        if getDistanceBetween(player:getPosition(), toPosition) > 1 then
            player:sendCancelMessage("You're too far to stop surfing.")
            return true
        end	
        if target then
            newPos = {x=toPosition.x-surfItems[target:getId()].x, y=toPosition.y-surfItems[target:getId()].y, z=toPosition.z}
            if getTileThingByPos(newPos) == 0 or getTileInfo(newPos).house then
                player:sendCancelMessage("You can't go there.")
                return true
            end
            player:teleportTo(newPos)
        end
        player:setSurfing()
        player:say(ballName..", i'm tired of surfing!", TALKTYPE_ORANGE_1)
    elseif ability == "ride" then
        player:setRiding()
        player:say(ballName..", i'm tired of riding!", TALKTYPE_ORANGE_1)
    elseif ability == "fly" then
        local pos = player:getPosition()
        local tileUnder = Tile({x=pos.x, y=pos.y, z=pos.z, stackpos=0})
        local groundUnder = tileUnder:getGround()
        if not tileUnder or not groundUnder then return false end
        if isInArray(blockedTiles, groundUnder:getId()) then
            player:sendCancelMessage("You can't get off your pokemon here.")
            return true
        end
        player:setFlying()
        player:say(ballName..", i'm tired of flying!", TALKTYPE_ORANGE_1)
    end
    player:removeCondition(CONDITION_OUTFIT)
    player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
    doReleaseSummon(player:getId(), player:getPosition(), false, false)
    return true
end

function getPokePrice(name, boost)
    boost = boost or 0

    local monsterType = MonsterType(name)
    local chanceMedia = monsterType:getMedia() * mixTableBalls[monsterType:getBallType()].rate
    if isShinyName(name) then 
        if chanceMedia <= 10 then
            chanceMedia = chanceMedia*20
        elseif chanceMedia < 50 then
            chanceMedia = chanceMedia*15
        else
            chanceMedia = chanceMedia * 2
        end
        chanceMedia = chanceMedia / 2
    end
    local rawPrice = math.ceil(chanceMedia * 0.5)
    if rawPrice <= 1 then 
        rawPrice = 1
    else
        rawPrice = rawPrice / mixTableBalls[monsterType:getBallType()].rate
        rawPrice = rawPrice * mixTableBalls[monsterType:getBallType()].price
    end
    
    local price = rawPrice + (boost*1000)
    return price
end

function Player.inPlayerBagOrDepot(self, position, depot) 
    if position.x == CONTAINER_POSITION then
        local container = self:getContainerById(position.y - 64)
        if not container then return true end
        local playerBag = getPlayerSlotItem(self, 3).uid
        local containerBp = getContainerBackpack(playerBag)
        if depot and container:getName() == "depot chest" or container:getName() == "locker" then
            return true
        end
        if playerBag == container.uid or containerBp and table.find(containerBp, container.uid) then
            return true
        end
    end
    return false
end
