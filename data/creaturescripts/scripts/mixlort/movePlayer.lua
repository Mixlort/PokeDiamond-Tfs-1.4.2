function onMove(creature, toPosition, fromPosition)

    local name = getCreatureName(creature:getId()) -- Shiny Icon
    if string.find(name, "Shiny") then
        creature:setCreatureIcon(5)
    end -- Shiny Icon

    local player = Player(creature:getId())
    if player then

        local effect = player:getStorageValue(storageEffectWalk) -- Effect Walk
        if player:getStorageValue(storageEffectWalk) > 0 then
            local player_uid = player.uid
            addEvent(effectWhenWalking, 100, player_uid, effect, toPosition)
        end -- Effect Walk

        if player:isOnFly() then -- Fly
            toPosition:createFlyFloor()
        end -- Fly
        
    end

    return true
end
