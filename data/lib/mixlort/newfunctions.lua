local areafly = createCombatArea({
    {1, 1, 1},
    {1, 3, 1},
    {1, 1, 1}
})

local areaflytwo = {
    {1, 1, 1},
    {1, 3, 1},
    {1, 1, 1}
}

-- stonesId = { -- lixo
-- {"Water", 2267},
-- {"Fire", 1}
-- }
--legendaryPokemons = {"Zapdos", "Articuno", "Moltres", "Mew", "Mewtwo", "Raikou", "Entei", "Suicune", "Ho-oh", "Lugia", "Celebi", "Regirock", "Regice", "Registeel", "Latias", "Latios", "Kyogre", "Groudon", "Rayquaza", "Shiny Zapdos", "Shiny Articuno", "Shiny Moltres", "Shiny Mew", "Shiny Mewtwo", "Shiny Raikou", "Shiny Entei", "Shiny Suicune", "Shiny Ho-oh", "Shiny Lugia", "Shiny Celebi", "Shiny Regirock", "Shiny Regice", "Shiny Registeel", "Shiny Latias", "Shiny Latios", "Shiny Kyogre", "Shiny Groudon", "Shiny Rayquaza"}

maxBoost = 50
summonMaxLevel = 200 -- maximum level of pokes
maxVitamins = 10
shinyChance = 2.5 -- 0.5%
flyFloor = 43721 
moveWords = {"m1", "m2", "m3", "m4", "m5", "m6", "m7", "m8", "m9", "m10", "m11", "m12"}
legendaryIndex = {144, 145, 146, 150, 151, 243, 244, 245, 249, 250, 251, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386}
arenaLastPlayerId = 0

damageMultiplierMoves = {areawaves = 2.75, singletargetweak = 2.0, singletarget = 3.5, singletargetstrong = 4.0, areatarget = 3.0, frontlinear = 5.0, frontarea = 4.0, passive = 3.0, ultimate = 6.0}
summonLevelDamageBuff = 0.007 -- buff due to summon's level
playerLevelDamageBuff = 0.001 -- buff due to player's level
summonBoostDamageBuff = 0.008 -- buff due to summon's boost
summonLoveDamageBuff = 0.0001 -- buff due to summon's love
vitaminStatusBuff = 1.2
hunterDamageBuff = 1.1
blockerHealthBuff = 1.25
catcherCatchBuff = 1.1
explorerExperienceBuff = 1.15
healerHealBuff = 2.0

-- mixlort
storageGoback = 14620

storageDelay = 1000
storageDelayBag = 1001
baseStorageDex = 67000
baseStorageMove = 45000

storageRide = 5000
storageFly = 5001
storageSurf = 5002
storageEvolving = 5003
storageTutorial = 5004
storageDelayTeleport = 5005
storageBike = 5006
storageDelayDesbugar = 5007
storageDive = 5008
storageAutoLoot = 5009
storageBagEvent = 5010
storageArenaEvent = 5011
storageSoccerEvent = 5012
storageEvent = 5013
storageTokens = 5014
storageLastLegendaryKilled = 5015
storageLastBossKilled = 5022
storageDuelNpc = 5016
storageDuelNpcStatus = 5017
storageTeleportTc = 5018
storageEvolutionAncient = 5019
storageArenaPvpEvent = 5020
storageLogoutSpeed = 5021

-- Mixlort
storageEffectWalk = 1802
-- Task Cath Mixlort
storageCatchQuestRoberto = 1820

storageCatchQuest = 91000
storageCatchQuestDay = 91001
storageCatchQuestNumber = 91002
storageCatchQuestStartCatch = 91003
storageCatchQuestTime = 91004
storageCatchQuestDifficulty = 91005

storageLeague = 91006
storageLeagueDone = 91007
storageLeagueTime = 91008
storageLeaguePotion = 91009
storageLeagueRevive = 910010

storageVictoryRoadTime = 91011

storageRedRequestPre = 91012

storageCatchQuestPoke = 91013

storageItemQuest = 91014
storageItemQuestDay = 91015
storageItemQuestNumber = 91016
storageItemQuestItem = 91017
storageItemQuestTime = 91018
storageItemQuestDifficulty = 91019

slotItems = {1988} -- 26820
badgesPortraits = {12267, 12266, 12264, 12265, 12263, 12262, 12261, 12260}
badgeContainer = 1988

waterIds = {493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 7236, 10499, 15401, 15402, 4820, 4821, 4822, 4823, 4824, 4825, 4664, 4665, 4666}

function buildDex()
    -- monstersTable = {}
    -- local monstersName = getMonstersName()
    -- for i = 1, #monstersName do
    --  local monsterNumber = MonsterType(monstersName[i]):dexEntry()
    --  if monsterNumber > 0 then
    --      monstersTable[monsterNumber] = monstersName[i]
    --  end
    -- end
    -- print("WARNING! Pokedex successfully built.")
end

function getBlessingsCost(level)
    if level <= 30 then
        return 2000
    elseif level >= 120 then
        return 20000
    else
        return (level - 20) * 200
    end
end

function getPvpBlessingCost(level)
    if level <= 30 then
        return 2000
    elseif level >= 270 then
        return 50000
    else
        return (level - 20) * 200
    end
end

function getTibianTime()
    local worldTime = getWorldTime()
    local hours = math.floor(worldTime / 60)

    local minutes = worldTime % 60
    if minutes < 10 then
        minutes = '0' .. minutes
    end
    return hours .. ':' .. minutes
end

function getNeededExp(level) return (50 * (level * level * level - 6 * level * level + 17 * level - 12) / 3) end

-- function statusGainFormula(playerLevel, summonLevel, summonBoost, pokeLove)
--  return (1.0 + summonLevel * summonLevelDamageBuff + playerLevel * playerLevelDamageBuff + summonBoost * summonBoostDamageBuff + pokeLove * summonLoveDamageBuff)
-- end

-- function damageFormula(playerLevel, summonLevel, summonBoost, pokeLove)
--  return statusGainFormula(playerLevel, summonLevel, summonBoost, pokeLove)
-- end

-- function defenseFormula(playerLevel, summonLevel, summonBoost, pokeLove)
--  return (1.0 / 600.0 * statusGainFormula(playerLevel, summonLevel, summonBoost, pokeLove))
-- end

-- function Monster.getTotalHealth(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then
--      local total = math.floor(monsterType:getMaxHealth() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      if self:getMaster():getVocation():getName() == "Blocker" then
--          total = total * blockerHealthBuff
--      end
--      local vitamins = self:getUsedVitaminsNumber("pokeHealth")
--      if vitamins > 0 then
--          total = total + math.floor(monsterType:getMaxHealth() * vitamins / maxVitamins * vitaminStatusBuff)
--      end

--      if isSummon(self) then
--          local master = self:getMaster()
--          if master:getSummonNameFromBall() == "Ditto" then
--              total = total * 0.70
--          end
--          if master:getSummonNameFromBall() == "Shiny Ditto" then
--              total = total * 0.85
--          end
--      end

--      return total
--  elseif self:isMonster() then
--      return math.floor(monsterType:getMaxHealth() * statusGainFormula(0, self:getLevel(), 0, 0))
--  end
--  return 0
-- end

-- function MonsterType.getMeleeDamage(self)
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #self:getAttackList() do
--      if self:getAttackList()[i].isMelee == 1 then    
--          minMelee = minMelee - self:getAttackList()[i].minCombatValue        
--          maxMelee = maxMelee - self:getAttackList()[i].maxCombatValue            
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  return math.floor(aveMelee)
-- end

-- function Monster.getTotalMeleeAttack(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 1
--  local maxMelee = 1
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then 
--      local total = math.floor(aveMelee * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      if self:getMaster():getVocation():getName() == "Hunter" then
--          total = total * hunterDamageBuff
--      end
--      local vitamins = self:getUsedVitaminsNumber("attack")
--      if vitamins > 0 then
--          total = total + math.floor(aveMelee * vitamins / maxVitamins * vitaminStatusBuff)
--      end

--      if isSummon(self) then
--          local master = self:getMaster()
--          if master:getSummonNameFromBall() == "Ditto" then
--              total = total * 0.70
--          end
--          if master:getSummonNameFromBall() == "Shiny Ditto" then
--              total = total * 0.85
--          end
--      end

--      return total
--  elseif self:isMonster() then
--      return math.floor(aveMelee * statusGainFormula(0, self:getLevel(), 0, 0))   
--  end
--  return 0
-- end

-- function Monster.getTotalMeleeAttackPlayerContribution(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then 
--      return math.floor(aveMelee * (statusGainFormula(self:getMaster():getLevel(), 0, 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMeleeAttackSummonLevelContribution(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then 
--      return math.floor(aveMelee * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  elseif self:isMonster() then
--      return math.floor(aveMelee * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMeleeAttackSummonBoostContribution(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then 
--      return math.floor(aveMelee * (statusGainFormula(0, 0, self:getBoost(), 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMeleeAttackVocationContribution(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then 
--      if self:getMaster():getVocation():getName() == "Hunter" then
--          return math.floor(aveMelee * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()) * (hunterDamageBuff - 1.0))
--      end
--  end
--  return 0
-- end

-- function Monster.getTotalMeleeAttackVitaminContribution(self)
--  local monsterType = MonsterType(self:getName())
--  local minMelee = 0
--  local maxMelee = 0
--  for i = 1, #monsterType:getAttackList() do
--      if monsterType:getAttackList()[i].isMelee == 1 then 
--          minMelee = minMelee - monsterType:getAttackList()[i].minCombatValue     
--          maxMelee = maxMelee - monsterType:getAttackList()[i].maxCombatValue         
--      end
--  end
--  local aveMelee = (minMelee + maxMelee) / 2
--  if self:isPokemon() then
--      local vitamins = self:getUsedVitaminsNumber("attack")
--      if vitamins > 0 then
--          return math.floor(aveMelee * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttack(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then
--      local total = math.floor(monsterType:getMoveMagicAttackBase() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      if self:getMaster():getVocation():getName() == "Hunter" then
--          total = total * hunterDamageBuff
--      end
--      local vitamins = self:getUsedVitaminsNumber("magicAttack")
--      if vitamins > 0 then
--          total = total + math.floor(monsterType:getMoveMagicAttackBase() * vitamins / maxVitamins * vitaminStatusBuff)
--      end

--      if isSummon(self) then
--          local master = self:getMaster()
--          if master:getSummonNameFromBall() == "Ditto" then
--              total = total * 0.70
--          end
--          if master:getSummonNameFromBall() == "Shiny Ditto" then
--              total = total * 0.85
--          end
--      end

--      -- total = total * 0.8
--      return total
--  elseif self:isMonster() then
--      return math.floor(monsterType:getMoveMagicAttackBase() * statusGainFormula(0, self:getLevel(), 0, 0))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttackVocationContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then
--      if self:getMaster():getVocation():getName() == "Hunter" then
--          return math.floor(monsterType:getMoveMagicAttackBase() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()) * (hunterDamageBuff - 1.0))
--      end
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttackPlayerContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicAttackBase() * (statusGainFormula(self:getMaster():getLevel(), 0, 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttackSummonLevelContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicAttackBase() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  elseif self:isMonster() then
--      return math.floor(monsterType:getMoveMagicAttackBase() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttackSummonBoostContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicAttackBase() * (statusGainFormula(0, 0, self:getBoost(), 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicAttackVitaminContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local vitamins = self:getUsedVitaminsNumber("magicAttack")
--      if vitamins > 0 then
--          return math.floor(monsterType:getMoveMagicAttackBase() * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--  end
--  return 0
-- end

-- function Monster.getTotalDefense(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then
--      local total = math.floor(monsterType:getDefense() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      local vitamins = self:getUsedVitaminsNumber("defense")
--      if vitamins > 0 then
--          total = total + math.floor(monsterType:getDefense() * vitamins / maxVitamins * vitaminStatusBuff)
--      end

--      if isSummon(self) then
--          local master = self:getMaster()
--          if master:getSummonNameFromBall() == "Ditto" then
--              total = total * 0.70
--          end
--          if master:getSummonNameFromBall() == "Shiny Ditto" then
--              total = total * 0.85
--          end
--      end

--      -- total = total * 0.8

--      return total
--  elseif self:isMonster() then
--      return math.floor(monsterType:getDefense() * statusGainFormula(0, self:getLevel(), 0, 0))
--  end
--  return 0
-- end

-- function Monster.getTotalDefensePlayerContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getDefense() * (statusGainFormula(self:getMaster():getLevel(), 0, 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalDefenseSummonLevelContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getDefense() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  elseif self:isMonster() then
--      return math.floor(monsterType:getDefense() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalDefenseSummonBoostContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getDefense() * (statusGainFormula(0, 0, self:getBoost(), 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalDefenseVitaminContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local vitamins = self:getUsedVitaminsNumber("defense")
--      if vitamins > 0 then
--          return math.floor(monsterType:getDefense() * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--  end
--  return 0
-- end


-- function Monster.getTotalMagicDefense(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local total = math.floor(monsterType:getMoveMagicDefenseBase() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      local vitamins = self:getUsedVitaminsNumber("magicDefense")
--      if vitamins > 0 then
--          total = total + math.floor(monsterType:getMoveMagicDefenseBase() * vitamins / maxVitamins * vitaminStatusBuff)
--      end

--      -- total = total * 0.8
--      return total
--  elseif self:isMonster() then
--      return math.floor(monsterType:getMoveMagicDefenseBase() * statusGainFormula(0, self:getLevel(), 0, 0))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicDefensePlayerContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicDefenseBase() * (statusGainFormula(self:getMaster():getLevel(), 0, 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicDefenseSummonLevelContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicDefenseBase() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  elseif self:isMonster() then
--      return math.floor(monsterType:getMoveMagicDefenseBase() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalMagicDefenseSummonBoostContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getMoveMagicDefenseBase() * (statusGainFormula(0, 0, self:getBoost(), 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end



-- function Monster.getTotalMagicDefenseVitaminContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local vitamins = self:getUsedVitaminsNumber("magicDefense")
--      if vitamins > 0 then
--          return math.floor(monsterType:getMoveMagicDefenseBase() * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--  end
--  return 0
-- end

-- function Monster.getTotalSpeed(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local total = math.floor(monsterType:getBaseSpeed() * statusGainFormula(self:getMaster():getLevel(), self:getLevel(), self:getBoost(), self:getLove()))
--      local vitamins = self:getUsedVitaminsNumber("speed")
--      if vitamins > 0 then
--          total = total + math.floor((monsterType:getBaseSpeed()*1.5) * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--      return total
--  elseif self:isMonster() then
--      return math.floor(monsterType:getBaseSpeed() * statusGainFormula(0, self:getLevel(), 0, 0))
--  end
--  return 0
-- end

-- function Monster.getTotalSpeedPlayerContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getBaseSpeed() * (statusGainFormula(self:getMaster():getLevel(), 0, 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalSpeedSummonLevelContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getBaseSpeed() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  elseif self:isMonster() then
--      return math.floor(monsterType:getBaseSpeed() * (statusGainFormula(0, self:getLevel(), 0, 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalSpeedSummonBoostContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      return math.floor(monsterType:getBaseSpeed() * (statusGainFormula(0, 0, self:getBoost(), 0) - statusGainFormula(0, 0, 0, 0)))
--  end
--  return 0
-- end

-- function Monster.getTotalSpeedVitaminContribution(self)
--  local monsterType = MonsterType(self:getName())
--  if self:isPokemon() then 
--      local vitamins = self:getUsedVitaminsNumber("speed")
--      if vitamins > 0 then
--          return math.floor(monsterType:getBaseSpeed() * vitamins / maxVitamins * vitaminStatusBuff)
--      end
--  end
--  return 0
-- end

function Creature.isPokemon(self)
    local master = self:getMaster()
    if master and master:isPlayer() then return true end
    return false
end

function Monster.getMonsterNumber(self)
    return MonsterType(self:getName()):dexEntry()
end

function MonsterType.getNumber(self)
    return self:dexEntry()
end

function hasSummons(cid)
    local summons = cid:getSummons()
    if #summons > 0 then
        return true
    end
    return false
end

function Player.checkExhaustion(self, storage, delay)
    if os.time() > self:getStorageValue(storage) then
        self:setStorageValue(storage, os.time() + delay)
    else
        self:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
        self:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true     
    end
    return false
end

function Player.checkMoveExhaustion(self, storage, delay)
    local item = self:getUsingBall()
    if item then
        local move = "cd" .. tostring(storage)
        local moveCooldown = item:getSpecialAttribute(move) or 0
        if os.time() > moveCooldown then
            item:setSpecialAttribute(move, os.time() + delay)
        else
            -- self:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You must wait " .. math.floor(item:getSpecialAttribute(move) + 1 - os.time()) .. " seconds to use this move again")
            -- self:getPosition():sendMagicEffect(CONST_ME_POFF)
            return true     
        end
    end
    return false
end

function Player.getSummonNameFromBall(self)
    local item = self:getUsingBall()
    if item then
        local pokeName = item:getPokeName()
        if pokeName ~= nil then         
            return pokeName
        end
    end
    return "unamed"
end

-- function Player.getSummonLevelFromBall(self)
--     local item = self:getUsingBall()
--     if item then
--         local pokeLevel = item:getPokeLevel()
--         if pokeLevel ~= nil then            
--             return pokeLevel
--         end
--     end
--     return 1
-- end

function Player.getSummonBoostFromBall(self)
    local item = self:getUsingBall()
    if item then
        local pokeBoost = item:getPokeBoost()
        if pokeBoost ~= nil then            
            return pokeBoost
        end
    end
    return 0
end

function Player.getUsingBall(self)
    -- if not self:getSummons()[1] and not isMonster(self:getSummons()[1]) then return false end
    -- local itemUse = self:getItemById(ITEM_BALL_USE, true)
    -- if itemUse then
    --     print("itemUse")
    --     return itemUse
    -- end
    for i, ball in pairs(self:getPokeballs()) do
        if not ball then return end
        local isBallBeingUsed = ball:getSpecialAttribute("isBeingUsed")
        if isBallBeingUsed and isBallBeingUsed == 1 then
            return ball
        end
    end
end

function MonsterType.getRaceName(self)
    local raceNumber = self:getRace()
    if raceNumber == 1 then return "venon" end
    if raceNumber == 2 then return "blood" end
    if raceNumber == 3 then return "undead" end
    if raceNumber == 4 then return "fire" end
    if raceNumber == 5 then return "energy" end
    if raceNumber == 6 then return "grass" end
    if raceNumber == 7 then return "normal" end
    if raceNumber == 8 then return "water" end
    if raceNumber == 9 then return "flying" end
    if raceNumber == 10 then return "poison" end
    if raceNumber == 11 then return "electric" end
    if raceNumber == 12 then return "ground" end
    if raceNumber == 13 then return "psychic" end
    if raceNumber == 14 then return "rock" end
    if raceNumber == 15 then return "ice" end
    if raceNumber == 16 then return "bug" end
    if raceNumber == 17 then return "dragon" end
    if raceNumber == 18 then return "ghost" end
    if raceNumber == 19 then return "dark" end
    if raceNumber == 20 then return "steel" end
    if raceNumber == 21 then return "fairy" end
    if raceNumber == 22 then return "fighting" end
    return "none"
end

function MonsterType.getRace2Name(self)
    local raceNumber = self:getRace2()
    if raceNumber == 1 then return "venon" end
    if raceNumber == 2 then return "blood" end
    if raceNumber == 3 then return "undead" end
    if raceNumber == 4 then return "fire" end
    if raceNumber == 5 then return "energy" end
    if raceNumber == 6 then return "grass" end
    if raceNumber == 7 then return "normal" end
    if raceNumber == 8 then return "water" end
    if raceNumber == 9 then return "flying" end
    if raceNumber == 10 then return "poison" end
    if raceNumber == 11 then return "electric" end
    if raceNumber == 12 then return "ground" end
    if raceNumber == 13 then return "psychic" end
    if raceNumber == 14 then return "rock" end
    if raceNumber == 15 then return "ice" end
    if raceNumber == 16 then return "bug" end
    if raceNumber == 17 then return "dragon" end
    if raceNumber == 18 then return "ghost" end
    if raceNumber == 19 then return "dark" end
    if raceNumber == 20 then return "steel" end
    if raceNumber == 21 then return "fairy" end
    if raceNumber == 22 then return "fighting" end
    return "none"
end

function teleportMonster(cid, position)
    local monster = Monster(cid)
    if monster then
        monster:teleportTo(position)
    end
end

function isWild(cid)
    if not isCreature(cid) then return false end
    if not isSummon(cid) and isMonster(cid) then
        return true 
    end
    return false
end
 
function Player.getSummon(self)
    if hasSummons(self) then
        return self:getSummons()[1]
    end
    return false
end

function Player.isOnRide(self)
    if self:getStorageValue(storageRide) > 0 then
        return true
    end
    return false
end

function Player.isOnFly(self)
    if self:getStorageValue(storageFly) > 0 then
        return true
    end
    return false
end

function Player.isOnSurf(self)
    if self:getStorageValue(storageSurf) > 0 then
        return true
    end
    return false
end

function Player.isOnBike(self)
    if self:getStorageValue(storageBike) == 1 then
        return true
    end
    return false
end

function Player.isOnEvent(self)
    if self:getStorageValue(storageEvent) == 1 then
        return true
    end
    return false
end

function Player.isOnDive(self)
    if self:getStorageValue(storageDive) == 1 and Tile(self:getPosition()) and not Tile(self:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
        return true
    end
    return false
end

function Player.isAutoLooting(self)
    if self:getStorageValue(storageAutoLoot) == 1 then
        return true
    end
    return false
end

function Player.enableAutoLoot(self)
    if self:getStorageValue(storageAutoLoot) <= 0 then
        self:setStorageValue(storageAutoLoot, 1)
        return true
    end
    return false
end

function Player.disableAutoLoot(self)
    if self:getStorageValue(storageAutoLoot) == 1 then
        self:setStorageValue(storageAutoLoot, -1)
        return true
    end
    return false
end

-- function Monster.getSummonLevel(self)
--     if self:isPokemon() then
--         local master = self:getMaster()
--         local item = master:getUsingBall()
--         if not item then return true end
--         local pokeLevel = item:getPokeLevel()
--         if pokeLevel ~= nil then            
--             return pokeLevel
--         end
--     elseif isMonster(self) then
--         return self:getLevel()
--     end
--     return 1
-- end

function Monster.getLove(self)
    if self:isPokemon() then
        local master = self:getMaster()
        local item = master:getUsingBall()
        if not item then return true end
        local pokeLove = item:getSpecialAttribute("pokeLove")
        if pokeLove ~= nil then
            return pokeLove
        end
    end
    return 0
end

function Monster.getSummonBoost(self)
    if self:isPokemon() then
        local master = self:getMaster()
        local item = master:getUsingBall()
        if not item then return true end
        local pokeBoost = item:getPokeBoost()
        if pokeBoost ~= nil then
            return pokeBoost
        end
    end
    return 0
end

function Monster.getMasterLevel(self)
    if self:isPokemon() then
        local master = self:getMaster()
        if master then          
            return master:getLevel()
        end
    end
    return 1
end

function Monster.getSummonName(self)
    if isSummon(self) then
        local master = self:getMaster()
        local item = master:getUsingBall()
        if not item then return true end
        local pokeName = item:getPokeName()
        if pokeName ~= nil then         
            return pokeName
        end
    end
    return "unamed"
end

function Monster.isEvolving(self)
    if self:isPokemon() then
        local master = self:getMaster()
        if master and master:getStorageValue(storageEvolving) == 1 then return true end
    end
    return false
end

function doChangeOutfit(cid, outfit, time)
    local creature = Creature(cid)
    if not creature then return false end
    if time == nil then time = -1 end
    doSetCreatureOutfit(creature, outfit, time)
    return true
end

function doSendDelayedEffect(pos, effect)
    local tile = Tile(pos)
    if tile then
        pos:sendMagicEffect(effect)
    end
    return true
end

function doTransformPokeball(item)
    if not item:isPokeball() then return false end
    for key, value in pairs(balls) do
        if value.usedOn == item:getId() then
            doTransformItem(item.uid, value.usedOff)
            return true         
        end
        if value.usedOff == item:getId() then
            doTransformItem(item.uid, value.usedOn)
            return true         
        end
    end
    return false
end

function doReleaseSummon(cid, pos, effect, message, missile, healthMax)
    local player = Player(cid)
    if not player then return false end
    if player:getSummons()[1] then return false end
    local ball = player:getUsingBall()
    if not ball then return false end
    if effect == nil then effect = CONST_ME_TELEPORT end
    if message == nil then message = true end
    local name = ball:getPokeName()
    -- to fix ball bug
    if not name then
        ball:remove()
        return false
    end
    if name == "Ditto" or name == "Shiny ditto" or name == "Xmas ditto" then
        name = ball:getSpecialAttribute("dittoTransform")
        if not MonsterType(name) then
            name = ball:getPokeName()
        end
    end
    local monsterType = MonsterType(name)
    if not monsterType:isConvinceable() then
        print("WARNING: Monster " .. name .. " is not convinceable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end
    if not monsterType:isIllusionable() then
        print("WARNING: Monster " .. name .. " is not illusionable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end
    if not monsterType:isSummonable() then
        print("WARNING: Monster " .. name .. " is not illusionable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end

    local health = ball:getPokeHealth() or 0
    if health <= 0 then
        if debugGoback then print("36") end
        player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
        transformBallItem(ball, STATUS_BALL_DEATH)
        player:setStorageValue(storageGoback, -1)
        return false
    end 

    local summonBoost = ball:getPokeBoost() or 0

    local newPos = player:getClosestFreePosition(pos, 2) or pos
    if newPos.x == 0 then
        newPos = pos
    end
    local monster = Game.createMonster(name, newPos, true, true, 0, summonBoost) -- force false-true

    if monster ~= nil then
        if message then
            player:say(monster:getName() .. ", I need your help!", TALKTYPE_MONSTER_SAY)
        end
        
        player:addSummon(monster)
        player:setStorageValue(storageGoback, -1)

        local summonM = player:getSummons()[1]
        local creatureM = Creature(summonM)
        creatureM:setSkull(10)

        if effect then
            summonM:getPosition():sendMagicEffect(effect)
        end

        if missile then
            doSendDistanceShootPlus(player:getPosition(), summonM:getPosition(), missile)
            addEvent(doSendDistanceShootPlus, 500, summonM:getPosition(), player:getPosition(), missile)
        end

        monster:setDirection(ball:getSpecialAttribute("pokeLookDir") or DIRECTION_SOUTH)
        if summonBoost >= maxBoost then
            doStartAurea(monster)
        end
        adjustStatus(summonM, ball, true, true, true)

        local statusSummon = getStatus(monster)
        local maxHealth = statusSummon.life
        if healthMax then 
            health = maxHealth
            ball:setSpecialAttribute("pokeHealth", health)
        end
        ball:setSpecialAttribute("pokeMaxHealth", maxHealth)
        monster:setMaxHealth(maxHealth)
        monster:setHealth(health)
        monster:changeSpeed( ( -monster:getSpeed() + statusSummon.speed ) )
        if effect then
            monster:getPosition():sendMagicEffect(effect)
        end
        if missile then
            doSendDistanceShootPlus(player:getPosition(), monster:getPosition(), missile)
        end
                
        -- monster:removeTarget(player)
        monster:registerEvent("MonsterHealthChange")
        monster:registerEvent("MonsterDeath")

        local spectators = Game.getSpectators(monster:getPosition())
        for _, spectator in ipairs(spectators) do
            if spectator:isMonster() and spectator ~= monster then
                if spectator:getTarget() == player then
                    spectator:setTarget(monster)
                    spectator:setFollowCreature(monster)
                end
            end
        end

        player:setStorageValue(storageGoback, -1)
        player:setStorageValue(storages.storageGobackDelay, os.time() + 1) -- 1 é o tempo
        player:pokeBarUpdatePoke(ball)
        doUpdateMoves(player)        
        -- setPassiveSpells(monster)

        return monster:getId()
    end
    return true
end

function doRemoveSummon(cid, effect, uid, message, missile)
    local player = Player(cid)
    if not player then return false end
    if effect == nil then effect = CONST_ME_POFF end
    if message == nil then message = true end
    local summons = player:getSummons()
    if not summons then return false end
    local summon = Creature(summons[1])
    if not summon then return false end
    local summonPos = summon:getPosition()
    -- local attackers = Game.getSpectators(summonPos) 
    -- for i = 1, #attackers do
    --     local attacker = attackers[i]
    --     if attacker and attacker:isMonster() then
    --         local targetList = attacker:getTargetList()
    --         for j = 1, #targetList do
    --             if targetList[j] == summon then
    --                 attacker:removeTarget(summon)
    --                 attacker:setIdle()
    --             end
    --         end
    --     end
    -- end
    if effect then
        summonPos:sendMagicEffect(effect)
    end
    if missile then
        doSendDistanceShootPlus(player:getPosition(), summonPos, missile)
        addEvent(doSendDistanceShootPlus, 500, summonPos, player:getPosition(), missile)
    end
    summon:unregisterEvent("MonsterGetExperience")
    summon:unregisterEvent("MonsterHealthChange")
    player:unregisterEvent("RemoveSummon")
    local ball = player:getUsingBall()
    if uid and not ball then
        ball = Item(uid)
    end
    if ball and ball:isPokeball() then
        ball:setSpecialAttribute("pokeHealth", summon:getHealth())
        ball:setSpecialAttribute("pokeLookDir", summon:getDirection())
    end
    if not (player:isOnFly() or player:isOnRide() or player:isOnSurf() or summon:isEvolving()) then
        if ball then
            transformBallItem(ball, STATUS_BALL_NORMAL)
            player:setStorageValue(storageGoback, -1)
        else
            print("WARNING! Player " .. player:getName() .. " had problems on remove summon: ball does not exist.")
        end
    end
    if summon:isEvolving() then 
        player:setStorageValue(storageEvolving, -1)
    end
    if message then
        player:say("Thanks, " .. summon:getName() .. "!", TALKTYPE_MONSTER_SAY)
    end

    local spectators = Game.getSpectators(summon:getPosition())
    for _, spectator in ipairs(spectators) do
        if spectator:isMonster() and spectator ~= summon then
            if spectator:getTarget() == summon then
                addEvent(function()
                    if isCreature(spectator:getId()) and isPlayer(player:getId()) then
                        spectator:setTarget(player)
                        spectator:setFollowCreature(player)
                    end
                end, 5)
            end
        end
    end

    player:setStorageValue(storageGoback, -1)
    player:pokeBarUpdatePoke(ball)
    doSendPlayerExtendedOpcode(player, 82, "h")
    summon:remove() 
    return true
end

function doEvolveSummon(cid, evolutionName, ancient)
 if not ancient then ancient = false end
 local monsterType = MonsterType(evolutionName)
 local summon = Creature(cid)
 local master = summon:getMaster()
 local summonPos = summon:getPosition()
 local item = master:getUsingBall()
 local ballKey = item:getSpecialAttribute("ballKey") or "normal"
 if monsterType and summon:isMonster() then
     master:say("Wow, my " .. summon:getName() .. " is evolving!", TALKTYPE_SAY)
     master:getPosition():sendMagicEffect(10)
     master:setStorageValue(storageEvolving, 1)
     summon:changeSpeed(-summon:getSpeed())
     item:setSpecialAttribute("pokeName", evolutionName)
     transformBallItem(item.uid, STATUS_BALL_USE, ballKey) 
     master:setStorageValue(storageGoback, 1)
     if ancient then
         item:setSpecialAttribute("owner", master:getName())
         master:setStorageValue(storageEvolutionAncient, 1)
     end

     addEvent(doChangeOutfit, 500, summon:getId(), monsterType:getOutfit(), 500)
     addEvent(doSendDelayedEffect, 500, summon:getPosition(), 10)
     addEvent(doSendDelayedEffect, 1000, summon:getPosition(), 12)
     addEvent(doChangeOutfit, 1500, summon:getId(), monsterType:getOutfit(), 500)
     addEvent(doSendDelayedEffect, 1500, summon:getPosition(), 10)
     addEvent(doSendDelayedEffect, 2000, summon:getPosition(), 12)
     addEvent(doSendDelayedEffect, 4000, summon:getPosition(), CONST_ME_HEARTS)

     addEvent(doRemoveSummon, 4000, master:getId(), false, nil, false)
     addEvent(doReleaseSummon, 4001, master:getId(), summonPos, false, false, false, true)
     return true
 else
     print("WARNING! Problem on evolution to " .. evolutionName .. " player " .. master:getName())
 end
 return false
end

function Position:sendAnimatedNumber(message_type, text, value, color)
    local message_type = message_type or MESSAGE_EXPERIENCE
    local color = color or TEXTCOLOR_BLUE
    local valid_message_types = {
        MESSAGE_STATUS_CONSOLE_RED,
        MESSAGE_EVENT_ORANGE,
        MESSAGE_STATUS_CONSOLE_ORANGE,
        MESSAGE_STATUS_WARNING,
        MESSAGE_EVENT_ADVANCE,
        MESSAGE_EVENT_DEFAULT,
        MESSAGE_STATUS_DEFAULT,
        MESSAGE_INFO_DESCR,
        MESSAGE_STATUS_SMALL,
        MESSAGE_STATUS_CONSOLE_BLUE,
    }
    assert(isInArray(valid_message_types, message_type), ('invalid '..message_type..', must output to server log'))
    for _, v in ipairs(Game.getSpectators(self, false, true)) do
        if v:isPlayer() then
            v:sendTextMessage(message_type, text, self, value, color)
        end
    end
end

function Item.isPokeball(self)
    for key, value in pairs(balls) do
        if value.usedOn == self:getId() or value.usedOff == self:getId() then
            return true         
        end
    end
    return false
end

function Player.getPokeballCount(self)
    local nBalls = 0
    for key, value in pairs(balls) do
        nBalls = nBalls + self:getItemCount(value.usedOn) + self:getItemCount(value.usedOff)
    end 
    return nBalls
end

function searchInContainer(container, itemId)
    local count = 0
    if container:isContainer() then
        local items = container:getItem()
        for i = 0, container:getSize() do
            local item = container:getItem(i)
            if item then
                if item:isContainer() then
                    if item:getId() == itemId then
                        count = count + item:getCount()
                    end
                    count = count + searchInContainer(item, itemId)
                elseif item:getId() == itemId then
                    count = count + item:getCount()
                end
            end
        end
    end
    return count
end

-- function Item.isStone(self)
--  if isInArray(stonesId[1], self:getId()) then
--      return true
--  end
--  return false
-- end

function doSendAurea(cid)
    local monster = Monster(cid)    
    if monster then     
        monster:getPosition():sendMagicEffect(1083)
        doStartAurea(monster)
    end
end

function doStartAurea(monster)
    addEvent(doSendAurea, 2000, monster.uid)
end

function Player.updateQuestLog(self)
    for key, value in pairs(quests) do
        if self:getLevel() >= value.level then
            for j = 1, #value.prizes do
                for k = 1, #value.prizes do
                    if self:getStorageValue(value.prizes[k].uid) < 0 then
                        self:setStorageValue(value.prizes[k].uid, 0)
                    end
                end
            end
        end
    end
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

-- function removeFlyFloorMix(posFinal)
--      if Tile(posFinal):getTopCreature() ~= nil then return true end
--     local fromTile = Tile(posFinal)
--     if fromTile then
--         local fromItem = fromTile:getItemById(flyFloor)
--         if fromItem then
--             fromItem:remove()
--         end
--     end
-- end

function Position:createFlyFloor()
    local toTile = Tile(self)
    if not toTile or not toTile:getItems() or not toTile:getGround() then
        doAreaCombat(0, 0, self, areafly)
        local posarea = {-1, 1}
        local position = self
        for x = position.x + posarea[1], position.x + posarea[2] do
            for y = position.y + posarea[1], position.y + posarea[2] do 
                local posFinal = Position(x, y, position.z)
                local posFinalTile = Tile(posFinal)
                if not posFinalTile or not posFinalTile:getItems() or not posFinalTile:getGround() then
                    Game.createItem(flyFloor, 1, posFinal)
                    -- addEvent(removeFlyFloorMix, 3000, posFinal)
                end
            end
        end
    end
    return true
end
 
function Tile:hasValidGround()
    local ground = self:getGround()
    local nilItem = self:getItemById(flyFloor)
    if ground and not nilItem then
        return true
    end 
    return false
end
 
function Player:activateFly()
    self:setStorageValue(storageFly, 1)
    self:registerEvent("FlyEvent")
    return true
end
 
function Player:deactivateFly()
    local can, floor = self:canDeactivateFly()
    local pos = self:getPosition()
    if can then
        local curtile = Tile(pos)
        local nilItem = curtile:getItemById(flyFloor)
        if nilItem then
            nilItem:remove()
        end
        self:unregisterEvent("FlyEvent")
        if pos.z ~= floor then
            pos.z = floor
            self:teleportTo(pos)
            pos:sendMagicEffect(CONST_ME_TELEPORT)
        end
    end 
    return can
end

function Player:canDeactivateFly()
    local pos = self:getPosition()
--    for z = pos.z, 15 do
        local tmp = Tile(pos.x, pos.y, pos.z)
        if tmp and tmp:hasValidGround() then
            if self:canFlyDown(pos.z) then
                return true, pos.z
            else
                return false
            end
        end
--    end
 
    return false
end
 
function Player:canFlyUp()
    local pos = self:getPosition()
    local tmp = Tile(pos.x, pos.y, pos.z-1)
    if tmp and tmp:hasValidGround() then
        return false
    end 
    tmp = Tile(pos.x, pos.y, pos.z-1)

    if tmp and (tmp:getHouse() or tmp:hasFlag(TILESTATE_PROTECTIONZONE) or tmp:hasFlag(TILESTATE_FLOORCHANGE) or tmp:hasFlag(TILESTATE_BLOCKSOLID) ) then
        return false
    end 

    if tmp and tmp:getGround() and isInArray(waterIds, tmp:getGround():getId()) then
        return false
    end
    return true
end
 
function Player:canFlyDown(floor)
    local pos = self:getPosition()
    local tmp = Tile(pos)
    if floor and floor == pos.z then
        return true
    end 
    if tmp:hasValidGround() then
        return false
    end 
    tmp = Tile(pos.x, pos.y, floor or pos.z+1)

    if tmp and (tmp:getHouse() or tmp:hasFlag(TILESTATE_PROTECTIONZONE) or tmp:hasFlag(TILESTATE_FLOORCHANGE) or tmp:hasFlag(TILESTATE_BLOCKSOLID) ) then
        return false
    end 

    -- if tmp and tmp:getGround() and isInArray(waterIds, tmp:getGround():getId()) then
    --     return false
    -- end
    return true
end
 
function Player:flyUp()
    if self:isOnFly() then
        if self:canFlyUp() then
            local pos = self:getPosition()
            local tile = Tile(pos)
            local itemfloor = tile:getItemById(flyFloor)
            if itemfloor then
                itemfloor:remove()
            end 
            pos.z = pos.z-1
            pos:createFlyFloor()
            self:teleportTo(pos)
            pos:sendMagicEffect(CONST_ME_TELEPORT) 
            return true
        end 
        return false
    else
        self:sendCancelMessage("You are not flying.")
        return false
    end
end
 
function Player:flyDown()
    if self:isOnFly() then
        if self:canFlyDown() then
            local pos = self:getPosition()
            local tile = Tile(pos)
            local itemfloor = tile:getItemById(flyFloor)
            if itemfloor then
                itemfloor:remove()
            end 
            pos.z = pos.z+1
            pos:createFlyFloor()
            self:teleportTo(pos)
            pos:sendMagicEffect(CONST_ME_TELEPORT)
            return true
        end 
        return false
    else
        self:sendCancelMessage("You are not flying.")
        return false
    end
end

function Player:addTokens(number)
    if self:getStorageValue(storageTokens) < 0 then
        self:setStorageValue(storageTokens, number)
    else
        self:setStorageValue(storageTokens, self:getStorageValue(storageTokens) + number)
    end
    return true
end

function Player:removeTokens(number)
    if self:getStorageValue(storageTokens) < number then
        return false
    else
        self:setStorageValue(storageTokens, self:getStorageValue(storageTokens) - number)
    end
    return true
end

function Player:getTokens()
    if self:getStorageValue(storageTokens) < 0 then
        return 0
    end
    return self:getStorageValue(storageTokens)
end

function Creature:hasKilledLegendaryPokemon()
    if self:isPlayer() and (os.time() < self:getStorageValue(storageLastLegendaryKilled)) then
        return true
    end
    return false
end

function Player:setKilledLegendaryPokemon()
    self:setStorageValue(storageLastLegendaryKilled, os.time() + 10 * 60)
    return true
end

function Creature:hasKilledBossPokemon()
    if self:isPlayer() and (os.time() < self:getStorageValue(storageLastBossKilled)) then
        return true
    end
    return false
end

function Player:setKilledBossPokemon()
    self:setStorageValue(storageLastBossKilled, os.time() + 3 * 60)
    return true
end

function Player:isDuelingWithNpc()
    if self:getStorageValue(storageDuelNpc) > 0 then
        return true
    end
    return false
end

function Player:setDuelWithNpc()
    self:setStorageValue(storageDuelNpc, 1)
    self:setStorageValue(storageDuelNpcStatus, 1)
    return true
end

function Player:setOnLeague()
    self:setStorageValue(storageLeague, 1)
    self:setStorageValue(storageLeaguePotion, 0)
    self:setStorageValue(storageLeagueRevive, 0)
    self:setStorageValue(storageLeagueTime, os.time())
    return true
end

function Player:setOutLeague()
    self:setStorageValue(storageLeague, -1)
    return true
end

function Player:isOnLeague()
    if self:getStorageValue(storageLeague) == 1 then
        return true
    end
    return false
end

function Player:canUsePotionOnLeague()
    if self:getStorageValue(storageLeaguePotion) < 0 then self:setStorageValue(storageLeaguePotion, 0) end
    if self:getStorageValue(storageLeaguePotion) < 25 then
        self:setStorageValue(storageLeaguePotion, self:getStorageValue(storageLeaguePotion) + 1)
        self:sendTextMessage(MESSAGE_INFO_DESCR, "Usando potion " .. self:getStorageValue(storageLeaguePotion) .. " de 25.")
        return true
    end
    return false
end

function Player:canUseReviveOnLeague()
    if self:getStorageValue(storageLeagueRevive) < 0 then self:setStorageValue(storageLeagueRevive, 0) end
    if self:getStorageValue(storageLeagueRevive) < 5 then
        self:setStorageValue(storageLeagueRevive, self:getStorageValue(storageLeagueRevive) + 1)
        self:sendTextMessage(MESSAGE_INFO_DESCR, "Usando revive " .. self:getStorageValue(storageLeagueRevive) .. " de 5.")
        return true
    end
    return false
end

function Player:unsetDuelWithNpc()
    self:setStorageValue(storageDuelNpc, -1)
    return true
end

function Player:getDuelWithNpcStatus()
    if self:getStorageValue(storageDuelNpcStatus) < 1 then
        return 1
    end
    return self:getStorageValue(storageDuelNpcStatus)
end

function Player:increaseDuelWithNpcStatus()
    if self:getStorageValue(storageDuelNpcStatus) < 1 then
        self:setStorageValue(storageDuelNpcStatus, 1)
    else
        self:setStorageValue(storageDuelNpcStatus, self:getStorageValue(storageDuelNpcStatus) + 1)
    end 
    return true
end

function Player:giveQuestPrize(uid, ignore)
    local playerCap = self:getFreeCapacity()
    local totalWeight = 0
    if ignore == nil then ignore = false end

    for key, value in pairs(quests) do
        for j = 1, #value.prizes do
            if uid == value.prizes[j].uid then
                if self:getLevel() >= value.level then
                    local questDone = false
                    for k = 1, #value.prizes do
                        if self:getStorageValue(value.prizes[k].uid) > 0 then
                            questDone = true
                        end
                    end
                    if ignore == true then questDone = false end
                    if questDone == false then
                        for i = 1, #value.prizes[j].items do
                            totalWeight = totalWeight + ItemType(value.prizes[j].items[i].item):getWeight()
                        end
                        if playerCap >= totalWeight then
                            if value.teleportCP == 1 then
                                self:teleportTo(self:getTown():getTemplePosition())
                            end
                            for i = 1, #value.prizes[j].pokes do
                                local dp = true
                                local container = self:getSlotItem(CONST_SLOT_BACKPACK)                         
                                if self:getFreeCapacity() >= 1 and container and container:getEmptySlots() > 0 then
                                    dp = false
                                end
                                self:getId():addPokeToPlayer(value.prizes[j].pokes[i].name, value.prizes[j].pokes[i].boost, getBallKey(balls.ultraball.usedOn), dp)
                                local msg = 'You have found: ' .. value.prizes[j].pokes[i].name .. ', boost ' .. value.prizes[j].pokes[i].boost .. '.'
                                if dp then
                                    msg = msg .. " It was sent do CP because you do not have enough capacity."
                                end
                                self:sendTextMessage(MESSAGE_INFO_DESCR, msg)

                            end
                            
                            for i = 1, #value.prizes[j].items do
                                self:addItem(value.prizes[j].items[i].item, value.prizes[j].items[i].count)
                                self:sendTextMessage(MESSAGE_INFO_DESCR, 'You have found: ' .. value.prizes[j].items[i].count .. " " .. ItemType(value.prizes[j].items[i].item):getName() .. '.')
                            end

                            for i = 1, #value.prizes[j].badges do
                                local item = self:getItemById(value.prizes[j].badges[i].remove, true)
                                if item then
                                    item:transform(value.prizes[j].badges[i].add)
                                    self:sendTextMessage(MESSAGE_INFO_DESCR, 'You have found: ' .. ItemType(value.prizes[j].badges[i].add):getName() .. '.')
                                else
                                    print("WARNING! Player " .. self:getName() .. " with problems while adding " .. ItemType(value.prizes[j].badges[i].add):getName() .. ".")
                                end
                            end
                            self:setStorageValue(uid, 1)
                            for k = 1, #value.prizes do
                                if self:getStorageValue(value.prizes[k].uid) <= 0 then
                                    self:setStorageValue(value.prizes[k].uid, 1)
                                end
                            end
                        else
                            self:sendTextMessage(MESSAGE_INFO_DESCR, 'Too heavy for you.')
                        end

                    else
                        self:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
                    end
                else
                    self:sendTextMessage(MESSAGE_INFO_DESCR, "You need level " .. value.level .. " to open.")
                end
                return true
            end
        end
    end

    self:sendTextMessage(MESSAGE_INFO_DESCR, "It is empty.")
    return false
end

function Player:addSlotItems()
    for i = 1, #slotItems do
        local itemId = slotItems[i]
        if not self:getItemById(itemId) then
            local item = self:addItem(itemId)
            if item and itemId == badgeContainer and ItemType(itemId) then
                local container = Container(item.uid)
                if container then
                    for j = 1, #badgesPortraits do
                        container:addItem(badgesPortraits[j])
                    end
                end
            end
        end
    end
end

function Position:getClosestTownId()
    local distances = {}

    for i = 1, 59 do
        local town = Town(i)
        if town then
            local templePosition = town:getTemplePosition()
            distances[i] = getDistanceBetween(templePosition, self)
        end
    end

    local key = next(distances)
    local min = distances[key]

    for k, v in pairs(distances) do
        if distances[k] < min then
        key, min = k, v
        end
    end

    return key
end

function MonsterType:isLegendary()
    if isInArray(self:getCreatureEvents(), "LegendariesDeath") then
        return true
    end
    return false
end

function Player:refreshPokemonBar(add, remove)
    -- -- if isNumber(self) then self = Creature(self) end
    -- local pokeballs = self:getPokeballs()
    -- local opcode = ""
    
    -- for i = 1, #pokeballs do
    --     local pokeball = pokeballs[i]
    --     local name = pokeball:getPokeName()
    --     if not name then return true end
    --     -- local portrait = ItemType(MonsterType(name):portraitId()):getClientId()
    --     local portrait = MonsterType(name):getNumber()
    --     local health = pokeball:getPokeHealth()

    --     if pokeball:getSpecialAttribute("isBeingUsed") == 1 and self:getSummon() then
    --         local summons = self:getSummons()
    --         local summon = Creature(summons[1])

    --         health = summon:getHealth()
    --     end

    --     local healthMax = pokeball:getPokeMaxHealth()
    --     local currentPercent = math.ceil((health / healthMax) * 100)

    --     if currentPercent > 100 then
    --         currentPercent = 100
    --     end

    --     if health <= 0 then 
    --         currentPercent = 0
    --     end

    --     if not name then -- fix ball bug
    --         pokeball:remove()
    --         print("WARNING! Player " .. self:getName() .. " had one ball removed!")
    --     else
    --         opcode = opcode .. "," .. portrait .. ":" .. name .. ":" .. currentPercent
    --     end     
    -- end
    -- self:sendExtendedOpcode(181, opcode)
end

function Player:isSummonBlocked()
    if self:getStorageValue(storageRide) == 1 then
        self:sendCancelMessage("Sorry, not possible while on ride.")
        return true
    end
    if self:getStorageValue(storageFly) == 1 then
        self:sendCancelMessage("Sorry, not possible while on fly.")
        return true
    end
    if self:getStorageValue(storageSurf) > 0 then
        self:sendCancelMessage("Sorry, not possible while on surf.")
        return true
    end
    if self:getStorageValue(storageEvent) > 0 then
        self:sendCancelMessage("Sorry, not possible while on event.")
        return true
    end
    if self:getStorageValue(storageEvolving) == 1 then
        self:sendCancelMessage("Sorry, not possible while evolving.")
        return true
    end
    return false
end

function levelToUseMix(player, pokeName, pokeBoost)
    local monsterType = MonsterType(pokeName)
    local monsterLevelUse = monsterType:maxlevel()
    local leveltouse = monsterLevelUse + pokeBoost 
    return leveltouse
end

function Player:canReleaseSummon(item)

    -- local item = Item(item)
    if not item and not item:isItem() then 
        print("30") 
        return false 
    end
    local player = self

    transformBallItem(item, STATUS_BALL_USE)
    player:setStorageValue(storageGoback, 1)

    local pokeName = item:getSummonName()
    local pokeBoost = item:getSummonBoost()
    local ownerName = item:getSummonOwner()

    -- to fix ball bug
    local playerLevel = self:getLevel()
    local leveltouse = levelToUseMix(self, pokeName, pokeBoost)
    if playerLevel < leveltouse then
        self:sendCancelMessage("Sorry, not possible. You need level " .. leveltouse .. " to use this pokemon.")
        transformBallItem(item, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false
    end

    if ownerName and ownerName ~= self:getName() then
        self:sendCancelMessage("Sorry, it belongs to " .. ownerName .. ".")
        transformBallItem(item, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false
    end

    local player = Player(self)
    if not player then 
        if debugGoback then print("1") end
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end
    if player:getSummons()[1] then 
        if debugGoback then print("2") end 
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end
    local ball = item
    if not ball then 
        if debugGoback then print("3") end 
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false 
    end
    local name = ball:getPokeName()
    -- to fix ball bug
    if not name then
        ball:remove()
        if debugGoback then print("6") end
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        return false
    end
    
    local monsterType = MonsterType(name)
    if not monsterType:isConvinceable() then
        print("WARNING: Monster " .. name .. " is not convinceable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        if debugGoback then print("7") end
        return false 
    end
    if not monsterType:isIllusionable() then
        print("WARNING: Monster " .. name .. " is not illusionable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        if debugGoback then print("8") end
        return false 
    end
    if not monsterType:isSummonable() then
        print("WARNING: Monster " .. name .. " is not illusionable.")
        player:sendCancelMessage("Sorry, not possible. This problem was reported.")
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
        if debugGoback then print("9") end
        return false 
    end

    local health = ball:getPokeHealth() or 0
    if health <= 0 then
        player:sendCancelMessage("Sorry, not possible. Your summon is dead.")
        transformBallItem(ball, STATUS_BALL_DEATH)
        player:setStorageValue(storageGoback, -1)
        if debugGoback then print("10") end
        return false
    end 

	if player:getStorageValue(storages.storageGobackDelay) - os.time() > 0 then
        player:sendCancelMessage(RETURNVALUE_YOUAREEXHAUSTED)
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        transformBallItem(ball, STATUS_BALL_NORMAL)
        player:setStorageValue(storageGoback, -1)
		return false
	end	

    return true
end

-- function Item:getSummonLevel()
--     return self:getPokeLevel()
-- end

function Item:getSummonName()
    return self:getPokeName()
end

function Item:getSummonBoost()
    return self:getPokeBoost()
end

function Item:getSummonOwner()
    return self:getSpecialAttribute("owner")
end

function Item:isBeingUsed()
    local isBallBeingUsed = self:getSpecialAttribute("isBeingUsed")
    if isBallBeingUsed and isBallBeingUsed == 1 then
        return true
    end
    return false
end

function Item:setBeingUsed()
    transformBallItem(self, STATUS_BALL_USE)
    return true
end

function Item:unsetBeingUsed()
    transformBallItem(self, STATUS_BALL_NORMAL)
    return true
end

function Player:getCatchRemain(table)
    local catchRemain = 0
    local msg = "Pokemons que faltam catalogar: \n"
    for i = 1, #table do
        if self:getStorageValue(baseStorageCatches + table[i]) <= 0 then
            catchRemain = catchRemain + 1
--          msg = msg .. "[" .. table[i] .. "] " .. monsterNumber[table[i]][1] .. "\n"
            msg = msg .. "[" .. table[i] .. "] " .. monstersTable[tonumber(table[i])] .. "\n"
        end
    end
    if msg ~= "Pokemons que faltam catalogar: \n" then
        self:showTextDialog(2263, msg)
    end
    return catchRemain
end

function Monster:getUsedVitaminsNumber(status)
    if status == nil then status = "vitTotal" end
    local total = 0
    if self:isPokemon() then
        local item = self:getMaster():getUsingBall()
        if item then
            total = item:getSpecialAttribute(status)
            if not total or total < 0 then total = 0 end
        end     
    end 
    return total
end

function Monster:increaseUsedVitaminsNumber()
    if self:isPokemon() then
        local item = self:getMaster():getUsingBall()
        if item then
            local total = item:getSpecialAttribute("vitTotal")
            if not total or total < 0 then total = 0 end
            if total < maxVitamins then
                item:setSpecialAttribute("vitTotal", total + 1)
                return true
            end
        end     
    end
    return false
end

function Monster:increaseStatus(statusName)
    if self:isPokemon() then
        local master = self:getMaster()
        local item = master:getUsingBall()
        if item then
            local total = item:getSpecialAttribute(statusName)
            if not total or total < 0 then total = 0 end
            item:setSpecialAttribute(statusName, total + 1)
            -- if statusName == "pokeLevel" then
            --     item:setSpecialAttribute("pokeExperience", getNeededExp(total + 1))
            --     doRemoveSummon(master:getId(), false, nil, false)
            --     item:transformBallItem(STATUS_BALL_USE)
            --     doReleaseSummon(master:getId(), self:getPosition(), false, false)
            -- end
            return true
        end     
    end
    return false
end

function Player:getCatchRemainNumber(table)
    local catchRemain = 0
    for i = 1, #table do
        if self:getStorageValue(baseStorageCatches + table[i]) <= 0 then
            catchRemain = catchRemain + 1
        end
    end
    return catchRemain
end

function createClass(parent)
    local newClass = {}
    function newClass:new(instance)
        local instance = instance or {}
        setmetatable(instance, {__index = newClass})
        return instance
    end

    if(parent ~= nil) then
        setmetatable(newClass, {__index = parent})
    end

    function newClass:getSelf()
        return newClass
    end

    function newClass:getParent()
        return baseClass
    end

    function newClass:isa(class)
        local tmp = newClass
        while(tmp ~= nil) do
            if(tmp == class) then
                return true
            end

            tmp = tmp:getParent()
        end

        return false
    end
    
    function newClass:setAttributes(attributes)
        for k, v in pairs(attributes) do
            newClass[k] = v
        end
    end

    return newClass
end

function printTable(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return print(s .. '} ')
   else
      return print(tostring(o))
   end
end

string.explode = function (str, sep, limit)
    if(type(sep) ~= 'string' or isInArray({tostring(str):len(), sep:len()}, 0)) then
        return {}
    end

    local i, pos, tmp, t = 0, 1, "", {}
    for s, e in function() return string.find(str, sep, pos) end do
        tmp = str:sub(pos, s - 1):trim()
        if tmp ~= "" then               --alterado v1.8
           table.insert(t, tmp)
        end
        pos = e + 1

        i = i + 1
        if(limit ~= nil and i == limit) then
            break
        end
    end

    tmp = str:sub(pos):trim()
    if tmp ~= "" then              --alterado v1.8
       table.insert(t, tmp)
    end
    return t
end

function convertTime(a)
    
    if(type(tonumber(a)) == "number" and a > 0) then
        if (a <= 3599) then
            local minute = math.floor(a/60)
            local second = a - (60 * minute)
            
            if(second == 0) then
                return ((minute)..((minute > 1) and " minutos" or " minuto"))
            else
                return ((minute ~= 0) and ((minute>1) and minute.." minutos e " or minute.." minuto e ").. ((second>1) and second.." segundos" or second.." segundo") or ((second>1) and second.." segundos" or second.. " segundo"))
            end
        else
            local hour = math.floor(a/3600)
            local minute = math.floor((a - (hour * 3600))/60)
            local second = (a - (3600 * hour) - (minute * 60))
            
            if (minute == 0 and second > 0) then
                return (hour..((hour > 1) and " horas e " or " hora e "))..(second..((second > 1) and " segundos" or " segundo"))
            elseif (second == 0 and minute > 0) then
                return (hour..((hour > 1) and " horas e " or " hora e "))..(minute..((minute > 1) and " minutos" or " minuto"))
            elseif (second == 0 and minute == 0) then
                return (hour..((hour > 1) and " horas" or " hora"))
            end
            return (hour..((hour > 1) and " horas, " or " hora, "))..(minute..((minute > 1) and " minutos e " or " minuto e "))..(second..((second > 1) and " segundos" or " segundo"))
        end
    end
end

function doCorrectString(str)
local name = str:explode(" ")  --alterado v1.9
local final = {}
for _, s in ipairs(name) do
    table.insert(final, s:sub(1, 1):upper()..s:sub(2, #s):lower())
end
return table.concat(final, (name[2] and " " or ""))
end  
