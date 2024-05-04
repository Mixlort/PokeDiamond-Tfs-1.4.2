-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = true
protectionLevel = 5000
killsToRedSkull = 3
killsToBlackSkull = 6
pzLocked = 30000
removeChargesFromRunes = true
removeChargesFromPotions = true
removeWeaponAmmunition = true
removeWeaponCharges = true
timeToDecreaseFrags = 3 * 60 * 60
whiteSkullTime = 5 * 60
stairJumpExhaustion = 1000
experienceByKillingPlayers = true
expFromPlayersLevelRange = 75

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
-- NOTE: allowWalkthrough is only applicable to players
ip = "127.0.0.1"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to The Forgotten Server!"
onePlayerOnlinePerAccount = false
allowClones = false
allowWalkthrough = true
serverName = "Forgotten"
statusTimeout = 5000
replaceKickOnLogin = true
maxPacketsPerSecond = 250 --25
packetCompression = true

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
-- NOTE: valid values for houseRentPeriod are: "daily", "weekly", "monthly", "yearly"
-- use any other value to disable the rent system
housePriceEachSQM = 1000
houseRentPeriod = "never"
houseOwnedByAccount = true
houseDoorShowPrice = true
onlyInvitedCanMoveHouseItems = true

-- Items
maxStackedItems = 10000
maxTradeItems = 1000
maxBuyOrSellItems = 1000

-- Item Usage
timeBetweenActions = 50 -- 200
timeBetweenExActions = 250 -- 1000

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "pokediamond"
mapAuthor = "Komic"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = true
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "root"
mysqlPass = ""
-- mysqlPass = "mixlort"
mysqlDatabase = "pokediamond"
mysqlPort = 3306
mysqlSock = ""

-- Misc.
-- NOTE: classicAttackSpeed set to true makes players constantly attack at regular
-- intervals regardless of other actions such as item (potion) use. This setting
-- may cause high CPU usage with many players and potentially affect performance!
-- NOTE: forceMonsterTypesOnLoad loads all monster types on startup to validate them.
-- You can disable it to save some memory if you don't see any errors at startup.
allowChangeOutfit = true
freePremium = false
kickIdlePlayerAfterMinutes = 240
maxMessageBuffer = 10
emoteSpells = false
classicEquipmentSlots = true
classicAttackSpeed = true
showScriptsLogInConsole = false
showOnlineStatusInCharlist = true
yellMinimumLevel = 2
yellAlwaysAllowPremium = false
forceMonsterTypesOnLoad = true
cleanProtectionZones = false
luaItemDesc = false
showPlayerLogInConsole = true

-- VIP and Depot limits
-- NOTE: you can set custom limits per group in data/XML/groups.xml
vipFreeLimit = 20
vipPremiumLimit = 100
depotFreeLimit = 2000
depotPremiumLimit = 10000

-- World Light
-- NOTE: if defaultWorldLight is set to true the world light algorithm will
-- be handled in the sources. set it to false to avoid conflicts if you wish
-- to make use of the function setWorldLight(level, color)
defaultWorldLight = true

-- Server Save
-- NOTE: serverSaveNotifyDuration in minutes
serverSaveNotifyMessage = true
serverSaveNotifyDuration = 5
serverSaveCleanMap = true
serverSaveClose = false
serverSaveShutdown = false

-- Experience stages
-- NOTE: to use a flat experience multiplier, set experienceStages to nil
-- minlevel and multiplier are MANDATORY
-- maxlevel is OPTIONAL, but is considered infinite by default
-- to disable stages, create a stage with minlevel 1 and no maxlevel
experienceStages = {
    { minlevel = 1, maxlevel = 8, multiplier = 17 },
    { minlevel = 9, maxlevel = 20, multiplier = 15 },
    { minlevel = 21, maxlevel = 50, multiplier = 13 },
    { minlevel = 51, maxlevel = 100, multiplier = 11 },
    { minlevel = 101, maxlevel = 150, multiplier = 9 },
    { minlevel = 151, maxlevel = 175, multiplier = 7 },
    { minlevel = 176, maxlevel = 200, multiplier = 5 },
    { minlevel = 201, maxlevel = 250, multiplier = 4.75 },
    { minlevel = 251, maxlevel = 300, multiplier = 4 },
    { minlevel = 301, maxlevel = 375, multiplier = 3.75 },
    { minlevel = 376, maxlevel = 400, multiplier = 3 },
    { minlevel = 401, multiplier = 2 },
    -- { minlevel = 1, multiplier = 1 },
}

-- Rates
-- NOTE: rateExp is not used if you have enabled stages above
rateExp = 1
rateSkill = 1
rateLoot = 5
rateMagic = 1
rateSpawn = 1

-- Monster Despawn Config
-- despawnRange is the amount of floors a monster can be from its spawn position
-- despawnRadius is how many tiles away it can be from its spawn position
-- removeOnDespawn will remove the monster if true or teleport it back to its spawn position if false
-- walkToSpawnRadius is the allowed distance that the monster will stay away from spawn position when left with no targets, 0 to disable
deSpawnRange = 2
deSpawnRadius = 50
removeOnDespawn = true
walkToSpawnRadius = 15

-- Stamina
staminaSystem = true

-- Scripts
warnUnsafeScripts = true
convertUnsafeScripts = true

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process
-- priority, valid values are: "normal", "above-normal", "high"
defaultPriority = "high"
startupDatabaseOptimization = false

-- Status Server Information
ownerName = ""
ownerEmail = ""
url = "https://otland.net/"
location = "Sweden"
