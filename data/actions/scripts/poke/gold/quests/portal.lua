function onUse(cid, item, fromPosition, itemEx, toPosition)

local cfg = {
	pos = {x = 1762 , y = 840 , z = 9},
	

}

if getPlayerStorageValue(cid, 9876545) >= 1 then
doTeleportThing(cid, cfg.pos)
doSendMagicEffect(getPlayerPosition(cid), 21)
doPlayerSendTextMessage(cid, 25, "Boa Sorte")
return true
else
doPlayerSendCancel(cid, "Ainda n�o possivel abrir o portal para outra dimen��o")
return true
end
end