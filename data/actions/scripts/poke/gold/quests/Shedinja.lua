local btype = "ultra"
local pokemon = "Shedinja"
 
local storage = 243654651 -- storage
 
 
function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Shedinja ilegalmente")
return true
end
if pokemon == "" then return true end
if getPlayerStorageValue(cid, storage) <= 0 then
addPokeToPlayer(cid, pokemon, 0, nil, btype)
doPlayerSendTextMessage(cid, 22, "Rutual completo com sucesso, voce conseguiu um shedinja!")
doSendMagicEffect(getThingPos(cid), 29)
doSendMagicEffect(getThingPos(cid), 27)
doSendMagicEffect(getThingPos(cid), 29)
setPlayerStorageValue(cid, storage, 1)
else
doPlayerSendCancel(cid, "Voc� j� pegou seu pr�mio")
end
return TRUE
end