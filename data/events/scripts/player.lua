function Player:onBrowseField(position)
	if hasEventCallback(EVENT_CALLBACK_ONBROWSEFIELD) then
		return EventCallback(EVENT_CALLBACK_ONBROWSEFIELD, self, position)
	end
	return true
end

function Player:onLook(thing, position, distance)
	local description = ""
    if hasEventCallback(EVENT_CALLBACK_ONLOOK) then
        description = EventCallback(EVENT_CALLBACK_ONLOOK, self, thing, position, distance, description)
    end
    if not thing:isItem() and isSummon(thing) then
        local master = thing:getMaster()
        if master:isPlayer() then
            local item = master:getUsingBall()
            local pokeName = item:getPokeName()
            local pokeBoost = item:getPokeBoost() or 0
            if pokeName ~= nil then            
                description = string.format("%s\nIt belongs to %s. Boost: +%s. Health: %s. Vitality: %s. Attack: %s. Defense %s. Magic Attack: %s. Magic Defense: %s. Armor: %s. Speed: %s.", description, master:getName(), pokeBoost, getStatus(thing).life, getStatus(thing).vit, getStatus(thing).atk, getStatus(thing).def, getStatus(thing).spAtk, getStatus(thing).spDef, getStatus(thing).def, getStatus(thing).speed)
                description = string.format("%s\nUniqueId: %s", description, item:getBallUniqueId())
                -- description = string.format("%s\nOffense: %s", description, getOffense(thing.uid))
                -- description = string.format("%s\nDefense: %s", description, getDefense(thing.uid))
                -- description = string.format("%s\ngetSpecialDefense: %s", description, getSpecialDefense(thing.uid))
                -- description = string.format("%s\ngetVitality: %s", description, getVitality(thing.uid))
                -- description = string.format("%s\ngetSpecialAttack: %s", description, getSpecialAttack(thing.uid))
            end
        end
    end
    if thing:isPlayer() and thing ~= self then
        if thing:getAccountType() == ACCOUNT_TYPE_TUTOR then
            if thing:getSex() == PLAYERSEX_MALE then
                description = string.format("%s He is a Tutor.", description)
            else
                description = string.format("%s She is a Tutor.", description)
            end
        end
    end
    if thing:isPlayer() and thing == self then
        if thing:getAccountType() == ACCOUNT_TYPE_TUTOR then
            description = string.format("%s You are a Tutor.", description)
        end
    end

    if thing:isCreature() then
        if thing:isPlayer() then
            local client = thing:getClient()
            description = string.format("%s\nIP: %s PING: %i FPS: %i.", description, Game.convertIpToString(thing:getIp()), client.ping, client.fps)
        end
    end

	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onLookInBattleList(creature, distance)
	local description = ""
    if hasEventCallback(EVENT_CALLBACK_ONLOOKINBATTLELIST) then
        description = EventCallback(EVENT_CALLBACK_ONLOOKINBATTLELIST, self, creature, distance, description)
    end

    if isSummon(creature) then
        local master = creature:getMaster()
        local pokeName = master:getName()
        if pokeName ~= nil then            
            description = string.format("%s\nIt belongs to %s.", description, master:getName())
        end
    end
	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onLookInTrade(partner, item, distance)
	local description = "You see " .. item:getDescription(distance)
    if hasEventCallback(EVENT_CALLBACK_ONLOOKINTRADE) then
        description = EventCallback(EVENT_CALLBACK_ONLOOKINTRADE, self, partner, item, distance, description)
    end

    if item:isPokeball() then
        local pokeName = item:getPokeName()
        local pokeBoost = item:getPokeBoost() or 0
        local pokeLove = item:getSpecialAttribute("pokeLove") or 0
        local pokeHealth = item:getPokeHealth()
        local healthStr = ""
        if pokeHealth <= 0 then
            healthStr = "It is fainted."
        end
        if pokeName ~= nil and healthStr ~= nil then           
            description = string.format("%s\nIt contains a %s. Boost: +%s. Love: +%s. %s", description, pokeName, pokeBoost, pokeLove, healthStr)
            description = string.format("%s\nUniqueId: %s", description, item:getBallUniqueId())
        end
    end
	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onLookInShop(itemType, count, description)
	local description = "You see " .. description
	if hasEventCallback(EVENT_CALLBACK_ONLOOKINSHOP) then
		description = EventCallback(EVENT_CALLBACK_ONLOOKINSHOP, self, itemType, count, description)
	end
	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onMoveItem(item, count, fromPosition, toPosition, fromCylinder, toCylinder)
    if toPosition.x == CONTAINER_POSITION then
        local containerId = toPosition.y - 64
        local container = self:getContainerById(containerId)
        if not container then return true end
        -- The player also shouldn't be able to insert items into the boss corpse       
        local tile = Tile(container:getPosition())
        for _, item in ipairs(tile:getItems()) do
            if item:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER) == 2^31 - 1 and item:getName() == container:getName() then
                self:sendCancelMessage('Sorry, not possible.')
                return RETURNVALUE_NOTPOSSIBLE
            end
        end
    end

    local itemFloor = Tile(toPosition)
    if itemFloor and itemFloor:getGround():getId() == flyFloor then return RETURNVALUE_NOTPOSSIBLE end


    --mixlort unique item
    if not self:inPlayerBagOrDepot(toPosition, true) then 
        if item:isUniqueItem() then
            return RETURNVALUE_NOTPOSSIBLE -- criar RETURNVALUE_NOTMOVEUNIQUEITEM
        elseif item:isContainer() and item:getUniqueItems() then
            return RETURNVALUE_NOTPOSSIBLE -- criar RETURNVALUE_NOTMOVEUNIQUEITEM
        end
    end  

    -- Do not let the player move the boss corpse.
    if item:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER) == 2^31 - 1 then
        self:sendCancelMessage('Sorry, not possible.')
        return RETURNVALUE_NOTPOSSIBLE
    end

    if item:getId() == 2270 or item:getId() == 2263 or item:getId() == 8922 then self:sendCancelMessage("Sorry, not possible.") return RETURNVALUE_NOTPOSSIBLE end
    if item:getId() == 27634 and toPosition.x ~= 65535 and self:getStorageValue(storageBike) > 0 then self:sendCancelMessage("Sorry, not possible.") return RETURNVALUE_NOTPOSSIBLE end
    if item:getId() == 26749 then
        print("WARNING! Player " .. self:getName() .. " moving ancient stone!")
    end
    if fromPosition.x == 65535 and fromPosition.y == 10 or (toPosition.x == 65535 and toPosition.y == 10) and item:isPokeball() then 
        if self:getStorageValue(storageFly) == 1 then
            self:sendCancelMessage("Sorry, not possible while on fly.")
            return RETURNVALUE_NOTPOSSIBLE
        end
        if self:getStorageValue(storageSurf) > 0 then
            self:sendCancelMessage("Sorry, not possible while on surf.")
            return RETURNVALUE_NOTPOSSIBLE
        end
        if self:getStorageValue(storageRide) > 0 then
            self:sendCancelMessage("Sorry, not possible while on ride.")
            return RETURNVALUE_NOTPOSSIBLE
        end
        local summon = self:getSummon()
        if summon and summon:isEvolving() then
            self:sendCancelMessage("Sorry, not possible. Your summon is evolving.")
            return RETURNVALUE_NOTPOSSIBLE
        end
    end
    if fromPosition.x == 65535 and fromPosition.y == 10 and item:isPokeball() then
        local pokeName = item:getPokeName()
        local monsterType = MonsterType(pokeName)
        local portraitId = monsterType:portraitId()
        if portraitId == 0 then return true end
        local putPortrait = self:removeItem(portraitId)
        if not putPortrait then
            print("WARNING! Problem on remove portrait player events " .. pokeName .. " player " .. self:getName())
        end 
    end

    if self:isDuelingWithNpc() and item:isPokeball() and toPosition.x == 65535 and fromPosition.x ~= 65535 then
        self:sendCancelMessage("Sorry, not possible while in duel.")
        return RETURNVALUE_NOTPOSSIBLE
    end

    if item:isPokeball() then
        local isBallBeingUsed = item:getSpecialAttribute("isBeingUsed")
        if isBallBeingUsed and isBallBeingUsed == 1 then
            return RETURNVALUE_NOTPOSSIBLE
        end
    elseif item:isContainer() then
        for i, ball in pairs(self:getPokeballs()) do
            local isBallBeingUsed = ball:getSpecialAttribute("isBeingUsed")
            if isBallBeingUsed and isBallBeingUsed == 1 then
                return RETURNVALUE_NOTPOSSIBLE
            end
        end
    end

    if item:getActionId() == NOT_MOVEABLE_ACTION then
        self:sendCancelMessage('Sorry, not possible.')
        return RETURNVALUE_NOTPOSSIBLE
    end
    
    if toPosition.x == CONTAINER_POSITION and toCylinder and toCylinder:getId() == 26052 then
        self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        return RETURNVALUE_NOTPOSSIBLE
    end

    if toPosition.x ~= CONTAINER_POSITION then
        return true
    end

    if item:getTopParent() == self and bit.band(toPosition.y, 0x40) == 0 then   
        local itemType, moveItem = ItemType(item:getId())
        if bit.band(itemType:getSlotPosition(), SLOTP_TWO_HAND) ~= 0 and toPosition.y == CONST_SLOT_LEFT then
            moveItem = self:getSlotItem(CONST_SLOT_RIGHT)   
        elseif itemType:getWeaponType() == WEAPON_SHIELD and toPosition.y == CONST_SLOT_RIGHT then
            moveItem = self:getSlotItem(CONST_SLOT_LEFT)
            if moveItem and bit.band(ItemType(moveItem:getId()):getSlotPosition(), SLOTP_TWO_HAND) == 0 then
                return true
            end
        end

        if moveItem then
            local parent = item:getParent()
            if parent:getSize() == parent:getCapacity() then
                self:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_CONTAINERNOTENOUGHROOM))
                return RETURNVALUE_NOTPOSSIBLE
            else
                return moveItem:moveTo(parent)
            end
        end
    end

    if hasEventCallback(EVENT_CALLBACK_ONMOVEITEM) then
        return EventCallback(EVENT_CALLBACK_ONMOVEITEM, self, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
    end
    
	return RETURNVALUE_NOERROR
end

-- function Player:onItemMoved(item, count, fromPosition, toPosition, fromCylinder, toCylinder)
--     -- if item:isPokeball() or item:isContainer() then
--     --     self:refreshPokemonBar({}, {})
--     -- end
-- end

function Player:onItemMoved(item, count, fromPosition, toPosition, fromCylinder, toCylinder)
	if hasEventCallback(EVENT_CALLBACK_ONITEMMOVED) then
		EventCallback(EVENT_CALLBACK_ONITEMMOVED, self, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
	end

    --mixlort pokebar
    if self:inPlayerBagOrDepot(toPosition) then 
        if item:isPokeball() then
            self:pokeBarUpdatePoke(item)
        elseif item:isContainer() then
            for i, ball in pairs(item:getPokeballs()) do
                self:pokeBarUpdatePoke(ball) -- add
            end
        end
    elseif self:inPlayerBagOrDepot(fromPosition) then
        if item:isPokeball() then
            self:pokeBarRemoveOnePoke(item)
        elseif item:isContainer() then
            for i, ball in pairs(item:getPokeballs()) do
                self:pokeBarRemoveOnePoke(ball) -- add
            end
        end
    end  

    -- local containerIgual, containerFrom
    -- local slotBp = getPlayerSlotItem(self, 3).uid
    -- local containerBp = getContainerBackpack(slotBp)
    -- if fromPosition.x == CONTAINER_POSITION then
    --     containerFrom = self:getContainerById(fromPosition.y - 64) -- mixlort remover?
    --     if Tile(toPosition) then 
    --         if item:isPokeball() then
    --             self:pokeBarRemoveOnePoke(item) -- remove
    --         elseif item:isContainer() then
    --             for i, ball in pairs(item:getPokeballs()) do
    --                 self:pokeBarRemoveOnePoke(ball) -- remove
    --             end
    --         end
    --     end
    -- end
    -- if toPosition.x == CONTAINER_POSITION then
    --     local containerTo = self:getContainerById(toPosition.y - 64)
    --     if not containerTo then return true end
    --     if containerFrom and containerFrom.uid == containerTo.uid then containerIgual = true end
    --     if not containerIgual then
    --         if item:isPokeball() then
    --             if slotBp == containerTo.uid or table.find(containerBp, containerTo.uid) then
    --                 self:pokeBarUpdatePoke(item) -- add
    --             else
    --                 self:pokeBarRemoveOnePoke(item) -- remove
    --             end
    --         elseif item:isContainer() then
    --             for i, ball in pairs(item:getPokeballs()) do
    --                 if slotBp == containerTo.uid or table.find(containerBp, containerTo.uid) then
    --                     self:pokeBarUpdatePoke(ball) -- add
    --                 else
    --                     self:pokeBarRemoveOnePoke(ball) -- remove
    --                 end
    --             end
    --         end
    --     end
    -- end
end

function Player:onMoveCreature(creature, fromPosition, toPosition)
	if hasEventCallback(EVENT_CALLBACK_ONMOVECREATURE) then
		return EventCallback(EVENT_CALLBACK_ONMOVECREATURE, self, creature, fromPosition, toPosition)
	end
	return true
end

function Player:onReportRuleViolation(targetName, reportType, reportReason, comment, translation)
	if hasEventCallback(EVENT_CALLBACK_ONREPORTRULEVIOLATION) then
		EventCallback(EVENT_CALLBACK_ONREPORTRULEVIOLATION, self, targetName, reportType, reportReason, comment, translation)
	end
end

function Player:onReportBug(message, position, category)
	if hasEventCallback(EVENT_CALLBACK_ONREPORTBUG) then
		return EventCallback(EVENT_CALLBACK_ONREPORTBUG, self, message, position, category)
	end
	return true
end

function Player:onTurn(direction)
    if hasEventCallback(EVENT_CALLBACK_ONTURN) then
        return EventCallback(EVENT_CALLBACK_ONTURN, self, direction)
    end
    if hasSummons(self) then
        local summon = self:getSummons()[1]
        local summonDirection = summon:getDirection()
        if summonDirection == direction then return true end
        summon:setDirection(direction)
        -- summon:setIdle(6000)
    end
	return true
end

function Player:onTradeRequest(target, item)
    if self:isDuelingWithNpc() and item:isPokeball() then
        self:sendCancelMessage("Sorry, not possible while in duel.")
        return false
    end
    if item:isPokeball() then
        if item:isBeingUsed() then
            self:sendCancelMessage("Sorry, not possible while using pokeball.")
            return false
        end
    end
    if item:isContainer() then
        for i, ball in pairs(self:getPokeballs()) do
            local isBallBeingUsed = ball:getSpecialAttribute("isBeingUsed")
            if isBallBeingUsed and isBallBeingUsed == 1 then
                self:sendCancelMessage("Sorry, not possible while using pokeball.")
                return false
            end
        end
    end
    if item:isUniqueItem() then
        self:sendCancelMessage("Desculpe, voc� n�o pode trocar um item �nico.")
        return false
    elseif item:isContainer() and item:getUniqueItems() then
        self:sendCancelMessage("Desculpe, voc� n�o pode trocar um item �nico.")
        return false
    end
	if hasEventCallback(EVENT_CALLBACK_ONTRADEREQUEST) then
		return EventCallback(EVENT_CALLBACK_ONTRADEREQUEST, self, target, item)
	end
	return true
end

function Player:onTradeAccept(target, item, targetItem)
	if hasEventCallback(EVENT_CALLBACK_ONTRADEACCEPT) then
		return EventCallback(EVENT_CALLBACK_ONTRADEACCEPT, self, target, item, targetItem)
	end
    -- self:refreshPokemonBar({}, {})
    -- target:refreshPokemonBar({}, {})
	return true
end

function Player:onTradeCompleted(target, item, targetItem, isSuccess)
	if hasEventCallback(EVENT_CALLBACK_ONTRADECOMPLETED) then
		EventCallback(EVENT_CALLBACK_ONTRADECOMPLETED, self, target, item, targetItem, isSuccess)
	end
    if item:isPokeball() then
        player:pokeBarRemoveOnePoke(item) -- remove
        target:pokeBarUpdatePoke(item) -- add
    end
end

-- local soulCondition = Condition(CONDITION_SOUL, CONDITIONID_DEFAULT)
-- soulCondition:setTicks(4 * 60 * 1000)
-- soulCondition:setParameter(CONDITION_PARAM_SOULGAIN, 1)

local function useStamina(player)
	local staminaMinutes = player:getStamina()
	if staminaMinutes == 0 then
		return
	end

	local playerId = player:getId()
	if not nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = 0
	end

	local currentTime = os.time()
	local timePassed = currentTime - nextUseStaminaTime[playerId]
	if timePassed <= 0 then
		return
	end

	if timePassed > 60 then
		if staminaMinutes > 2 then
			staminaMinutes = staminaMinutes - 2
		else
			staminaMinutes = 0
		end
		nextUseStaminaTime[playerId] = currentTime + 120
	else
		staminaMinutes = staminaMinutes - 1
		nextUseStaminaTime[playerId] = currentTime + 60
	end
	player:setStamina(staminaMinutes)
end

function Player:onGainExperience(source, exp, rawExp)
    local bonusExp = 1 -- bonus de algum evento
    local multiplierExp = 0.1 --(0.25) -- how many times more exp than players a monster will get
    if not source then return exp end

	-- Apply experience stage multiplier
    local expWildBruto = exp
    exp = exp * Game.getExperienceStage(self:getLevel())
    exp = exp * multiplierExp
    exp = exp * bonusExp

	-- Stamina modifier
	if configManager.getBoolean(configKeys.STAMINA_SYSTEM) then
		useStamina(self)

		local staminaMinutes = self:getStamina()
		if staminaMinutes > (staminaMinutesPadrao*60) and self:isPremium() then
			exp = exp * 1.5
		elseif staminaMinutes <= (staminaMinutes1*60) then
			exp = exp * 0.5
        elseif staminaMinutes <= (staminaMinutes2*60) then
            exp = exp * 0.15
        elseif staminaMinutes <= (staminaMinutes3*60) then
            exp = exp * 0
		end
	end

   -- Update questlog
    if exp + self:getExperience() >= getNeededExp(self:getLevel() + 1) then
        self:updateQuestLog()
    end

    if self:isPremium() then
        exp = exp * 1.05
    end

    if self:getStorageValue(45144) - os.time() > 1 then
        exp = exp * (1+(self:getStorageValue(45145)/100))
    end 

	return hasEventCallback(EVENT_CALLBACK_ONGAINEXPERIENCE) and EventCallback(EVENT_CALLBACK_ONGAINEXPERIENCE, self, source, exp, rawExp) or exp
end

function Player:onLoseExperience(exp)
	return hasEventCallback(EVENT_CALLBACK_ONLOSEEXPERIENCE) and EventCallback(EVENT_CALLBACK_ONLOSEEXPERIENCE, self, exp) or exp
end

function Player:onGainSkillTries(skill, tries)
	if APPLY_SKILL_MULTIPLIER == false then
		return hasEventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES) and EventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES, self, skill, tries) or tries
	end
	if skill == SKILL_MAGLEVEL then
		tries = tries * configManager.getNumber(configKeys.RATE_MAGIC)
		return hasEventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES) and EventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES, self, skill, tries) or tries
	end
	tries = tries * configManager.getNumber(configKeys.RATE_SKILL)
	return hasEventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES) and EventCallback(EVENT_CALLBACK_ONGAINSKILLTRIES, self, skill, tries) or tries
end

function Player:onWrapItem(item)
	local topCylinder = item:getTopParent()
	if not topCylinder then
		return
	end

	local tile = Tile(topCylinder:getPosition())
	if not tile then
		return
	end

	local house = tile:getHouse()
	if not house then
		self:sendCancelMessage("You can only wrap and unwrap this item inside a house.")
		return
	end

	if house ~= self:getHouse() and not string.find(house:getAccessList(SUBOWNER_LIST):lower(), "%f[%a]" .. self:getName():lower() .. "%f[%A]") then
		self:sendCancelMessage("You cannot wrap or unwrap items from a house, which you are only guest to.")
		return
	end

	local wrapId = item:getAttribute("wrapid")
	if wrapId == 0 then
		return
	end

	if not hasEventCallback(EVENT_CALLBACK_ONWRAPITEM) or EventCallback(EVENT_CALLBACK_ONWRAPITEM, self, item) then
		local oldId = item:getId()
		item:remove(1)
		local item = tile:addItem(wrapId)
		if item then
			item:setAttribute("wrapid", oldId)
		end
	end
end
