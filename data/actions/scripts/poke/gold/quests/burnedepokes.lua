local item1 = "2318"
local item2 = "2159"
local item3 = "2174"
local btype = "normal"   ----Tipo de Pokeball 
local pokemon = "Shiny Rhyperior"  ----Pok�mon que vir� no bau

local storage = 90030 -- storage para nao pegar o premio + de 1 vez
 
 
function onUse(cid, item, frompos, topos)
-- if getPlayerGroupId(cid) >= 5 then
-- doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Burned ilegalmente")
-- return true
-- end
if getPlayerItemCount(cid,item1) >= 200 then
if getPlayerItemCount(cid,item2) >= 200 then
if getPlayerItemCount(cid,item3) >= 200 then

if pokemon == "" then return true end
if getPlayerStorageValue(cid, storage) <= 0 then
addPokeToPlayer(cid, pokemon, 0, nil, btype)
doPlayerRemoveItem(cid, item1, 200)
doPlayerRemoveItem(cid, item2, 200)
doPlayerRemoveItem(cid, item3, 200)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce pegou seu "..pokemon.."!!")    ----Mensagem que o player receber�
doSendMagicEffect(getThingPos(cid), 29)
doSendMagicEffect(getThingPos(cid), 27)
doSendMagicEffect(getThingPos(cid), 29)
doPlayerAddItem(cid, 2160, 0)      -----Items adicionais para vir no bau (no caso 100 Thousand Dolar Notes)
setPlayerStorageValue(cid, storage, 1)
else
doPlayerSendCancel(cid, "Voc� j� pegou seu Pok�mon") ---Mensagem q sera enviada quando o player tentar fazer a quest + de 1 vez
end
return true 
end
end

end
doPlayerSendTextMessage(cid, 26, "voce n�o tem todos os items")
return true
end