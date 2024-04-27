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

    if player:getHealth() <= 40 then
        local maxHealth = player:getMaxHealth() - player:getHealth()
        if maxHealth < 1 then
            maxHealth = player:getMaxHealth()
        end
        player:addHealth(maxHealth)
    end

    doUpdateMoves(player)
    player:updatePokebar()
	return true
end
