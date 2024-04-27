Config_ = {
    back = {
        [0] = {x = 0, y = 1},
        [1] = {x = -1, y = 0},
        [2] = {x = 0, y = -1},
        [3] = {x = 1, y = 0},
    };
}

function effectWhenWalking(player_uid, id_effect, position)
    local player = Player(player_uid)
    if player then
        local direction = player:getDirection()
        position.x = position.x + Config_.back[direction].x
        position.y = position.y + Config_.back[direction].y
        position:sendMagicEffect(id_effect)
    end
end

function Player:effectOnWalk(effect)
    if effect == -1 then
        self:setStorageValue(storageEffectWalk, -1)
    else
        self:setStorageValue(storageEffectWalk, effect)
    end
end

function getThingPosWithDebug(what)
    if not isCreature(what) or getCreatureHealth(what) <= 0 then
        return {x = 1, y = 1, z = 10}
    end
    return getThingPos(what)
end
