function onLogin(player)
	local serverName = configManager.getString(configKeys.SERVER_NAME)
    local loginStr = "Bem vindo(a) ao " .. serverName .. "!"
	if player:getLastLoginSaved() <= 0 then
        loginStr = loginStr .. " Por favor escolha sua outfit."
		player:sendOutfitWindow()
        player:enableAutoLoot()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

        loginStr = string.format("Sua última visita foi em %s: %s.", serverName, os.date("%d %b %Y %X", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(PlayerStorageKeys.promotion)
		if value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
    player:registerEvent("MonsterHealthChange")
    player:registerEvent("movePlayer")
    player:registerEvent("ExtendedOpcode")
    player:registerEvent("Shop")
    player:registerEvent("levelUpEffect")

    -- Update questlog
    player:updateQuestLog()

    if player:isOnSurf() then -- Check surf        
        if not player:addAbility(player:getUsingBall(), "surf") then
            print("WARNING! Player " .. player:getName() .. " summonName not found onLogin for surf!")
            player:setSurfing()
            player:teleportTo(player:getTown():getTemplePosition())
        end   
    elseif player:isOnRide() then -- Check ride
        if not player:addAbility(player:getUsingBall(), "ride") then
            print("WARNING! Player " .. player:getName() .. " summonName not found onLogin for ride!")
            player:setRiding()
            player:teleportTo(player:getTown():getTemplePosition())
        end   
    elseif player:isOnFly() then -- Check fly
        if not player:addAbility(player:getUsingBall(), "fly") then
            print("WARNING! Player " .. player:getName() .. " summonName not found onLogin for fly!")
            player:setFlying()
            player:teleportTo(player:getTown():getTemplePosition())
        end   
    elseif player:isOnDive() then -- Check dive
        -- player:setStorageValue(storageDive, -1)
        doChangeOutfit(player:getId(), {lookType = 267})
        player:changeSpeed(player:getBaseSpeed()-player:getSpeed())
        player:setStorageValue(storageGoback, -1)
        if player:getUsingBall() then
            transformBallItem(player:getUsingBall(), STATUS_BALL_NORMAL)
        end
    else
        player:setStorageValue(storageDive, -1)
        player:setStorageValue(storageGoback, -1)
        if player:getUsingBall() then
            transformBallItem(player:getUsingBall(), STATUS_BALL_NORMAL)
        end
    end

    -- Announces
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Bem vindo ao Pokemon MS!")

    if player:getStorageValue(45144) - os.time() > 1 then
        doPlayerSendNotification(player, "Você ainda tem um Experience Booster ativo de "..player:getStorageValue(45145).."%. Ele irá acabar em "..convertTime(player:getStorageValue(45144) - os.time())..".", {itemId = 39875})
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Você ainda tem um Experience Booster ativo de "..player:getStorageValue(45145).."%. Ele irá acabar em "..convertTime(player:getStorageValue(45144) - os.time())..".")
    end

    if player:getStorageValue(4125) - os.time() > 0 then
        doPlayerSendNotification(player, "[Shiny Charm]: "..convertTime(player:getStorageValue(4125) - os.time()).." restantes.", {itemId = 39872})
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "[Shiny Charm]: "..convertTime(player:getStorageValue(4125) - os.time()).." restantes.")
    end

    if player:getHealth() == 40 then
        local healthNew = player:getMaxHealth() - 40
        player:addHealth(healthNew)
    end

    -- limit pokeballs
    player:setMaxMana(6)
    local ballCount = player:getPokeballCount() or 0
    local playerMana = player:getMana() or 0
    player:addMana(ballCount - playerMana)    

    player:updatePokebar()
	return true
end
