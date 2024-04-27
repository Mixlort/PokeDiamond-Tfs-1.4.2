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
    logNow = 33048,
}

staffAcess = {"Mixlort"}

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

PokemonLegendarys = 
{
	["Latios"] = {name = "Legendary Latios", quant = 13},
	["Latias"] = {name = "Legendary Latias", quant = 13},
	["Zygarde"] = {name = "Legendary Zygarde", quant = 10},
	["Xerneas"] = {name = "Legendary Xerneas", quant = 9},
	["Genesect"] = {name = "Legendary Genesect", quant = 6},
	["Darkrai"] = {name = "Legendary Darkrai", quant = 6},
	["Heatran"] = {name = "Legendary Heatran", quant = 6},
	["Regigigas"] = {name = "Legendary Regigigas", quant = 5},
	["Shiny Regigigas"] = {name = "Legendary Regigigas", quant = 5},
	["Dialga"] = {name = "Legendary Dialga", quant = 4},

	["Mewtwo"] = {name = "Legendary Mewtwo", quant = 3},
	["Mew"] = {name = "Legendary Mew", quant = 3},

	["Moltres"] = {name = "Legendary Moltres", quant = 2},
	["Articuno"] = {name = "Legendary Articuno", quant = 2},
	["Zapdos"] = {name = "Legendary Zapdos", quant = 2},
	["Entei"] = {name = "Legendary Entei", quant = 2},
	["Raikou"] = {name = "Legendary Raikou", quant = 2},
	["Suicune"] = {name = "Legendary Suicune", quant = 2},
}

xhelds = {
    [1] = {name = "X-Defense(Tier: 1)"},
    [2] = {name = "X-Defense(Tier: 2)"},
    [3] = {name = "X-Defense(Tier: 3)"},
    [4] = {name = "X-Defense(Tier: 4)"},
    [5] = {name = "X-Defense(Tier: 5)"},
    [6] = {name = "X-Defense(Tier: 6)"},
    [7] = {name = "X-Defense(Tier: 7)"},
    [8] = {name = "X-Attack(Tier : 1)"},
    [9] = {name = "X-Attack(Tier : 2)"},
    [10] = {name = "X-Attack(Tier: 3)"},
    [11] = {name = "X-Attack(Tier: 4)"},
    [12] = {name = "X-Attack(Tier: 5)"},
    [13] = {name = "X-Attack(Tier: 6)"},
    [14] = {name = "X-Attack(Tier: 7)"},
    [15] = {name = "X-Return(Tier: 1)"},
    [16] = {name = "X-Return(Tier: 2)"},
    [17] = {name = "X-Return(Tier: 3)"},
    [18] = {name = "X-Return(Tier: 4)"},
    [19] = {name = "X-Return(Tier: 5)"},
    [20] = {name = "X-Return(Tier: 6)"},
    [21] = {name = "X-Return(Tier: 7)"},
    [22] = {name = "X-Boost(Tier: 1)"},
    [23] = {name = "X-Boost(Tier: 2)"},
    [24] = {name = "X-Boost(Tier: 3)"},
    [25] = {name = "X-Boost(Tier: 4)"},
    [26] = {name = "X-Boost(Tier: 5)"},
    [27] = {name = "X-Boost(Tier: 6)"},
    [28] = {name = "X-Boost(Tier: 7)"},
    [29] = {name = "X-Hellfire(Tier: 1)"},
    [30] = {name = "X-Hellfire(Tier: 2)"},
    [31] = {name = "X-Hellfire(Tier: 3)"},
    [32] = {name = "X-Hellfire(Tier: 4)"},
    [33] = {name = "X-Hellfire(Tier: 5)"},
    [34] = {name = "X-Hellfire(Tier: 6)"},
    [35] = {name = "X-Hellfire(Tier: 7)"},
    [36] = {name = "X-Poison(Tier: 1)"},
    [37] = {name = "X-Poison(Tier: 2)"},
    [38] = {name = "X-Poison(Tier: 3)"},
    [39] = {name = "X-Poison(Tier: 4)"},
    [40] = {name = "X-Poison(Tier: 5)"},
    [41] = {name = "X-Poison(Tier: 6)"},
    [42] = {name = "X-Poison(Tier: 7)"},
    [43] = {name = "X-Agility(Tier: 1)"},
    [44] = {name = "X-Agility(Tier: 2)"},
    [45] = {name = "X-Agility(Tier: 3)"},
    [46] = {name = "X-Agility(Tier: 4)"},
    [47] = {name = "X-Agility(Tier: 5)"},
    [48] = {name = "X-Agility(Tier: 6)"},
    [49] = {name = "X-Agility(Tier: 7)"},
    [50] = {name = "X-Strafe(Tier: 1)"},
    [51] = {name = "X-Strafe(Tier: 2)"},
    [52] = {name = "X-Strafe(Tier: 3)"},
    [53] = {name = "X-Strafe(Tier: 4)"},
    [54] = {name = "X-Strafe(Tier: 5)"},
    [55] = {name = "X-Strafe(Tier: 6)"},
    [56] = {name = "X-Strafe(Tier: 7)"},
    [57] = {name = "X-Rage(Tier: 1)"},
    [58] = {name = "X-Rage(Tier: 2)"},
    [59] = {name = "X-Rage(Tier: 3)"},
    [60] = {name = "X-Rage(Tier: 4)"},
    [61] = {name = "X-Rage(Tier: 5)"},
    [62] = {name = "X-Rage(Tier: 6)"},
    [63] = {name = "X-Rage(Tier: 7)"},
    [64] = {name = "X-Harden(Tier: 1)"},
    [65] = {name = "X-Harden(Tier: 2)"},
    [66] = {name = "X-Harden(Tier: 3)"},
    [67] = {name = "X-Harden(Tier: 4)"},
    [68] = {name = "X-Harden(Tier: 5)"},
    [69] = {name = "X-Harden(Tier: 6)"},
    [70] = {name = "X-Harden(Tier: 7)"},
    [71] = {name = "X-Experience(Tier: 1)"},
    [72] = {name = "X-Experience(Tier: 2)"},
    [73] = {name = "X-Experience(Tier: 3)"},
    [74] = {name = "X-Experience(Tier: 4)"},
    [75] = {name = "X-Experience(Tier: 5)"},
    [76] = {name = "X-Experience(Tier: 6)"},
    [77] = {name = "X-Experience(Tier: 7)"},
    [78] = {name = "X-Elemental(Tier: 1)"},
    [79] = {name = "X-Elemental(Tier: 2)"},
    [80] = {name = "X-Elemental(Tier: 3)"},
    [81] = {name = "X-Elemental(Tier: 4)"},
    [82] = {name = "X-Elemental(Tier: 5)"},
    [83] = {name = "X-Elemental(Tier: 6)"},
    [84] = {name = "X-Elemental(Tier: 7)"},
    [85] = {name = "X-Critical(Tier: 1)"},
    [86] = {name = "X-Critical(Tier: 2)"},
    [87] = {name = "X-Critical(Tier: 3)"},
    [88] = {name = "X-Critical(Tier: 4)"},
    [89] = {name = "X-Critical(Tier: 5)"},
    [90] = {name = "X-Critical(Tier: 6)"},
    [91] = {name = "X-Critical(Tier: 7)"},
    [92] = {name = "X-Vitality(Tier: 1)"},
    [93] = {name = "X-Vitality(Tier: 2)"},
    [94] = {name = "X-Vitality(Tier: 3)"},
    [95] = {name = "X-Vitality(Tier: 4)"},
    [96] = {name = "X-Vitality(Tier: 5)"},
    [97] = {name = "X-Vitality(Tier: 6)"},
    [98] = {name = "X-Vitality(Tier: 7)"},
    [99] = {name = "X-Haste(Tier: 1)"},
    [100] = {name = "X-Haste(Tier: 2)"},
    [101] = {name = "X-Haste(Tier: 3)"},
    [102] = {name = "X-Haste(Tier: 4)"},
    [103] = {name = "X-Haste(Tier: 5)"},
    [104] = {name = "X-Haste(Tier: 6)"},
    [105] = {name = "X-Haste(Tier: 7)"},
    [106] = {name = "X-Accuracy(Tier: 1)"},
    [107] = {name = "X-Accuracy(Tier: 2)"},
    [108] = {name = "X-Accuracy(Tier: 3)"},
    [109] = {name = "X-Accuracy(Tier: 4)"},
    [110] = {name = "X-Accuracy(Tier: 5)"},
    [111] = {name = "X-Accuracy(Tier: 6)"},
    [112] = {name = "X-Accuracy(Tier: 7)"},
    [113] = {name = "X-Cooldown(Tier: 3)"},
    [114] = {name = "X-Cooldown(Tier: 4)"},
    [115] = {name = "X-Cooldown(Tier: 7)"},
    [116] = {name = "X-Blink(Tier: 5)"},
}

yhelds = {
    [1] = {name = "Y-Regeneration(Tier: 1)"},
    [2] = {name = "Y-Regeneration(Tier: 2)"},
    [3] = {name = "Y-Regeneration(Tier: 3)"},
    [4] = {name = "Y-Regeneration(Tier: 4)"},
    [5] = {name = "Y-Regeneration(Tier: 5)"},
    [6] = {name = "Y-Regeneration(Tier: 6)"},
    [7] = {name = "Y-Regeneration(Tier: 7)"},
    [8] = {name = "Y-Cure(Tier: 1)"},
    [9] = {name = "Y-Cure(Tier: 2)"},
    [10] = {name = "Y-Cure(Tier: 3)"},
    [11] = {name = "Y-Cure(Tier: 4)"},
    [12] = {name = "Y-Cure(Tier: 5)"},
    [13] = {name = "Y-Cure(Tier: 6)"},
    [14] = {name = "Y-Cure(Tier: 7)"},
    [15] = {name = "Y-Wing(Tier: 1)"},
    [16] = {name = "Y-Wing(Tier: 2)"},
    [17] = {name = "Y-Wing(Tier: 3)"},
    [18] = {name = "Y-Wing(Tier: 4)"},
    [19] = {name = "Y-Wing(Tier: 5)"},
    [20] = {name = "Y-Wing(Tier: 6)"},
    [21] = {name = "Y-Cure(Tier: 7)"},
    [22] = {name = "Y-Ghost(Tier: 4)"},
}
