local storage = 150431 -- storage da outfit no xml


function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, storage) <= 0 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voc� Completou a quest jogador de futebol")
-- doTeleportThing(cid,{x=1062, y=855, z=7})
doSendMagicEffect(getThingPos(cid), 29)
setPlayerStorageValue(cid, storage, 1)
else
doPlayerSendCancel(cid, "Voc� j� pegou essa recompensa!!")
end
return true
end