local btype = "normal"
local pokemon = "Porygon"
 local storage = 314250
 
 
function onUse(cid, item, frompos, item2, topos)

if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Porygon ilegalmente")
return true
end

if pokemon == "" then return true end
if getPlayerStorageValue(cid, storage) <= 0 then
addPokeToPlayer(cid, pokemon, 0, nil, btype)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voc� terminou a Quest Porygon!")
setPlayerStorageValue(cid, storage, 1)
else
doPlayerSendCancel(cid, "Voc� j� fez est� quest")
end
return TRUE
end