local btype = "normal"
local pokemon = "Magnezone"
 local storage = 2432455
 
 
function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Specialist ilegalmente")
return true
end
if getPlayerStorageValue(cid, 224241) >= 1 then


if pokemon == "" then return true end
if getPlayerStorageValue(cid, storage) <= 0 then
addPokeToPlayer(cid, pokemon, 0, nil, btype)
doPlayerAddItem(cid, 2365)
doPlayerSendTextMessage(cid, 22, "Parab�ns, troca concluida com sucesso, voce recebeu um "..pokemon.." como premio !")
doSendMagicEffect(getThingPos(cid), 29)
doSendMagicEffect(getThingPos(cid), 27)
doSendMagicEffect(getThingPos(cid), 29)
setPlayerStorageValue(cid, storage, 1)
else
doPlayerSendCancel(cid, "Voc� j� fez est� quest")
end
return TRUE
end
return true
end