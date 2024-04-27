task_monsters = {

	------------------------------------------------------------------------

    -- Cidade 1 (Viridian)

   	[1] = {
   		nameNpc = "Mixlort",
        talk = "� um prazer conhec�-lo tamb�m. Estou em busca de algu�m corajoso o suficiente para me ajudar em uma miss�o importante. Voc� parece ter um grande potencial. O que me diz, aceita me ajudar?", 
   		mons_list = {
            {name = "Rattata", count = 10, storage = 30000}, 
            {name = "Zubat", count = 3, storage = 30001},
        },  
   		exp = 20000, 
   		pointsTask = {1, 1}, --taskPoint, taskRank
   		taskPointsNumber = 1,
   		items = {
            {id = "empty pokeball", count = 15, unique = true}, 
            {id = "Small Potion", count = 15, unique = true},
            -- {id = "revive", count = 5, unique = true}
        }
   	},

	------------------------------------------------------------------------

   	[2] = {
   		nameNpc = "Quinn",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Pidgey", count = 4, storage = 30002}, 
            {name = "Spearow", count = 8, storage = 30003},
        },  
   		exp = 30000, 
   		pointsTask = {1, 1}, --taskPoint, taskRank
   		taskPointsNumber = 2,
   		items = {
            {id = "empty pokeball", count = 20, unique = true}, 
            {id = "Small Potion", count = 20, unique = true},
            -- {id = "revive", count = 5, unique = true}
        }
   	},

	------------------------------------------------------------------------

    -- [3] = {
    --     nameNpc = "Siffo",
    --     talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
    --     mons_list = {
    --         {name = "Metapod", count = 12, storage = 30004}, 
    --         {name = "Oddish", count = 10, storage = 30005},
    --     },  
    --     exp = 40000, 
    --     pointsTask = {1, 1}, --taskPoint, taskRank
    --     taskPointsNumber = 3,
    --     items = {
    --         {id = "empty pokeball", count = 20, unique = true}, 
    --         {id = "empty greatball", count = 25, unique = true}, 
    --         {id = "Great Potion", count = 25, unique = true},
    --         {id = "revive", count = 10, unique = true}
    --     }
    -- },

    ------------------------------------------------------------------------

    [4] = {
        nameNpc = "Bruna",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Horsea", count = 15, storage = 30006},
            {name = "Tentacool", count = 8, storage = 30007}, 
        },  
        exp = 50000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 3,
        items = {
            {id = "empty pokeball", count = 20, unique = true}, 
            {id = "empty greatball", count = 25, unique = true}, 
            {id = "Great Potion", count = 25, unique = true},
            {id = "revive", count = 10, unique = true}
        }
    },

    ------------------------------------------------------------------------

    [5] = {
        nameNpc = "Nerif",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Venonat", count = 15, storage = 30008}, 
            {name = "Paras", count = 8, storage = 30009},
        },  
        exp = 60000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 4,
        items = {
            {id = "empty superball", count = 15, unique = true}, 
            {id = "Ultra Potion", count = 15, unique = true}, 
            {id = "revive", count = 10, unique = true}, 
        }
    },

    ------------------------------------------------------------------------

    [6] = {
        nameNpc = "Marcela",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Goldeen", count = 20, storage = 30010}, 
            {name = "Seaking", count = 13, storage = 30011}
        },  
        exp = 70000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 5,
        items = {
            {id = "empty superball", count = 25, unique = true}, 
            {id = "Ultra Potion", count = 25, unique = true},
            {id = "revive", count = 12, unique = true}
        }
    },

   	------------------------------------------------------------------------

    -- [7] = {
    --     nameNpc = "Marco",
    --     talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
    --     mons_list = {
    --         {name = "Graveler", count = 23, storage = 30012}, 
    --         {name = "Rhyhorn", count = 16, storage = 30013}
    --     },  
    --     exp = 18000, 
    --     pointsTask = {1, 1}, --taskPoint, taskRank
    --     taskPointsNumber = 7,
    --     items = {
    --         {id = "empty ultraball", count = 15, unique = true}, 
    --         {id = "Hyper Potion", count = 15, unique = true},
    --         {id = "revive", count = 15, unique = true}
    --     }
    -- },

   	------------------------------------------------------------------------
   
    -- Cidade 2 (Pallet)

    [8] = {
        nameNpc = "Peter",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Weepinbell", count = 14, storage = 30014}, 
            {name = "Gloom", count = 28, storage = 30015}
        },  
        exp = 20000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 6,
        items = {
            {id = "empty ultraball", count = 15, unique = true}, 
            {id = "Hyper Potion", count = 15, unique = true},
            {id = "revive", count = 15, unique = true}
        }
    },

   	------------------------------------------------------------------------

    [9] = {
        nameNpc = "Amanda",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Mankey", count = 40, storage = 30016}, 
            {name = "Primeape", count = 16, storage = 30017}
        },  
        exp = 22000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 7,
        items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 30}, 
            -- {id = "Ultra Potion", count = 25}
        }
    },

   	------------------------------------------------------------------------

    [10] = {
        nameNpc = "Marcelo",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Onix", count = 28, storage = 30018}, 
            {name = "Golem", count = 12, storage = 30019},
            {name = "Machamp", count = 2, storage = 30020}
        },  
        exp = 24000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 8,
        items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 20}, 
            -- {id = "Ultra Potion", count = 20}
        }
    },

   	------------------------------------------------------------------------

    [11] = {
        nameNpc = "Roberto",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Vileplume", count = 28, storage = 30021}, 
            {name = "Pidgeot", count = 12, storage = 30022}
        },  
        exp = 26000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 9,
        items = {
            {id = 2152, count = 1},
            -- {id = "empty superball", count = 10}, 
            -- {id = "Ultra Potion", count = 20}
        }
    },

   	------------------------------------------------------------------------

    [12] = {
        nameNpc = "Breno",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Ivysaur", count = 40, storage = 30023}, 
            {name = "Parasect", count = 28, storage = 30024},
            {name = "Venusaur", count = 2, storage = 30025}
        },  
        exp = 28000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 10,
        items = {
            {id = 2152, count = 1},
            -- {id = "empty superball", count = 20}, 
            -- {id = "Ultra Potion", count = 30}
        }
    },

   	------------------------------------------------------------------------

    --parei aqui
    [13] = {
        nameNpc = "Murilo",
        talk = "Estou encarregado de entregar miss�es aos jogadores. Voc� gostaria de fazer uma tarefa, receber sua recompensa ou abandonar uma tarefa?", 
        mons_list = {
            {name = "Beedrill", count = 20, storage = 30024}, 
            {name = "Butterfree", count = 12, storage = 30025}
        },  
        exp = 30000, 
        pointsTask = {1, 1}, --taskPoint, taskRank
        taskPointsNumber = 11,
        items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 30}, 
            -- {id = "Ultra Potion", count = 20}
        }
    },

   	------------------------------------------------------------------------

        ---- fazer
   	[14] = {
   		nameNpc = "Carlos",
   		name = "nidoran male", 
   		name2 = "nidoran females", 
   		mons_list = {"nidoran male", "Nidoran male", "Nidoran Male"},  
   		mons_list2 = {"nidoran female", "Nidoran female", "Nidoran Female"},  
   		storage = 30026, 
   		storage2 = 30027, 
   		amount = 20, 
   		amount2 = 14, 
   		exp = 32000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 14,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 25}, 
            -- {id = "Ultra Potion", count = 15}
        }
   	},

   	------------------------------------------------------------------------

   	[15] = {
   		nameNpc = "Rodolfo",
   		name = "ekans", 
   		name2 = "grimer", 
   		mons_list = {"ekans", "Ekans"},  
   		mons_list2 = {"grimer", "Grimer"},  
   		storage = 30028, 
   		storage2 = 30029, 
   		amount = 14, 
   		amount2 = 8, 
   		exp = 34000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 15,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 27}, 
            -- {id = "Ultra Potion", count = 20}
        }
   	},

   	------------------------------------------------------------------------

   	[16] = {
   		nameNpc = "Jackson",
   		name = "nidoking", 
   		name2 = "nidoqueen", 
   		mons_list = {"nidoking", "Nidoking"},  
   		mons_list2 = {"nidoqueen", "Nidoqueen"},  
   		storage = 30030, 
   		storage2 = 30031, 
   		amount = 5, 
   		amount2 = 5, 
   		exp = 36000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 16,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty superball", count = 10}, 
            -- {id = "Ultra Potion", count = 10}
        }
   	},

   	------------------------------------------------------------------------

   	[17] = {
   		nameNpc = "Irineu",
   		name = "spinarak", 
   		name2 = "zubat", 
   		mons_list = {"spinarak", "Spinarak"},  
   		mons_list2 = {"zubat", "Zubat"},  
   		storage = 30032, 
   		storage2 = 30033, 
   		amount = 60, 
   		amount2 = 48, 
   		exp = 38000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 17,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 30}, 
            -- {id = "Ultra Potion", count = 30}
        }
   	},

   	------------------------------------------------------------------------

   	[18] = {
   		nameNpc = "Maria",
   		name = "golbat", 
   		name2 = "ariados", 
   		mons_list = {"golbat", "Golbat"},  
   		mons_list2 = {"ariados", "Ariados"},  
   		storage = 30034, 
   		storage2 = 30035, 
   		amount = 18, 
   		amount2 = 8, 
   		exp = 40000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 18,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty superball", count = 20}, 
            -- {id = "Ultra Potion", count = 20}
        }
   	},

   	------------------------------------------------------------------------

    -- Cidade 3 (Pewter)

   	[19] = {
   		nameNpc = "Miguel",
   		name = "totodile", 
   		name2 = "croconaw", 
   		mons_list = {"totodile", "Totodile"},  
   		mons_list2 = {"croconaw", "Croconaw"},  
   		storage = 30036, 
   		storage2 = 30037, 
   		amount = 42, 
   		amount2 = 16, 
   		exp = 42000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 19,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 40}, 
            -- {id = "Ultra Potion", count = 25}
        }
   	},

   	------------------------------------------------------------------------

   	[20] = {
   		nameNpc = "Arthur",
   		name = "staryu", 
   		name2 = "starmie", 
   		mons_list = {"staryu", "Staryu"},  
   		mons_list2 = {"starmie", "Starmie"},  
   		storage = 30038, 
   		storage2 = 30039, 
   		amount = 40, 
   		amount2 = 12, 
   		exp = 44000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 20,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty superball", count = 15}, 
            -- {id = "Ultra Potion", count = 20}
        }
   	},

   	------------------------------------------------------------------------

   	[21] = {
   		nameNpc = "Gael",
   		name = "chikorita", 
   		name2 = "bayleef", 
   		mons_list = {"chikorita", "Chikorita"},  
   		mons_list2 = {"bayleef", "Bayleef"},  
   		storage = 30040, 
   		storage2 = 30041, 
   		amount = 40, 
   		amount2 = 8, 
   		exp = 46000, 
   		pointsTask = {1, 1}, 
   		taskPointsNumber = 21,
   		token = 1,
   		items = {
            {id = 2152, count = 1},
            -- {id = "empty greatball", count = 30}, 
            -- {id = "Ultra Potion", count = 18}
        }
   	},

   	------------------------------------------------------------------------
   	
}

-- task_daily = {
--    [1] = {name = "monsterDay1", mons_list = {"monsterDay1_t2", "monsterDay1_t3"}, storage = 40000, amount = 10, exp = 5000, pointsTask = {1, 1}, items = {{id = 2157, count = 1}, {id = 2152, count = 3}}},
--    [2] = {name = "monsterDay2", mons_list = {"", ""}, storage = 40001, amount = 10, exp = 10000, pointsTask = {1, 1}, items = {{id = 10521, count = 1}, {id = 2152, count = 5}}},
--    [3] = {name = "monsterDay3", mons_list = {"", ""}, storage = 40002, amount = 10, exp = 18000, pointsTask = {1, 1}, items = {{id = 2195, count = 1}, {id = 2152, count = 8}}},
--    [4] = {name = "monsterDay4", mons_list = {"", ""}, storage = 40003, amount = 10, exp = 20000, pointsTask = {1, 1}, items = {{id = 2520, count = 1}, {id = 2152, count = 10}}}
-- }

task_storage = 20020 -- storage que verifica se est� fazendo alguma task e ver qual task � - task normal
task_points = 20021 -- storage que retorna a quantidade de pontos task que o player tem.
task_sto_time = 20022 -- storage de delay para n�o poder fazer a task novamente caso ela for abandonada.
task_time = 20 -- tempo em horas em que o player ficar� sem fazer a task como puni��o
task_rank = 20023 -- storage do rank task
-- task_storageMix = 20026 -- storage que verifica se est� fazendo alguma task e ver qual task � - task normal
-- taskd_storage = 20024 -- storage que verifica se est� fazendo alguma task e ver qual task � - task daily
-- time_daySto = 20025 -- storage do tempo da task daily, no caso para verificar e add 24 horas para fazer novamente a task daily


local ranks_task = {
[{1, 20}] = "Newbie", 
[{21, 50}] = "Elite",
[{51, 100}] = "Master",
[{101, 200}] = "Destroyer",		
[{201, math.huge}] = "Juggernaut"
}

local RankSequence = {
["Newbie"] = 1,
["Elite"] = 2,
["Master"] = 3,
["Destroyer"] = 4,
["Juggernaut"] = 5,
}

function rankIsEqualOrHigher(myRank, RankCheck)
	local ret_1 = RankSequence[myRank]
	local ret_2 = RankSequence[RankCheck]
	return ret_1 >= ret_2
end

function getTaskInfos(player)
	local player = Player(player)
	return task_monsters[player:getStorageValue(task_storage)] or false
end

-- function getTaskInfosMix(player)
-- 	local player = Player(player)
-- 	return task_monsters[player:getStorageValue(task_storageMix)] or false
-- end

-- function getTaskDailyInfo(player)
-- 	local player = Player(player)
-- 	return task_daily[player:getStorageValue(taskd_storage)] or false
-- end

function taskPoints_get(player)
	local player = Player(player)
	if player:getStorageValue(task_points) == -1 then
		return 0 
	end
	return player:getStorageValue(task_points)
end

function taskPoints_add(player, count)
	local player = Player(player)
	return player:setStorageValue(task_points, taskPoints_get(player) + count)
end

function taskPoints_remove(player, count)
	local player = Player(player)
	return player:setStorageValue(task_points, taskPoints_get(player) - count)
end

function taskRank_get(player)
	local player = Player(player)
	if player:getStorageValue(task_rank) == -1 then
		return 1 
	end
	return player:getStorageValue(task_rank)
end

function taskRank_add(player, count)
	local player = Player(player)
	return player:setStorageValue(task_rank, taskRank_get(player) + count)
end

function getRankTask(player)
	local pontos = taskRank_get(player)
	local ret
	for _, z in pairs(ranks_task) do
		if pontos >= _[1] and pontos <= _[2] then
			ret = z
		end
	end
	return ret
end

function getItemsFromTable(itemtable)
     local text = ""
     for v = 1, #itemtable do
         count, info = itemtable[v].count, ItemType(itemtable[v].id)
         local ret = ", "
         if v == 1 then
             ret = ""
         elseif v == #itemtable then
             ret = " e "
         end
         text = text .. ret
         text = text .. (count > 1 and count or info:getArticle()).." "..(count > 1 and info:getPluralName() or info:getName())
     end
     return text
end

function getMonstersFromTable(player, type, monstertable)
    for v = 1, #monstertable do
        local count, name, storage = monstertable[v].count, monstertable[v].name, monstertable[v].storage
        if (type == 2) then
            player:setStorageValue(storage, 0)
        elseif (type == 3) and not (player:getStorageValue(storage) >= count) then
            return false
        end
    end
    return true
end

function getMonstersFromTableName(monstertable)
     local text = ""
     for v = 1, #monstertable do
         count, info = monstertable[v].count, monstertable[v].name
         local ret = ", "
         if v == 1 then
             ret = ""
         elseif v == #monstertable then
             ret = " e "
         end
         text = text .. ret
         text = text .. count.." "..info.."s"
     end
     return text
end