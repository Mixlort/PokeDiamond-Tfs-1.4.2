 -- json = require('data/lib/mixlort/json')


diamonditem = 2145
diamondCount35 = 35
diamondCount50 = 50
PassVip = 1
PassPremium = 2
PassFirst = PassVip

Pass = {}
Pass.opcode = 20
Pass.version = 1

BASE_STORAGE = (50000 * Pass.version)

PokePassStorages = {
  PassVip1 = BASE_STORAGE + 1,
  PassVip2 = BASE_STORAGE + 2,
  PassPremium1 = BASE_STORAGE + 3,
  PassPremium2 = BASE_STORAGE + 4,
  PassLevelStorage = BASE_STORAGE + 5,
  PassStarsStorage = BASE_STORAGE + 6,
  PassPremiumStorage = BASE_STORAGE + 7,
  PokeCoinStorage = BASE_STORAGE + 8,
  MissionsStr = BASE_STORAGE + 9,
  PassVersion = BASE_STORAGE + 10,
}


Pass.endDate = {year=2024, month=02, day=29, hour=23, sec=59}
Pass.strgs = {}-- Antes ou igual o nivel 50 usara a storage first
Pass.strgs[PassVip] = {first = PokePassStorages.PassVip1, second = PokePassStorages.PassVip2}
Pass.strgs[PassPremium] = {first = PokePassStorages.PassPremium1, second = PokePassStorages.PassPremium2}
PassLevelStorage = PokePassStorages.PassLevelStorage
PassStarsStorage = PokePassStorages.PassStarsStorage
PassPremiumStorage = PokePassStorages.PassPremiumStorage
local NoneItem = {item = {id = 1, count = 1}}

Pass.items = {}

Pass.items[1] = {}
Pass.items[1][PassVip] = {item = {id = "empty pokeball", count = 40}}
Pass.items[1][PassPremium] = {item = {id = "empty greatball", count = 100}}

Pass.items[2] = {}
Pass.items[2][PassVip] = {item = {id = "Great Potion", count = 40}}
Pass.items[2][PassPremium] = {item = {id = "Ultra Potion", count = 100}}

Pass.items[3] = {}
Pass.items[3][PassVip] = {item = {id = "empty superball", count = 40}}
Pass.items[3][PassPremium] = {item = {id = "empty ultraball", count = 100}}

Pass.items[4] = {}
Pass.items[4][PassVip] = {item = {id = "Ultra Potion", count = 40}}
Pass.items[4][PassPremium] = {item = {id = "Hyper Potion", count = 100}}

Pass.items[5] = {}
Pass.items[5][PassVip] = {item = {id = "revive", count = 40}}
Pass.items[5][PassPremium] = {item = {id = "revive", count = 100}}

Pass.items[6] = {}
Pass.items[6][PassVip] = {item = {id = 39875, count = 5}} -- xp boost 10% 1h
Pass.items[6][PassPremium] = {item = {id = "essence shiny", count = 15}}

Pass.items[7] = {}
Pass.items[7][PassVip] = {item = {id = "essence shiny", count = 5}}
Pass.items[7][PassPremium] = {item = {id = "boost stone", count = 3}}


for level, reward in ipairs(Pass.items) do
  for v=PassFirst, PassPremium do
    if reward[v].skin then
	  reward[v].style = "UIPassSkin"
	elseif reward[v].item then
	  reward[v].style = "UIPassItem"
      reward[v].item.clientId = ItemType(reward[v].item.id):getClientId() -- adaptado
	elseif reward[v].premiumPoints then
	  reward[v].style = "UIPassPremiumPoints"
	elseif reward[v].experience then
	  reward[v].style = "UIPassExperience"
	end
  end
end

local MissionsStr = PokePassStorages.MissionsStr
Pass.missions = {}
Pass.missions[1] = {stars = 1, max = 1, desc = "Oculto", lookType = 128, size = "150 150", position = {x = -20, y = -20}}
--começo
Pass.missions[2] = {stars = 1, max = 12, desc = "Derrote 12 Gyarados", lookType = 1033, size = "64 64", position = {x = 59, y = 28}}
Pass.missions[3] = {stars = 1, max = 12, desc = "Derrote 12 Charizards", lookType = 909, size = "64 64", position = {x = 55, y = 28}}
Pass.missions[4] = {stars = 1, max = 12, desc = "Derrote 12 Rattatas", lookType = 3214, size = "64 64", position = {x = 44, y = 28}}

kill_missions = { -- configurar em ShinyCharm.lua
	["Gyarados"] = {num = 2},
	["Charizard"] = {num = 3},
	["Rattata"] = {num = 4},
}

function sendPassInfo(player)
local player = Player(player)

  local tempo = getPassTimer()

  local protocol = Protocol_create('Pass')
  Protocol_add(protocol, hasPassPremium(player))
  Protocol_add(protocol, getPassLevel(player))
  Protocol_add(protocol, #Pass.items)
  Protocol_add(protocol, getPassStars(player))
  Protocol_add(protocol, getPassDaysLeft())
  Protocol_add(protocol, tempo)
  player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
end

function sendPass(player)
  local player = Player(player)
  sendPassInfo(player)
  local items = {}
  local first = true
  local collecteds = {
    [PassVip] = {},
    [PassPremium] = {},
  }
  for level, reward in ipairs(Pass.items) do
    items[#items+1] = {}
    for passType=PassFirst, PassPremium do
      items[#items][passType] = reward[passType]
      items[#items][passType].collected = hasCollected(player, level, passType)
	  if hasCollected(player, level, passType) then
	    table.insert(collecteds[passType], level)
	  end
	end
    items[#items][PassPremium+1] = level
	if level % 20 == 0 then
	  sendPassItems(player, first, items, collecteds)
	  items = {}
	  first = false
	end
  end
--   printTable(collecteds)
  sendPassItems(player, first, items, collecteds)
  sendPassMissions(player)
end

function sendPassItems(player, first, items, collecteds)
  local player = Player(player)
  if #items == 0 then return end
  local protocol = Protocol_create('Items')
  Protocol_add(protocol, first)
  Protocol_add(protocol, items)
  Protocol_add(protocol, collecteds)
--   printTable(collecteds)
  player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
end

function sendPassMissions(player)
  local missions = {}
  local first = true
  local player = Player(player)
  for num, mission in ipairs(Pass.missions) do
    missions[#missions+1] = mission
	missions[#missions].progress = math.max(0, player:getStorageValue(MissionsStr+num))
	if num % 20 == 0 then
      local protocol = Protocol_create('Missions')
      Protocol_add(protocol, first)
      Protocol_add(protocol, missions)
      player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
	  missions = {}
	  first = false
	end
  end
  if #Pass.missions % 20 == 0 then return end
  local protocol = Protocol_create('Missions')
  Protocol_add(protocol, first)
  Protocol_add(protocol, missions)
  player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
end

function hasPassPremium(player)
  local player = Player(player)
  local strg = player:getStorageValue(PassPremiumStorage)
  return strg == -1 and false or (strg == 1 and true or false)
end

function checkPassVersion(player)
  local player = Player(player)
  if math.max(1, tonumber(player:getStorageValue(PokePassStorages.PassVersion))) == Pass.version then return end
  player:setStorageValue(PokePassStorages.PassVersion, Pass.version)
  player:setStorageValue(PassLevelStorage, 0)
  player:setStorageValue(PassStarsStorage, 0)
  for passType = PassFirst, PassPremium do
    player:setStorageStringValue(Pass.strgs[passType].first, -1)
    player:setStorageStringValue(Pass.strgs[passType].second, -1)
  end
end

function getPassLevel(player)
  local player = Player(player)
  return math.max(0, player:getStorageValue(PassLevelStorage))
end

function getPassStars(player)
  local player = Player(player)
  return math.max(0, player:getStorageValue(PassStarsStorage))
end

function getPassTimer()
  local hometimerH = os.date("%H") * 60 * 60
  local hometimerM = os.date("%M") * 60
  local hometimerS = os.date("%S")
  local hometimer = hometimerH + hometimerM + hometimerS
 
  return 86400-hometimer
end

function getPassDaysLeft()
  local cdt = os.date('*t')
  local currentDateValue = os.time{year=cdt.year, month=cdt.month, day=cdt.day, hour=cdt.hour}
  local endDateValue = os.time{year=Pass.endDate.year, month=Pass.endDate.month, day=Pass.endDate.day, hour=Pass.endDate.hour}
  if currentDateValue >= endDateValue then return 0 end
  return math.floor(convertOsTime(endDateValue-currentDateValue).hours / 24)
end

function updatePassMission(player, num, progress)
  local player = Player(player)
  local mon_name = num
  local monsterType = MonsterType(mon_name)
  num = kill_missions[mon_name].num
  local mission = Pass.missions[num]
  if not mission then return end
  local current = math.max(0, player:getStorageValue(MissionsStr+num))
  if current >= mission.max then return end
  current = current + progress
  player:setStorageValue(MissionsStr+num, current)
  doPlayerSendNotification(player, '[Pass System] Killed '..current..'/'..mission.max..' '..mon_name..'.', {image = "/data/images/pictures/"..monsterType:getNumber()..""})
  if current >= mission.max then
    addPassStars(player, mission.stars)
    doPlayerSendNotification(player, '[Pass System] Você terminou de matar todos os '..mon_name..' e ganhou '..mission.stars..' stars.', {image = "/data/images/pictures/"..monsterType:getNumber()..""})
  else
    sendPassMissions(player)
  end
end

function addPassStars(player, stars)
  local player = Player(player)
  checkPassVersion(player)
  local cdt = os.date('*t')
  if os.time{year=cdt.year, month=cdt.month, day=cdt.day, hour=cdt.hour} > os.time{year=Pass.endDate.year, month=Pass.endDate.month, day=Pass.endDate.day, hour=Pass.endDate.hour} then print("Notime") return false end
  local passLevel = getPassLevel(player)
  local oldLevel = passLevel
  if passLevel >= #Pass.items then
	return false
  end
  local currentStars = getPassStars(player)+stars
  while (currentStars >= 10) do
	currentStars = currentStars - 10
    passLevel = passLevel+1
  end
  if passLevel >= #Pass.items then
    currentStars = 10
	passLevel = #Pass.items
	sendPass(player)
  end
  player:setStorageValue(PassLevelStorage, passLevel)
  player:setStorageValue(PassStarsStorage, currentStars)
  if oldLevel < passLevel then
    sendPassInfo(player)
    sendPassMissions(player)
  else
    sendPass(player)
  end
  return true
  end

  function hasCollected(player, level, passType)
    local player = Player(player)
    local hc = player:getStorageStringValue(level <= 50 and Pass.strgs[passType].first or Pass.strgs[passType].second)
    if hc == -1 then return false end
    return isInArray(json.decode(hc), level)
  end

  function buyPassLevel(player)
    local player = Player(player)
    if player:getItemCount(diamonditem) >= 3 then
    if getPassStars(player) == 0 then
        if not addPassStars(player, 10) then return end
    elseif getPassStars(player) == 1 then
        if not addPassStars(player, 9) then return end
    elseif getPassStars(player) == 2 then
        if not addPassStars(player, 8) then return end
    elseif getPassStars(player) == 3 then
        if not addPassStars(player, 7) then return end
    elseif getPassStars(player) == 4 then
        if not addPassStars(player, 6) then return end
    elseif getPassStars(player) == 5 then
        if not addPassStars(player, 5) then return end
    elseif getPassStars(player) == 6 then
        if not addPassStars(player, 4) then return end
    elseif getPassStars(player) == 7 then
        if not addPassStars(player, 3) then return end
    elseif getPassStars(player) == 8 then
        if not addPassStars(player, 2) then return end
    elseif getPassStars(player) == 9 then
        if not addPassStars(player, 1) then return end
    end
    player:getPosition():sendMagicEffect(1001)
    sendPass(player)
    player:removeItem(diamonditem, 3)
    local protocol = Protocol_create('PassLevelUp')
    player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
    elseif player:getItemCount(diamonditem) < 3 then
    local protocol = Protocol_create('NoDiamonds')
    player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
    return
    end
  end

  function buyPass35(player)
    local player = Player(player)
    if hasPassPremium(player) then return end
    if player:getItemCount(diamonditem) >= 35 then
      player:setStorageValue(PassPremiumStorage, 1) -- adiciona o pass
      local pos = player:getPosition()
      pos.x = pos.x+1
      pos.y = pos.y+1
      pos:sendMagicEffect(1001)
      player:getPosition():sendMagicEffect(1001)
      player:removeItem(diamonditem, 35)
      local protocol = Protocol_create('Pass35Buyed')
      player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
      sendPass(player)
    elseif player:getItemCount(diamonditem) < 35 then
      local protocol = Protocol_create('NoDiamondsBuyPass')
      player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
      sendPass(player)
    		return
    	end
  end

function buyPass50(player)
    local player = Player(player)
    if hasPassPremium(player) then return end
    if player:getItemCount(diamonditem) >= 50 then
      local PokeCoin = player:getStorageValue(PokePassStorages.PokeCoinStorage)
      player:setStorageValue(PassPremiumStorage, 1) -- adiciona o pass
      if not addPassStars(player, 50) then return end -- adicionar 5 leveis
      player:setStorageValue(PokePassStorages.PokeCoinStorage, PokeCoin+20)  -- adicionar 20 PokeCoins
      local pos = player:getPosition()
      pos.x = pos.x+1
      pos.y = pos.y+1
      pos:sendMagicEffect(1001)
      player:getPosition():sendMagicEffect(1001)
      player:removeItem(diamonditem, 50)
      local protocol = Protocol_create('Pass50Buyed')
      player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
      sendPass(player)
    elseif player:getItemCount(diamonditem) < 50 then
      local protocol = Protocol_create('NoDiamondsBuyPass')
      player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
      sendPass(player)
    		return
    	end
  end

  function collectPassReward(player, level, passType)
    local player = Player(player)
    if level <= 0 or level > #Pass.items then return end
    if passType < PassFirst or passType > PassPremium then return end
    checkPassVersion(player)
    if level > getPassLevel(player) then return end
    local reward = Pass.items[level]
    if not reward then return end
    if passType == PassVip then
      if not isPremium(player) then
        local protocol = Protocol_create('NoVipCollect')
        player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
        return
      end
      if not hasCollected(player, level, PassVip) then
        addPassReward(player, level, passType, reward[PassVip])
      end
    elseif passType == PassPremium then
      if not hasPassPremium(player) then
        local protocol = Protocol_create('NoPass')
        player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
        return
      end
      if not hasCollected(player, level, PassPremium) then
        addPassReward(player, level, passType, reward[PassPremium])
      end
    end
  end
  function addPassReward(player, level, passType, reward)
    local player = Player(player)
    local message = ""
    if reward.item then
      player:addItem(reward.item.id, reward.item.count)
  	message = message.."Você ganhou "..reward.item.count.."x "..getItemName(reward.item.id)
    elseif reward.experience then
      player:addExperience(reward.experience)
  	message = message.."Você ganhou "..reward.experience.."pontos de experiência"
    elseif reward.skin then
      player:setStorageValue(reward.skin.strg, 1)
  	message = message.."Você ganhou a roupa "..reward.skin.name
    elseif reward.premiumPoints then
      player:addPremiumDays(reward.premiumPoints)
  	message = message.."Você ganhou "..reward.premiumPoints.." dias de premium"
    end
    local hc = player:getStorageStringValue(level <= 50 and Pass.strgs[passType].first or Pass.strgs[passType].second)
    if hc == -1 then hc = {} else hc = json.decode(hc) end
    table.insert(hc, level)
    player:setStorageStringValue(level <= 50 and Pass.strgs[passType].first or Pass.strgs[passType].second, json.encode(hc))
    doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, message)
    local protocol = Protocol_create('UpdateReward')
    Protocol_add(protocol, level)
    Protocol_add(protocol, passType)
    player:sendExtendedOpcode(Pass.opcode, table.tostring(protocol))
  end


  function Protocol_create(byte)
    local protocol      = {}
          protocol[1]   = {}
          protocol[2]   = 0
          protocol[3]   = byte
   
    return protocol
  end

  function Protocol_add(protocol, string)
    table.insert(protocol[1], string)
  end

  function Protocol_read(protocol)
    protocol[2] = protocol[2] + 1

    return protocol[1][protocol[2]]
    end

function convertOsTime(seconds)
  local hours = 0
  local minutes = 0
  repeat
    if seconds >= 60 then
      minutes = minutes + 1; seconds = seconds - 60
    elseif minutes >= 60 then
      hours = hours + 1; minutes = minutes - 60
    end
  until seconds < 60 and minutes < 60
  return {hours = hours, seconds = seconds, minutes = minutes}
end