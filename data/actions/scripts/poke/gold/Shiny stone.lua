function onUse(cid, item, frompos, item2, topos)
 
local cfg = {
    eff_one = 18,     --Efeito que ir� sair ao evoluir o pok�mon (esse efeito aparecer� no pok�mon)
    eff_two = 173,    --Efeito que ir� sair ao evoluir o pok�mon (esse efeito aparecer� no player)
    proibidos = false,  --Ter� pok�mons proibidos para evoluir? [true/sim] [false/n�o]
}
 
    local can_not = {}
    
    if cfg.proibidos == true then
        can_not = {"Espeon", "Umbreon", "Magneton"}    --Pok�mons que n�o podem evoluir.
    end
    
    if not isMonster(item2.uid) or not isSummon(item2.uid) then
        return true
    end
    
    if not pokes["Shiny "..getCreatureName(item2.uid)] then 
        return doPlayerSendCancel(cid, "Esse pok�mon n�o possui uma forma shiny.") 
    end
    
    local minlevel = pokes["Shiny "..getCreatureName(item2.uid)].level
    
    if not isPlayer(getCreatureMaster(item2.uid)) or getCreatureMaster(item2.uid) ~= cid then
        return doPlayerSendCancel(cid, "Voc� s� pode evoluir seu pr�prio pok�mon.")
    end
   
    if getPlayerLevel(cid) < minlevel then
        return doPlayerSendCancel(cid, "Voc� n�o tem o level necess�rio para evoluir esse pok�mon. ("..minlevel..").")
    end
    
    if isInArray(can_not, getCreatureName(item2.uid)) then
        return doPlayerSendCancel(cid, "Voc� n�o pode evoluir esse pok�mon!")
    end
    
    local nome = "Shiny "..getCreatureName(item2.uid)
    local owner = getCreatureMaster(item2.uid)
    local pokeball = getPlayerSlotItem(cid, 8)
    local description = "Contains a "..nome.."."
    local pct = getCreatureHealth(item2.uid) / getCreatureMaxHealth(item2.uid)
 
    doItemSetAttribute(pokeball.uid, "hp", pct)
 
    doItemSetAttribute(pokeball.uid, "pokeName", nome)
    doItemSetAttribute(pokeball.uid, "description", "Contains a "..nome..".")
 
    doPlayerSendTextMessage(cid, 27, "Parab�ns! Seu "..getPokeName(item2.uid).." se transformou em um "..nome.."!")
 
    doSendMagicEffect(getThingPos(item2.uid), cfg.eff_one)
    doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[nome])
    doSendMagicEffect(getThingPos(cid), cfg.eff_two)
 
    local oldpos = getThingPos(item2.uid)
    local oldlod = getCreatureLookDir(item2.uid)
    doRemoveCreature(item2.uid)
 
    doSummonMonster(cid, nome)
    local pk = getCreatureSummons(cid)[1]
 
    doTeleportThing(pk, oldpos, false)
    doCreatureSetLookDir(pk, oldlod)
 
   doRemoveItem(item.uid, 1)  
 
    doAddPokemonInOwnList(cid, nome)
 
    local happy = getItemAttribute(pokeball.uid, "happy")
 
    doItemSetAttribute(pokeball.uid, "happy", happy + happyGainedOnEvolution)
 
    if happy + happyGainedOnEvolution > 255 then
        doItemSetAttribute(pokeball.uid, "happy", 255)
    end
 
    adjustStatus(pk, pokeball.uid, true, false)
 
    if useKpdoDlls then
        doUpdateMoves(cid)
    end
    return true
end