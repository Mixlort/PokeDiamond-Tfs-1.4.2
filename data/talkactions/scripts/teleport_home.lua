function onSay(player, words, param)
	-- if not player:getGroup():getAccess() then
	-- 	return true
	-- end

	player:teleportToPlus(player:getTown():getTemplePosition())
	return false
end
