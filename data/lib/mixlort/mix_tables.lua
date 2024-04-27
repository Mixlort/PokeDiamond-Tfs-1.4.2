storages = {
    STORAGE_PASSIVESPELL = 33031,
    STORAGE_PASSIVESPELL_CHANCE = 33032,
    STORAGE_DELAY_OPCODE_PASS = 33033,
    STORAGE_POKEMON_HEALING = 33034,
    
    LEVELUP_REWARD_20 = 33035,
    LEVELUP_REWARD_30 = 33036,
    LEVELUP_REWARD_40 = 33037,
    LEVELUP_REWARD_60 = 33038,
    LEVELUP_REWARD_80 = 33039,
    LEVELUP_REWARD_100 = 33040,
    LEVELUP_REWARD_150 = 33041,
    LEVELUP_REWARD_200 = 33042,

    pokeInicial = 33043,
    openPokeInicial = 33044,
    itensIniciais = 33045,
    firstQuest = 10210, -- storage questlog
    storageGobackDelay = 33047,
}

PASSIVE_CHANCE = 5 -- %

STATUS_BALL_NORMAL = 0
STATUS_BALL_USE = 1
STATUS_BALL_DEATH = 2

POKEBAR_OPCODE = 131
POKEBAR_OPCODE_REVIVE = 132

ACTION_POKEBAR_ADD = 1
ACTION_POKEBAR_REMOVE = 2
ACTION_POKEBAR_UPDATE = 3

POKEBAR_TYPE_ADD = 1
POKEBAR_TYPE_REMOVE = 2
POKEBAR_TYPE_REMOVE_ALL = 3
POKEBAR_TYPE_GET_COUNT = 4
POKEBAR_TYPE_GET_POKE = 5
LIMIT_POKES = 6
ITEM_BALL_USE = 26678
BALLS_UNIQUE_ATT = "uniquePokeIds"

debugGoback = false

SHINY_CHANCE = 5 -- 0.5% //

UNIQUE_ITEM_ACTIONID = 9999

orderTalks = {
    ["ride"] = {talks = {", let's ride."}, storage = 9800},
    ["fly"] = {talks = {", let's fly."}, storage = 9801},
    ["levitate"] = {talks = {", let's levitate."}, storage = 9801},
    ["surf"] = {talks = {", let's surf."}, storage = 63215},
    ["dig"] = {talks = {", dig it."}, storage = 9803},
    ["cut"] = {talks = {", cut it."}, storage = 9804},
    ["rock"] = {talks = {", use rock smash!"}, storage = 9805},
    ["headbutt"] = {talks = {", headbutt."}, storage = 9806},
    ["move"] = {talks = {", move!"}, storage = 0},
    ["blink"] = {talks = {", blink"}, storage = 0},
    ["gopoke"] = {talks = {", i need your Help!", ", I choose you!.", ", its the battle time!" }, storage = 0},
    ["backpoke"] = {talks = {", nice work.", ", thanks.", ", that's enough come back." }, storage = 0},
    ["downability"] = {talks = {", thanks.", ", let me go down." }, storage = 0},
}

blockedTiles = {459, 493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4820, 4821, 4822, 4823, 4824, 4825, }

cutItems = {
	[2767] = 6219,
	[2768] = 6219,
}

rockSmashItems = {
	[1285] = 1336,
}

digItems = {
	[468] = 469,
	[481] = 482,
	[483] = 484,
	[7932] = 7933,
	[8579] = 8585,
}

surfItems = {
	[4644] = {x = 0, y = -1}, -- NORTH
	[4645] = {x = 1, y = 0}, -- EAST
	[4646] = {x = 0, y = 1}, -- SOUTH
	[4647] = {x = -1, y = 0}, -- WEST
	[4648] = {x = -1, y = -1}, -- NORTHWEST
	[4649] = {x = 1, y = -1}, -- NORTHEAST
	[4650] = {x = -1, y = 1}, -- SOUTHWEST
	[4651] = {x = 1, y = 1}, -- SOUTHEAST
	[4652] = {x = -1, y = -1}, -- NORTHWEST
	[4653] = {x = 1, y = -1}, -- NORTHEAST
	[4654] = {x = -1, y = 1}, -- SOUTHWEST
	[4655] = {x = 1, y = 1}, -- SOUTHEAST
	[6630] = {x = -1, y = 0}, -- WEST
	[6628] = {x = 1, y = 0},  -- EAST
	[6629] = {x = 0, y = 1},  -- SOUTH
	[6627] = {x = 0, y = -1}, -- NORTH
}

-- specialAbilities = {
--     ["rock smash"] = {"Shiny Steelix", "Shiny Sudowoodo", "Shiny Tyranitar", "Shiny Dragonite", "Shiny Lucario", "Lucario", "Beldum", "Metang", "Metagross", "Shelgon", "Salamence", "Tropius", "Corphish", "Crawdaunt", "Baltoy", "Claydol", "Zangoose", "Vibrava", "Trapinch", "Flygon", "Torkoal", "Numel", "Camerupt", "Meditite", "Medicham", "Aron", "Lairon", "Aggron", "Mawile", "Makuhita", "Hariyama", "Slakoth", "Slaking", "Loudred", "Exploud", "Treecko", "Grovyle", "Sceptile", "Torchic", "Combusken", "Blaziken", "Marshtomp", "Swampert", "Ludicolo",  "Shiny Magcargo", "Shiny Sandslash", "Shiny Rhydon", "Nidoking", "Nidoqueen", "Dragonite", "Salamence", "Shiny Salamence", "Sandshrew", "Sandslash", "Diglett", "Dugtrio", "Primeape", "Machop", "Machoke", "Machamp", "Geodude", "Graveler", "Golem" , "Onix", "Cubone", "Marowak", "Rhyhorn", "Rhydon", "Kangaskhan", "Tauros", "Snorlax", "Poliwrath", "Hitmonlee", "Hitmonchan", "Aerodactyl", "Blastoise","Shiny Nidoking", "Shiny Dragonite", "Shiny Golem", "Shiny Onix", "Shiny Cubone", "Shiny Marowak", "Shiny Snorlax", "Shiny Hitmonlee", "Shiny Hitmontop", "Shiny Hitmonchan", "Shiny Blastoise", "Typhlosion", "Feraligatr", "Furret", "Ledian", "Ampharos", "Politoed", "Quagsire", "Forretress", "Steelix", "Snubbull", "Granbull", "Sudowoodo", "Gligar", "Scizor", "Heracross", "Sneasel", "Ursaring", "Teddiursa", "Slugma", "Magcargo", "Piloswine", "Swinub", "Corsola", "Phanpy", "Donphan", "Tyrogue", "Hitmontop", "Miltank", "Blissey", "Tyranitar", "Pupitar"},
--     ["cut"] = {"Shiny Skarmory", "Shiny Sudowoodo", "Shiny Lucario", "Lucario","Tropius","Corphish", "Crawdaunt","Zangoose","Sableye", "Makuhita", "Hariyama", "Nincada", "Ninjask", "Shedinja", "Slakoth", "Vigoroth", "Shroomish", "Breloom","Treecko", "Grovyle", "Sceptile", "Torchic", "Combusken", "Blaziken", "Seedot", "Nuzleaf", "Shiftry", "Shiny Magcargo", "Shiny Crobat", "Shiny Weezing", "Shiny Sandslash", "Kabutops", "Raticate", "Bulbasaur", "Ivysaur", "Venusaur", "Charmeleon", "Charizard", "Sandshrew", "Sandslash", "Gloom", "Vileplume", "Paras", "Parasect", "Meowth", "Persian", "Bellsprout", "Weepinbell", "Victreebel", "Farfetch'd", "Krabby", "Kingler", "Exeggutor", "Tropius", "Cubone", "Marowak", "Tangela", "Scyther", "Pinsir", "Shiny Raticate", "Shiny Venusaur", "Shiny Charizard", "Shiny Vileplume", "Shiny Paras", "Shiny Parasect", "Shiny Farfetch'd", "Shiny Krabby", "Shiny Kingler", "Shiny Cubone", "Shiny Marowak", "Shiny Tangela", "Shiny Scyther", "Shiny Pinsir", "Chikorita", "Bayleef", "Meganium", "Croconow", "Feraligatr", "Furret", "Bellossom", "Hoppip", "Skiploom", "Jumpluff", "Sunkern", "Sunflora", "Scizor", "Heracross", "Sneasel", "Teddiursa", "Ursaring", "Gligar", "Skarmory"},
--     ["light"] = {"Electrike", "Manectric", "Shiny Lanturn", "Shiny Xatu", "Shiny Magmortar", "Shiny Electivire", "Electivire", "Shiny Espeon", "Shiny Electrode", "Abra", "Kadabra", "Alakazam", "Magnemite", "Magneton", "Magnezone", "Drowzee", "Hypno", "Voltorb", "Electrode", "Mrmime", "Electabuzz", "Jolteon", "Porygon", "Pikachu", "Raichu", "Shiny Abra", "Shiny Alakazam", "Shiny Hypno", "Shiny Voltorb", "Shiny Electrode", "Shiny Electabuzz", "Shiny Jolteon", "Shiny Raichu", "Chinchou", "Lanturn", "Pichu", "Natu", "Xatu", "Mareep", "Flaaffy", "Ampharos", "Espeon", "Porygon2", "Elekid"}, 
--     ["digholes"] = {"468", "481", "483"},
--     ["ghostwalk"] = {"Shiny Abra", "Gastly", "Haunter", "Gengar", "Shiny Gengar", "Misdreavus", "Dusclops", "Shuppet", "Duskull", "Banette", "Dusknoir"},
--     ["dig"] = {"Shiny Steelix", "Shiny Sudowoodo", "Shiny Tyranitar", "Shiny Dragonite", "Shiny Lucario", "Lucario","Beldum", "Metang", "Metagross", "Tropius","Corphish", "Crawdaunt", "Baltoy", "Claydol","Seviper", "Zangoose","Vibrava", "Trapinch", "Flygon","Torkoal","Numel", "Camerupt", "Electrike", "Manectric", "Aron", "Lairon", "Aggron", "Breloom", "Loudred", "Exploud", "Shiny Magcargo", "Shiny Lanturn", "Mudkip", "Marshtomp", "Swampert", "Poochyena", "Mightyena", "Poliwrath", "Miltank", "Shiny Sandslash", "Shiny Dodrio", "Shiny Umbreon", "Shiny Espeon", "Shiny Ninetales", "Shiny Rhydon", "Raticate", "Sandshrew", "Sandslash", "Diglett", "Dugtrio", "Primeape", "Machop", "Machoke", "Machamp", "Geodude", "Graveler", "Golem" , "Onix", "Cubone", "Marowak", "Rhyhorn", "Rhydon", "Kangaskhan", "Tauros", "Snorlax", "Eevee", "Flareon", "Jolteon", "Vaporeon", "Vulpix", "Ninetales", "Nidorina", "Nidoqueen", "Nidorino", "Nidoking", "Persian", "Arcanine", "Shiny Raticate", "Shiny Golem" , "Shiny Onix", "Shiny Cubone", "Shiny Marowak", "Shiny Snorlax", "Shiny Flareon", "Shiny Jolteon", "Shiny Vaporeon", "Shiny Nidoking", "Shiny Arcanine", "Typhlosion", "Feraligatr", "Furret", "Espeon", "Umbreon", "Ledian", "Sudowoodo", "Politoed", "Quagsire", "Gligar", "Steelix", "Snubbull", "Granbull", "Heracross", "Dunsparce", "Sneasel", "Teddiursa", "Ursaring", "Piloswine", "Hitmontop", "Larvitar", "Pupitar", "Tyranitar"},
--     ["blink"] = {"Grumpig", "Meditite", "Medicham", "Ralts", "Kirlia", "Gardevoir", "Shiny Xatu", "Exeggutor", "Shiny Abra", "Shiny Espeon", "Shiny Mr. Mime", "Jynx", "Shiny Jynx", "Hypno", "Shiny Hypno", "Slowking", "Natu", "Xatu", "Espeon", "Mew", "Mewtwo", "Abra", "Kadabra", "Alakazam", "Porygon", "Shiny Abra", "Shiny Alakazam", "Porygon2", "Mr. Mime"},
--     ["teleport"] = {"Beldum", "Metang", "Metagross", "Claydol", "Grumpig", "Meditite", "Medicham", "Ralts", "Kirlia", "Gardevoir", "Shiny Xatu", "Jynx", "Shiny Jynx", "Slowking", "Slowbro", "Exeggutor", "Shiny Mr. Mime", 'Mew', 'Mewtwo', 'Abra', 'Kadabra', 'Alakazam', 'Drowzee', 'Hypno', 'Mr. Mime', 'Porygon', 'Shiny Abra', 'Shiny Alakazam', 'Shiny Hypno', 'Porygon2'},
--     ["fly"] = {"Shiny Xatu", "Shiny Skarmory", "Scyther", "Shiny Scyther", "Shiny Dragonite", "Flygon", "Mega Charizard Y", "Swellow", "Altaria", "Shiny Stantler","Venomoth", "Shiny Crobat", "Tropius", "Noctowl", "Dragonair", "Shiny Dragonair", "Porygon", "Aerodactyl", "Salamence", "Shiny Salamence", "Dragonite", "Charizard", "Pidgeot", "Fearow", "Zapdos", "Moltres", "Articuno", "Mew", "Mewtwo", "Shiny Dragonite", "Shiny Charizard", "Shiny Pidgeot", "Shiny Fearow", "Porygon2", "Skarmory", "Crobat", "Scyther", "Shiny Scyther", "Shiny Venomoth", "Gengar", "Shiny Gengar", "Heracross", "Farfetch'd", "Shiny Farfetch'd", "Xatu"},
--     ["ride"] = {"Shiny Steelix", "Lairon", "Absol", "Manectric", "Shiny Meganium", "Girafarig", "Shiny Dodrio", "Absol", "Metagross", "Shiny Ninetales", "Shiny Onix", "Venusaur", "Ninetales", "Arcanine", "Ponyta", "Rapidash", "Doduo", "Dodrio", "Onix", "Rhyhorn", "Tauros", "Shiny Venusaur", "Shiny Arcanine", "Steelix", "Houndoom", "Meganium", "Bayleef", "Stantler", "Mareep", "Piloswine"},
--     ["surf"] = {"Mudkip", "Marshtomp", "Swampert", "Sealeo", "Walrein","Crawdaunt", "Lombre", "Ludicolo", 'Poliwag', 'Poliwhirl', 'Seaking', 'Milotic', 'Dewgong', 'Wailord', 'Blastoise', 'Tentacruel', 'Lapras', 'Gyarados', 'Omastar', 'Kabutops', 'Vaporeon', 'Staryu', 'Starmie', 'Goldeen', 'Seadra', 'Golduck', 'Squirtle', 'Wartortle', 'Tentacool', 'Snorlax', 'Poliwrath', 'Shiny Blastoise', 'Shiny Tentacruel', 'Shiny Gyarados', 'Shiny Vaporeon', 'Shiny Seadra', 'Shiny Tentacool', 'Shiny Snorlax', "Mantine", "Totodile", "Croconow", "Feraligatr", "Marill", "Azumarill", "Quagsire", "Wooper", "Octillery", "Kingdra"},
--     ["foresight"] = {"Lucario", "Shiny Lucario", "Machamp", "Shiny Hitmonchan", "Shiny Hitmonlee", "Shiny Hitmontop", "Hitmontop", "Hitmonlee", "Hitmonchan", "Makuhita", "Hariyama"},
--     ["counter"] = {"Shiny Magcargo", "Shiny Lanturn", "Shiny Magmar", "Shiny Magmortar", "Shiny Electivire", "Machamp", "Machoke", "Hitmonchan", "Hitmonlee", "Magmar", "Electabuzz", "Scyther", "Snorlax", "Kangaskhan", "Arcanine", "Shiny Arcanine", "Shiny Snorlax", "Shiny Scyther", "Shiny Hitmonchan", "Shiny Hitmonlee", "Shiny Electabuzz", "Hitmontop", "Shiny Hitmontop"}, 
--     ["levitate"] = {"Vibrava", "Flygon", "Baltoy", "Claydol", "Gengar", "Haunter", "Gastly", "Misdreavus", "Weezing", "Koffing", "Unown", "Shiny Gengar", "Shiny Weezing"},
--     ["evasion"] = {"Mega Scizor", "Beedrill", "Shiny Beedrill", "Scyther", "Scizor", "Shiny Scizor","Hitmonlee", "Hitmonchan", "Hitmontop", "Tyrogue", "Shiny Scyther", "Shiny Hitmonchan", "Shiny Hitmonlee", "Shiny Hitmontop", "Ledian", "Ledyba", "Sneasel"},
--     ["control mind"] = {'Haunter', 'Gengar', 'Tentacruel', 'Alakazam', 'Shiny Tentacruel', 'Shiny Gengar', 'Shiny Alakazam', 'Slowking'},
--     ["transform"] = {"Ditto"},
--     ["levitate_fly"] = {"Gengar", "Shiny Gengar", "Raichu", "Shiny Raichu"},
--     ["Illusion"] = {"Misdreavus, Stantler, Shiny Stantler"},
--     ["headbutt"] = {"Beldum", "Metang", "Metagross", "Glalie", "Walrein", "Spheal", "Sealeo", "Baltoy", "Claydol", "Seviper", "Zangoose","Vibrava", "Trapinch", "Flygon", "Torkoal", "Numel", "Camerupt", "Aron", "Lairon", "Aggron", "Mawile", "Makuhita", "Hariyama", "Whismur", "Loudred", "Exploud", "Slakoth", "Vigoroth", "Treecko", "Grovyle", "Sceptile", "Torchic", "Combusken", "Blaziken", "Mudkip", "Marshtomp", "Swampert", "Seedot", "Nuzleaf", "Shiftry", "Charizard", "Nidorino", "Nidorina", "Nidoking", "Dewgong", "Kangaskhan", "Lickitung", "Kingler", "Charmeleon", "Wartortle", "Ivysaur", "Nidoqueen", "Parasect", "Arcanine", "Ninetales", "Shiny Ninetales", "Shiny Onix", "Muk", "Pinsir", "Dragonair", "Shiny Kingler", "Dodrio", "Blastoise", "Venusaur", "Snorlax", "Pinsir", "Shiny Gyarados", "Shiny Dragonair", "Shiny Parasect", "Shiny Muk", "Shiny Charizard", "Mega Charizard Y", "Mega Charizard X", "Flareon", "Jolteon", "Vaporeon", "Exeggutor", "Chansey", "Clefable", "Wigglytuff", "Raichu", "Shiny Raichu", "Machamp", "Shiny Machamp", "Dodrio", "Onix", "Rhyhorn", "Tauros", "Shiny Tauros", "Shiny Venusaur", "Shiny Arcanine", "Ponyta", "Rapidash", "Tentacruel", "Shiny Tentacruel", "Electrode", "Shiny Electrode", "Gyarados", "Kabutops", "Omastar",  "Lapras", "Pidgeot", "Mega Pidgeot", "Mega Blastoise", "Mega Venusaur", "Mega Gengar", "Magmar", "Shiny Magmar", "Scyther", "Shiny Scyther", "Electabuzz", "Shiny Electabuzz", "Marowak", "Primeape", "Victreebel", "Hitmonchan", "Hitmonlee", "Dragonite", "Mewtwo", "Moltres", "Zapdos", "Articuno", "Cloyster", "Slowbro", "Weezing", "Raticate", "Sandslash", "Magneton", "Rhydon", "Machoke", "Nidorino", "Nidorina", "Ponyta", "Cubone", "Kabuto", "Drowzee", "Pikachu", "Voltorb", "Eevee", "Dugtrio", "Poliwhirl", "Omanyte", "Vulpix", "Graveler", "Poliwrath", "Machop", "Jigglypuff", "Persian", "Rhyhorn",  "Arbok", "Golem", "Psyduck", "Geodude", "Fearow", "Golduck", "Growlithe", "Seel", "Clefairy", "Aerodactyl", "Hypno", "Giant Magikarp", "Shiny Giant Magikarp", "Shiny Nidoking", "Shiny Hitmonlee", "Shiny Hitmonchan", "Shiny Voltorb", "Shiny Jolteon", "Shiny Vaporeon", "Shiny Flareon", "Shiny Hypno", "Shiny Magneton", "Shiny Pinsir", "Shiny Raticate", "Shiny Cubone", "Shiny Marowak", "Shiny Sandslash", "Shiny Golem", "Shiny Nientales", "Shiny Rhydon", "Shiny Weezing", "Shiny Snorlax", "Shiny Fearow", "Shiny Pidgeot", "Shiny Growlithe", "Heracross", },
-- }     

flys = {
    ["Moltres"] = {580, 3000}, -- moltres
    ["Articuno"] = {581, 3000}, -- artic
    ["Zapdos"] = {575, 3000}, -- zapdos
    ["Mew"] = {583, 3000}, -- 1000
    ["Mewtwo"] = {584, 3000},-- two
    ["Dragonite"] = {572, 800},-- nite
    ["Salamence"] = {1625, 800},-- nite
    ["Shiny Salamence"] = {1652, 1000},-- nite
    ["Pidgeot"] = {573, 800}, -- geot
    ["Fearow"] = {577, 600}, -- fearow
    ["Aerodactyl"] = {578, 1000}, -- aero
    ["Charizard"] = {567, 600}, -- chari
    ["Porygon"] = {667, 600}, -- porygon
    ["Shiny Pidgeot"] = {1347, 1000}, -- Shiny geot
    ["Shiny Fearow"] = {1348, 800}, -- Shiny fearow          --alterado v1.5
    ["Shiny Charizard"] = {646, 1000}, -- Shiny chari
    ["Shiny Crobat"] = {1500, 1000},
    ["Porygon2"] = {999, 600}, -- 2
    ["Skarmory"] = {1000, 700}, -- skarmory
    ["Shiny Skarmory"] = {2704, 700}, -- skarmory
    ["Crobat"] = {1003, 600}, -- crobat
    ["Farfetch'd"] = {1471, 500},
    ["Shiny Farfetch'd"] = {1472, 1000},
    ["Shiny Stantler"] = {1580, 1000}, 
    ["Raichu"] = {2024, 600},
    ["Shiny Raichu"] = {2023, 800},
    ["Heracross"] = {1476, 600},
    ["Scyther"] = {1513, 600},
    ["Shiny Scyther"] = {1512, 800},
    ["Shiny Venomoth"] = {1244, 1000},
    ["Dragonair"] = {1463, 600},
    ["Shiny Dragonair"] = {1464, 1000},
    ["Shiny Dragonite"] = {1371, 1200},
    ["Noctowl"] = {1345, 600},
    ["Venomoth"] = {1584, 600},
    ["Shiny Gengar"] = {1475, 800},
    ["Gengar"] = {1474, 600},
    ["Xatu"] = {1473, 800},
    ["Shiny Xatu"] = {2706, 1300},      
}

rides = {
    ["Tauros"] = {128, 600}, -- tauros
    ["Ninetales"] = {129, 600}, -- kyuubi
    ["Rapidash"] = {130, 800}, -- rapid
    ["Ponyta"] = {131, 500}, -- ponyta
    ["Rhyhorn"] = {132, 500}, -- rhyhorn
    ["Arcanine"] = {12, 800}, -- arcan
    ["Onix"] = {126, 500}, -- onix
    ["Venusaur"] = {134, 600}, -- venu
    ["Dodrio"] = {133, 650}, -- dodrio
    ["Doduo"] = {135, 500}, -- doduo
    ["Shiny Arcanine"] = {1003, 900}, -- arcan
    ["Shiny Onix"] = {1737, 800}, -- onix             --alterado v1.5
    ["Shiny Venusaur"] = {1040, 800}, -- venu
}

surfs = {
    ["Poliwag"] = {lookType=278, speed = 150},
    ["Poliwhirl"] = {lookType=137, speed = 250},
    ["Seaking"] = {lookType=269, speed = 350},
    ["Dewgong"] = {lookType=183, speed = 350},
    ["Blastoise"] = {lookType=184, speed = 350},
    ["Tentacruel"] = {lookType=185, speed = 350},
    ["Lapras"] = {lookType=186, speed = 450},
    ["Gyarados"] = {lookType=187, speed = 450},
    ["Omastar"] = {lookType=188, speed = 450},
    ["Kabutops"] = {lookType=189, speed = 450},
    ["Poliwrath"] = {lookType=190, speed = 350},
    ["Vaporeon"] = {lookType=191, speed = 350},
    ["Staryu"] = {lookType=266, speed = 150},
    ["Starmie"] = {lookType=267, speed = 350},
    ["Goldeen"] = {lookType=268, speed = 150},
    ["Seadra"] = {lookType=270, speed = 250},
    ["Golduck"] = {lookType=271, speed = 325},
    ["Squirtle"] = {lookType=273, speed = 150},
    ["Wartortle"] = {lookType=275, speed = 250},
    ["Tentacool"] = {lookType=277, speed = 250},
    ["Snorlax"] = {lookType=300, speed = 450},
    ----------------Shiny----------------------
    ["Shiny Blastoise"] = {lookType=658, speed = 450},
    ["Shiny Tentacruel"] = {lookType=1014, speed = 450},
    ["Shiny Gyarados"] = {lookType=1030, speed = 450},
    ["Shiny Vaporeon"] = {lookType=1032, speed = 450},        --alterado v1.6
    ["Shiny Seadra"] = {lookType=1025, speed = 450},
    ["Shiny Tentacool"] = {lookType=1013, speed = 450},
    ["Shiny Snorlax"] = {lookType=1035, speed = 450},
    ["Shiny Feraligatr"] = {lookType=1175, speed = 450},
}

passivesChances = {
["Counter Helix"] = { --counter helix, counter spin e afins 
               ["Scyther"] = 20,
               ["Shiny Scyther"] = 25,
               ["Pineco"] = 8,
               ["Forretress"] = 10,
             },
			 
["Counter Claw"] = { 
               ["Scizor"] = 12,
               ["Shiny Scizor"] = 15,			   
             },
			 
["Counter Spin"] = { 
               ["Hitmontop"] = 10,
               ["Shiny Hitmontop"] = 11,
			   
             },

["Groundshock"] = { 
               ["Kangaskhan"] = 3,
             },			 
			 
["Lava-Counter"] = {       
               ["Magby"] = 10,
               ["Magmar"] = 13,
               ["Shiny Magmar"] = 17,
               ["Magmortar"] = 20,
               ["Shiny Magmortar"] = 22,
                   },

["Bone-Spin"] = {
                       ["Marowak"] = 35,
                       ["Shiny Marowak"] = 45,
                       ["Cubone"] = 10,
                       ["Shiny Cubone"] = 25,
                   },
				   
["Superpower"] = {
                       ["Lucario"] = 4,
                       ["Shiny Lucario"] = 8,					

                  },					   

["Stunning Confusion"] = {     --stunning confusion
                   ["Golduck"] = 25,
                   ["Psyduck"] = 10,
                   ["Wynaut"] = 25,				   
                   ["Wobbuffet"] = 40,
               },
["Shock-Counter"] = {
                       ["Elekid"] = 10,
                       ["Raikou"] = 20,
                  },
["Static"] = {
                       ["Electabuzz"] = 35, -- 2
                       ["Shiny Electabuzz"] = 45,
					   ["Electivire"] = 55,
					   ["Shiny Electivire"] = 65,

                  },	
["Electric Charge"] = {
                         ["Pikachu"] = 7,
                         ["Raichu"] = 11,
                         ["Shiny Raichu"] = 15,
                      },
["Melody"] = {
               ["Wigglytuff"] = 20,
             },
["Dragon Fury"] = {
                    ["Persian"] = 15,
                    ["Raticate"] = 10,
                    ["Shiny Raticate"] = 15,
                    ["Gyarados"] = 18,
                    ["Shiny Gyarados"] = 20,
                    ["Mega Gyarados"] = 20,
                    ["Dratini"] = 8,
                    ["Dragonair"] = 12,
                    ["Dragonite"] = 18,
					["Salamence"] = 18,
					["Shiny Salamence"] = 23,
                    ["Shiny Dratini"] = 15,
                    ["Shiny Dragonair"] = 22,
                 },
				 
["Early Bird"] = {	
        ["Pidgeot"] = 15,
        ["Shiny Pidgeot"] = 15,
        ["Dodrio"] = 100,
        ["Shiny Dodrio"] = 100,
},
			 
["Mega Drain"] = {
                    ["Oddish"] = 4,
                    ["Gloom"] = 6,
                    ["Vileplume"] = 9,
                    ["Bellossom"] = 10,
                    ["Parasect"] = 5,
                    ["Tangela"] = 6,
                    ["Tangrowth"] = 12,
                    ["Lotad"] = 4,		
                    ["Lombre"] = 6,		
                    ["Ludicolo"] = 10,							
                    ["Shiny Oddish"] = 8,
                    ["Shiny Vileplume"] = 17,
                    ["Shiny Tangela"] = 8,	
                    ["Budew"] = 10,		
                    ["Roselia"] = 12,	
                    ["Roserade"] = 15,							
                },
				
["Spores Reaction"] = {
             ["Oddish"] = 8,
             ["Gloom"] = 12,
             ["Vileplume"] = 15,
             ["Bellossom"] = 12,
			 ["Parasect"] = 11,
			 ["Breloom"] = 12,			 
			 ["Shiny Oddish"] = 10,
			 ["Shiny Vileplume"] = 16,
             ["Tangela"] = 3,
             ["Tangrowth"] = 15,
			 ["Shiny Tangela"] = 12,
			 ["Shiny Parasect"] = 12,
			 ["Hoppip"] = 4,
             ["Skiploom"] = 5,
             ["Jumpluff"] = 6,
             ["Illumise"] = 8,	
             ["Volbeat"] = 8,			 
                     },
["Amnesia"] = {
                ["Wooper"] = 10,
                ["Quagsire"] = 15,
                ["Swinub"] = 10,
                ["Piloswine"] = 15,
                ["Lorelei Piloswine"] = 15,
              },
["Zen Mind"] = {
                 ["Slowking"] = 20,
               },
["Mirror Coat"] = {
                    ["Wobbuffet"] = 50,
                  },
["Demon Kicker"] = {
                     ["Hitmonlee"] = 25,
                     ["Shiny Hitmonlee"] = 28,
                   },
["Demon Puncher"] = {
                      ["Hitmonchan"] = 25,
                      ["Shiny Hitmonchan"] = 28, 
                   },
["Evasion"] = {
                ["Scyther"] = 28,
                ["Shiny Scyther"] = 30,
                ["Scizor"] = 28,
                ["Shiny Scizor"] = 35,
                ["Hitmonlee"] = 28,
                ["Hitmonchan"] = 28,
                ["Hitmontop"] = 28,
                ["Shiny Hitmonlee"] = 28,
                ["Furios Scyther"] = 28,
                ["Rolling Hitmontop"] = 28,
                ["Puncher Hitmonchan"] = 28,
                ["Shiny Hitmonchan"] = 30,
                ["Shiny Hitmontop"] = 30,
                ["Tyrogue"] = 15,
                ["Ledian"] = 15,
                ["Ledyba"] = 10,
                ["Sneasel"] = 20,
                ["Beedrill"] = 20,
                ["Ninjask"] = 25,				
                ["Lucario"] = 25,				
                ["Shiny Lucario"] = 35,				
                ["Shiny Beedrill"] = 28,
                ["Mega Beedrill"] = 32,
				["Mega Scizor"] = 30,
             },
}

COLOR_BLACK = 0
COLOR_BLUE = 5
COLOR_GREEN = 18
COLOR_TEAL = 35
COLOR_LIGHTGREEN = 66
COLOR_DARKBROWN = 78
COLOR_LIGHTBLUE = 89
COLOR_DARKPURPLE = 112
COLOR_BROWN = 120
COLOR_GREY = 129
COLOR_DARKRED = 144
COLOR_DARKPINK = 152
COLOR_PURPLE = 154
COLOR_DARKORANGE = 156
COLOR_RED = 192
COLOR_BURN = 180
COLOR_PINK = 190
COLOR_ORANGE = 192
COLOR_DARKYELLOW = 205
COLOR_YELLOW = 210
COLOR_WHITE = 215
COLOR_WATER = 227
COLOR_NORMAL = 128
COLOR_FIRE2 = 192 --192
COLOR_FIGHTING = 156
COLOR_FLYING = 173
COLOR_GRASS = 31
COLOR_POISON = 147
COLOR_ELECTRIC = 210
COLOR_GROUND = 78
COLOR_PSYCHIC = 197
COLOR_ROCK = 120
COLOR_ICE = 35
COLOR_BUG = 18
COLOR_DRAGON = 220
COLOR_GHOST = 148
COLOR_STEEL = 179
COLOR_DARK = 39
COLOR_NONE = 255
