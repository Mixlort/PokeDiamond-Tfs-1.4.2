local teleport = {x=612, y=573, z=10} -- Coordenadas para onde o player ir� ser teleportado.
local item_id = 12162 -- ID do item que o player precisa para ser teleportado.
if getPlayerItemCount(cid,item_id) >= 1 then
doTeleportThing(cid, teleport)
doSendMagicEffect(getPlayerPosition(cid), 10)
doPlayerSendTextMessage(cid, 22, "Ok, vamos! Voc� sacrificou sua"..getItemNameById(item_id).."para fazer essa miss�o!")
else
doPlayerSendTextMessage(cid, 23, "Desculpe, voc� precisa de um"..getItemNameById(item_id).."entrar.")
end
end