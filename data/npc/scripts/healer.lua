local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local function creatureGreetCallback(cid, message)
	-- if message == nil then
	-- 	return true
	-- end
    local npc = Npc()
	local player = Player(cid)
	local playerHealth = player:getHealth()
	local playerMaxHealth = player:getMaxHealth()

	if playerHealth < playerMaxHealth then
		player:addHealth(playerMaxHealth - playerHealth)
	end
		
	if hasSummons(player) then
		local usingBall = player:getUsingBall()
        local ballKeyTwo = getBallKey(usingBall:getId())		
        doRemoveSummon(player:getId(), balls[ballKeyTwo].effectRelease, false, true, balls[ballKeyTwo].missile)
		-- local summon = player:getSummons()[1]
		-- summon:addHealth(-summon:getHealth() + summon:getMaxHealth())
	end

	for i, ball in pairs(player:getPokeballs()) do
        for c = 1, 15 do
            local str = "move"..c
            setCD(ball, str, 0)
        end
        setCD(ball, "control", 0)
        setCD(ball, "blink", 0)
        doCureBallStatus(ball, "all")
        -- doCureStatus(player, "all", true)
        cleanBuffs2(ball)

       	ball:setSpecialAttribute("pokeHealth", ball:getPokeMaxHealth())
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        player:pokeBarUpdatePoke(ball) -- Refresh Pokemon Bar
	end
	selfSay('Take care yourself.', cid)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)

    dialog = "Todos os seus Pokemons foram curados. Tome cuidado por aí!"
    doSendCallForNpc(npc, player, "HiNpc", "#8461b2", nil, dialog)

	return false
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:addModule(FocusModule:new())
