local baseStorageBalls = 91000
local ballsTypesCatch = { --Rate media de cada ball
    {"normal"},
    {"great"},
    {"super"},
    {"ultra"},
    {"premier"},
    {"saffari"},
}

balls = {
    normal = {emptyId = 2394, usedOn = 11826, usedOff = 11828, effectFail = 23, effectSucceed = 25, missile = 48, effectRelease = 189, chanceMultiplier = 1.0},
    great = {emptyId = 2391, usedOn = 11832, usedOff = 11834, effectFail = 197, effectSucceed = 199, missile = 49, effectRelease = 190, chanceMultiplier = 1.2},
    super = {emptyId = 2393, usedOn = 11835, usedOff = 11837, effectFail = 201, effectSucceed = 203, missile = 47, effectRelease = 191, chanceMultiplier = 1.3},
    ultra = {emptyId = 2392, usedOn = 11829, usedOff = 11831, effectFail = 199, effectSucceed = 201, missile = 50, effectRelease = 192, chanceMultiplier = 1.4},
    -- premier = {emptyId = 26683, usedOn = 26666, usedOff = 26678, effectFail = 345, effectSucceed = 344, missile = 83, effectRelease = 346, chanceMultiplier = 1.5},
    -- safari = {emptyId = 26685, usedOn = 10975, usedOff = 10977, effectFail = 204, effectSucceed = 205, missile = 70, effectRelease = 196, chanceMultiplier = 1.0},
}

mixTableBalls = { -- não pode ser local
    ["normal"] = {posMinBall = 1, ballId = 1, rate = 1, price = 5},
    ["great"] = {posMinBall = 2, ballId = 2, rate = 2, price = 20},
    ["super"] = {posMinBall = 3, ballId = 3, rate = 3, price = 50},
    ["ultra"] = {posMinBall = 4, ballId = 4, rate = 5, price = 130},
    ["premier"] = {posMinBall = 4, ballId = 5, rate = 3, price = 150},
    ["saffari"] = {posMinBall = 5, ballId = 6, rate = 3, price = 150},
}

-- pokeChance = {
--     -- 1 GENERATION 
--     ["Mixlort"] = {media = 10000, storage = 10000, balltype = "ultra", minBallType = "ultra"}, 

--     ["Bulbasaur"] = {media = 50, storage = 1, balltype = "ultra", minBallType = "normal"}, 
--     ["Ivysaur"] = {media = 140, storage = 2, balltype = "ultra", minBallType = "normal"},
--     ["Venusaur"] = {media = 300, storage = 3, balltype = "ultra", minBallType = "normal"},
--     ["Charmander"] = {media = 50, storage = 4, balltype = "ultra", minBallType = "normal"},
--     ["Charmeleon"] = {media = 140, storage = 5, balltype = "ultra", minBallType = "normal"}, 
--     ["Charizard"] = {media = 300, storage = 6, balltype = "ultra", minBallType = "normal"},
--     ["Squirtle"] = {media = 50, storage = 7, balltype = "ultra", minBallType = "normal"},
--     ["Wartortle"] = {media = 140, storage = 8, balltype = "ultra", minBallType = "normal"},
--     ["Blastoise"] = {media = 300, storage = 9, balltype = "ultra", minBallType = "normal"},
--     ["Caterpie"] = {media = 1, storage = 10, balltype = "normal", minBallType = "normal"},
--     ["Metapod"] = {media = 5, storage = 11, balltype = "ultra", minBallType = "normal"}, -- 8 ub = 20 ultraball
--     ["Butterfree"] = {media = 34, storage = 12, balltype = "ultra", minBallType = "normal"}, -- 47 sb = 28 ub
--     ["Weedle"] = {media = 1, storage = 13, balltype = "normal", minBallType = "normal"},
--     ["Kakuna"] = {media = 5, storage = 14, balltype = "ultra", minBallType = "normal"},
--     ["Beedrill"] = {media = 34, storage = 15, balltype = "ultra", minBallType = "normal"},
--     ["Pidgey"] = {media = 1, storage = 16, balltype = "normal", minBallType = "normal"},
--     ["Pidgeotto"] = {media = 50, storage = 17, balltype = "ultra", minBallType = "normal"},
--     ["Pidgeot"] = {media = 200, storage = 18, balltype = "ultra", minBallType = "normal"},
--     ["Rattata"] = {media = 1, storage = 19, balltype = "normal", minBallType = "normal"},
--     ["Raticate"] = {media = 34, storage = 20, balltype = "ultra", minBallType = "normal"},
--     ["Spearow"] = {media = 2, storage = 21, balltype = "ultra", minBallType = "normal"},
--     ["Fearow"] = {media = 90, storage = 22, balltype = "ultra", minBallType = "normal"},
--     ["Ekans"] = {media = 5, storage = 23, balltype = "ultra", minBallType = "normal"},
--     ["Arbok"] = {media = 50, storage = 24, balltype = "ultra", minBallType = "normal"},
--     ["Pikachu"] = {media = 140, storage = 25, balltype = "ultra", minBallType = "normal"},
--     ["Raichu"] = {media = 300, storage = 26, balltype = "ultra", minBallType = "normal"},
--     ["Sandshrew"] = {media = 17, storage = 27, balltype = "ultra", minBallType = "normal"},
--     ["Sandslash"] = {media = 190, storage = 28, balltype = "ultra", minBallType = "normal"},
--     ["Nidoran Female"] = {media = 3, storage = 29, balltype = "saffari", minBallType = "normal"},
--     ["Nidorina"] = {media = 38, storage = 30, balltype = "saffari", minBallType = "normal"},
--     ["Nidoqueen"] = {media = 600, storage = 31, balltype = "saffari", minBallType = "saffari"}, --safarri
--     ["Nidoran Male"] = {media = 3, storage = 32, balltype = "saffari", minBallType = "normal"},
--     ["Nidorino"] = {media = 38, storage = 33, balltype = "saffari", minBallType = "normal"},
--     ["Nidoking"] = {media = 600, storage = 34, balltype = "saffari", minBallType = "saffari"}, --safarri
--     ["Clefairy"] = {media = 140, storage = 35, balltype = "ultra", minBallType = "normal"},
--     ["Clefable"] = {media = 300, storage = 36, balltype = "ultra", minBallType = "normal"},
--     ["Vulpix"] = {media = 17, storage = 37, balltype = "ultra", minBallType = "normal"},
--     ["Ninetales"] = {media = 190, storage = 38, balltype = "ultra", minBallType = "normal"},
--     ["Jigglypuff"] = {media = 140, storage = 39, balltype = "ultra", minBallType = "normal"},
--     ["Wigglytuff"] = {media = 300, storage = 40, balltype = "ultra", minBallType = "normal"},
--     ["Zubat"] = {media = 2, storage = 41, balltype = "ultra", minBallType = "normal"},
--     ["Golbat"] = {media = 50, storage = 42, balltype = "ultra", minBallType = "normal"},
--     ["Oddish"] = {media = 1, storage = 43, balltype = "normal", minBallType = "normal"},
--     ["Gloom"] = {media = 38, storage = 44, balltype = "ultra", minBallType = "normal"},
--     ["Vileplume"] = {media = 200, storage = 45, balltype = "ultra", minBallType = "normal"},
--     ["Paras"] = {media = 2, storage = 46, balltype = "ultra", minBallType = "normal"},
--     ["Parasect"] = {media = 130, storage = 47, balltype = "ultra", minBallType = "normal"},
--     ["Venonat"] = {media = 25, storage = 48, balltype = "ultra", minBallType = "normal"},
--     ["Venomoth"] = {media = 130, storage = 49, balltype = "ultra", minBallType = "normal"},
--     ["Diglett"] = {media = 4, storage = 50, balltype = "ultra", minBallType = "normal"},
--     ["Dugtrio"] = {media = 50, storage = 51, balltype = "ultra", minBallType = "normal"},
--     ["Meowth"] = {media = 5, storage = 52, balltype = "ultra", minBallType = "normal"},
--     ["Persian"] = {media = 50, storage = 53, balltype = "ultra", minBallType = "normal"},
--     ["Psyduck"] = {media = 25, storage = 54, balltype = "ultra", minBallType = "normal"},
--     ["Golduck"] = {media = 200, storage = 55, balltype = "ultra", minBallType = "normal"},
--     ["Mankey"] = {media = 5, storage = 56, balltype = "saffari", minBallType = "normal"},
--     ["Primeape"] = {media = 130, storage = 57, balltype = "saffari", minBallType = "normal"},
--     ["Growlithe"] = {media = 60, storage = 58, balltype = "ultra", minBallType = "normal"},
--     ["Arcanine"] = {media = 980, storage = 59, balltype = "ultra", minBallType = "normal"},
--     ["Poliwag"] = {media = 2, storage = 60, balltype = "ultra", minBallType = "normal"},
--     ["Poliwhirl"] = {media = 50, storage = 61, balltype = "ultra", minBallType = "normal"},
--     ["Poliwrath"] = {media = 220, storage = 62, balltype = "ultra", minBallType = "normal"},
--     ["Abra"] = {media = 14, storage = 63, balltype = "ultra", minBallType = "normal"},
--     ["Kadabra"] = {media = 100, storage = 64, balltype = "ultra", minBallType = "normal"},
--     ["Alakazam"] = {media = 270, storage = 65, balltype = "ultra", minBallType = "normal"},
--     ["Machop"] = {media = 34, storage = 66, balltype = "ultra", minBallType = "normal"},
--     ["Machoke"] = {media = 120, storage = 67, balltype = "ultra", minBallType = "normal"},
--     ["Machamp"] = {media = 350, storage = 68, balltype = "ultra", minBallType = "normal"},
--     ["Bellsprout"] = {media = 2, storage = 69, balltype = "ultra", minBallType = "normal"},
--     ["Weepinbell"] = {media = 38, storage = 70, balltype = "ultra", minBallType = "normal"},
--     ["Victreebel"] = {media = 200, storage = 71, balltype = "ultra", minBallType = "normal"},
--     ["Tentacool"] = {media = 5, storage = 72, balltype = "ultra", minBallType = "normal"},
--     ["Tentacruel"] = {media = 250, storage =73, balltype = "ultra", minBallType = "normal"},
--     ["Geodude"] = {media = 5, storage = 74, balltype = "ultra", minBallType = "normal"},
--     ["Graveler"] = {media = 90, storage = 75, balltype = "ultra", minBallType = "normal"},
--     ["Golem"] = {media = 250, storage = 76, balltype = "ultra", minBallType = "normal"},
--     ["Ponyta"] = {media = 25, storage = 77, balltype = "ultra", minBallType = "normal"},
--     ["Rapidash"] = {media = 210, storage = 78, balltype = "ultra", minBallType = "normal"},
--     ["Slowpoke"] = {media = 7, storage = 79, balltype = "ultra", minBallType = "normal"},
--     ["Slowbro"] = {media = 140, storage = 80, balltype = "saffari", minBallType = "normal"},
--     ["Magnemite"] = {media = 7, storage = 81, balltype = "ultra", minBallType = "normal"},
--     ["Magneton"] = {media = 90, storage = 82, balltype = "ultra", minBallType = "normal"},
--     ["Farfetch'd"] = {media = 140, storage = 83, balltype = "ultra", minBallType = "normal"},
--     ["Doduo"] = {media = 10, storage = 84, balltype = "saffari", minBallType = "normal"},
--     ["Dodrio"] = {media = 100, storage = 85, balltype = "saffari", minBallType = "normal"},
--     ["Seel"] = {media = 34, storage = 86, balltype = "ultra", minBallType = "normal"},
--     ["Dewgong"] = {media = 200, storage = 87, balltype = "ultra", minBallType = "normal"},
--     ["Grimer"] = {media = 5, storage = 88, balltype = "ultra", minBallType = "normal"},
--     ["Muk"] = {media = 190, storage = 89, balltype = "ultra", minBallType = "normal"},
--     ["Shellder"] = {media = 4, storage = 90, balltype = "ultra", minBallType = "normal"},
--     ["Cloyster"] = {media = 170, storage = 91, balltype = "ultra", minBallType = "normal"},
--     ["Gastly"] = {media = 50, storage = 92, balltype = "ultra", minBallType = "normal"},
--     ["Haunter"] = {media = 140, storage = 93, balltype = "ultra", minBallType = "normal"},
--     ["Gengar"] = {media = 300, storage = 94, balltype = "ultra", minBallType = "normal"},
--     ["Onix"] = {media = 100, storage = 95, balltype = "ultra", minBallType = "normal"},
--     ["Drowzee"] = {media = 17, storage = 96, balltype = "ultra", minBallType = "normal"},
--     ["Hypno"] = {media = 100, storage = 97, balltype = "ultra", minBallType = "normal"},
--     ["Krabby"] = {media = 4, storage = 98, balltype = "ultra", minBallType = "normal"},
--     ["Kingler"] = {media = 90, storage = 99, balltype = "ultra", minBallType = "normal"},
--     ["Voltorb"] = {media = 5, storage = 100, balltype = "ultra", minBallType = "normal"},
--     ["Electrode"] = {media = 50, storage = 101, balltype = "ultra", minBallType = "normal"},
--     ["Exeggcute"] = {media = 4, storage = 102, balltype = "ultra", minBallType = "normal"},
--     ["Exeggutor"] = {media = 250, storage = 103, balltype = "ultra", minBallType = "normal"},
--     ["Cubone"] = {media = 17, storage = 104, balltype = "ultra", minBallType = "normal"},
--     ["Marowak"] = {media = 190, storage = 105, balltype = "ultra", minBallType = "normal"},
--     ["Hitmonlee"] = {media = 190, storage = 106, balltype = "master", minBallType = "master"},
--     ["Hitmonchan"] = {media = 190, storage = 107, balltype = "master", minBallType = "master"},
--     ["Lickitung"] = {media = 1000, storage = 108, balltype = "saffari", minBallType = "saffari"},
--     ["Koffing"] = {media = 5, storage = 109, balltype = "ultra", minBallType = "normal"},
--     ["Weezing"] = {media = 50, storage = 110, balltype = "ultra", minBallType = "normal"},
--     ["Rhyhorn"] = {media = 50, storage = 111, balltype = "ultra", minBallType = "normal"},
--     ["Rhydon"] = {media = 220, storage = 112, balltype = "ultra", minBallType = "normal"},
--     ["Chansey"] = {media = 1500, storage = 113, balltype = "saffari", minBallType = "normal"},
--     ["Tangela"] = {media = 170, storage = 114, balltype = "ultra", minBallType = "normal"},
--     ["Kangaskhan"] = {media = 1500, storage = 115, balltype = "saffari", minBallType = "saffari"},
--     ["Horsea"] = {media = 4, storage = 116, balltype = "ultra", minBallType = "normal"},
--     ["Seadra"] = {media = 100, storage = 117, balltype = "ultra", minBallType = "normal"},
--     ["Goldeen"] = {media = 4, storage = 118, balltype = "ultra", minBallType = "normal"},
--     ["Seaking"] = {media = 50, storage = 119, balltype = "ultra", minBallType = "normal"},
--     ["Staryu"] = {media = 7, storage = 120, balltype = "ultra", minBallType = "normal"},
--     ["Starmie"] = {media = 50, storage = 121, balltype = "ultra", minBallType = "normal"},
--     ["Mr. Mime"] = {media = 1500, storage = 122, balltype = "saffari", minBallType = "normal"},
--     ["Scyther"] = {media = 1500, storage = 123, balltype = "saffari", minBallType = "normal"},  
--     ["Jynx"] = {media = 2000, storage = 124, balltype = "ultra", minBallType = "normal"},
--     ["Electabuzz"] = {media = 2000, storage = 125, balltype = "ultra", minBallType = "normal"},
--     ["Magmar"] = {media = 2000, storage = 126, balltype = "ultra", minBallType = "normal"},
--     ["Pinsir"] = {media = 2000, storage = 127, balltype = "ultra", minBallType = "normal"},
--     ["Tauros"] = {media = 90, storage = 128, balltype = "ultra", minBallType = "normal"},
--     ["Magikarp"] = {media = 1, storage = 129, balltype = "normal", minBallType = "normal"},
--     ["Gyarados"] = {media = 920, storage = 130, balltype = "ultra", minBallType = "normal"},
--     ["Lapras"] = {media = 2000, storage = 131, balltype = "ultra", minBallType = "normal"},
--     ["Eevee"] = {media = 1500, storage = 132, balltype = "saffari", minBallType = "normal"},
--     ["Vaporeon"] = {media = 1500, storage = 133, balltype = "ultra", minBallType = "normal"},
--     ["Jolteon"] = {media = 1500, storage = 134, balltype = "ultra", minBallType = "normal"},
--     ["Flareon"] = {media = 1500, storage = 135, balltype = "ultra", minBallType = "normal"},
--     ["Omanyte"] = {media = 1500, storage = 136, balltype = "master", minBallType = "master"},
--     ["Omastar"] = {media = 1500, storage = 137, balltype = "master", minBallType = "master"},
--     ["Kabuto"] = {media = 1500, storage = 138, balltype = "master", minBallType = "master"},
--     ["Kabutops"] = {media = 1500, storage = 139, balltype = "master", minBallType = "master"},
--     ["Snorlax"] = {media = 3340, storage = 140, balltype = "ultra", minBallType = "normal"},
--     ["Dratini"] = {media = 250, storage = 141, balltype = "ultra", minBallType = "normal"},
--     ["Dragonair"] = {media = 1090, storage = 142, balltype = "ultra", minBallType = "normal"},
--     ["Dragonite"] = {media = 2090, storage = 143, balltype = "ultra", minBallType = "normal"},


--     -- 2 GENERATION 
--     ["Chikorita"] = {media = 50, storage = 144, balltype = "ultra", minBallType = "normal"}, 
--     ["Bayleef"] = {media = 140, storage = 145, balltype = "ultra", minBallType = "normal"},
--     ["Meganium"] = {media = 300, storage = 146, balltype = "ultra", minBallType = "normal"},
--     ["Cyndaquil"] = {media = 50, storage = 147, balltype = "ultra", minBallType = "normal"},
--     ["Quilava"] = {media = 140, storage = 148, balltype = "ultra", minBallType = "normal"}, 
--     ["Typhlosion"] = {media = 300, storage = 149, balltype = "ultra", minBallType = "normal"},
--     ["Totodile"] = {media = 50, storage = 150, balltype = "ultra", minBallType = "normal"},
--     ["Croconaw"] = {media = 140, storage = 151, balltype = "ultra", minBallType = "normal"},
--     ["Feraligatr"] = {media = 300, storage = 152, balltype = "ultra", minBallType = "normal"},
--     ["Sentret"] = {media = 5, storage = 153, balltype = "ultra", minBallType = "normal"},   
--     ["Furret"] = {media = 50, storage = 154, balltype = "ultra", minBallType = "normal"},   
--     ["Hoothoot"] = {media = 25, storage = 155, balltype = "ultra", minBallType = "normal"},         
--     ["Noctowl"] = {media = 200, storage = 156, balltype = "ultra", minBallType = "normal"},     
--     ["Ledyba"] = {media = 5, storage = 157, balltype = "ultra", minBallType = "normal"}, 
--     ["Ledian"] = {media = 50, storage = 158, balltype = "ultra", minBallType = "normal"}, 
--     ["Spinarak"] = {media = 5, storage = 159, balltype = "ultra", minBallType = "normal"}, 
--     ["Ariados"] = {media = 50, storage = 160, balltype = "ultra", minBallType = "normal"}, 
--     ["Crobat"] = {media = 970, storage = 161, balltype = "ultra", minBallType = "normal"}, 
--     ["Chinchou"] = {media = 17, storage = 162, balltype = "ultra", minBallType = "normal"}, 
--     ["Lanturn"] = {media = 200, storage = 163, balltype = "ultra", minBallType = "normal"}, 
--     ["Pichu"] = {media = 50, storage = 164, balltype = "ultra", minBallType = "normal"}, 
--     ["Cleffa"] = {media = 43, storage = 165, balltype = "ultra", minBallType = "normal"}, 
--     ["Igglybuff"] = {media = 50, storage = 166, balltype = "ultra", minBallType = "normal"}, 
--     ["Togepi"] = {media = 250, storage = 167, balltype = "ultra", minBallType = "normal"}, 
--     ["Togetic"] = {media = 420, storage = 168, balltype = "ultra", minBallType = "normal"}, 
--     ["Blissey"] = {media = 1500, storage = 169, balltype = "saffari", minBallType = "normal"}, 
--     ["Natu"] = {media = 50, storage = 170, balltype = "ultra", minBallType = "normal"}, 
--     ["Xatu"] = {media = 220, storage = 171, balltype = "ultra", minBallType = "normal"}, 
--     ["Mareep"] = {media = 50, storage = 172, balltype = "ultra", minBallType = "normal"}, 
--     ["Flaaffy"] = {media = 140, storage = 173, balltype = "ultra", minBallType = "normal"}, 
--     ["Ampharos"] = {media = 300, storage = 174, balltype = "ultra", minBallType = "normal"}, 
--     ["Bellossom"] = {media = 200, storage = 175, balltype = "ultra", minBallType = "normal"}, 
--     ["Maril"] = {media = 50, storage = 176, balltype = "ultra", minBallType = "normal"}, 
--     ["Azumarill"] = {media = 220, storage = 177, balltype = "ultra", minBallType = "normal"}, 
--     ["Sudowoodo"] = {media = 1500, storage = 178, balltype = "ultra", minBallType = "normal"}, 
--     ["Politoed"] = {media = 140, storage = 179, balltype = "ultra", minBallType = "normal"}, 
--     ["Hoppip"] = {media = 2, storage = 180, balltype = "ultra", minBallType = "normal"}, 
--     ["Skiploom"] = {media = 38, storage = 181, balltype = "ultra", minBallType = "normal"},     
--     ["Jumpluff"] = {media = 200, storage = 182, balltype = "ultra", minBallType = "normal"}, 
--     ["Aipom"] = {media = 140, storage = 183, balltype = "ultra", minBallType = "normal"},   
--     ["Sunkern"] = {media = 1, storage = 184, balltype = "normal", minBallType = "normal"}, 
--     ["Sunflora"] = {media = 90, storage = 185, balltype = "ultra", minBallType = "normal"},     
--     ["Yanma"] = {media = 150, storage = 186, balltype = "ultra", minBallType = "normal"}, 
--     ["Wooper"] = {media = 34, storage = 187, balltype = "ultra", minBallType = "normal"},   
--     ["Quagsire"] = {media = 200, storage = 188, balltype = "ultra", minBallType = "normal"}, 
--     ["Umbreon"] = {media = 1500, storage = 190, balltype = "ultra", minBallType = "normal"},
--     ["Espeon"] = {media = 1500, storage = 191, balltype = "ultra", minBallType = "normal"},
--     ["Murkrow"] = {media = 170, storage = 192, balltype = "ultra", minBallType = "normal"},     
--     ["Slowking"] = {media = 1500, storage = 193, balltype = "ultra", minBallType = "normal"},   
--     ["Misdreavus"] = {media = 1500, storage = 194, balltype = "ultra", minBallType = "normal"},     
--     ["Unown"] = {media = 1500, storage = 195, balltype = "ultra", minBallType = "normal"},  
--     ["Wobbuffet"] = {media = 1500, storage = 196, balltype = "ultra", minBallType = "normal"},  
--     ["Girafarig"] = {media =  2000, storage = 197, balltype = "ultra", minBallType = "normal"},     
--     ["Pineco"] = {media = 5, storage = 198, balltype = "ultra", minBallType = "normal"}, 
--     ["Forretress"] = {media = 170, storage = 199, balltype = "ultra", minBallType = "normal"},  
--     ["Dunsparce"] = {media = 50, storage = 200, balltype = "ultra", minBallType = "normal"}, 
--     ["Gligar"] = {media = 140, storage = 201, balltype = "ultra", minBallType = "normal"},  
--     ["Steelix"] = {media = 1840, storage = 202, balltype = "ultra", minBallType = "normal"}, 
--     ["Snubbull"] = {media = 42, storage = 203, balltype = "ultra", minBallType = "normal"}, 
--     ["Granbull"] = {media = 210, storage = 204, balltype = "ultra", minBallType = "normal"}, 
--     ["Qwilfish"] = {media = 170, storage = 205, balltype = "ultra", minBallType = "normal"}, 
--     ["Scizor"] = {media = 1500, storage = 206, balltype = "ultra", minBallType = "normal"}, 
--     ["Shuckle"] = {media = 60, storage = 207, balltype = "ultra", minBallType = "normal"}, 
--     ["Heracross"] = {media = 2000, storage = 208, balltype = "ultra", minBallType = "normal"}, 
--     ["Sneasel"] = {media = 170, storage = 209, balltype = "ultra", minBallType = "normal"}, 
--     ["Teddiursa"] = {media = 1340, storage = 210, balltype = "ultra", minBallType = "normal"}, 
--     ["Ursaring"] = {media = 2500, storage = 211, balltype = "ultra", minBallType = "normal"}, 
--     ["Slugma"] = {media = 17, storage = 212, balltype = "ultra", minBallType = "normal"}, 
--     ["Magcargo"] = {media = 190, storage = 213, balltype = "ultra", minBallType = "normal"}, 
--     ["Swinub"] = {media = 17, storage = 214, balltype = "ultra", minBallType = "normal"}, 
--     ["Piloswine"] = {media = 190, storage = 215, balltype = "ultra", minBallType = "normal"},   
--     ["Corsola"] = {media = 150, storage = 216, balltype = "ultra", minBallType = "normal"}, 
--     ["Remoraid"] = {media = 4, storage = 217, balltype = "ultra", minBallType = "normal"},  
--     ["Octillery"] = {media = 170, storage = 218, balltype = "ultra", minBallType = "normal"}, 
--     ["Delibird"] = {media = 170, storage = 219, balltype = "ultra", minBallType = "normal"},    
--     ["Mantine"] = {media = 2000, storage = 220, balltype = "ultra", minBallType = "normal"}, 
--     ["Skarmory"] = {media = 2000, storage = 221, balltype = "ultra", minBallType = "normal"},   
--     ["Houndour"] = {media = 60, storage = 222, balltype = "ultra", minBallType = "normal"}, 
--     ["Houndoom"] = {media = 230, storage = 223, balltype = "ultra", minBallType = "normal"},    
--     ["Kingdra"] = {media = 1000, storage = 224, balltype = "ultra", minBallType = "normal"}, 
--     ["Phanpy"] = {media = 50, storage = 225, balltype = "ultra", minBallType = "normal"},   
--     ["Donphan"] = {media = 220, storage = 226, balltype = "ultra", minBallType = "normal"}, 
--     ["Stantler"] = {media = 170, storage = 227, balltype = "ultra", minBallType = "normal"},    
--     ["Tyrogue"] = {media = 1500, storage = 228, balltype = "master", minBallType = "master"},   
--     ["Hitmontop"] = {media = 1500, storage = 229, balltype = "master", minBallType = "master"},     
--     ["Smoochum"] = {media = 150, storage = 230, balltype = "ultra", minBallType = "normal"},    
--     ["Elekid"] = {media = 150, storage = 231, balltype = "ultra", minBallType = "normal"},  
--     ["Magby"] = {media = 150, storage = 232, balltype = "ultra", minBallType = "normal"},   
--     ["Miltank"] = {media = 2000, storage = 233, balltype = "ultra", minBallType = "normal"},    
--     ["Larvitar"] = {media = 250, storage = 234, balltype = "ultra", minBallType = "normal"},    
--     ["Pupitar"] = {media = 1090, storage = 235, balltype = "ultra", minBallType = "normal"},    
--     ["Tyranitar"] = {media = 2090, storage = 236, balltype = "ultra", minBallType = "normal"}, 
--     ["Smeargle"] = {media = 1500, storage = 237, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 1"] = {media = 1500, storage = 238, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 2"] = {media = 1500, storage = 239, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 3"] = {media = 1500, storage = 240, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 4"] = {media = 1500, storage = 241, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 5"] = {media = 1500, storage = 242, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 6"] = {media = 1500, storage = 243, balltype = "saffari", minBallType = "normal"}, 
--     ["Smeargle 7"] = {media = 1500, storage = 244, balltype = "saffari", minBallType = "normal"},           
--     ["Smeargle 8"] = {media = 1500, storage = 245, balltype = "saffari", minBallType = "normal"}, 
    
--     -- 3 GENERATION 
    
--     ["Treecko"] = {media = 50, storage = 246, balltype = "ultra", minBallType = "normal"}, 
--     ["Grovyle"] = {media = 140, storage = 247, balltype = "ultra", minBallType = "normal"},
--     ["Sceptile"] = {media = 300, storage = 248, balltype = "ultra", minBallType = "normal"},
--     ["Torchic"] = {media = 50, storage = 249, balltype = "ultra", minBallType = "normal"},
--     ["Combusken"] = {media = 140, storage = 250, balltype = "ultra", minBallType = "normal"}, 
--     ["Blaziken"] = {media = 300, storage = 251, balltype = "ultra", minBallType = "normal"},
--     ["Mudkip"] = {media = 50, storage = 252, balltype = "ultra", minBallType = "normal"},
--     ["Marshtomp"] = {media = 140, storage = 253, balltype = "ultra", minBallType = "normal"},
--     ["Swampert"] = {media = 300, storage = 254, balltype = "ultra", minBallType = "normal"},
--     ["Poochyena"] = {media = 1500, storage = 255, balltype = "ultra", minBallType = "normal"},  --dimensional zone
--     ["Mightyena"] = {media = 300, storage = 256, balltype = "ultra", minBallType = "normal"},   --dimensional zone
--     -- ["Zigzagoon"] = {media = 66, storage = 1, balltype = "ultra", minBallType = "normal"},   
--     -- ["Linoone"] = {media = 120, storage = 1, balltype = "ultra", minBallType = "normal"},    
--     -- ["Wurmple"] = {media = 20, storage = 1, balltype = "ultra", minBallType = "normal"}, 
--     -- ["Silcoon"] = {media = 66, storage = 1, balltype = "ultra", minBallType = "normal"}, 
--     -- ["Cascoon"] = {media = 66, storage = 1, balltype = "ultra", minBallType = "normal"},
--     -- ["Beautifly"] = {media = 226, storage = 1, balltype = "ultra", minBallType = "normal"},  
--     -- ["Dustox"] = {media = 226, storage = 1, balltype = "ultra", minBallType = "normal"}, 
--     ["Lotad"] = {media = 50, storage = 257, balltype = "ultra", minBallType = "normal"},    
--     ["Lombre"] = {media = 140, storage = 258, balltype = "ultra", minBallType = "normal"},  
--     ["Ludicolo"] = {media = 300, storage = 259, balltype = "ultra", minBallType = "normal"},    
--     ["Seedot"] = {media = 50, storage = 260, balltype = "ultra", minBallType = "normal"},   
--     ["Nuzleaf"] = {media = 140, storage = 261, balltype = "ultra", minBallType = "normal"}, 
--     ["Shiftry"] = {media = 300, storage = 262, balltype = "ultra", minBallType = "normal"}, 
--     ["Taillow"] = {media = 50, storage = 263, balltype = "ultra", minBallType = "normal"},  
--     ["Swellow"] = {media = 220, storage = 264, balltype = "ultra", minBallType = "normal"}, 
--     ["Wingull"] = {media = 47, storage = 265, balltype = "ultra", minBallType = "normal"},  --dimensional zone
--     ["Pelipper"] = {media = 200, storage = 266, balltype = "ultra", minBallType = "normal"},    --dimensional zone
--     ["Ralts"] = {media = 1500, storage = 267, balltype = "ultra", minBallType = "normal"},  
--     ["Kirlia"] = {media = 1500, storage = 268, balltype = "ultra", minBallType = "normal"}, 
--     ["Gardevoir"] = {media = 1500, storage = 269, balltype = "ultra", minBallType = "normal"},  
--     ["Shroomish"] = {media = 200, storage = 270, balltype = "ultra", minBallType = "normal"},   --dimensional zone
--     ["Breloom"] = {media = 200, storage = 271, balltype = "ultra", minBallType = "normal"},--dimensional zone
--     ["Slakoth"] = {media = 140, storage = 272, balltype = "ultra", minBallType = "normal"},
--     ["Vigoroth"] = {media = 300, storage = 273, balltype = "ultra", minBallType = "normal"},
--     ["Slaking"] = {media = 1500, storage = 274, balltype = "ultra", minBallType = "normal"},
--     ["Nincada"] = {media = 5, storage = 275, balltype = "ultra", minBallType = "normal"},
--     ["Ninjask"] = {media = 1500, storage = 276, balltype = "ultra", minBallType = "normal"},
--     ["Whismur"] = {media = 50, storage = 277, balltype = "ultra", minBallType = "normal"},  
--     ["Loudred"] = {media = 140, storage = 278, balltype = "ultra", minBallType = "normal"}, 
--     ["Exploud"] = {media = 300, storage = 279, balltype = "ultra", minBallType = "normal"}, 
--     ["Makuhita"] = {media = 1500, storage = 280, balltype = "ultra", minBallType = "normal"},   
--     ["Hariyama"] = {media = 1500, storage = 281, balltype = "ultra", minBallType = "normal"},   
--     ["Nosepass"] = {media = 1500, storage = 282, balltype = "ultra", minBallType = "normal"},   --dimensional zone  
--     ["Sableye"] = {media = 370, storage = 283, balltype = "ultra", minBallType = "normal"},
--     ["Mawile"] = {media = 1340, storage = 284, balltype = "ultra", minBallType = "normal"}, 
--     ["Aron"] = {media = 250, storage = 285, balltype = "ultra", minBallType = "normal"},    
--     ["Lairon"] = {media = 340, storage = 286, balltype = "ultra", minBallType = "normal"},  
--     ["Aggron"] = {media = 1500, storage = 287, balltype = "ultra", minBallType = "normal"}, 
--     ["Meditite"] = {media = 60, storage = 288, balltype = "ultra", minBallType = "normal"}, 
--     ["Medicham"] = {media = 220, storage = 289, balltype = "ultra", minBallType = "normal"},    
--     ["Electrike"] = {media = 60, storage = 290, balltype = "ultra", minBallType = "normal"},    
--     ["Manectric"] = {media = 220, storage = 291, balltype = "ultra", minBallType = "normal"},   
--     ["Plusle"] = {media = 80, storage = 292, balltype = "ultra", minBallType = "normal"},   
--     ["Minun"] = {media = 80, storage = 293, balltype = "ultra", minBallType = "normal"},    
--     ["Roselia"] = {media = 80, storage = 294, balltype = "ultra", minBallType = "normal"},  --dimensional zone      
--     ["Numel"] = {media = 60, storage = 295, balltype = "ultra", minBallType = "normal"},    
--     ["Camerupt"] = {media = 300, storage = 296, balltype = "ultra", minBallType = "normal"},    
--     ["Torkoal"] = {media = 1500, storage = 297, balltype = "ultra", minBallType = "normal"},    
--     ["Spoink"] = {media = 60, storage = 298, balltype = "ultra", minBallType = "normal"},   
--     ["Grumpig"] = {media = 230, storage = 299, balltype = "ultra", minBallType = "normal"},
--     ["Trapinch"] = {media = 50, storage = 300, balltype = "ultra", minBallType = "normal"},
--     ["Vibrava"] = {media = 140, storage = 301, balltype = "ultra", minBallType = "normal"}, 
--     ["Flygon"] = {media = 970, storage = 302, balltype = "ultra", minBallType = "normal"},  
--     ["Swablu"] = {media = 90, storage = 303, balltype = "ultra", minBallType = "normal"},   
--     ["Altaria"] = {media = 1000, storage = 304, balltype = "ultra", minBallType = "normal"},    
--     ["Zangoose"] = {media = 370, storage = 305, balltype = "ultra", minBallType = "normal"},    
--     ["Seviper"] = {media = 840, storage = 306, balltype = "ultra", minBallType = "normal"}, 
--     ["Corphish"] = {media = 60, storage = 307, balltype = "ultra", minBallType = "normal"}, 
--     ["Crawdaunt"] = {media = 230, storage = 308, balltype = "ultra", minBallType = "normal"},   
--     ["Baltoy"] = {media = 60, storage = 309, balltype = "ultra", minBallType = "normal"},   
--     ["Claydol"] = {media = 230, storage = 310, balltype = "ultra", minBallType = "normal"}, 
--     ["Lileep"] = {media = 230, storage = 311, balltype = "ultra", minBallType = "normal"},  --dimensional zone
--     ["Cradily"] = {media = 230, storage = 312, balltype = "ultra", minBallType = "normal"}, --dimensional zone
--     ["Anorith"] = {media = 1500, storage = 313, balltype = "master", minBallType = "master"},
--     ["Armaldo"] = {media = 1500, storage = 314, balltype = "master", minBallType = "master"},
--     ["Feebas"] = {media = 5, storage = 315, balltype = "ultra", minBallType = "normal"},    
--     ["Milotic"] = {media = 1500, storage = 316, balltype = "ultra", minBallType = "normal"},    
--     ["Castform"] = {media = 1500, storage = 317, balltype = "ultra", minBallType = "normal"},   
--     ["Castform Fire"] = {media = 1500, storage = 318, balltype = "ultra", minBallType = "normal"},  
--     ["Castform Water"] = {media = 1500, storage = 319, balltype = "ultra", minBallType = "normal"},
--     ["Castform Ice"] = {media = 1500, storage = 320, balltype = "ultra", minBallType = "normal"},   
--     ["Kecleon"] = {media = 1340, storage = 322, balltype = "ultra", minBallType = "normal"},    
--     ["Shuppet"] = {media = 60, storage = 323, balltype = "ultra", minBallType = "normal"},  
--     ["Banette"] = {media = 300, storage = 324, balltype = "ultra", minBallType = "normal"}, 
--     ["Duskull"] = {media = 140, storage = 325, balltype = "ultra", minBallType = "normal"}, 
--     ["Dusclops"] = {media = 300, storage = 326, balltype = "ultra", minBallType = "normal"},    
--     ["Tropius"] = {media = 1500, storage = 327, balltype = "ultra", minBallType = "normal"},    
--     ["Absol"] = {media = 1500, storage = 328, balltype = "ultra", minBallType = "normal"},  
--     ["Wynaut"] = {media = 1500, storage = 329, balltype = "ultra", minBallType = "normal"}, --dimensional zone
--     ["Snorunt"] = {media = 60, storage = 330, balltype = "ultra", minBallType = "normal"},  
--     ["Glalie"] = {media = 230, storage = 331, balltype = "ultra", minBallType = "normal"},  
--     ["Spheal"] = {media = 100, storage = 332, balltype = "ultra", minBallType = "normal"},  
--     ["Sealeo"] = {media = 190, storage = 333, balltype = "ultra", minBallType = "normal"},  
--     ["Walrein"] = {media = 1100, storage = 334, balltype = "ultra", minBallType = "normal"},    
--     ["Bagon"] = {media = 500, storage = 335, balltype = "ultra", minBallType = "normal"},   
--     ["Shelgon"] = {media = 1090, storage = 336, balltype = "ultra", minBallType = "normal"},    
--     ["Salamence"] = {media = 1500, storage = 337, balltype = "ultra", minBallType = "normal"},  
--     ["Beldum"] = {media = 250, storage = 338, balltype = "ultra", minBallType = "normal"},  
--     ["Metang"] = {media = 1170, storage = 339, balltype = "ultra", minBallType = "normal"}, 
--     ["Metagross"] = {media = 1500, storage = 340, balltype = "ultra", minBallType = "normal"},

--     -- 4 GENERATION 
--     ["Cranidos"] = {media = 1500, storage = 341, balltype = "ultra", minBallType = "normal"},   --Nightmare World
--     ["Rampardos"] = {media = 1500, storage = 342, balltype = "ultra", minBallType = "normal"},  --Nightmare World
--     ["Shieldon"] = {media = 1500, storage = 343, balltype = "master", minBallType = "master"},
--     ["Bastiodon"] = {media = 1500, storage = 344, balltype = "master", minBallType = "master"},
--     ["Wordmadam"] = {media = 1500, storage = 345, balltype = "ultra", minBallType = "normal"},  --Nightmare World
--     ["Pachirisu"] = {media = 250, storage = 346, balltype = "ultra", minBallType = "normal"},
--     ["Ambipom"] = {media = 1670, storage = 347, balltype = "ultra", minBallType = "normal"},
--     ["Buneary"] = {media = 1500, storage = 348, balltype = "ultra", minBallType = "normal"}, -- eventos
--     ["Lopunny"] = {media = 1500, storage = 349, balltype = "ultra", minBallType = "normal"}, -- eventos
--     ["Glameow"] = {media = 1500, storage = 350, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Purugly"] = {media = 1500, storage = 351, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Bronzor"] = {media = 250, storage = 352, balltype = "ultra", minBallType = "normal"},
--     ["Bronzong"] = {media = 420, storage = 353, balltype = "ultra", minBallType = "normal"},
--     ["Riolu"] = {media = 250, storage = 354, balltype = "ultra", minBallType = "normal"},
--     ["Lucario"] = {media = 1090, storage = 355, balltype = "ultra", minBallType = "normal"},
--     ["Hippopotas"] = {media = 1500, storage = 356, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Hippowdon"] = {media = 1500, storage = 357, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Skorupi"] = {media = 1500, storage = 358, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Drapion"] = {media = 1500, storage = 359, balltype = "ultra", minBallType = "normal"}, -- dimensional zone
--     ["Croagunk"] = {media = 190, storage = 360, balltype = "ultra", minBallType = "normal"},
--     ["Toxicroak"] = {media = 1100, storage = 361, balltype = "ultra", minBallType = "normal"},

--     --NÃO EXISTE
--     ["Barboach"] = {media = 50, storage = 362, balltype = "ultra", minBallType = "normal"},
--     ["Surskit"] = {media = 47, storage = 363, balltype = "ultra", minBallType = "normal"},
--     ["Masquerain"] = {media = 226, storage = 364, balltype = "ultra", minBallType = "normal"},
--     ["Skitty"] = {media = 47, storage = 365, balltype = "ultra", minBallType = "normal"},
--     ["Delcatty"] = {media = 120, storage = 366, balltype = "ultra", minBallType = "normal"},
--     ["Spinda"] = {media = 47, storage = 367, balltype = "ultra", minBallType = "normal"},   
--     ["Whiscash"] = {media = 113, storage = 368, balltype = "ultra", minBallType = "normal"},    
--     ["Carvanha"] = {media = 65, storage = 369, balltype = "ultra", minBallType = "normal"}, 
--     ["Luvdisc"] = {media = 53, storage = 370, balltype = "ultra", minBallType = "normal"},      
--     ["Sharpedo"] = {media = 233, storage = 371, balltype = "ultra", minBallType = "normal"},        
--     ["Cacnea"] = {media = 80, storage = 372, balltype = "ultra", minBallType = "normal"},   
--     ["Cacturn"] = {media = 665, storage = 373, balltype = "ultra", minBallType = "normal"}, 
--     ["Gulpin"] = {media = 153, storage = 374, balltype = "ultra", minBallType = "normal"},
--     ["Swalot"] = {media = 800, storage = 375, balltype = "ultra", minBallType = "normal"},  
--     ["Clamperl"] = {media = 47, storage = 376, balltype = "ultra", minBallType = "normal"}, 
--     ["Huntail"] = {media = 126, storage = 377, balltype = "ultra", minBallType = "normal"}, 
--     ["Gorebyss"] = {media = 126, storage = 378, balltype = "ultra", minBallType = "normal"},    
--     ["Relicath"] = {media = 126, storage = 379, balltype = "ultra", minBallType = "normal"},
--     ["Volbeat"] = {media = 66, storage = 380, balltype = "ultra", minBallType = "normal"},  
--     ["Illumise"] = {media = 66, storage = 381, balltype = "ultra", minBallType = "normal"},     
    
-- -- -- Shinys
-- --  ["Shiny Abra"] = {media = 50, storage = 382, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Alakazam"] = {media = 450, storage = 383, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Venusaur"] = {media = 325, storage = 384, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Charizard"] = {media = 325, storage = 385, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Blastoise"] = {media = 325, storage = 386, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Butterfree"] = {media = 65, storage = 387, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Beedrill"] = {media = 65, storage = 388, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Pidgeot"] = {media = 280, storage = 389, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Rattata"] = {media = 65, storage = 390, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Raticate"] = {media = 150, storage = 391, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Raichu"] = {media = 325, storage = 392, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Zubat"] = {media = 65, storage = 393, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Golbat"] = {media = 110, storage = 394, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Oddish"] = {media = 65, storage = 395, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Paras"] = {media = 65, storage = 396, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Parasect"] = {media = 150, storage = 397, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Venonat"] = {media = 60, storage = 398, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Venomoth"] = {media = 250, storage = 399, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Growlithe"] = {media = 150, storage = 400, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Arcanine"] = {media = 450, storage = 401, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Tentacool"] = {media = 35, storage = 402, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Tentacruel"] = {media = 325, storage = 403, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Farfetch'd"] = {media = 175, storage = 404, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Grimer"] = {media = 65, storage = 405, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Muk"] = {media = 220, storage = 406, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Gengar"] = {media = 325, storage = 407, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Tauros"] = {media = 325, storage = 408, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Krabby"] = {media = 35, storage = 409, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Kingler"] = {media = 230, storage = 410, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Voltorb"] = {media = 35, storage = 411, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Electrode"] = {media = 150, storage = 412, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Cubone"] = {media = 78, storage = 413, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Marowak"] = {media = 250, storage = 414, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Tangela"] = {media = 250, storage = 415, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Horsea"] = {media = 58, storage = 416, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Seadra"] = {media = 85, storage = 417, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Scyther"] = {media = 550, storage = 418, balltype = "saffari", minBallType = "normal"},
-- --  ["Shiny Jynx"] = {media = 425, storage = 419, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Electabuzz"] = {media = 425, storage = 420, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Pinsir"] = {media = 425, storage = 421, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Magikarp"] = {media = 56, storage = 422, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Giant Magikarp"] = {media = 150, storage = 423, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Gyarados"] = {media = 425, storage = 424, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Snorlax"] = {media = 600, storage = 425, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Dratini"] = {media = 95, storage = 426, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Dragonair"] = {media = 150, storage = 427, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Dragonite"] = {media = 425, storage = 428, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Mr. Mime"] = {media = 425, storage = 429, balltype = "saffari", minBallType = "normal"},
-- --  ["Shiny Weezing"] = {media = 170, storage = 430, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Sandslash"] = {media = 170, storage = 431, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Magmar"] = {media = 425, storage = 432, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Machamp"] = {media = 325, storage = 433, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Skarmory"] = {media = 425, storage = 434, balltype = "ultra", minBallType = "normal"},  
-- --  ["Shiny Steelix"] = {media = 425, storage = 435, balltype = "ultra", minBallType = "normal"},   
-- --  ["Shiny Tyranitar"] = {media = 425, storage = 436, balltype = "ultra", minBallType = "normal"}, 
-- --  ["Shiny Sudowoodo"] = {media = 425, storage = 437, balltype = "ultra", minBallType = "normal"}, 
-- --  -- Shinys Cyber REVER --
-- --  ["Shiny Rhydon"] = {media = 700, storage = 438, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Onix"] = {media = 700, storage = 439, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Ninetales"] = {media = 700, storage = 440, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Magneton"] = {media = 700, storage = 441, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Dodrio"] = {media = 700, storage = 442, balltype = "saffari", minBallType = "normal"},
-- --  ["Shiny Ariados"] = {media = 700, storage = 443, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Espeon"] = {media = 700, storage = 444, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Umbreon"] = {media = 700, storage = 445, balltype = "ultra", minBallType = "normal"},   
-- --  ["Shiny Stantler"] = {media = 700, storage = 446, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Politoed"] = {media = 700, storage = 447, balltype = "ultra", minBallType = "normal"},
-- --  -- Shinys 2 GENRATION
-- --  ["Shiny Meganium"] = {media = 325, storage = 448, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Feraligatr"] = {media = 325, storage = 449, balltype = "ultra", minBallType = "normal"},
-- --  ["Shiny Typhlosion"] = {media = 325, storage = 450, balltype = "ultra", minBallType = "normal"},        
-- --  ["Shiny Ampharos"] = {media = 325, storage = 451, balltype = "ultra", minBallType = "normal"},  
-- --  ["Shiny Crobat"] = {media = 325, storage = 452, balltype = "ultra", minBallType = "normal"},        
-- --  ["Shiny Lanturn"] = {media = 170, storage = 453, balltype = "ultra", minBallType = "normal"},   
-- --  ["Shiny Larvitar"] = {media = 75, storage = 454, balltype = "ultra", minBallType = "normal"},   
-- --  ["Shiny Pupitar"] = {media = 180, storage = 455, balltype = "ultra", minBallType = "normal"},       
-- --  ["Shiny Mantine"] = {media = 225, storage = 456, balltype = "ultra", minBallType = "normal"},       
-- --  ["Shiny Magcargo"] = {media = 246, storage = 457, balltype = "ultra", minBallType = "normal"},  
-- --  ["Shiny Xatu"] = {media = 190, storage = 458, balltype = "ultra", minBallType = "normal"},  
-- } 


---------------------------------------------------------------------------------------------------------------------

function ballTries(cid, ballid, storagePoke, set)
    local _storageBalls = ( ( baseStorageBalls + (10000*ballid) ) + storagePoke )
    local _stoBall = getPlayerStorageValue(cid, _storageBalls)
    if set then
        if _stoBall > 0 then
            setPlayerStorageValue(cid, _storageBalls, (_stoBall + 1) )
        else
            setPlayerStorageValue(cid, _storageBalls, 1)
        end
    else
        if _stoBall < 1 then return end
        return _stoBall
    end
end

function getPlayerPoints(cid, storagePoke)
    local playerPoint = 0
    for i, ballsTypes in ipairs(ballsTypesCatch) do
        local _storageBalls = ((baseStorageBalls + (10000*i)) + storagePoke)
        local mixCount = getPlayerStorageValue(cid, _storageBalls)
        if mixCount > 0 then
            local ballPoints = (mixTableBalls[ballsTypes[1]].rate * mixCount)
            playerPoint = playerPoint + ballPoints
        end
    end
    return playerPoint
end

function resetBallTries(cid, storagePoke)
    for i = 1, #ballsTypesCatch do 
        local _storageBalls = ( baseStorageBalls + (10000*i) ) + storagePoke
        if getPlayerStorageValue(cid, _storageBalls) > 0 then
            setPlayerStorageValue(cid, _storageBalls, -1)
        end
    end
end

function mixBrokesMsg(cid, storagePoke, catched)
    local listaBalls = {}
    table.insert(listaBalls, "Você"..(catched == false and " já" or "").." gastou: ")

    for i, ballsTypes in ipairs(ballsTypesCatch) do
        local mixCount = ballTries(cid, i, storagePoke)
        if mixCount then
            local ballName = ballsTypes[1]
            table.insert(listaBalls, (#listaBalls > 1 and ", " or "")..tostring(mixCount).." "..tostring(ballName).." ball"..(mixCount > 1 and "s" or ""))
        end
    end
    if string.sub(listaBalls[#listaBalls], 1, 1) == "," then
        listaBalls[#listaBalls] = " e".. string.sub(listaBalls[#listaBalls], 2, #listaBalls[#listaBalls])
    end
    table.insert(listaBalls, " para"..(catched == false and " tentar" or "").." captura-lo.")

    local str = table.concat(listaBalls)
    addEvent(doPlayerSendTextMessage, 4010, cid:getId(), MESSAGE_STATUS_CONSOLE_BLUE, str)
end

function getBallKey(uid)
    for key, value in pairs(balls) do
        if uid == value.emptyId or uid == value.usedOn or uid == value.usedOff then
            return key
        end
    end
    return "normal"
end

function doCorrectPokemonName(str)
    if str == nil then return "" end
    if type(str) ~= "string" then return "" end
    local name = str:explode(" ") --alterado v1.9
    local final = {}
    for _, s in ipairs(name) do
        table.insert(final, s:sub(1, 1):upper()..s:sub(2, #s):lower())
    end
    return table.concat(final, (name[2] and " " or ""))
end 
