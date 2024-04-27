
-- offense = offense que ganha por level
-- level = level min pra usar o poke / offense base
-- defense = defense por level
-- agility = speed base dos pokes
-- specialattack = special attack que ganha por level
-- exp = exp que dá a cada level que tem (somada a exp base, no xml do poke)                 
-- vitality = vida que o poke ganha pra cada vitality que tem

pokes = {          --alterado v1.8 \/\/ toda a tabela, recebeu um novo 'atributo', wildLvl...

["Bulbasaur"] = {offense = 4.9, defense = 4.9, specialattack = 6.5, vitality = 4.5, agility = 106, exp = 64, level = 1, wildLvl = 20, type = "grass", type2 = "poison"},

["Ivysaur"] = {offense = 6.2, defense = 6.3, specialattack = 8, vitality = 6, agility = 123, exp = 141, level = 40, wildLvl = 40, type = "grass", type2 = "poison"},

["Venusaur"] = {offense = 8.2, defense = 8.3, specialattack = 10, vitality = 8, agility = 145, exp = 208, level = 85, wildLvl = 85, type = "grass", type2 = "poison"},

["Charmander"] = {offense = 5.2, defense = 4.3, specialattack = 6, vitality = 3.9, agility = 128, exp = 65, level = 1, wildLvl = 20, type = "fire", type2 = "no type"},

["Charmeleon"] = {offense = 6.5, defense = 5.8, specialattack = 8.5, vitality = 5.8, agility = 145, exp = 142, level = 40, wildLvl = 40, type = "fire", type2 = "no type"},

["Charizard"] = {offense = 8.5, defense = 7.8, specialattack = 11, vitality = 7.8, agility = 167, exp = 209, level = 85, wildLvl = 85, type = "fire", type2 = "flying"},

["Squirtle"] = {offense = 4.8, defense = 6.5, specialattack = 5, vitality = 4.4, agility = 104, exp = 66, level = 1, wildLvl = 20, type = "water", type2 = "no type"},

["Wartortle"] = {offense = 6.3, defense = 8, specialattack = 6.5, vitality = 5.9, agility = 121, exp = 143, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Blastoise"] = {offense = 8.3, defense = 10, specialattack = 8.5, vitality = 7.9, agility = 143, exp = 210, level = 85, wildLvl = 85, type = "water", type2 = "no type"},

["Blastoise XP VIP"] = {offense = 16, defense = 20, specialattack = 17, vitality = 15, agility = 300, exp = 21000, level = 50, wildLvl = 50, type = "water", type2 = "no type"},

["Blastoise XP FREE"] = {offense = 16, defense = 20, specialattack = 17, vitality = 15, agility = 300, exp = 10000, level = 50, wildLvl = 50, type = "water", type2 = "no type"},

["Caterpie"] = {offense = 3, defense = 3.5, specialattack = 2, vitality = 4.5, agility = 106, exp = 53, level = 5, wildLvl = 5, type = "bug", type2 = "no type"},

["Metapod"] = {offense = 2, defense = 5.5, specialattack = 2.5, vitality = 5, agility = 90, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Butterfree"] = {offense = 4.5, defense = 5, specialattack = 8, vitality = 6, agility = 134, exp = 160, level = 30, wildLvl = 30, type = "bug", type2 = "flying"},

["Weedle"] = {offense = 3.5, defense = 3, specialattack = 2, vitality = 4, agility = 112, exp = 52, level = 5, wildLvl = 5, type = "bug", type2 = "poison"},

["Kakuna"] = {offense = 2.5, defense = 5, specialattack = 2.5, vitality = 4.5, agility = 95, exp = 120, level = 15, wildLvl = 15, type = "bug", type2 = "poison"},

["Beedrill"] = {offense = 8, defense = 4, specialattack = 4.5, vitality = 6.5, agility = 139, exp = 159, level = 30, wildLvl = 30, type = "bug", type2 = "poison"},

["Pidgey"] = {offense = 4.5, defense = 4, specialattack = 3.5, vitality = 4, agility = 118, exp = 55, level = 5, wildLvl = 5, type = "normal", type2 = "flying"},

["Pidgeotto"] = {offense = 6, defense = 5.5, specialattack = 5, vitality = 6.3, agility = 145, exp = 113, level = 20, wildLvl = 20, type = "normal", type2 = "flying"},

["Pidgeot"] = {offense = 8, defense = 7.5, specialattack = 7, vitality = 8.3, agility = 210, exp = 172, level = 75, wildLvl = 75, type = "normal", type2 = "flying"},

["Rattata"] = {offense = 5.6, defense = 3.5, specialattack = 2.5, vitality = 3, agility = 136, exp = 10, level = 5, wildLvl = 5, type = "normal", type2 = "no type"},

["Raticate"] = {offense = 8.1, defense = 6, specialattack = 5, vitality = 5.5, agility = 163, exp = 116, level = 25, wildLvl = 25, type = "normal", type2 = "no type"},

["Spearow"] = {offense = 6, defense = 3, specialattack = 3.1, vitality = 4, agility = 134, exp = 58, level = 10, wildLvl = 10, type = "normal", type2 = "flying"},

["Fearow"] = {offense = 9, defense = 6.5, specialattack = 6.1, vitality = 6.5, agility = 167, exp = 162, level = 50, wildLvl = 50, type = "normal", type2 = "flying"},

["Ekans"] = {offense = 6, defense = 4.4, specialattack = 4, vitality = 3.5, agility = 117, exp = 62, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Arbok"] = {offense = 8.5, defense = 6.9, specialattack = 6.5, vitality = 6, agility = 145, exp = 147, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Shiny Arbok"] = {offense = 16, defense = 12, specialattack = 12, vitality = 12, agility = 200, exp = 300, level = 70, wildLvl = 70, type = "poison", type2 = "no type"},

["Pikachu"] = {offense = 5.5, defense = 3, specialattack = 5, vitality = 3.5, agility = 156, exp = 82, level = 40, wildLvl = 40, type = "electric", type2 = "no type"},

["Raichu"] = {offense = 9, defense = 5.5, specialattack = 9, vitality = 6, agility = 167, exp = 122, level = 85, wildLvl = 85, type = "electric", type2 = "no type"},

["Sandshrew"] = {offense = 7.5, defense = 8.5, specialattack = 2, vitality = 5, agility = 101, exp = 93, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Sandslash"] = {offense = 10, defense = 11, specialattack = 4.5, vitality = 7.5, agility = 128, exp = 163, level = 65, wildLvl = 65, type = "ground", type2 = "no type"},

["Nidoran Female"] = {offense = 4.7, defense = 5.2, specialattack = 4, vitality = 5.5, agility = 102, exp = 59, level = 10, wildLvl = 10, type = "poison", type2 = "no type"},

["Nidorina"] = {offense = 6.2, defense = 6.7, specialattack = 5.5, vitality = 7, agility = 118, exp = 59, level = 30, wildLvl = 30, type = "poison", type2 = "no type"},

["Nidoqueen"] = {offense = 8.2, defense = 8.7, specialattack = 7.5, vitality = 9, agility = 140, exp = 194, level = 65, wildLvl = 65, type = "poison", type2 = "ground"},

["Nidoran Male"] = {offense = 5.7, defense = 4, specialattack = 4, vitality = 4.6, agility = 112, exp = 60, level = 10, wildLvl = 10, type = "poison", type2 = "no type"},

["Nidorino"] = {offense = 7.2, defense = 5.7, specialattack = 5.5, vitality = 6.1, agility = 128, exp = 118, level = 30, wildLvl = 30, type = "poison", type2 = "no type"},

["Nidoking"] = {offense = 9.2, defense = 7.7, specialattack = 8.5, vitality = 8.1, agility = 150, exp = 195, level = 65, wildLvl = 65, type = "poison", type2 = "ground"},

["Clefairy"] = {offense = 4.5, defense = 4.8, specialattack = 6, vitality = 7, agility = 95, exp = 68, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Clefable"] = {offense = 7, defense = 7.3, specialattack = 8.5, vitality = 9.5, agility = 123, exp = 129, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Vulpix"] = {offense = 4.1, defense = 4, specialattack = 5, vitality = 3.8, agility = 128, exp = 63, level = 15, wildLvl = 15, type = "fire", type2 = "no type"},

["Ninetales"] = {offense = 7.6, defense = 7.5, specialattack = 8.1, vitality = 7.3, agility = 167, exp = 178, level = 70, wildLvl = 70, type = "fire", type2 = "no type"},

["Ninetales Cells"] = {offense = 807.6, defense = 607.5, specialattack = 800.1, vitality = 700.3, agility = 867, exp = 178, level = 70, wildLvl = 70, type = "fire", type2 = "no type"},

["Jigglypuff"] = {offense = 4.5, defense = 2, specialattack = 4.5, vitality = 11.5, agility = 79, exp = 76, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Wigglytuff"] = {offense = 7, defense = 4.5, specialattack = 7.5, vitality = 14, agility = 106, exp = 109, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Zubat"] = {offense = 4.5, defense = 3.5, specialattack = 3, vitality = 4, agility = 117, exp = 54, level = 10, wildLvl = 10, type = "poison", type2 = "flying"},

["Golbat"] = {offense = 8, defense = 7, specialattack = 6.5, vitality = 7.5, agility = 156, exp = 171, level = 35, wildLvl = 35, type = "poison", type2 = "flying"},

["Oddish"] = {offense = 5, defense = 5.5, specialattack = 7.5, vitality = 4.5, agility = 90, exp = 78, level = 5, wildLvl = 5, type = "grass", type2 = "poison"},

["Gloom"] = {offense = 6.5, defense = 7, specialattack = 8.5, vitality = 6, agility = 101, exp = 132, level = 25, wildLvl = 25, type = "grass", type2 = "poison"},

["Vileplume"] = {offense = 8, defense = 8.5, specialattack = 10, vitality = 7.5, agility = 112, exp = 184, level = 50, wildLvl = 50, type = "grass", type2 = "poison"},

["Paras"] = {offense = 7, defense = 5.5, specialattack = 4.5, vitality = 3.5, agility = 84, exp = 70, level = 5, wildLvl = 5, type = "bug", type2 = "grass"},

["Parasect"] = {offense = 9.5, defense = 8, specialattack = 6, vitality = 6, agility = 100, exp = 128, level = 50, wildLvl = 50, type = "bug", type2 = "grass"},

["Venonat"] = {offense = 5.5, defense = 5, specialattack = 4, vitality = 6, agility = 106, exp = 75, level = 20, wildLvl = 20, type = "bug", type2 = "poison"},

["Venomoth"] = {offense = 6.5, defense = 6, specialattack = 9, vitality = 6.5, agility = 156, exp = 138, level = 50, wildLvl = 50, type = "bug", type2 = "poison"},

["Diglett"] = {offense = 5.5, defense = 2.5, specialattack = 3.5, vitality = 1, agility = 110, exp = 81, level = 10, wildLvl = 10, type = "ground", type2 = "no type"},

["Dugtrio"] = {offense = 8, defense = 5, specialattack = 5, vitality = 3.5, agility = 150, exp = 153, level = 35, wildLvl = 35, type = "ground", type2 = "no type"},

["Meowth"] = {offense = 4.5, defense = 3.5, specialattack = 4, vitality = 4, agility = 130, exp = 69, level = 15, wildLvl = 15, type = "normal", type2 = "no type"},

["Persian"] = {offense = 7, defense = 6, specialattack = 6.5, vitality = 6.5, agility = 150, exp = 148, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Psyduck"] = {offense = 5.2, defense = 4.8, specialattack = 6.5, vitality = 5, agility = 117, exp = 80, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Golduck"] = {offense = 8.2, defense = 7.8, specialattack = 9.5, vitality = 8, agility = 150, exp = 174, level = 55, wildLvl = 55, type = "water", type2 = "no type"},

["Mankey"] = {offense = 8, defense = 3.5, specialattack = 3.5, vitality = 4, agility = 134, exp = 74, level = 10, wildLvl = 10, type = "fighting", type2 = "no type"},

["Primeape"] = {offense = 10.5, defense = 6, specialattack = 6, vitality = 6.5, agility = 161, exp = 149, level = 50, wildLvl = 50, type = "fighting", type2 = "no type"},

["Growlithe"] = {offense = 7, defense = 4.5, specialattack = 7, vitality = 5.5, agility = 130, exp = 91, level = 25, wildLvl = 25, type = "fire", type2 = "no type"},

["Arcanine"] = {offense = 11, defense = 8, specialattack = 10, vitality = 9, agility = 180, exp = 213, level = 80, wildLvl = 80, type = "fire", type2 = "no type"},

["Poliwag"] = {offense = 5, defense = 4, specialattack = 4, vitality = 4, agility = 100, exp = 77, level = 5, wildLvl = 5, type = "water", type2 = "no type"},

["Poliwhirl"] = {offense = 6.5, defense = 6.5, specialattack = 5, vitality = 6.5, agility = 120, exp = 131, level = 25, wildLvl = 25, type = "water", type2 = "no type"},

["Poliwrath"] = {offense = 8.5, defense = 9.5, specialattack = 7, vitality = 9, agility = 147, exp = 185, level = 65, wildLvl = 65, type = "water", type2 = "fighting"},

["Abra"] = {offense = 2, defense = 1.5, specialattack = 10.5, vitality = 2.5, agility = 119, exp = 75, level = 15, wildLvl = 15, type = "psychic", type2 = "no type"},

["Kadabra"] = {offense = 3.5, defense = 3, specialattack = 12, vitality = 4, agility = 125, exp = 145, level = 45, wildLvl = 45, type = "psychic", type2 = "no type"},

["Alakazam"] = {offense = 5.5, defense = 4.5, specialattack = 13.5, vitality = 5.5, agility = 140, exp = 186, level = 80, wildLvl = 80, type = "psychic", type2 = "no type"},

["Machop"] = {offense = 8, defense = 5, specialattack = 3.5, vitality = 7, agility = 95, exp = 75, level = 20, wildLvl = 20, type = "fighting", type2 = "no type"},

["Machoke"] = {offense = 10, defense = 7, specialattack = 5, vitality = 8, agility = 106, exp = 146, level = 45, wildLvl = 45, type = "fighting", type2 = "no type"},

["Machamp"] = {offense = 12, defense = 8, specialattack = 6.5, vitality = 9, agility = 117, exp = 193, level = 70, wildLvl = 70, type = "fighting", type2 = "no type"},

["Bellsprout"] = {offense = 7.5, defense = 3.5, specialattack = 7, vitality = 5, agility = 100, exp = 84, level = 5, wildLvl = 5, type = "grass", type2 = "poison"},

["Weepinbell"] = {offense = 9, defense = 5, specialattack = 8.5, vitality = 6.5, agility = 110, exp = 151, level = 25, wildLvl = 25, type = "grass", type2 = "poison"},

["Victreebel"] = {offense = 10.5, defense = 6.5, specialattack = 10, vitality = 8, agility = 115, exp = 191, level = 50, wildLvl = 50, type = "grass", type2 = "poison"},

["Tentacool"] = {offense = 4, defense = 3.5, specialattack = 5, vitality = 4, agility = 129, exp = 105, level = 15, wildLvl = 15, type = "water", type2 = "poison"},

["Tentacruel"] = {offense = 7, defense = 6.5, specialattack = 8, vitality = 8, agility = 155, exp = 205, level = 75, wildLvl = 75, type = "water", type2 = "poison"},

["Bad Tentacruel"] = {offense = 1007, defense = 1006.5, specialattack = 1008, vitality = 1008, agility = 1155, exp = 2000005, level = 175, wildLvl = 75, type = "water", type2 = "poison"},

["Geodude"] = {offense = 8, defense = 10, specialattack = 3, vitality = 4, agility = 100, exp = 73, level = 15, wildLvl = 15, type = "rock", type2 = "ground"},

["Graveler"] = {offense = 9.5, defense = 11.5, specialattack = 4.5, vitality = 5.5, agility = 110, exp = 134, level = 40, wildLvl = 40, type = "rock", type2 = "ground"},

["Golem"] = {offense = 11, defense = 13, specialattack = 5.5, vitality = 8, agility = 125, exp = 177, level = 70, wildLvl = 70, type = "rock", type2 = "ground"},

["Ponyta"] = {offense = 8.5, defense = 5.5, specialattack = 6.5, vitality = 5, agility = 150, exp = 152, level = 20, wildLvl = 20, type = "fire", type2 = "no type"},

["Rapidash"] = {offense = 10, defense = 7, specialattack = 8, vitality = 6.5, agility = 176, exp = 192, level = 50, wildLvl = 50, type = "fire", type2 = "no type"},

["Slowpoke"] = {offense = 6.5, defense = 6.5, specialattack = 4, vitality = 9, agility = 76, exp = 99, level = 15, wildLvl = 15, type = "water", type2 = "psychic"},

["Slowbro"] = {offense = 7.5, defense = 11, specialattack = 10, vitality = 9.5, agility = 100, exp = 164, level = 45, wildLvl = 45, type = "water", type2 = "psychic"},

["Magnemite"] = {offense = 3.5, defense = 7, specialattack = 9.5, vitality = 2.5, agility = 106, exp = 89, level = 15, wildLvl = 15, type = "electric", type2 = "steel"},

["Magneton"] = {offense = 6, defense = 9.5, specialattack = 12, vitality = 5, agility = 134, exp = 161, level = 40, wildLvl = 40, type = "electric", type2 = "steel"},

["Farfetch'd"] = {offense = 6.5, defense = 5.5, specialattack = 5.8, vitality = 5.2, agility = 135, exp = 94, level = 40, wildLvl = 40, type = "normal", type2 = "flying"},

["Doduo"] = {offense = 8.5, defense = 4.5, specialattack = 3.5, vitality = 3.5, agility = 134, exp = 96, level = 15, wildLvl = 15, type = "normal", type2 = "flying"},

["Dodrio"] = {offense = 11, defense = 7, specialattack = 6, vitality = 6, agility = 167, exp = 158, level = 45, wildLvl = 45, type = "normal", type2 = "flying"},

["Seel"] = {offense = 4.5, defense = 5.5, specialattack = 4.5, vitality = 6.5, agility = 106, exp = 100, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Dewgong"] = {offense = 7, defense = 8, specialattack = 7, vitality = 9, agility = 134, exp = 176, level = 65, wildLvl = 65, type = "water", type2 = "ice"},

["Grimer"] = {offense = 8, defense = 5, specialattack = 4, vitality = 8, agility = 84, exp = 90, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Muk"] = {offense = 10.5, defense = 7.5, specialattack = 6.5, vitality = 10.5, agility = 112, exp = 157, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Shellder"] = {offense = 6.5, defense = 10, specialattack = 4.5, vitality = 3, agility = 101, exp = 97, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Cloyster"] = {offense = 9.5, defense = 18, specialattack = 8.5, vitality = 5, agility = 134, exp = 203, level = 60, wildLvl = 60, type = "water", type2 = "ice"},

["Gastly"] = {offense = 3.5, defense = 3, specialattack = 10, vitality = 3, agility = 125, exp = 95, level = 20, wildLvl = 20, type = "ghost", type2 = "poison"},

["Haunter"] = {offense = 5, defense = 4.5, specialattack = 11.5, vitality = 4.5, agility = 135, exp = 126, level = 45, wildLvl = 45, type = "ghost", type2 = "poison"},

["Gengar"] = {offense = 26.5, defense = 26, specialattack = 23, vitality = 12, agility = 150, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Onix"] = {offense = 24.5, defense = 26, specialattack = 23, vitality = 23.5, agility = 134, exp = 108, level = 50, wildLvl = 50, type = "rock", type2 = "ground"},

["Rhyperior"] = {offense = 80, defense = 50, specialattack = 50, vitality = 50.5, agility = 300, exp = 300, level = 100, wildLvl = 100, type = "rock", type2 = "ground"},

["Onix Cells"] = {offense = 904.5, defense = 826, specialattack = 723, vitality = 723.5, agility = 634, exp = 108, level = 50, wildLvl = 50, type = "rock", type2 = "ground"},

["Drowzee"] = {offense = 4.8, defense = 4.5, specialattack = 4.3, vitality = 6, agility = 103, exp = 102, level = 25, wildLvl = 25, type = "psychic", type2 = "no type"},

["Hypno"] = {offense = 7.3, defense = 7, specialattack = 7.3, vitality = 8.5, agility = 130, exp = 165, level = 55, wildLvl = 55, type = "psychic", type2 = "no type"},

["Krabby"] = {offense = 10.5, defense = 9, specialattack = 2.5, vitality = 3, agility = 112, exp = 115, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Kingler"] = {offense = 13, defense = 11.5, specialattack = 5, vitality = 5.5, agility = 139, exp = 206, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Voltorb"] = {offense = 3, defense = 5, specialattack = 5.5, vitality = 4, agility = 106, exp = 103, level = 10, wildLvl = 10, type = "electric", type2 = "no type"},

["Electrode"] = {offense = 5, defense = 7, specialattack = 8, vitality = 6, agility = 134, exp = 150, level = 35, wildLvl = 35, type = "electric", type2 = "no type"},

["Exeggcute"] = {offense = 4, defense = 8, specialattack = 6, vitality = 6, agility = 101, exp = 98, level = 10, wildLvl = 10, type = "grass", type2 = "psychic"},

["Exeggutor"] = {offense = 9.5, defense = 8.5, specialattack = 12.5, vitality = 9.5, agility = 125, exp = 212, level = 80, wildLvl = 80, type = "grass", type2 = "psychic"},

["Solgaleo"] = {offense = 1400, defense = 1100, specialattack = 1200, vitality = 1700, agility = 1000, exp = 14440, level = 1000, wildLvl = 250, type = "steel", type2 = "psychic"},

["Shiny Solgaleo"] = {offense = 1900, defense = 2000, specialattack = 1700, vitality = 2000, agility = 1000, exp = 144430, level = 1000, wildLvl = 250, type = "steel", type2 = "psychic"},

["Ultra Solgaleo"] = {offense = 2300, defense = 2400, specialattack = 2500, vitality = 2400, agility = 1200, exp = 134340, level = 1000, wildLvl = 250, type = "steel", type2 = "psychic"},

["Cubone"] = {offense = 5, defense = 9.5, specialattack = 4, vitality = 5, agility = 100, exp = 87, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Marowak"] = {offense = 8, defense = 11, specialattack = 5, vitality = 6, agility = 150, exp = 124, level = 55, wildLvl = 55, type = "ground", type2 = "no type"},

["Hitmonlee"] = {offense = 9.3, defense = 5.3, specialattack = 3.5, vitality = 5, agility = 152, exp = 139, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Hitmonchan"] = {offense = 8.3, defense = 7.9, specialattack = 3.5, vitality = 5, agility = 140, exp = 140, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Lickitung"] = {offense = 5.5, defense = 7.5, specialattack = 6, vitality = 9, agility = 100, exp = 127, level = 55, wildLvl = 55, type = "normal", type2 = "no type"},

["Koffing"] = {offense = 6.5, defense = 9.5, specialattack = 6, vitality = 4, agility = 95, exp = 114, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Weezing"] = {offense = 9, defense = 12, specialattack = 8.5, vitality = 6.5, agility = 123, exp = 173, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Rhyhorn"] = {offense = 8.5, defense = 9.5, specialattack = 3, vitality = 8, agility = 100, exp = 135, level = 30, wildLvl = 30, type = "ground", type2 = "rock"},

["Rhydon"] = {offense = 11, defense = 10, specialattack = 4.5, vitality = 10.5, agility = 127, exp = 204, level = 75, wildLvl = 75, type = "ground", type2 = "rock"},

["Chansey"] = {offense = 4, defense = 4, specialattack = 5, vitality = 20, agility = 112, exp = 255, level = 60, wildLvl = 60, type = "normal", type2 = "no type"},

["Tangela"] = {offense = 5.5, defense = 11.5, specialattack = 10, vitality = 6.5, agility = 123, exp = 166, level = 50, wildLvl = 50, type = "grass", type2 = "no type"},

["Kangaskhan"] = {offense = 9.5, defense = 8, specialattack = 4, vitality = 10.5, agility = 140, exp = 175, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Horsea"] = {offense = 4, defense = 7, specialattack = 7, vitality = 3, agility = 115, exp = 83, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Seadra"] = {offense = 6.5, defense = 9.5, specialattack = 9.5, vitality = 5.5, agility = 150, exp = 155, level = 45, wildLvl = 45, type = "water", type2 = "no type"},

["Goldeen"] = {offense = 6.7, defense = 6, specialattack = 3.5, vitality = 4.5, agility = 115, exp = 111, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Seaking"] = {offense = 9.2, defense = 6.5, specialattack = 6.5, vitality = 8, agility = 135, exp = 170, level = 35, wildLvl = 35, type = "water", type2 = "no type"},

["Staryu"] = {offense = 4.5, defense = 5.5, specialattack = 7, vitality = 3, agility = 130, exp = 106, level = 15, wildLvl = 15, type = "water", type2 = "no type"},

["Starmie"] = {offense = 7.5, defense = 8.5, specialattack = 10, vitality = 6, agility = 150, exp = 207, level = 35, wildLvl = 35, type = "water", type2 = "psychic"},

["Mr. Mime"] = {offense = 4.5, defense = 6.5, specialattack = 10, vitality = 5, agility = 140, exp = 136, level = 45, wildLvl = 45, type = "psychic", type2 = "no type"},

["Scyther"] = {offense = 11, defense = 8, specialattack = 5.5, vitality = 7, agility = 170, exp = 187, level = 80, wildLvl = 80, type = "bug", type2 = "flying"},

["Jynx"] = {offense = 5, defense = 6.5, specialattack = 11.5, vitality = 6.5, agility = 150, exp = 137, level = 75, wildLvl = 75, type = "ice", type2 = "psychic"},

["Electabuzz"] = {offense = 8.3, defense = 5.7, specialattack = 9.5, vitality = 6.5, agility = 160, exp = 156, level = 80, wildLvl = 80, type = "electric", type2 = "no type"},

["Magmar"] = {offense = 9.5, defense = 5.7, specialattack = 10, vitality = 6.5, agility = 159, exp = 167, level = 80, wildLvl = 80, type = "fire", type2 = "no type"},

["Pinsir"] = {offense = 12.5, defense = 10, specialattack = 5.5, vitality = 6.5, agility = 135, exp = 200, level = 45, wildLvl = 45, type = "bug", type2 = "no type"},

["Tauros"] = {offense = 10, defense = 9.5, specialattack = 4, vitality = 7.5, agility = 155, exp = 211, level = 45, wildLvl = 45, type = "normal", type2 = "no type"},

["Magikarp"] = {offense = 1, defense = 5.5, specialattack = 1.5, vitality = 2, agility = 110, exp = 20, level = 5, wildLvl = 5, type = "water", type2 = "no type"},

["Gyarados"] = {offense = 12.5, defense = 7.9, specialattack = 6, vitality = 9.5, agility = 140, exp = 214, level = 85, wildLvl = 85, type = "water", type2 = "flying"},

["Lapras"] = {offense = 8.5, defense = 8, specialattack = 8.5, vitality = 13, agility = 120, exp = 219, level = 80, wildLvl = 80, type = "water", type2 = "ice"},

["Ditto"] = {offense = 60, defense = 60, specialattack = 60, vitality = 60, agility = 350, exp = 610, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Shiny Ditto"] = {offense = 100, defense = 100, specialattack = 100, vitality = 100, agility = 350, exp = 610, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Eevee"] = {offense = 5.5, defense = 5, specialattack = 4.5, vitality = 5.5, agility = 117, exp = 92, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Vaporeon"] = {offense = 6.5, defense = 6, specialattack = 11, vitality = 13, agility = 128, exp = 196, level = 55, wildLvl = 55, type = "water", type2 = "no type"},

["Jolteon"] = {offense = 6.5, defense = 6, specialattack = 11, vitality = 6.5, agility = 145, exp = 197, level = 55, wildLvl = 55, type = "electric", type2 = "no type"},

["Flareon"] = {offense = 13, defense = 6, specialattack = 9.5, vitality = 6.5, agility = 128, exp = 198, level = 55, wildLvl = 55, type = "fire", type2 = "no type"},

["Porygon"] = {offense = 6, defense = 7, specialattack = 8.5, vitality = 6.5, agility = 115, exp = 130, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Omanyte"] = {offense = 4, defense = 10, specialattack = 9, vitality = 3.5, agility = 95, exp = 99, level = 20, wildLvl = 20, type = "rock", type2 = "water"},

["Omastar"] = {offense = 6, defense = 12.5, specialattack = 11.5, vitality = 7, agility = 120, exp = 199, level = 80, wildLvl = 80, type = "rock", type2 = "water"},

["Kabuto"] = {offense = 8, defense = 9, specialattack = 5.5, vitality = 3, agility = 120, exp = 99, level = 20, wildLvl = 20, type = "rock", type2 = "water"},

["Kabutops"] = {offense = 11.5, defense = 10.5, specialattack = 6.5, vitality = 6, agility = 140, exp = 199, level = 80, wildLvl = 80, type = "rock", type2 = "water"},

["Aerodactyl"] = {offense = 10.5, defense = 6.5, specialattack = 6, vitality = 8, agility = 190, exp = 202, level = 100, wildLvl = 100, type = "rock", type2 = "Flying"},

["Snorlax"] = {offense = 11, defense = 6.5, specialattack = 6.5, vitality = 7.604677, agility = 110, exp = 154, level = 85, wildLvl = 85, type = "normal", type2 = "no type"},

["Articuno"] = {offense = 70, defense = 70, specialattack = 200, vitality = 250, agility = 500, exp = 215, level = 1, wildLvl = 300, type = "ice", type2 = "flying"},

["Zapdos"] = {offense = 70, defense = 70, specialattack = 200, vitality = 259, agility = 501, exp = 216, level = 1, wildLvl = 300, type = "electric", type2 = "flying"},

["Moltres"] = {offense = 70, defense = 70, specialattack = 200, vitality = 260, agility = 500, exp = 217, level = 1, wildLvl = 300, type = "fire", type2 = "flying"},

["Frozen Articuno"] = {offense = 80, defense = 80, specialattack = 80.5, vitality = 80, agility = 1200, exp = 500, level = 300, wildLvl = 150, type = "ice", type2 = "flying"},

["Thunder Zapdos"] = {offense = 80, defense = 80, specialattack = 80.5, vitality = 81, agility = 1200, exp = 500, level = 300, wildLvl = 150, type = "electric", type2 = "flying"},

["Burned Moltres"] = {offense = 80, defense = 80, specialattack = 80.5, vitality = 80, agility = 1200, exp = 500, level = 300, wildLvl = 500, type = "fire", type2 = "flying"},

["Dratini"] = {offense = 6.5, defense = 4.5, specialattack = 5, vitality = 4.1, agility = 112, exp = 67, level = 20, wildLvl = 20, type = "dragon", type2 = "no type"},

["Dragonair"] = {offense = 8.4, defense = 6.5, specialattack = 7, vitality = 6.1, agility = 134, exp = 144, level = 60, wildLvl = 60, type = "dragon", type2 = "no type"},

["Dragonite"] = {offense = 13.4, defense = 9.5, specialattack = 10, vitality = 9.1, agility = 165, exp = 218, level = 100, wildLvl = 100, type = "dragon", type2 = "flying"},

["Dragonite Cells"] = {offense = 513.4, defense = 309.5, specialattack = 410, vitality = 909.1, agility = 665, exp = 218, level = 100, wildLvl = 100, type = "dragon", type2 = "flying"},

["Mewtwo"] = {offense = 310, defense = 90, specialattack = 300, vitality = 400, agility = 550, exp = 220, level = 20, wildLvl = 150, type = "psychic", type2 = "no type"},

["Mystic Mewtwo"] = {offense = 1310, defense = 1900, specialattack = 1700, vitality = 1700, agility = 1550, exp = 12220, level = 1220, wildLvl = 150, type = "psychic", type2 = "no type"},

["Shiny Mystic Mewtwo"] = {offense = 1710, defense = 2100, specialattack = 2100, vitality = 2000, agility = 1750, exp = 12220, level = 1220, wildLvl = 150, type = "psychic", type2 = "no type"},

["Mew"] = {offense = 320, defense = 100, specialattack = 250, vitality = 310, agility = 550, exp = 64, level = 20, wildLvl = 150, type = "psychic", type2 = "no type"},

["Mew Root"] = {offense = 200, defense = 200, specialattack = 200, vitality = 200, agility = 1000, exp = 640, level = 200, wildLvl = 400, type = "psychic", type2 = "no type"},

["Mew ULTRA"] = {offense = 10000, defense = 1000, specialattack = 10000, vitality = 10000, agility = 1000, exp = 7000, level = 200, wildLvl = 100, type = "psychic", type2 = "no type"},

["Shiny Venusaur"] = {offense = 40.02, defense = 49.13, specialattack = 45, vitality = 45.8, agility = 133, exp = 228.8, level = 100, wildLvl = 100, type = "grass", type2 = "poison"},

["Shiny Charizard"] = {offense = 40.35, defense = 48.58, specialattack = 45.1, vitality = 46.58, agility = 133, exp = 229.9, level = 100, wildLvl = 100, type = "fire", type2 = "flying"},

["Shiny Blastoise"] = {offense = 40.13, defense = 41, specialattack = 45.35, vitality = 49.69, agility = 133, exp = 231, level = 100, wildLvl = 100, type = "water", type2 = "no type"},

["Shiny Butterfree"] = {offense = 20.95, defense = 5.5, specialattack = 15.8, vitality = 20.6, agility = 133, exp = 176, level = 60, wildLvl = 60, type = "bug", type2 = "flying"},

["Shiny Beedrill"] = {offense = 15.8, defense = 4.4, specialattack = 15.95, vitality = 10.15, agility = 133, exp = 154.9, level = 60, wildLvl = 60, type = "bug", type2 = "poison"},

["Shiny Pidgeot"] = {offense = 25.8, defense = 8.25, specialattack = 20.7, vitality = 15.13, agility = 163, exp = 189.2, level = 100, wildLvl = 100, type = "normal", type2 = "flying"},

["Shiny Rattata"] = {offense = 9.16, defense = 3.85, specialattack = 6.75, vitality = 9.3, agility = 111, exp = 62.7, level = 10, wildLvl = 10, type = "normal", type2 = "no type"},

["Shiny Raticate"] = {offense = 10.91, defense = 6.6, specialattack = 10.5, vitality = 12.05, agility = 122, exp = 127.6, level = 35, wildLvl = 35, type = "normal", type2 = "no type"},

["Shiny Fearow"] = {offense = 15.9, defense = 7.15, specialattack = 20.71, vitality = 26.15, agility = 122, exp = 178.2, level = 100, wildLvl = 100, type = "normal", type2 = "flying"},

["Shiny Raichu"] = {offense = 20.9, defense = 6.05, specialattack = 20.9, vitality = 26.6, agility = 133, exp = 134.2, level = 100, wildLvl = 100, type = "electric", type2 = "no type"},

["Shiny Nidoking"] = {offense = 30.12, defense = 20.47, specialattack = 26.35, vitality = 30.91, agility = 133, exp = 214.5, level = 100, wildLvl = 100, type = "poison", type2 = "ground"},

["Shiny Zubat"] = {offense = 6.95, defense = 3.85, specialattack = 7.3, vitality = 9.4, agility = 111, exp = 59.4, level = 10, wildLvl = 10, type = "poison", type2 = "flying"},

["Shiny Golbat"] = {offense = 10.8, defense = 15.7, specialattack = 16.15, vitality = 15.25, agility = 122, exp = 188.1, level = 60, wildLvl = 60, type = "poison", type2 = "flying"},

["Shiny Oddish"] = {offense = 9.5, defense = 6.05, specialattack = 10.25, vitality = 10.95, agility = 111, exp = 85.8, level = 10, wildLvl = 10, type = "grass", type2 = "poison"},

["Shiny Vileplume"] = {offense = 56.8, defense = 56.35, specialattack = 60, vitality = 50.25, agility = 133, exp = 202.4, level = 100, wildLvl = 100, type = "grass", type2 = "poison"},

["Shiny Paras"] = {offense = 10.7, defense = 6.05, specialattack = 4.95, vitality = 3.85, agility = 111, exp = 77, level = 10, wildLvl = 10, type = "bug", type2 = "grass"},

["Shiny Parasect"] = {offense = 10.45, defense = 8.8, specialattack = 6.6, vitality = 6.6, agility = 122, exp = 140.8, level = 60, wildLvl = 60, type = "bug", type2 = "grass"},

["Shiny Venonat"] = {offense = 6.05, defense = 5.5, specialattack = 4.4, vitality = 6.6, agility = 111, exp = 82.5, level = 30, wildLvl = 30, type = "bug", type2 = "poison"},

["Shiny Venomoth"] = {offense = 47.15, defense = 46.6, specialattack = 49.9, vitality = 47.15, agility = 600, exp = 151.8, level = 100, wildLvl = 100, type = "bug", type2 = "poison"},

["Shiny Growlithe"] = {offense = 7.7, defense = 4.95, specialattack = 7.7, vitality = 6.05, agility = 111, exp = 100.1, level = 35, wildLvl = 35, type = "fire", type2 = "no type"},

["Shiny Arcanine"] = {offense = 20.1, defense = 8.8, specialattack = 20, vitality = 26.9, agility = 182, exp = 234.3, level = 100, wildLvl = 100, type = "fire", type2 = "no type"},

["Shiny Abra"] = {offense = 30.2, defense = 15.65, specialattack = 16.55, vitality = 32.75, agility = 121, exp = 82.5, level = 80, wildLvl = 80, type = "psychic", type2 = "ghost"},

["Shiny Alakazam"] = {offense = 32.05, defense = 20.95, specialattack = 19.85, vitality = 26.05, agility = 122, exp = 204.6, level = 100, wildLvl = 100, type = "psychic", type2 = "no type"},

["Shiny Tentacool"] = {offense = 4.4, defense = 3.85, specialattack = 5.5, vitality = 4.4, agility = 111, exp = 115.5, level = 25, wildLvl = 25, type = "water", type2 = "poison"},

["Shiny Tentacruel"] = {offense = 20.7, defense = 15.15, specialattack = 19.8, vitality = 22.8, agility = 122, exp = 225.5, level = 100, wildLvl = 100, type = "water", type2 = "poison"},

["Shiny Golem"] = {offense = 30.1, defense = 30.3, specialattack = 15.05, vitality = 33.8, agility = 133, exp = 194.7, level = 100, wildLvl = 100, type = "rock", type2 = "ground"},

["Shiny Farfetch'd"] = {offense = 15.15, defense = 6.05, specialattack = 19.38, vitality = 20.72, agility = 175, exp = 103.4, level = 100, wildLvl = 100, type = "normal", type2 = "flying"},

["Shiny Grimer"] = {offense = 8.8, defense = 5.5, specialattack = 4.4, vitality = 8.8, agility = 111, exp = 99, level = 25, wildLvl = 25, type = "poison", type2 = "no type"},

["Shiny Muk"] = {offense = 11.55, defense = 8.25, specialattack = 7.15, vitality = 11.55, agility = 122, exp = 172.7, level = 100, wildLvl = 100, type = "poison", type2 = "no type"},

["Shiny Gengar"] = {offense = 45.15, defense = 46.6, specialattack = 40.3, vitality = 23.6, agility = 800, exp = 209, level = 100, wildLvl = 100, type = "ghost", type2 = "poison"},

["Shiny Onix"] = {offense = 53.95, defense = 55.6, specialattack = 50.3, vitality = 55.85, agility = 122, exp = 118.8, level = 100, wildLvl = 100, type = "rock", type2 = "ground"},

["Shiny Hypno"] = {offense = 30.03, defense = 15.7, specialattack = 19.03, vitality = 33.35, agility = 122, exp = 181.5, level = 100, wildLvl = 100, type = "psychic", type2 = "no type"},

["Shiny Krabby"] = {offense = 11.55, defense = 9.9, specialattack = 2.75, vitality = 3.3, agility = 111, exp = 126.5, level = 15, wildLvl = 15, type = "water", type2 = "no type"},

["Shiny Kingler"] = {offense = 14.3, defense = 12.65, specialattack = 5.5, vitality = 6.05, agility = 122, exp = 226.6, level = 50, wildLvl = 50, type = "water", type2 = "no type"},

["Shiny Voltorb"] = {offense = 10.3, defense = 5.5, specialattack = 10.05, vitality = 15.4, agility = 111, exp = 113.3, level = 25, wildLvl = 25, type = "electric", type2 = "no type"},

["Shiny Electrode"] = {offense = 15.5, defense = 15.7, specialattack = 19.8, vitality = 22.6, agility = 122, exp = 165, level = 80, wildLvl = 80, type = "electric", type2 = "no type"},

["Shiny Cubone"] = {offense = 5.5, defense = 10.45, specialattack = 4.4, vitality = 5.5, agility = 111, exp = 95.7, level = 30, wildLvl = 30, type = "ground", type2 = "no type"},

["Shiny Marowak"] = {offense = 15.8, defense = 20.1, specialattack = 21.5, vitality = 22.6, agility = 122, exp = 136.4, level = 100, wildLvl = 100, type = "ground", type2 = "no type"},

["Shiny Hitmonlee"] = {offense = 30.2, defense = 20.83, specialattack = 30.85, vitality = 33.5, agility = 159, exp = 1520, level = 100, wildLvl = 100, type = "fighting", type2 = "no type"},

["Shiny Hitmonchan"] = {offense = 30.55, defense = 22.69, specialattack = 30.85, vitality = 35.5, agility = 133, exp = 1540, level = 100, wildLvl = 100, type = "fighting", type2 = "no type"},

["Shiny Tangela"] = {offense = 23.05, defense = 19.65, specialattack = 32.3, vitality = 33.15, agility = 141, exp = 182.6, level = 100, wildLvl = 100, type = "grass", type2 = "no type"},

["Shiny Horsea"] = {offense = 4.4, defense = 7.7, specialattack = 7.7, vitality = 3.3, agility = 111, exp = 91.3, level = 15, wildLvl = 15, type = "water", type2 = "no type"},

["Shiny Seadra"] = {offense = 7.15, defense = 10.45, specialattack = 10.45, vitality = 6.05, agility = 122, exp = 170.5, level = 60, wildLvl = 60, type = "water", type2 = "no type"},

["Shiny Scyther"] = {offense = 42.1, defense = 42.8, specialattack = 43.05, vitality = 40.7, agility = 133, exp = 205.7, level = 100, wildLvl = 100, type = "bug", type2 = "flying"},

["Shiny Jynx"] = {offense = 16.5, defense = 7, specialattack = 15.65, vitality = 20.15, agility = 133, exp = 150.7, level = 100, wildLvl = 100, type = "ice", type2 = "psychic"},

["Shiny Electabuzz"] = {offense = 15.13, defense = 6.27, specialattack = 20.45, vitality = 33.15, agility = 133, exp = 171.6, level = 100, wildLvl = 100, type = "electric", type2 = "no type"},

["Shiny Pinsir"] = {offense = 13.75, defense = 11, specialattack = 6.05, vitality = 7.15, agility = 133, exp = 220, level = 100, wildLvl = 100, type = "bug", type2 = "no type"},

["Shiny Magikarp"] = {offense = 1.1, defense = 6.05, specialattack = 1.65, vitality = 2.2, agility = 111, exp = 22, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Shiny Gyarados"] = {offense = 50.75, defense = 50.69, specialattack = 50.6, vitality = 50.45, agility = 133, exp = 235.4, level = 120, wildLvl = 120, type = "water", type2 = "flying"},

["Shiny Vaporeon"] = {offense = 20.15, defense = 30.6, specialattack = 33.1, vitality = 35.3, agility = 133, exp = 215.6, level = 100, wildLvl = 100, type = "water", type2 = "no type"},

["Shiny Jolteon"] = {offense = 21.15, defense = 20.6, specialattack = 23.1, vitality = 19.15, agility = 133, exp = 216.7, level = 100, wildLvl = 100, type = "electric", type2 = "no type"},

["Shiny Flareon"] = {offense = 14.3, defense = 6.6, specialattack = 10.45, vitality = 7.15, agility = 133, exp = 217.8, level = 100, wildLvl = 100, type = "fire", type2 = "no type"},

["Shiny Snorlax"] = {offense = 50.1, defense = 50.15, specialattack = 55.15, vitality = 50.6, agility = 133, exp = 169.4, level = 120, wildLvl = 120, type = "normal", type2 = "no type"},

["Shiny Dratini"] = {offense = 7.15, defense = 4.95, specialattack = 5.5, vitality = 4.51, agility = 111, exp = 73.7, level = 25, wildLvl = 25, type = "dragon", type2 = "no type"},

["Shiny Dragonair"] = {offense = 9.24, defense = 7.15, specialattack = 7.7, vitality = 6.71, agility = 122, exp = 158.4, level = 100, wildLvl = 100, type = "dragon", type2 = "no type"},

["Shiny Dragonite"] = {offense = 45.74, defense = 45.45, specialattack = 40, vitality = 50.01, agility = 133, exp = 239.8, level = 120, wildLvl = 120, type = "dragon", type2 = "flying"},

["Chikorita"] = {offense = 4.9, defense = 6.5, specialattack = 4.9, vitality = 4.5, agility = 106, exp = 64, level = 20, wildLvl = 20, type = "grass", type2 = "no type"},

["Bayleef"] = {offense = 6.2, defense = 8, specialattack = 6.3, vitality = 6, agility = 123, exp = 141, level = 40, wildLvl = 40, type = "grass", type2 = "no type"},

["Meganium"] = {offense = 8.2, defense = 10, specialattack = 8.3, vitality = 8, agility = 145, exp = 208, level = 85, wildLvl = 85, type = "grass", type2 = "no type"},

["Cyndaquil"] = {offense = 5, defense = 4.3, specialattack = 6, vitality = 4, agility = 128, exp = 65, level = 20, wildLvl = 20, type = "fire", type2 = "no type"},

["Quilava"] = {offense = 6.4, defense = 5.8, specialattack = 8.5, vitality = 6, agility = 145, exp = 142, level = 40, wildLvl = 40, type = "fire", type2 = "no type"},

["Typhlosion"] = {offense = 8.4, defense = 7.8, specialattack = 11, vitality = 8, agility = 167, exp = 209, level = 85, wildLvl = 85, type = "fire", type2 = "no type"},

["Totodile"] = {offense = 6.5, defense = 6.4, specialattack = 4.4, vitality = 5, agility = 104, exp = 66, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Croconaw"] = {offense = 8, defense = 8, specialattack = 5.9, vitality = 6.5, agility = 121, exp = 141, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Feraligatr"] = {offense = 10.5, defense = 10, specialattack = 7.9, vitality = 8.5, agility = 143, exp = 142, level = 85, wildLvl = 85, type = "water", type2 = "no type"},

["Sentret"] = {offense = 4.6, defense = 3.4, specialattack = 3.5, vitality = 3.5, agility = 105, exp = 57, level = 15, wildLvl = 15, type = "normal", type2 = "no type"},

["Furret"] = {offense = 7.6, defense = 6.4, specialattack = 4.5, vitality = 8.5, agility = 156, exp = 116, level = 35, wildLvl = 35, type = "normal", type2 = "no type"},

["Hoothoot"] = {offense = 3, defense = 3, specialattack = 3.6, vitality = 6, agility = 112, exp = 58, level = 20, wildLvl = 20, type = "normal", type2 = "flying"},

["Noctowl"] = {offense = 5, defense = 5, specialattack = 7.6, vitality = 10, agility = 134, exp = 162, level = 65, wildLvl = 65, type = "normal", type2 = "flying"},

["Ledyba"] = {offense = 2, defense = 3, specialattack = 4, vitality = 4, agility = 117, exp = 54, level = 15, wildLvl = 15, type = "bug", type2 = "flying"},

["Ledian"] = {offense = 3.5, defense = 5, specialattack = 5.5, vitality = 5.5, agility = 150, exp = 134, level = 35, wildLvl = 35, type = "bug", type2 = "flying"},

["Spinarak"] = {offense = 6, defense = 4, specialattack = 4, vitality = 4, agility = 100, exp = 54, level = 10, wildLvl = 10, type = "bug", type2 = "poison"},

["Ariados"] = {offense = 9, defense = 7, specialattack = 6, vitality = 7, agility = 120, exp = 134, level = 35, wildLvl = 35, type = "bug", type2 = "poison"},

["Crobat"] = {offense = 9, defense = 8, specialattack = 7, vitality = 8.5, agility = 170, exp = 204, level = 80, wildLvl = 80, type = "poison", type2 = "flying"},

["Chinchou"] = {offense = 3.8, defense = 3.8, specialattack = 5.6, vitality = 7.5, agility = 130, exp = 90, level = 15, wildLvl = 15, type = "water", type2 = "electric"},

["Lanturn"] = {offense = 5.8, defense = 5.8, specialattack = 7.6, vitality = 12.5, agility = 145, exp = 156, level = 50, wildLvl = 50, type = "water", type2 = "electric"},

["Pichu"] = {offense = 4, defense = 1.5, specialattack = 3.5, vitality = 2, agility = 123, exp = 42, level = 20, wildLvl = 20, type = "electric", type2 = "no type"},

["Cleffa"] = {offense = 2.5, defense = 2.8, specialattack = 4.5, vitality = 5, agility = 95, exp = 37, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Igglybuff"] = {offense = 3, defense = 1.5, specialattack = 4, vitality = 9, agility = 95, exp = 39, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Togepi"] = {offense = 2, defense = 6.5, specialattack = 4, vitality = 3.5, agility = 80, exp = 74, level = 5, wildLvl = 5, type = "normal", type2 = "no type"},

["Togetic"] = {offense = 4, defense = 8.5, specialattack = 8, vitality = 5.5, agility = 115, exp = 114, level = 60, wildLvl = 60, type = "normal", type2 = "flying"},

["Natu"] = {offense = 5, defense = 4.5, specialattack = 7, vitality = 4, agility = 134, exp = 73, level = 25, wildLvl = 25, type = "psychic", type2 = "flying"},

["Xatu"] = {offense = 7.5, defense = 7, specialattack = 9.5, vitality = 6.5, agility = 161, exp = 171, level = 75, wildLvl = 75, type = "psychic", type2 = "flying"},

["Mareep"] = {offense = 4, defense = 4, specialattack = 6.5, vitality = 5.5, agility = 95, exp = 59, level = 20, wildLvl = 20, type = "electric", type2 = "no type"},

["Flaaffy"] = {offense = 5.5, defense = 5.5, specialattack = 8, vitality = 7, agility = 110, exp = 117, level = 40, wildLvl = 40, type = "electric", type2 = "no type"},

["Ampharos"] = {offense = 7.5, defense = 7.5, specialattack = 11.5, vitality = 9, agility = 130, exp = 194, level = 85, wildLvl = 85, type = "electric", type2 = "no type"},

["Bellossom"] = {offense = 8, defense = 8.5, specialattack = 9, vitality = 7.5, agility = 112, exp = 184, level = 50, wildLvl = 50, type = "grass", type2 = "no type"},

["Virizion"] = {offense = 508, defense = 402.5, specialattack = 409, vitality = 417.5, agility = 412, exp = 884, level = 50, wildLvl = 50, type = "grass", type2 = "no type"},

["Virizion Cells"] = {offense = 1008, defense = 1002.5, specialattack = 1009, vitality = 1007.5, agility = 912, exp = 884, level = 50, wildLvl = 50, type = "grass", type2 = "no type"},

["Marill"] = {offense = 2, defense = 5, specialattack = 2, vitality = 7, agility = 101, exp = 58, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Azumarill"] = {offense = 5, defense = 8, specialattack = 5, vitality = 10, agility = 120, exp = 153, level = 65, wildLvl = 65, type = "water", type2 = "no type"},

["Sudowoodo"] = {offense = 10, defense = 11.5, specialattack = 3, vitality = 7, agility = 110, exp = 135, level = 80, wildLvl = 80, type = "rock", type2 = "no type"},

["Politoed"] = {offense = 7.5, defense = 7.5, specialattack = 9, vitality = 9, agility = 134, exp = 185, level = 65, wildLvl = 65, type = "water", type2 = "no type"},

["Hoppip"] = {offense = 3.5, defense = 4, specialattack = 3.5, vitality = 3.5, agility = 112, exp = 74, level = 5, wildLvl = 5, type = "grass", type2 = "flying"},

["Skiploom"] = {offense = 4.5, defense = 5, specialattack = 4.5, vitality = 5.5, agility = 135, exp = 136, level = 25, wildLvl = 25, type = "grass", type2 = "flying"},

["Jumpluff"] = {offense = 5.5, defense = 7, specialattack = 5.5, vitality = 7.5, agility = 150, exp = 176, level = 50, wildLvl = 50, type = "grass", type2 = "flying"},

["Aipom"] = {offense = 7, defense = 5.5, specialattack = 4, vitality = 5.5, agility = 140, exp = 94, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Sunkern"] = {offense = 3, defense = 3, specialattack = 3.5, vitality = 3, agility = 100, exp = 52, level = 5, wildLvl = 5, type = "grass", type2 = "no type"},

["Sunflora"] = {offense = 7.5, defense = 5.5, specialattack = 10.5, vitality = 7.5, agility = 100, exp = 146, level = 30, wildLvl = 30, type = "grass", type2 = "no type"},

["Yanma"] = {offense = 6.5, defense = 4.5, specialattack = 7.5, vitality = 6.5, agility = 150, exp = 147, level = 50, wildLvl = 50, type = "bug", type2 = "flying"},

["Wooper"] = {offense = 4.5, defense = 4.5, specialattack = 2.5, vitality = 5.5, agility = 95, exp = 52, level = 20, wildLvl = 20, type = "water", type2 = "ground"},

["Quagsire"] = {offense = 8.5, defense = 8.5, specialattack = 6.5, vitality = 9.5, agility = 105, exp = 137, level = 65, wildLvl = 65, type = "water", type2 = "ground"},

["Espeon"] = {offense = 6.5, defense = 6, specialattack = 13, vitality = 6.5, agility = 155, exp = 197, level = 55, wildLvl = 55, type = "psychic", type2 = "no type"},

["Umbreon"] = {offense = 6.5, defense = 11, specialattack = 6, vitality = 9.5, agility = 145, exp = 197, level = 55, wildLvl = 55, type = "dark", type2 = "no type"},

["Murkrow"] = {offense = 8.5, defense = 4.2, specialattack = 8.5, vitality = 6, agility = 145, exp = 107, level = 55, wildLvl = 55, type = "dark", type2 = "flying"},

["Slowking"] = {offense = 7.5, defense = 8, specialattack = 10, vitality = 9.5, agility = 125, exp = 164, level = 100, wildLvl = 100, type = "water", type2 = "psychic"},

["Misdreavus"] = {offense = 6, defense = 6, specialattack = 8.5, vitality = 6, agility = 135, exp = 147, level = 80, wildLvl = 80, type = "ghost", type2 = "no type"},

["Unown"] = {offense = 7.2, defense = 4.8, specialattack = 7.2, vitality = 4.8, agility = 110, exp = 61, level = 100, wildLvl = 100, type = "psychic", type2 = "no type"},

["Wobbuffet"] = {offense = 15.3, defense = 40.8, specialattack = 20.3, vitality = 26, agility = 130, exp = 177, level = 80, wildLvl = 80, type = "psychic", type2 = "no type"},

["Girafarig"] = {offense = 8, defense = 6.5, specialattack = 9, vitality = 7, agility = 150, exp = 149, level = 80, wildLvl = 80, type = "normal", type2 = "psychic"},

["Pineco"] = {offense = 6.5, defense = 9, specialattack = 3.5, vitality = 5, agility = 95, exp = 60, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Forretress"] = {offense = 9, defense = 14, specialattack = 6, vitality = 7.5, agility = 110, exp = 118, level = 65, wildLvl = 65, type = "bug", type2 = "steel"},

["Dunsparce"] = {offense = 7, defense = 7, specialattack = 6.5, vitality = 10, agility = 106, exp = 125, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Gligar"] = {offense = 7.5, defense = 10.5, specialattack = 3.5, vitality = 6.5, agility = 135, exp = 108, level = 40, wildLvl = 40, type = "ground", type2 = "flying"},

["Steelix"] = {offense = 18.5, defense = 20, specialattack = 15.5, vitality = 17.5, agility = 130, exp = 196, level = 100, wildLvl = 500, type = "steel", type2 = "ground"},

["Metagross"] = {offense = 28.5, defense = 20, specialattack = 15.5, vitality = 17.5, agility = 130, exp = 196, level = 100, wildLvl = 500, type = "steel", type2 = "ground"},

["Metagross Cells"] = {offense = 538.5, defense = 630, specialattack = 735.5, vitality = 637.5, agility = 730, exp = 6196, level = 100, wildLvl = 500, type = "steel", type2 = "ground"},

["Steelix Cells"] = {offense = 708.5, defense = 800, specialattack = 635.5, vitality = 537.5, agility = 630, exp = 196, level = 100, wildLvl = 500, type = "steel", type2 = "ground"},

["Snubbull"] = {offense = 8, defense = 5, specialattack = 4, vitality = 6, agility = 100, exp = 63, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Granbull"] = {offense = 12, defense = 7.5, specialattack = 6, vitality = 9, agility = 110, exp = 178, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Qwilfish"] = {offense = 9.5, defense = 8.5, specialattack = 5.5, vitality = 6.5, agility = 135, exp = 100, level = 55, wildLvl = 55, type = "water", type2 = "poison"},

["Scizor"] = {offense = 33, defense = 30, specialattack = 35.5, vitality = 37, agility = 210, exp = 200, level = 100, wildLvl = 100, type = "bug", type2 = "steel"},

["Shuckle"] = {offense = 4.3, defense = 23, specialattack = 4.3, vitality = 4.3, agility = 95, exp = 80, level = 30, wildLvl = 30, type = "bug", type2 = "rock"},

["Heracross"] = {offense = 12.5, defense = 7.5, specialattack = 4, vitality = 8, agility = 135, exp = 200, level = 80, wildLvl = 80, type = "bug", type2 = "fighting"},

["Sneasel"] = {offense = 9.5, defense = 5.5, specialattack = 5.5, vitality = 5.5, agility = 160, exp = 132, level = 55, wildLvl = 55, type = "dark", type2 = "ice"},

["Teddiursa"] = {offense = 8, defense = 5, specialattack = 5, vitality = 6, agility = 110, exp = 124, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Ursaring"] = {offense = 100, defense = 60, specialattack = 100, vitality = 200, agility = 110, exp = 20, level = 90, wildLvl = 600, type = "normal", type2 = "no type"},

["Slugma"] = {offense = 4, defense = 4, specialattack = 7, vitality = 4, agility = 95, exp = 38, level = 15, wildLvl = 15, type = "fire", type2 = "no type"},

["Magcargo"] = {offense = 5, defense = 12, specialattack = 8, vitality = 5, agility = 110, exp = 154, level = 60, wildLvl = 60, type = "fire", type2 = "rock"},

["Swinub"] = {offense = 5, defense = 4, specialattack = 3, vitality = 5, agility = 112, exp = 78, level = 15, wildLvl = 15, type = "ice", type2 = "ground"},

["Piloswine"] = {offense = 10, defense = 8, specialattack = 6, vitality = 10, agility = 125, exp = 160, level = 80, wildLvl = 80, type = "ice", type2 = "ground"},

["Corsola"] = {offense = 5.5, defense = 8.5, specialattack = 6.5, vitality = 5.5, agility = 95, exp = 113, level = 50, wildLvl = 50, type = "water", type2 = "rock"},

["Remoraid"] = {offense = 6.5, defense = 3.5, specialattack = 6.5, vitality = 3.5, agility = 120, exp = 78, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Octillery"] = {offense = 10.5, defense = 7.5, specialattack = 10.5, vitality = 7.5, agility = 115, exp = 164, level = 70, wildLvl = 70, type = "water", type2 = "no type"},

["Delibird"] = {offense = 5.5, defense = 4.5, specialattack = 6.5, vitality = 4.5, agility = 130, exp = 183, level = 40, wildLvl = 40, type = "ice", type2 = "flying"},

["Mantine"] = {offense = 4, defense = 7, specialattack = 8, vitality = 6.5, agility = 130, exp = 168, level = 80, wildLvl = 80, type = "water", type2 = "flying"},

["Skarmory"] = {offense = 8, defense = 14, specialattack = 4, vitality = 6.5, agility = 169, exp = 168, level = 85, wildLvl = 85, type = "steel", type2 = "flying"},

["Houndour"] = {offense = 6, defense = 3, specialattack = 8, vitality = 4.5, agility = 128, exp = 114, level = 20, wildLvl = 20, type = "dark", type2 = "fire"},

["Houndoom"] = {offense = 9, defense = 5, specialattack = 11, vitality = 7.5, agility = 161, exp = 204, level = 80, wildLvl = 80, type = "dark", type2 = "fire"},

["Kingdra"] = {offense = 9.5, defense = 9.5, specialattack = 9.5, vitality = 7.5, agility = 150, exp = 207, level = 90, wildLvl = 90, type = "water", type2 = "dragon"},

["Phanpy"] = {offense = 6, defense = 6, specialattack = 4, vitality = 9, agility = 101, exp = 124, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Donphan"] = {offense = 12, defense = 12, specialattack = 6, vitality = 9, agility = 112, exp = 189, level = 80, wildLvl = 80, type = "ground", type2 = "no type"},

["Porygon2"] = {offense = 8, defense = 9, specialattack = 10.5, vitality = 8.5, agility = 123, exp = 180, level = 75, wildLvl = 75, type = "normal", type2 = "no type"},

["Stantler"] = {offense = 9.5, defense = 6.2, specialattack = 8.5, vitality = 7.3, agility = 145, exp = 165, level = 55, wildLvl = 55, type = "normal", type2 = "no type"},

["Smeargle"] = {offense = 2, defense = 3.5, specialattack = 2, vitality = 5.5, agility = 135, exp = 106, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Tyrogue"] = {offense = 3.5, defense = 3.5, specialattack = 3.5, vitality = 3.5, agility = 120, exp = 91, level = 30, wildLvl = 30, type = "fighting", type2 = "no type"},

["Hitmontop"] = {offense = 9, defense = 9.5, specialattack = 3.5, vitality = 5, agility = 135, exp = 138, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Smoochum"] = {offense = 3, defense = 1.5, specialattack = 8.5, vitality = 4.5, agility = 128, exp = 87, level = 30, wildLvl = 30, type = "ice", type2 = "psychic"},

["Elekid"] = {offense = 6.3, defense = 3.7, specialattack = 6.5, vitality = 4.5, agility = 140, exp = 106, level = 30, wildLvl = 30, type = "electric", type2 = "no type"},

["Magby"] = {offense = 7.5, defense = 3.7, specialattack = 7, vitality = 4.5, agility = 140, exp = 117, level = 30, wildLvl = 30, type = "fire", type2 = "no type"},

["Miltank"] = {offense = 8, defense = 10.5, specialattack = 7, vitality = 9.5, agility = 167, exp = 200, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Blissey"] = {offense = 1, defense = 1, specialattack = 7.5, vitality = 25.5, agility = 117, exp = 255, level = 100, wildLvl = 100, type = "normal", type2 = "no type"},

["Raikou"] = {offense = 60.5, defense = 60.5, specialattack = 200, vitality = 300, agility = 1500, exp = 216, level = 150, wildLvl = 500, type = "electric", type2 = "no type"},

["Entei"] = {offense = 60.5, defense = 60.5, specialattack = 350, vitality = 400, agility = 1000, exp = 217, level = 150, wildLvl = 500, type = "fire", type2 = "no type"},

["Suicune"] = {offense = 60.5, defense = 60.5, specialattack = 150, vitality = 150, agility = 1340, exp = 218, level = 150, wildLvl = 500, type = "water", type2 = "no type"},

["Sea Suicune"] = {offense = 70, defense = 70, specialattack = 70, vitality = 70, agility = 180, exp = 218, level = 150, wildLvl = 500, type = "water", type2 = "no type"},

["Larvitar"] = {offense = 10, defense = 10, specialattack = 12, vitality = 10, agility = 110, exp = 67, level = 20, wildLvl = 20, type = "rock", type2 = "ground"},

["Pupitar"] = {offense = 20, defense = 20, specialattack = 20, vitality = 20, agility = 120, exp = 144, level = 65, wildLvl = 65, type = "rock", type2 = "ground"},

["Tyranitar"] = {offense = 60, defense = 60, specialattack = 60, vitality = 60, agility = 200, exp = 1000, level = 100, wildLvl = 500, type = "rock", type2 = "dark"},

["Black Tyranitar"] = {offense = 160, defense = 160, specialattack = 160, vitality = 160, agility = 200, exp = 1000, level = 100, wildLvl = 500, type = "rock", type2 = "dark"},

["Psycho Lugia"] = {offense = 170, defense = 170, specialattack = 175, vitality = 170.6, agility = 700, exp = 500, level = 200, wildLvl = 200, type = "psychic", type2 = "flying"},

["Black Lugia"] = {offense = 870, defense = 870, specialattack = 775, vitality = 670.6, agility = 900, exp = 500, level = 200, wildLvl = 200, type = "psychic", type2 = "flying"},

["Jungle Celebi"] = {offense = 75, defense = 75, specialattack = 75, vitality = 75, agility = 300, exp = 750, level = 200, wildLvl = 500, type = "psychic", type2 = "grass"},

["Shiny Hitmontop"] = {offense = 20.2, defense = 15.83, specialattack = 20.85, vitality = 15.5, agility = 173, exp = 152.9, level = 100, wildLvl = 100, type = "fighting", type2 = "no type"},
 --alterado v1.9 \/
["Shiny Mr. Mime"] = {offense = 29.5, defense = 40.5, specialattack = 30, vitality = 33, agility = 190, exp = 136, level = 80, wildLvl = 80, type = "psychic", type2 = "no type"},

["Shiny Rhydon"] = {offense = 33, defense = 10, specialattack = 29.5, vitality = 29.5, agility = 127, exp = 204, level = 75, wildLvl = 75, type = "ground", type2 = "rock"},

["Shiny Ninetales"] = {offense = 32.6, defense = 7.5, specialattack = 28.1, vitality = 33.3, agility = 167, exp = 178, level = 70, wildLvl = 70, type = "fire", type2 = "no type"},

["Shiny Ariados"] = {offense = 9, defense = 7, specialattack = 6, vitality = 7, agility = 120, exp = 134, level = 35, wildLvl = 35, type = "bug", type2 = "poison"},

["Shiny Magneton"] = {offense = 26, defense = 9.5, specialattack = 29, vitality = 35, agility = 134, exp = 161, level = 40, wildLvl = 40, type = "electric", type2 = "steel"},

["Shiny Espeon"] = {offense = 6.5, defense = 6, specialattack = 13, vitality = 6.5, agility = 155, exp = 197, level = 55, wildLvl = 55, type = "psychic", type2 = "no type"},

["Shiny Politoed"] = {offense = 7.5, defense = 7.5, specialattack = 9, vitality = 9, agility = 134, exp = 185, level = 65, wildLvl = 65, type = "water", type2 = "no type"},

["Shiny Umbreon"] = {offense = 6.5, defense = 11, specialattack = 6, vitality = 9.5, agility = 145, exp = 197, level = 55, wildLvl = 55, type = "dark", type2 = "no type"},

["Shiny Stantler"] = {offense = 9.5, defense = 6.2, specialattack = 8.5, vitality = 7.3, agility = 145, exp = 165, level = 55, wildLvl = 55, type = "normal", type2 = "no type"},

["Shiny Dodrio"] = {offense = 11, defense = 7, specialattack = 6, vitality = 6, agility = 167, exp = 158, level = 45, wildLvl = 45, type = "normal", type2 = "flying"},


			---Novos Stats

["Deoxys"] = {offense = 300, defense = 320, specialattack = 400, vitality = 400, agility = 3000, exp = 1000, level = 1, wildLvl = 300, type = "psychic", type2 = "electric"},

["Shiny Deoxys"] = {offense = 350, defense = 370, specialattack = 500, vitality = 470, agility = 3000, exp = 8200, level = 1, wildLvl = 350, type = "psychic", type2 = "electric"},

["Ultra Deoxys"] = {offense = 950, defense = 870, specialattack = 900, vitality = 870, agility = 3000, exp = 8200, level = 10, wildLvl = 350, type = "psychic", type2 = "electric"},

["Shiny Articuno"] = {offense = 130, defense = 120, specialattack = 300, vitality = 310, agility = 700, exp = 1000, level = 1, wildLvl = 200, type = "ice", type2 = "flying"},

["Shiny Moltres"] = {offense = 130, defense = 120, specialattack = 300, vitality = 310, agility = 700, exp = 1000, level = 1, wildLvl = 200, type = "fire", type2 = "flying"},

["Darkrai"] = {offense = 220, defense = 200, specialattack = 320, vitality = 300, agility = 500, exp = 209, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Obscure Darkrai"] = {offense = 920, defense = 800, specialattack = 720, vitality = 500, agility = 800, exp = 20009, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Obscure Darkrai MVP"] = {offense = 1000, defense = 1100, specialattack = 1000, vitality = 1500, agility = 1800, exp = 20009, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Shiny Darkrai"] = {offense = 270, defense = 200, specialattack = 370, vitality = 350, agility = 500, exp = 209, level = 1, wildLvl = 200, type = "ghost", type2 = "dark"},

["Kyogre"] = {offense = 230, defense = 260, specialattack = 330, vitality = 320, agility = 1500, exp = 640, level = 2, wildLvl = 200, type = "water", type2 = "ice"},

["Shiny Kyogre XP VIP"] = {offense = 330, defense = 360, specialattack = 330, vitality = 420, agility = 1500, exp = 67000, level = 2, wildLvl = 200, type = "water", type2 = "ice"},

["Shiny Kyogre XP FREE"] = {offense = 330, defense = 360, specialattack = 330, vitality = 420, agility = 1500, exp = 23000, level = 2, wildLvl = 200, type = "water", type2 = "ice"},

["Kyogre XP FREE"] = {offense = 200, defense = 200, specialattack = 200, vitality = 300, agility = 1500, exp = 10000, level = 2, wildLvl = 200, type = "water", type2 = "ice"},

["Black Kyogre"] = {offense = 1000, defense = 1000, specialattack = 1600, vitality = 1500, agility = 2500, exp = 640, level = 120, wildLvl = 200, type = "water", type2 = "ice"},

["Shiny Kyogre"] = {offense = 280, defense = 310, specialattack = 430, vitality = 470, agility = 1500, exp = 1000, level = 2, wildLvl = 200, type = "water", type2 = "ice"},

["Rayquaza"] = {offense = 230, defense = 310, specialattack = 330, vitality = 320, agility = 600, exp = 239.8, level = 3, wildLvl = 300, type = "dragon", type2 = "flying"},

["Shiny Mewtwo"] = {offense = 360, defense = 140, specialattack = 460, vitality = 450, agility = 2000, exp = 1000, level = 2, wildLvl = 300, type = "psychic", type2 = "no type"},

["Shiny Mew"] = {offense = 370, defense = 150, specialattack = 400, vitality = 360, agility = 1200, exp = 1000, level = 2, wildLvl = 300, type = "psychic", type2 = "no type"},

["Shiny Zekrom"] = {offense = 450, defense = 380, specialattack = 650, vitality = 500, agility = 1200, exp = 1000, level = 3, wildLvl = 350, type = "electric", type2 = "dragon"},

["Black Zekrom"] = {offense = 1050, defense = 1080, specialattack = 1050, vitality = 900, agility = 1100, exp = 1000, level = 3, wildLvl = 350, type = "electric", type2 = "dragon"},

["Reshiram"] = {offense = 400, defense = 330, specialattack = 500, vitality = 350, agility = 3000, exp = 1000, level = 2, wildLvl = 300, type = "fire", type2 = "dragon"},

["Zekrom"] = {offense = 400, defense = 330, specialattack = 570, vitality = 250, agility = 3000, exp = 1000, level = 2, wildLvl = 300, type = "electric", type2 = "dragon"},

["Under Zekrom"] = {offense = 500, defense = 530, specialattack = 570, vitality = 250, agility = 3000, exp = 1000, level = 2, wildLvl = 300, type = "electric", type2 = "dragon"},

["Alpha Zekrom"] = {offense = 900, defense = 800, specialattack = 900, vitality = 710, agility = 3000, exp = 1000, level = 2, wildLvl = 300, type = "electric", type2 = "dragon"},

["Shiny Reshiram"] = {offense = 450, defense = 380, specialattack = 500, vitality = 300, agility = 3000, exp = 1000, level = 3, wildLvl = 350, type = "fire", type2 = "dragon"},

["Azelf"] = {offense = 260, defense = 300, specialattack = 360, vitality = 340, agility = 2000, exp = 1000, level = 2, wildLvl = 500, type = "psychic", type2 = "no type"},

["Uxie"] = {offense = 260, defense = 300, specialattack = 360, vitality = 340, agility = 2000, exp = 1000, level = 2, wildLvl = 500, type = "psychic", type2 = "no type"},

["Mesprit"] = {offense = 260, defense = 300, specialattack = 360, vitality = 340, agility = 2000, exp = 1000, level = 2, wildLvl = 500, type = "psychic", type2 = "no type"},

["Groudon"] = {offense = 230, defense = 260, specialattack = 330, vitality = 320, agility = 500, exp = 640, level = 2, wildLvl = 200, type = "ground", type2 = "fire"},

["Groudon XP VIP"] = {offense = 230, defense = 260, specialattack = 330, vitality = 320, agility = 500, exp = 84000, level = 2, wildLvl = 200, type = "ground", type2 = "fire"},

["Groudon XP FREE"] = {offense = 230, defense = 260, specialattack = 330, vitality = 320, agility = 500, exp = 12000, level = 2, wildLvl = 200, type = "ground", type2 = "fire"},

["Black Groudon"] = {offense = 1400, defense = 1800, specialattack = 1500, vitality = 1600, agility = 2000, exp = 640, level = 120, wildLvl = 200, type = "ground", type2 = "fire"},

["Terrakion"] = {offense = 1500, defense = 1200, specialattack = 1400, vitality = 1200, agility = 2000, exp = 640, level = 120, wildLvl = 200, type = "ground", type2 = "fire"},

["Shiny Groudon"] = {offense = 280, defense = 310, specialattack = 230, vitality = 170, agility = 700, exp = 640, level = 4, wildLvl = 400, type = "ground", type2 = "fire"},

["Giratina"] = {offense = 400, defense = 430, specialattack = 500, vitality = 500, agility = 2000, exp = 209, level = 5, wildLvl = 500, type = "ghost", type2 = "dark"},

["Shiny Giratina"] = {offense = 1000, defense = 930, specialattack = 1000, vitality = 1000, agility = 2000, exp = 209, level = 500, wildLvl = 500, type = "ghost", type2 = "dark"},

["Giratina Star"] = {offense = 1400, defense = 1430, specialattack = 1500, vitality = 1500, agility = 2000, exp = 209, level = 500, wildLvl = 500, type = "ghost", type2 = "dark"},

["Jirachi"] = {offense = 1000, defense = 1000, specialattack = 1000, vitality = 1000, agility = 2000, exp = 2000, level = 1, wildLvl = 300, type = "psychic", type2 = "normal"},

["Mega Fallen Jirachi"] = {offense = 1100, defense = 1300, specialattack = 1100, vitality = 1100, agility = 2000, exp = 2000, level = 1, wildLvl = 300, type = "psychic", type2 = "normal"},

["Halloween Jirachi"] = {offense = 1200, defense = 1000, specialattack = 1000, vitality = 1000, agility = 2000, exp = 2000, level = 1, wildLvl = 300, type = "psychic", type2 = "normal"},

["Fallen Jirachi"] = {offense = 1500, defense = 1500, specialattack = 1900, vitality = 1900, agility = 2000, exp = 2000, level = 120, wildLvl = 120, type = "psychic", type2 = "normal"},

["Fallen Jirachi Cells"] = {offense = 1700, defense = 1400, specialattack = 1900, vitality = 1970, agility = 2100, exp = 2000, level = 120, wildLvl = 120, type = "psychic", type2 = "normal"},

["Black Fallen Jirachi"] = {offense = 1700, defense = 1300, specialattack = 2000, vitality = 1950, agility = 2000, exp = 2000, level = 1200, wildLvl = 120, type = "psychic", type2 = "normal"},

["Shiny Jirachi"] = {offense = 1400, defense = 1400, specialattack = 1400, vitality = 1700, agility = 2000, exp = 2000, level = 1, wildLvl = 100, type = "psychic", type2 = "normal"},

["Dialga"] = {offense = 250, defense = 270, specialattack = 450, vitality = 460, agility = 700, exp = 6000, level = 3, wildLvl = 300, type = "steel", type2 = "dragon"},

["Shiny Dialga"] = {offense = 300, defense = 320, specialattack = 500, vitality = 550, agility = 3000, exp = 6000, level = 2, wildLvl = 400, type = "steel", type2 = "dragon"},

["Green Dialga"] = {offense = 450, defense = 450, specialattack = 750, vitality = 750, agility = 3000, exp = 6000, level = 2, wildLvl = 400, type = "steel", type2 = "dragon"},

["Regice"] = {offense = 200, defense = 150, specialattack = 400, vitality = 470, agility = 400, exp = 640, level = 2, wildLvl = 200, type = "ice", type2 = "no type"},

["Ice Regice"] = {offense = 600, defense = 650, specialattack = 700, vitality = 570, agility = 400, exp = 640, level = 2, wildLvl = 300, type = "ice", type2 = "no type"},

["Regice XP VIP"] = {offense = 200, defense = 150, specialattack = 400, vitality = 470, agility = 400, exp = 64000, level = 2, wildLvl = 200, type = "ice", type2 = "no type"},

["Regice XP FREE"] = {offense = 200, defense = 150, specialattack = 400, vitality = 470, agility = 400, exp = 10000, level = 2, wildLvl = 200, type = "ice", type2 = "no type"},

["Regirock XP FREE"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 10040, level = 2, wildLvl = 200, type = "rock", type2 = "no type"},

["Regirock XP VIP"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 70640, level = 2, wildLvl = 200, type = "rock", type2 = "no type"},

["Regirock"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 64000, level = 2, wildLvl = 200, type = "rock", type2 = "no type"},

["Registeel"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 640, level = 2, wildLvl = 200, type = "rock", type2 = "steel"},

["Registeel XP VIP"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 64000, level = 2, wildLvl = 200, type = "rock", type2 = "steel"},

["Registeel XP FREE"] = {offense = 200, defense = 150, specialattack = 400, vitality = 370, agility = 400, exp = 10000, level = 2, wildLvl = 200, type = "rock", type2 = "steel"},

["Shiny Regice"] = {offense = 250, defense = 200, specialattack = 550, vitality = 420, agility = 1000, exp = 640, level = 2, wildLvl = 200, type = "ice", type2 = "no type"},

["Shiny Regirock"] = {offense = 250, defense = 200, specialattack = 550, vitality = 420, agility = 1000, exp = 640, level = 2, wildLvl = 200, type = "rock", type2 = "no type"},

["Shiny Registeel"] = {offense = 250, defense = 200, specialattack = 550, vitality = 420, agility = 1000, exp = 640, level = 2, wildLvl = 200, type = "rock", type2 = "steel"},

["Shiny Rayquaza"] = {offense = 280, defense = 210, specialattack = 580, vitality = 470, agility = 800, exp = 239.8, level = 3, wildLvl = 250, type = "dragon", type2 = "flying"},

["Regigigas"] = {offense = 400, defense = 200, specialattack = 600, vitality = 600, agility = 700, exp = 640, level = 6, wildLvl = 200, type = "rock", type2 = "grass"},

["Black Regigigas"] = {offense = 1100, defense = 1200, specialattack = 1300, vitality = 800, agility = 1200, exp = 640, level = 6, wildLvl = 200, type = "rock", type2 = "grass"},

["Shiny Regigigas"] = {offense = 1000, defense = 1000, specialattack = 1300, vitality = 800, agility = 1500, exp = 640, level = 1, wildLvl = 700, type = "rock", type2 = "grass"},

["Yveltal"] = {offense = 600, defense = 600, specialattack = 900, vitality = 900, agility = 600, exp = 640, level = 1, wildLvl = 200, type = "dark", type2 = "flying"},

["Lugia"] = {offense = 340, defense = 500, specialattack = 640, vitality = 610, agility = 900, exp = 500, level = 2, wildLvl = 100, type = "psychic", type2 = "flying"},

["Lugia XP VIP"] = {offense = 340, defense = 500, specialattack = 640, vitality = 610, agility = 900, exp = 50000, level = 2, wildLvl = 100, type = "psychic", type2 = "flying"},

["Majestic Lugia"] = {offense = 1100, defense = 1200, specialattack = 1400, vitality = 1300, agility = 1800, exp = 500, level = 2200, wildLvl = 700, type = "psychic", type2 = "flying"},

["Ho-oh"] = {offense = 340, defense = 500, specialattack = 540, vitality = 510, agility = 900, exp = 500, level = 2, wildLvl = 200, type = "fire", type2 = "flying"},

["Celebi"] = {offense = 340, defense = 200, specialattack = 440, vitality = 310, agility = 900, exp = 500, level = 2, wildLvl = 200, type = "psychic", type2 = "grass"},

["Celebi XP FREE"] = {offense = 340, defense = 200, specialattack = 440, vitality = 310, agility = 900, exp = 25000, level = 2, wildLvl = 200, type = "psychic", type2 = "grass"},

["Shiny Celebi"] = {offense = 400, defense = 330, specialattack = 500, vitality = 470, agility = 1200, exp = 500, level = 2, wildLvl = 100, type = "psychic", type2 = "grass"},

["Generator"] = {offense = 400, defense = 300, specialattack = 400, vitality = 500, agility = 0, exp = 640, level = 6, wildLvl = 400, type = "dark", type2 = "flying"},

["Regice MVP"] = {offense = 600, defense = 900, specialattack = 200, vitality = 400, agility = 1500, exp = 640, level = 2, wildLvl = 500, type = "ice", type2 = "no type"},

["Regirock MVP"] = {offense = 600, defense = 900, specialattack = 200, vitality = 400, agility = 1500, exp = 640, level = 2, wildLvl = 500, type = "rock", type2 = "no type"},

["Registeel MVP"] = {offense = 600, defense = 900, specialattack = 200, vitality = 400, agility = 1500, exp = 640, level = 2, wildLvl = 500, type = "rock", type2 = "steel"},

["Azelf MVP"] = {offense = 400, defense = 800, specialattack = 400, vitality = 300, agility = 1000, exp = 1000, level = 2, wildLvl = 500, type = "psychic", type2 = "no type"},

["Deoxys MVP"] = {offense = 500.5, defense = 200, specialattack = 800, vitality = 600, agility = 1800, exp = 500, level = 3, wildLvl = 700, type = "psychic", type2 = "electric"},

["Reuniclus"] = {offense = 600, defense = 400, specialattack = 800, vitality = 350, agility = 1200, exp = 640, level = 60, wildLvl = 500, type = "psychic", type2 = "grass"},

["Shiny Reuniclus"] = {offense = 920, defense = 900, specialattack = 880, vitality = 1000, agility = 1000, exp = 150000, level = 6000, wildLvl = 200, type = "poison", type2 = "grass"},

["Heatran"] = {offense = 500, defense = 300, specialattack = 600, vitality = 300, agility = 500, exp = 16200, level = 1, wildLvl = 800, type = "ground", type2 = "fire"},

["Black Heatran"] = {offense = 900, defense = 1000, specialattack = 1000, vitality = 900, agility = 800, exp = 16200, level = 100, wildLvl = 800, type = "ground", type2 = "fire"},

["Arch Heatran"] = {offense = 1300, defense = 1300, specialattack = 1900, vitality = 1900, agility = 1500, exp = 1220, level = 120, wildLvl = 400, type = "ground", type2 = "fire"},

["Shiny Heatran"] = {offense = 500, defense = 350, specialattack = 950, vitality = 550, agility = 1300, exp = 640, level = 2, wildLvl = 900, type = "ground", type2 = "fire"},

["Black Articuno"] = {offense = 300, defense = 630, specialattack = 200, vitality = 180, agility = 2000, exp = 10000, level = 300, wildLvl = 300, type = "ice", type2 = "flying"},

["Reshiram MVP"] = {offense = 700, defense = 1030, specialattack = 830, vitality = 630, agility = 1000, exp = 1000, level = 2, wildLvl = 300, type = "fire", type2 = "dragon"},

["Zekrom MVP"] = {offense = 700, defense = 1030, specialattack = 830, vitality = 630, agility = 1000, exp = 1000, level = 2, wildLvl = 300, type = "electric", type2 = "dragon"},

["Gerador I"] = {offense = 0, defense = 1100, specialattack = 1000, vitality = 1100, agility = 0, exp = 640, level = 6, wildLvl = 100, type = "normal", type2 = "no type"},

["Gerador II"] = {offense = 0, defense = 1250, specialattack = 1000, vitality = 1300, agility = 0, exp = 640, level = 6, wildLvl = 100, type = "normal", type2 = "no type"},

["Gerador III"] = {offense = 0, defense = 1500, specialattack = 1000, vitality = 1600, agility = 0, exp = 640, level = 600, wildLvl = 100, type = "normal", type2 = "no type"},

["Gerador IV"] = {offense = 0, defense = 1770, specialattack = 1000, vitality = 2000, agility = 0, exp = 640, level = 600, wildLvl = 100, type = "normal", type2 = "no type"},

["Giratina MVP"] = {offense = 500, defense = 800, specialattack = 400, vitality = 450, agility = 500, exp = 209, level = 500, wildLvl = 200, type = "ghost", type2 = "dark"},

["Rayquaza MVP"] = {offense = 300, defense = 400, specialattack = 200, vitality = 350, agility = 1000, exp = 10000, level = 300, wildLvl = 500, type = "dragon", type2 = "flying"},

["Gerador"] = {offense = 0, defense = 2000, specialattack = 1000, vitality = 1500, agility = 0, exp = 640, level = 600, wildLvl = 100, type = "normal", type2 = "no type"},

["Heatran MVP"] = {offense = 10000, defense = 10000, specialattack = 10000, vitality = 10000, agility = 3000, exp = 15000, level = 5000, wildLvl = 200, type = "ground", type2 = "fire"},

["Shiny Heatran MVP"] = {offense = 800, defense = 1000, specialattack = 800, vitality = 800, agility = 750, exp = 640, level = 250, wildLvl = 200, type = "ground", type2 = "fire"},

["Heatran MVP NV2"] = {offense = 700, defense = 900, specialattack = 600, vitality = 750, agility = 700, exp = 640, level = 250, wildLvl = 200, type = "ground", type2 = "fire"},

["Primal Dialga"] = {offense = 500, defense = 400, specialattack = 500, vitality = 400, agility = 700, exp = 6000, level = 320, wildLvl = 200, type = "steel", type2 = "dragon"},

["Articuno MVP"] = {offense = 400, defense = 500, specialattack = 800, vitality = 260, agility = 700, exp = 100000, level = 200, wildLvl = 200, type = "ice", type2 = "flying"},

["Shiny Lugia"] = {offense = 550, defense = 600, specialattack = 750, vitality = 500, agility = 3000, exp = 220, level = 220, wildLvl = 500, type = "psychic", type2 = "flying"},

["Victini"] = {offense = 800, defense = 800, specialattack = 900, vitality = 900, agility = 2000, exp = 1000, level = 10, wildLvl = 600, type = "psychic", type2 = "fire"},

["Shiny Victini"] = {offense = 1000, defense = 900, specialattack = 900, vitality = 970, agility = 2000, exp = 1000, level = 10, wildLvl = 600, type = "psychic", type2 = "fire"},

["Victini Star"] = {offense = 1200, defense = 1000, specialattack = 1100, vitality = 1100, agility = 2000, exp = 1000, level = 10, wildLvl = 600, type = "psychic", type2 = "fire"},

["Shiny Kyurem"] = {offense = 690, defense = 700, specialattack = 750, vitality = 400, agility = 1700, exp = 1000, level = 200, wildLvl = 600, type = "ice", type2 = "dragon"},

["Kyurem"] = {offense = 490, defense = 600, specialattack = 650, vitality = 350, agility = 1700, exp = 1000, level = 200, wildLvl = 600, type = "ice", type2 = "dragon"},

["Iluminus Kyurem"] = {offense = 2000, defense = 2100, specialattack = 1300, vitality = 1500, agility = 1500, exp = 10000, level = 1000, wildLvl = 700, type = "ice", type2 = "no type"},

["Majestic Blissey"] = {offense = 700, defense = 500, specialattack = 600, vitality = 750, agility = 800, exp = 21800, level = 2000, wildLvl = 600, type = "normal", type2 = "no type"},

["White Kyurem"] = {offense = 700, defense = 600, specialattack = 780, vitality = 500, agility = 1700, exp = 1000, level = 200, wildLvl = 600, type = "ice", type2 = "dragon"},

["Black Kyurem"] = {offense = 600, defense = 700, specialattack = 800, vitality = 700, agility = 1700, exp = 1000, level = 200, wildLvl = 600, type = "ice", type2 = "dragon"},

["Genesect"] = {offense = 770, defense = 700, specialattack = 870, vitality = 400, agility = 900, exp = 1000, level = 200, wildLvl = 800, type = "bug", type2 = "no type"},

["Shiny Genesect"] = {offense = 870, defense = 770, specialattack = 970, vitality = 500, agility = 900, exp = 1000, level = 200, wildLvl = 800, type = "bug", type2 = "no type"},

["Genesect Star"] = {offense = 1300, defense = 1300, specialattack = 1900, vitality = 1900, agility = 1900, exp = 1000, level = 120, wildLvl = 400, type = "bug", type2 = "no type"},

["Red"] = {offense = 2000, defense = 2000, specialattack = 2500, vitality = 6000, agility = 3000, exp = 1000, level = 30000, wildLvl = 500, type = "bug", type2 = "no type"},

["Genesect MVP"] = {offense = 500, defense = 700, specialattack = 900, vitality = 600, agility = 700, exp = 1000, level = 20000, wildLvl = 500, type = "bug", type2 = "no type"},

["Shiny Genesect MVP"] = {offense = 800, defense = 900, specialattack = 910, vitality = 740, agility = 700, exp = 10000, level = 200, wildLvl = 500, type = "bug", type2 = "no type"},

["Cresselia"] = {offense = 750, defense = 500, specialattack = 800, vitality = 700, agility = 700, exp = 1000, level = 200, wildLvl = 600, type = "dark", type2 = "psychic"},

["Shiny Cresselia"] = {offense = 950, defense = 800, specialattack = 1000, vitality = 800, agility = 750, exp = 1000, level = 200, wildLvl = 600, type = "dark", type2 = "psychic"},

["PRO Kyogre"] = {offense = 900, defense = 1000, specialattack = 900, vitality = 500, agility = 3000, exp = 640, level = 250, wildLvl = 100, type = "water", type2 = "ice"},

["Under Entei"] = {offense = 300, defense = 500, specialattack = 300, vitality = 350, agility = 3000, exp = 1000, exp = 3000, level = 500, wildLvl = 300, type = "fire", type2 = "no type"},

["Under Reshiram"] = {offense = 300, defense = 500, specialattack = 300, vitality = 350, agility = 3000, exp = 1000, level = 250, wildLvl = 500, type = "fire", type2 = "dragon"},

["Palkia"] = {offense = 350, defense = 430, specialattack = 550, vitality = 430, agility = 2000, exp = 6000, level = 320, wildLvl = 500, type = "water", type2 = "dragon"},

["Lugia MVP"] = {offense = 800, defense = 700, specialattack = 600, vitality = 900, agility = 500, exp = 50000, level = 2000, wildLvl = 500, type = "psychic", type2 = "flying"},

["Groudon MVP"] = {offense = 800, defense = 700, specialattack = 700, vitality = 900, agility = 500, exp = 10000, level = 250, wildLvl = 500, type = "ground", type2 = "fire"},

["Black Day Articuno"] = {offense = 700, defense = 700, specialattack = 700, vitality = 900, agility = 500, exp = 10000, level = 250, wildLvl = 500, type = "ice", type2 = "flying"},

["Riolu"] = {offense = 400, defense = 300, specialattack = 400, vitality = 220, agility = 700, exp = 30000, level = 100, wildLvl = 100, type = "dark", type2 = "fighting"},

["Lucario"] = {offense = 560, defense = 560, specialattack = 460, vitality = 370, agility = 1000, exp = 30000, level = 150, wildLvl = 400, type = "dark", type2 = "fighting"},

["Shiny Lucario"] = {offense = 760, defense = 570, specialattack = 480, vitality = 390, agility = 1000, exp = 30000, level = 150, wildLvl = 400, type = "dark", type2 = "fighting"},

["Magmortar"] = {offense = 300, defense = 330, specialattack = 300, vitality = 230, agility = 1000, exp = 1000, level = 250, wildLvl = 300, type = "fire", type2 = "no type"},

["Electivire"] = {offense = 300, defense = 330, specialattack = 300, vitality = 230, agility = 1000, exp = 1000, level = 250, wildLvl = 300, type = "electric", type2 = "no type"},

["Shiny Magmortar"] = {offense = 400, defense = 400, specialattack = 400, vitality = 280, agility = 1000, exp = 10000, level = 4000, wildLvl = 300, type = "fire", type2 = "no type"},

["Zombie"] = {offense = 1000, defense = 1500, specialattack = 2000, vitality = 4200, agility = 1000, exp = 20000, level = 200, wildLvl = 500, type = "fire", type2 = "flying"},

["Zombie Nv1"] = {offense = 1500, defense = 2500, specialattack = 2500, vitality = 4200, agility = 1000, exp = 30000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Zombie Nv2"] = {offense = 2000, defense = 3000, specialattack = 2700, vitality = 4200, agility = 1000, exp = 40000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Shiny Electivire"] = {offense = 400, defense = 390, specialattack = 400, vitality = 280, agility = 800, exp = 10000, level = 100, wildLvl = 300, type = "electric", type2 = "no type"},

["Zekrom Nv1"] = {offense = 300, defense = 500, specialattack = 1200, vitality = 400, agility = 700, exp = 100000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Zekrom Nv2"] = {offense = 4000, defense = 4000, specialattack = 4000, vitality = 500, agility = 700, exp = 200, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Reshiram Nv1"] = {offense = 300, defense = 500, specialattack = 1200, vitality = 400, agility = 700, exp = 100000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Reshiram Nv2"] = {offense = 3200, defense = 3700, specialattack = 3300, vitality = 500, agility = 700, exp = 2000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Moltres MVP"] = {offense = 300, defense = 300, specialattack = 300, vitality = 1500, agility = 700, exp = 100000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Black Articuno MVP"] = {offense = 500, defense = 500, specialattack = 500, vitality = 1600, agility = 700, exp = 1000, level = 200, wildLvl = 200, type = "fire", type2 = "flying"},

["Zapdos MVP"] = {offense = 7000, defense = 7000, specialattack = 7000, vitality = 7000, agility = 7000, exp = 1000, level = 150, wildLvl = 200, type = "electric", type2 = "flying"},

["BD Mewtwo"] = {offense = 1200, defense = 1000, specialattack = 1500, vitality = 2700, agility = 3000, exp = 1000, level = 10000, wildLvl = 200, type = "psychic", type2 = "no type"},

["Diamond Mewtwo"] = {offense = 1000, defense = 1000, specialattack = 1500, vitality = 2300, agility = 3000, exp = 1000, level = 10000, wildLvl = 200, type = "psychic", type2 = "no type"},

["Phione"] = {offense = 400, defense = 300, specialattack = 500, vitality = 580, agility = 1000, exp = 6000, level = 300, wildLvl = 500, type = "water", type2 = "no type"},

["Manaphy"] = {offense = 600, defense = 500, specialattack = 750, vitality = 520, agility = 3000, exp = 6000, level = 300, wildLvl = 500, type = "water", type2 = "ice"},

["Mega Gyarados"] = {offense = 1000, defense = 1000, specialattack = 1000, vitality = 700, agility = 1000, exp = 10000, level = 1, wildLvl = 600, type = "water", type2 = "ice"},

["Shiny Raikou"] = {offense = 500, defense = 460, specialattack = 500, vitality = 480, agility = 3000, exp = 6000, level = 300, wildLvl = 300, type = "electric", type2 = "no type"},

["Shiny Zekrom MVP"] = {offense = 800, defense = 800, specialattack = 800, vitality = 800, agility = 1000, exp = 6000000, level = 300, wildLvl = 300, type = "electric", type2 = "dragon"},

["Shiny Tyranitar"] = {offense = 300, defense = 390, specialattack = 300, vitality = 380, agility = 700, exp = 2100, level = 300, wildLvl = 500, type = "rock", type2 = "dark"},

["Tropius"] = {offense = 400, defense = 390, specialattack = 390, vitality = 200, agility = 800, exp = 12000, level = 200, wildLvl = 500, type = "grass", type2 = "ground"},

["Celebi MVP"] = {offense = 600, defense = 500, specialattack = 600, vitality = 900, agility = 300, exp = 500, level = 200, wildLvl = 500, type = "psychic", type2 = "grass"},

["Deoxys Nv 2"] = {offense = 300, defense = 400, specialattack = 300, vitality = 350, agility = 600, exp = 1000, level = 100, wildLvl = 500, type = "psychic", type2 = "dark"},

["Shiny Darkrai MVP"] = {offense = 1000, defense = 500, specialattack = 600, vitality = 600, agility = 300, exp = 5000, level = 200, wildLvl = 500, type = "dark", type2 = "ghost"},

-----Novos

["Arceus"] = {offense = 2100, defense = 2100, specialattack = 2500, vitality = 2000, agility = 2000, exp = 1000, level = 120, wildLvl = 120, type = "Alpha", type2 = "no type"},

["Zygarde"] = {offense = 1300, defense = 1300, specialattack = 1300, vitality = 1300, agility = 1500, exp = 1000, level = 120, wildLvl = 600, type = "grass", type2 = "dragon"},

["Zygarde Cells"] = {offense = 1600, defense = 1900, specialattack = 1600, vitality = 1900, agility = 1700, exp = 1000, level = 120, wildLvl = 600, type = "grass", type2 = "dragon"},

["Black Zygarde"] = {offense = 2000, defense = 2000, specialattack = 2300, vitality = 1900, agility = 1900, exp = 1000, level = 1200, wildLvl = 600, type = "grass", type2 = "dragon"},

["Shiny Zygarde"] = {offense = 1800, defense = 1800, specialattack = 1800, vitality = 1800, agility = 1800, exp = 1000, level = 120, wildLvl = 600, type = "grass", type2 = "dragon"},

["Furious Arceus"] = {offense = 2200, defense = 2200, specialattack = 2100, vitality = 2100, agility = 1000, exp = 1000, level = 1000, wildLvl = 250, type = "Alpha", type2 = "psychic"},

["Dark Arceus"] = {offense = 2000, defense = 2000, specialattack = 2000, vitality = 2000, agility = 1000, exp = 1000, level = 1000, wildLvl = 250, type = "Alpha", type2 = "psychic"},

["Shiny Arceus"] = {offense = 2300, defense = 2400, specialattack = 2177, vitality = 2170, agility = 1700, exp = 1000, level = 1000, wildLvl = 300, type = "Alpha", type2 = "psychic"},

["Black Arceus"] = {offense = 2300, defense = 2600, specialattack = 2600, vitality = 2100, agility = 2000, exp = 1000, level = 1000, wildLvl = 400, type = "Alpha", type2 = "psychic"},

["King Arceus"] = {offense = 2500, defense = 2500, specialattack = 2700, vitality = 2200, agility = 2100, exp = 1000, level = 1000, wildLvl = 700, type = "Alpha", type2 = "psychic"},

["Shiny King Arceus"] = {offense = 2700, defense = 2550, specialattack = 2800, vitality = 2500, agility = 2200, exp = 1000, level = 1000, wildLvl = 700, type = "Alpha", type2 = "psychic"},

["King Dark Arceus"] = {offense = 2500, defense = 2600, specialattack = 2500, vitality = 2200, agility = 2100, exp = 1000, level = 1000, wildLvl = 700, type = "Alpha", type2 = "psychic"},

["Meloetta"] = {offense = 1200, defense = 1200, specialattack = 1800, vitality = 1800, agility = 1300, exp = 12200, level = 520, wildLvl = 400, type = "normal", type2 = "psychic"},

["Halloween Meloetta"] = {offense = 1000, defense = 1000, specialattack = 1200, vitality = 1200, agility = 1200, exp = 12200, level = 520, wildLvl = 400, type = "normal", type2 = "psychic"},

["Shiny Meloetta"] = {offense = 1800, defense = 1900, specialattack = 2000, vitality = 1900, agility = 1600, exp = 12200, level = 520, wildLvl = 400, type = "normal", type2 = "psychic"},

["Meloetta Star"] = {offense = 2200, defense = 2000, specialattack = 2100, vitality = 2000, agility = 1700, exp = 12200, level = 520, wildLvl = 400, type = "normal", type2 = "psychic"},

-----Fishing

["Fishing Articuno"] = {offense = 250, defense = 150, specialattack = 250, vitality = 400, agility = 1000, exp = 1500, level = 200, wildLvl = 300, type = "ice", type2 = "flying"},

["Fishing Kyogre"] = {offense = 300, defense = 250, specialattack = 300, vitality = 400, agility = 1500, exp = 2500, level = 300, wildLvl = 200, type = "water", type2 = "ice"},

["Fishing Phione"] = {offense = 400, defense = 250, specialattack = 400, vitality = 400, agility = 1500, exp = 3000, level = 350, wildLvl = 500, type = "water", type2 = "no type"},

["Fishing Manaphy"] = {offense = 800, defense = 350, specialattack = 750, vitality = 400, agility = 1500, exp = 4000, level = 400, wildLvl = 500, type = "water", type2 = "ice"},

-----Megas
["Shadow Xerneas"] = {offense = 1000, defense = 1300, specialattack = 1000, vitality = 1100, agility = 1100, exp = 1000, level = 120, wildLvl = 600, type = "electric", type2 = "fire"},

["Black Xerneas"] = {offense = 1300, defense = 1200, specialattack = 1700, vitality = 1300, agility = 1200, exp = 1000, level = 120, wildLvl = 600, type = "electric", type2 = "fire"},

["Xerneas"] = {offense = 1200, defense = 1200, specialattack = 1200, vitality = 1200, agility = 1200, exp = 1000, level = 120, wildLvl = 600, type = "electric", type2 = "fire"},

["Mega Xerneas"] = {offense = 1700, defense = 1800, specialattack = 1500, vitality = 1500, agility = 1400, exp = 1000, level = 900, wildLvl = 600, type = "electric", type2 = "fire"},

["Xerneas MVP"] = {offense = 2500, defense = 2500, specialattack = 2400, vitality = 100, agility = 3000, exp = 1000, level = 10000, wildLvl = 600, type = "electric", type2 = "fire"},

["Hydreigon"] = {offense = 700, defense = 800, specialattack = 700, vitality = 600, agility = 900, exp = 10000, level = 100, wildLvl = 600, type = "dragon", type2 = "fire"},

["Shiny Hydreigon"] = {offense = 1000, defense = 1100, specialattack = 800, vitality = 800, agility = 900, exp = 10000, level = 100, wildLvl = 600, type = "dragon", type2 = "fire"},

["Hydreigon MVP"] = {offense = 1200, defense = 1200, specialattack = 1000, vitality = 1600, agility = 1900, exp = 10000, level = 100000, wildLvl = 600, type = "electric", type2 = "fire"},

["Shiny Hydreigon MVP"] = {offense = 1400, defense = 1400, specialattack = 1200, vitality = 1600, agility = 900, exp = 10000, level = 100000, wildLvl = 600, type = "electric", type2 = "fire"},

["Mega Mewtwo"] = {offense =  1200, defense = 1200, specialattack = 1200, vitality = 1500, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Pidgeot"] = {offense = 200, defense = 200, specialattack = 200, vitality = 900, agility = 700, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Hoopa Unbound"] = {offense = 1200, defense = 1200, specialattack = 1200, vitality = 1200, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Hoopa Unbound Star"] = {offense = 1700, defense = 1500, specialattack = 1400, vitality = 1300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Black Hoopa Unbound"] = {offense = 1500, defense = 1500, specialattack = 1300, vitality = 1300, agility = 1000, exp = 1000, level = 1200, wildLvl = 600, type = "psychic", type2 = "no type"},

["Hoopa"] = {offense = 500, defense = 800, specialattack = 700, vitality = 700, agility = 500, exp = 1000, level = 50, wildLvl = 600, type = "psychic", type2 = "no type"},

["Shiny Hoopa Unbound"] = {offense = 1600, defense = 1600, specialattack = 1700, vitality = 1600, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Swampert"] = {offense = 300, defense = 200, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Banette"] = {offense = 350, defense = 250, specialattack = 350, vitality = 450, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Mawile"] = {offense = 450, defense = 450, specialattack = 450, vitality = 350, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Absol"] = {offense = 300, defense = 500, specialattack = 400, vitality = 400, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Aggron"] = {offense = 300, defense = 400, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Aggron"] = {offense = 90, defense = 90, specialattack = 90, vitality = 90, agility = 100, exp = 100, level = 12, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Blaziken"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Gardevoir"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Sceptile"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Manectric"] = {offense = 950, defense = 950, specialattack = 950, vitality = 950, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Sharpedo"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Glalie"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Kangaskhan"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Aerodactyl"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Pidgeot"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Alakazam"] = {offense = 450, defense = 450, specialattack = 200, vitality = 400, agility = 1000, exp = 220000, level = 100, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Tyranitar"] = {offense = 450, defense = 460, specialattack = 360, vitality = 430, agility = 1000, exp = 21008, level = 1000, wildLvl = 200, type = "rock", type2 = "dark"},

["Mega Ampharos"] = {offense = 300, defense = 400, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "psychic", type2 = "no type"},

["Mega Blastoise"] = {offense = 400, defense = 400, specialattack = 400, vitality = 400, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "water", type2 = "no type"},

["Mega Lucario"] = {offense = 300, defense = 300, specialattack = 400, vitality = 400, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "fighting", type2 = "dark"},

["Mega Charizard"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "fire", type2 = "dragon"},

["Mega Charizard Y"] = {offense = 300, defense = 300, specialattack = 300, vitality = 300, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "fire", type2 = "dragon"},

["Mega Gengar"] = {offense = 700, defense = 700, specialattack = 700, vitality = 700, agility = 1000, exp = 1000, level = 120, wildLvl = 600, type = "ghost", type2 = "dark"},
  ---Evento-By Oloster--
["Creeper"] = {offense = 1500, defense = 1500, specialattack = 1800, vitality = 2700, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

			----Highs

["Shiny Charizard ULTRA"] = {offense = 1000, defense = 700, specialattack = 300, vitality = 350, agility = 450, exp = 5000, level = 100, wildLvl = 500, type = "fire", type2 = "flying"},

["High Venusaur"] = {offense = 600, defense = 500, specialattack = 600, vitality = 100, agility = 500, exp = 208, level = 85, wildLvl = 500, type = "grass", type2 = "poison"},

["High Blastoise"] = {offense = 600, defense = 500, specialattack = 600, vitality = 100, agility = 500, exp = 210, level = 85, wildLvl = 500, type = "water", type2 = "no type"},

["High Arcanine"] = {offense = 600, defense = 500, specialattack = 600, vitality = 100, agility = 500, exp = 500, level = 80, wildLvl = 500, type = "fire", type2 = "no type"},

["High Magmar"] = {offense = 600, defense = 500, specialattack = 600, vitality = 100, agility = 500, exp = 167, level = 80, wildLvl = 500, type = "fire", type2 = "no type"},

["High Alakazam"] = {offense = 150, defense = 200, specialattack = 50, vitality = 500, agility = 500, exp = 186, level = 80, wildLvl = 100, type = "psychic", type2 = "no type"},

                       ---- Powers

["Power Charizard"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Power Alakazam"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Alakazam"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Shiny Power Charizard"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Power Blastoise"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Blastoise"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Power Venusaur"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Venusaur"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Power Raichu"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Raichu"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Power Arcanine"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Arcanine"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Power Jynx"] = {offense = 500, defense = 500, specialattack = 1800, vitality = 70, agility = 1000, exp = 5000, level = 30000, wildLvl = 600, type = "fire", type2 = "flying"},

["Shiny Power Jynx"] = {offense = 800, defense = 800, specialattack = 2500, vitality = 200, agility = 1600, exp = 5000, level = 5000, wildLvl = 900, type = "fire", type2 = "flying"},

["Latios"] = {offense = 700, defense = 1500, specialattack = 1600, vitality = 1000, agility = 1000, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Latios Cells"] = {offense = 900, defense = 1500, specialattack = 1800, vitality = 1300, agility = 1300, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Black Latios"] = {offense = 1700, defense = 1800, specialattack = 1900, vitality = 1100, agility = 1100, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Latios Underwater"] = {offense = 1770, defense = 2000, specialattack = 1800, vitality = 1200, agility = 1000, exp = 10000, level = 1500, wildLvl = 100, type = "dark", type2 = "rock"},

["Latios Flamethrower"] = {offense = 1800, defense = 2100, specialattack = 1700, vitality = 1300, agility = 1000, exp = 10000, level = 1500, wildLvl = 100, type = "dark", type2 = "rock"},

["Latios Darkwooder"] = {offense = 1900, defense = 2000, specialattack = 1700, vitality = 1500, agility = 1200, exp = 10000, level = 1500, wildLvl = 100, type = "dark", type2 = "rock"},

["Latios Leaf Green"] = {offense = 1770, defense = 1900, specialattack = 1900, vitality = 1200, agility = 1300, exp = 10000, level = 1500, wildLvl = 100, type = "dark", type2 = "rock"},

["Shiny Mega Latios"] = {offense = 1000, defense = 1500, specialattack = 1200, vitality = 1600, agility = 1200, exp = 10000, level = 1500, wildLvl = 100, type = "dark", type2 = "rock"},
					  
["Latias"] = {offense = 800, defense = 1600, specialattack = 1500, vitality = 1100, agility = 1000, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Shiny Mega Latias"] = {offense = 2300, defense = 1000, specialattack = 1200, vitality = 1000, agility = 1000, exp = 10000, level = 500, wildLvl = 200, type = "dark", type2 = "rock"},

["Volcanion"] = {offense = 1300, defense = 1200, specialattack = 700, vitality = 1250, agility = 1000, exp = 0, level = 1000, wildLvl = 250, type = "fire", type2 = "water"},

["Shiny Volcanion"] = {offense = 1500, defense = 1600, specialattack = 1000, vitality = 1300, agility = 1000, exp = 0, level = 1000, wildLvl = 250, type = "fire", type2 = "water"},

-----Bads--Golden- By Olostr-
["Bad Scyther"] = {offense = 820, defense = 630, specialattack = 700, vitality = 800, agility = 1000, exp = 0, level = 1000, wildLvl = 250, type = "fire", type2 = "water"},

["Bad Blastoise"] = {offense = 800, defense = 600, specialattack = 1200, vitality = 700, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Bad Gengar"] = {offense = 800, defense = 600, specialattack = 1400, vitality = 900, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Bad Electivire"] = {offense = 800, defense = 600, specialattack = 1200, vitality = 800, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Bad Kyogre"] = {offense = 800, defense = 600, specialattack = 1300, vitality = 900, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Bad Regeneration"] = {offense = 900, defense = 300, specialattack = 1200, vitality = 1200, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Green Charizard"] = {offense = 700, defense = 400, specialattack = 800, vitality = 700, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Green Gengar"] = {offense = 800, defense = 400, specialattack = 800, vitality = 800, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Green Onix"] = {offense = 880, defense = 600, specialattack = 800, vitality = 600, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Green Electivire"] = {offense = 800, defense = 400, specialattack = 800, vitality = 600, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Golden Tyranitar"] = {offense = 800, defense = 400, specialattack = 800, vitality = 600, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Golden Entei"] = {offense = 820, defense = 400, specialattack = 800, vitality = 700, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Golden Suicune"] = {offense = 800, defense = 500, specialattack = 800, vitality = 800, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

["Golden Raikou"] = {offense = 800, defense = 500, specialattack = 800, vitality = 600, agility = 1000, exp = 0, level = 100, wildLvl = 250, type = "fire", type2 = "water"},

----Pokes-Shadows----

["Shadow Jirachi"] = {offense = 1000, defense = 800, specialattack = 900, vitality = 1500, agility = 1000, exp = 0, level = 1000, wildLvl = 300, type = "dark", type2 = "psychic"},

["Shadow Alakazam"] = {offense = 600, defense = 300, specialattack = 450, vitality = 800, agility = 1000, exp = 220000, level = 900, wildLvl = 200, type = "psychic", type2 = "no type"},

["Shadow Charizard"] = {offense = 400, defense = 250, specialattack = 390, vitality = 650, agility = 1000, exp = 20900, level = 800, wildLvl = 200, type = "fire", type2 = "flying"},

["Shadow Giratina"] = {offense = 400, defense = 250, specialattack = 390, vitality = 850, agility = 1000, exp = 21800, level = 3000, wildLvl = 200, type = "dark", type2 = "psychic"},

["Shadow Palkia"] = {offense = 400, defense = 250, specialattack = 390, vitality = 850, agility = 1000, exp = 22000, level = 2000, wildLvl = 200, type = "psychic", type2 = "no type"},

["Shadow Salamence"] = {offense = 300, defense = 200, specialattack = 350, vitality = 600, agility = 1000, exp = 21800, level = 1000, wildLvl = 100, type = "dragon", type2 = "flying"},

["Shadow Slowking"] = {offense = 400, defense = 900, specialattack = 400, vitality = 700, agility = 1000, exp = 16400, level = 1000, wildLvl = 350, type = "water", type2 = "psychic"},

["Shadow Tyranitar"] = {offense = 240, defense = 400, specialattack = 360, vitality = 400, agility = 1000, exp = 21008, level = 2000, wildLvl = 200, type = "rock", type2 = "dark"},

["Shadow Victini"] = {offense = 400, defense = 400, specialattack = 480, vitality = 600, agility = 1000, exp = 1500, level = 1500, wildLvl = 210, type = "fire", type2 = "no type"},

["Shadow Yveltal"] = {offense = 400, defense = 400, specialattack = 430, vitality = 600, agility = 1000, exp = 22000, level = 1500, wildLvl = 150, type = "fire", type2 = "no type"},

---Novos By Oloster---

["Shaymin"] = {offense = 350, defense = 300, specialattack = 440, vitality = 690, agility = 1000, exp = 15000, level = 1000, wildLvl = 150, type = "poison", type2 = "grass"},

["Tornadus"] = {offense = 330, defense = 120, specialattack = 230, vitality = 200, agility = 700, exp = 15000, level = 100, wildLvl = 150, type = "poison", type2 = "grass"},

["Thundurus"] = {offense = 320, defense = 130, specialattack = 220, vitality = 220, agility = 500, exp = 15000, level = 100, wildLvl = 150, type = "poison", type2 = "grass"},

["Landorus"] = {offense = 370, defense = 120, specialattack = 210, vitality = 210, agility = 600, exp = 15000, level = 100, wildLvl = 150, type = "poison", type2 = "grass"},

["Kami Landorus"] = {offense = 1150, defense = 1200, specialattack = 1000, vitality = 1000, agility = 1000, exp = 1000, level = 1000, wildLvl = 600, type = "psychic", type2 = "no type"},

["Kami Thundurus"] = {offense = 1300, defense = 1300, specialattack = 1000, vitality = 1200, agility = 1000, exp = 1000, level = 1000, wildLvl = 600, type = "psychic", type2 = "no type"},

["Kami Tornadus"] = {offense = 1200, defense = 1200, specialattack = 1100, vitality = 1100, agility = 1000, exp = 1000, level = 1000, wildLvl = 600, type = "psychic", type2 = "no type"},

["Ancient Kabutops"] = {offense = 150, defense = 100, specialattack = 100, vitality = 250, agility = 1000, exp = 92199, level = 100, wildLvl = 300, type = "rock", type2 = "water"},

["Ancient Arcanine"] = {offense = 100, defense = 100, specialattack = 100, vitality = 100, agility = 500, exp = 640, level = 100, wildLvl = 300, type = "fire", type2 = "no type"},

["Ancient Blastoise"] = {offense = 110, defense = 110, specialattack = 110, vitality = 110, agility = 600, exp = 700, level = 100, wildLvl = 300, type = "water", type2 = "no type"},

["Ancient Slowking"] = {offense = 130, defense = 280, specialattack = 229, vitality = 225, agility = 600, exp = 8000, level = 100, wildLvl = 300, type = "electric", type2 = "no type"},

["Ancient Aerodactyl"] = {offense = 450, defense = 299, specialattack = 145, vitality = 130, agility = 100, exp = 2002, level = 100, wildLvl = 200, type = "rock", type2 = "Flying"},

-----Guardiao---

["Guardiao Aggron"] = {offense = 800, defense = 700, specialattack = 900, vitality = 750, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Aggron X"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Charizard X"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Charizard"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Ursaring"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Ursaring X"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Salamence"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Salamence X"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Hypno"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Feraligatr"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Gengar"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Typhlosion"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Snorlax"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Tangrowth"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Tyranitar"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Electivire"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Feraligath"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["Guardiao Blastoise"] = {offense = 800, defense = 700, specialattack = 900, vitality = 700, agility = 450, exp = 5000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

["PXM PRO"] = {offense = 1900, defense = 2700, specialattack = 4300, vitality = 3000, agility = 1450, exp = 15000, level = 100, wildLvl = 700, type = "fire", type2 = "flying"},

                                   ---------By Oloster Nv1--------
								   
["Alakazam Nv1"] = {offense = 100, defense = 70, specialattack = 50, vitality = 50, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Lapras Nv1"] = {offense = 980, defense = 970, specialattack = 1240, vitality = 560, agility = 950, exp = 1000, level = 50, wildLvl = 800, type = "fire", type2 = "flying"},

["Rhydon Nv1"] = {offense = 90, defense = 70, specialattack = 50, vitality = 50, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Vileplume Nv1"] = {offense = 900, defense = 770, specialattack = 750, vitality = 640, agility = 250, exp = 1000, level = 50, wildLvl = 890, type = "fire", type2 = "flying"},

["Dragonair Nv1"] = {offense = 80, defense = 70, specialattack = 30, vitality = 52, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Togekiss Nv1"] = {offense = 180, defense = 70, specialattack = 30, vitality = 53, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Magmortar Nv1"] = {offense = 120, defense = 70, specialattack = 30, vitality = 51, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Rhyperior Nv1"] = {offense = 190, defense = 70, specialattack = 30, vitality = 55, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Tangrowth Nv1"] = {offense = 180, defense = 70, specialattack = 30, vitality = 56, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Poliwrath Nv1"] = {offense = 1280, defense = 970, specialattack = 930, vitality = 653, agility = 50, exp = 1000, level = 50, wildLvl = 870, type = "fire", type2 = "flying"},

["Blastoise Nv1"] = {offense = 180, defense = 70, specialattack = 30, vitality = 53, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Charizard Nv1"] = {offense = 180, defense = 70, specialattack = 30, vitality = 54, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Steelix Nv1"] = {offense = 120, defense = 70, specialattack = 30, vitality = 55, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Magmar Nv1"] = {offense = 100, defense = 70, specialattack = 30, vitality = 52, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Tyranitar Nv1"] = {offense = 80, defense = 70, specialattack = 30, vitality = 53, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Tangela Nv1"] = {offense = 100, defense = 70, specialattack = 30, vitality = 51, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Snorlax Nv1"] = {offense = 120, defense = 70, specialattack = 30, vitality = 52, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Scyther Nv1"] = {offense = 130, defense = 70, specialattack = 30, vitality = 53, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Golem Nv1"] = {offense = 120, defense = 70, specialattack = 30, vitality = 40, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Slowking Nv1"] = {offense = 140, defense = 70, specialattack = 30, vitality = 50, agility = 50, exp = 1000, level = 10, wildLvl = 70, type = "fire", type2 = "flying"},

["Raikou Nv1"] = {offense = 140, defense = 70, specialattack = 30, vitality = 50, agility = 50, exp = 2500, level = 40, wildLvl = 90, type = "fire", type2 = "flying"},

["Electivire Nv1"] = {offense = 200, defense = 80, specialattack = 80, vitality = 70, agility = 50, exp = 3000, level = 40, wildLvl = 120, type = "fire", type2 = "flying"},

["Haunter Nv1"] = {offense = 100, defense = 90, specialattack = 50, vitality = 70, agility = 50, exp = 2400, level = 30, wildLvl = 90, type = "fire", type2 = "flying"},

["Gengar Nv1"] = {offense = 270, defense = 90, specialattack = 70, vitality = 70, agility = 50, exp = 2000, level = 50, wildLvl = 100, type = "fire", type2 = "flying"},

["Venusaur Nv2"] = {offense = 970, defense = 970, specialattack = 1200, vitality = 670, agility = 250, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Venusaur Nv3"] = {offense = 970, defense = 1000, specialattack = 1300, vitality = 700, agility = 250, exp = 9000, level = 50, wildLvl = 1200, type = "fire", type2 = "flying"},

["Venusaur MVP"] = {offense = 970, defense = 1000, specialattack = 1300, vitality = 1700, agility = 250, exp = 9000, level = 50, wildLvl = 1200, type = "fire", type2 = "flying"},

["Absol Nv2"] = {offense = 970, defense = 930, specialattack = 900, vitality = 670, agility = 750, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Lucario Nv2"] = {offense = 970, defense = 120, specialattack = 770, vitality = 870, agility = 250, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Palkia Nv2"] = {offense = 970, defense = 210, specialattack = 870, vitality = 870, agility = 350, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Zapdos Nv2"] = {offense = 970, defense = 920, specialattack = 970, vitality = 870, agility = 350, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Blastoise Nv2"] = {offense = 970, defense = 450, specialattack = 870, vitality = 870, agility = 350, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Steelix Nv2"] = {offense = 970, defense = 430, specialattack = 970, vitality = 970, agility = 450, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Alakazam Nv2"] = {offense = 970, defense = 970, specialattack = 970, vitality = 870, agility = 350, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Slowking Nv2"] = {offense = 970, defense = 980, specialattack = 870, vitality = 900, agility = 350, exp = 9000, level = 50, wildLvl = 900, type = "fire", type2 = "flying"},

["Nidoking Nv3"] = {offense = 1200, defense = 980, specialattack = 870, vitality = 1030, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Nidoking Nv4"] = {offense = 1200, defense = 980, specialattack = 1370, vitality = 1250, agility = 800, exp = 9000, level = 400, wildLvl = 1300, type = "fire", type2 = "flying"},

["Fearow Nv3"] = {offense = 1200, defense = 980, specialattack = 870, vitality = 990, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Gardevoir Nv3"] = {offense = 1200, defense = 980, specialattack = 870, vitality = 950, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Golem Nv3"] = {offense = 1200, defense = 980, specialattack = 870, vitality = 860, agility = 800, exp = 9000, level = 400, wildLvl = 1100, type = "fire", type2 = "flying"},

["Charmander Nv3"] = {offense = 1200, defense = 680, specialattack = 870, vitality = 580, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Muk Nv3"] = {offense = 1200, defense = 980, specialattack = 1370, vitality = 970, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Geodude Nv3"] = {offense = 1200, defense = 980, specialattack = 1270, vitality = 470, agility = 800, exp = 9000, level = 400, wildLvl = 200, type = "fire", type2 = "flying"},

["Gallade Nv3"] = {offense = 1200, defense = 980, specialattack = 1270, vitality = 770, agility = 800, exp = 9000, level = 400, wildLvl = 900, type = "fire", type2 = "flying"},

["Blastoise Nv3"] = {offense = 1200, defense = 980, specialattack = 1270, vitality = 570, agility = 800, exp = 9000, level = 400, wildLvl = 1200, type = "fire", type2 = "flying"},

["Togekiss Nv3"] = {offense = 1200, defense = 980, specialattack = 1270, vitality = 970, agility = 800, exp = 9000, level = 400, wildLvl = 1300, type = "fire", type2 = "flying"},

["Victreebel Nv3"] = {offense = 1200, defense = 980, specialattack = 1270, vitality = 970, agility = 800, exp = 9000, level = 400, wildLvl = 1400, type = "fire", type2 = "flying"},

["Ultra Zombie"] = {offense = 1200, defense = 1980, specialattack = 1370, vitality = 2770, agility = 800, exp = 9000, level = 500, wildLvl = 1400, type = "fire", type2 = "flying"},

["Rocket Machine"] = {offense = 1500, defense = 1280, specialattack = 1370, vitality = 3770, agility = 950, exp = 19000, level = 1500, wildLvl = 1700, type = "fire", type2 = "flying"},

-- Legendary
["Legendary Genesect"] = {offense = 2310, defense = 2100, specialattack = 2610, vitality = 1200, agility = 900, exp = 1000, level = 200, wildLvl = 800, type = "bug", type2 = "no type"},

["Legendary Darkrai"] = {offense = 2760, defense = 2400, specialattack = 2160, vitality = 1500, agility = 800, exp = 20009, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Legendary Dialga"] = {offense = 750, defense = 810, specialattack = 1350, vitality = 1380, agility = 700, exp = 6000, level = 3, wildLvl = 300, type = "steel", type2 = "dragon"},

["Legendary Entei"] = {offense = 181.5, defense = 181.5, specialattack = 1050, vitality = 1200, agility = 1000, exp = 217, level = 150, wildLvl = 500, type = "fire", type2 = "no type"},

["Legendary Raikou"] = {offense = 181.5, defense = 181.5, specialattack = 600, vitality = 900, agility = 1500, exp = 216, level = 150, wildLvl = 500, type = "electric", type2 = "no type"},

["Legendary Suicune"] = {offense = 181.5, defense = 181.5, specialattack = 450, vitality = 450, agility = 1340, exp = 218, level = 150, wildLvl = 500, type = "water", type2 = "no type"},

["Legendary Latias"] = {offense = 2400, defense = 4800, specialattack = 4500, vitality = 3300, agility = 1000, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Legendary Latios"] = {offense = 2100, defense = 4500, specialattack = 4800, vitality = 3000, agility = 1000, exp = 10000, level = 500, wildLvl = 100, type = "dark", type2 = "rock"},

["Legendary Regigigas"] = {offense = 1200, defense = 600, specialattack = 1800, vitality = 1800, agility = 700, exp = 640, level = 6, wildLvl = 200, type = "rock", type2 = "grass"},

["Legendary Xerneas"] = {offense = 3600, defense = 3600, specialattack = 3600, vitality = 3600, agility = 1200, exp = 1000, level = 120, wildLvl = 600, type = "electric", type2 = "fire"},

["Legendary Zygarde"] = {offense = 3900, defense = 3900, specialattack = 3900, vitality = 3900, agility = 1500, exp = 1000, level = 120, wildLvl = 600, type = "grass", type2 = "dragon"},

["Legendary Heatran"] = {offense = 1500, defense = 900, specialattack = 1800, vitality = 900, agility = 500, exp = 16200, level = 1, wildLvl = 800, type = "ground", type2 = "fire"},

["Legendary Articuno"] = {offense = 210, defense = 210, specialattack = 600, vitality = 750, agility = 500, exp = 215, level = 1, wildLvl = 300, type = "ice", type2 = "flying"},

["Legendary Moltres"] = {offense = 210, defense = 210, specialattack = 600, vitality = 780, agility = 500, exp = 217, level = 1, wildLvl = 300, type = "fire", type2 = "flying"},

["Legendary Zapdos"] = {offense = 210, defense = 210, specialattack = 600, vitality = 777, agility = 501, exp = 216, level = 1, wildLvl = 300, type = "electric", type2 = "flying"},

["Legendary Mewtwo"] = {offense = 930, defense = 270, specialattack = 900, vitality = 1200, agility = 550, exp = 220, level = 20, wildLvl = 150, type = "psychic", type2 = "no type"},

["Legendary Mew"] = {offense = 960, defense = 300, specialattack = 750, vitality = 910, agility = 550, exp = 64, level = 20, wildLvl = 150, type = "psychic", type2 = "no type"},

}