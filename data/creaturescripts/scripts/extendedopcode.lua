function onExtendedOpcode(player, opcode, buffer)
    local player = Player(player)  
    if opcode == POKEBAR_OPCODE_REVIVE then
        revivePokemonByNumber(player, (json.decode(buffer).pokemonNumber))
    elseif opcode == Pass.opcode then
        if string.find(buffer, "BuyLevel") then
            buyPassLevel(player)
        elseif string.find(buffer, "BuyPass50") then
            buyPass50(player)
        elseif string.find(buffer, "BuyPass35") then
            buyPass35(player)
        elseif string.find(buffer, "#Collect#") then
            if os.time() > player:getStorageValue(storages.STORAGE_DELAY_OPCODE_PASS) then
                player:setStorageValue(storages.STORAGE_DELAY_OPCODE_PASS, os.time() + 1)
                local explode = string.explode(buffer, '#Collect#')
                collectPassReward(player, tonumber(explode[1]), tonumber(explode[2]))
            else
                player:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
            end            
        end
    end  
end