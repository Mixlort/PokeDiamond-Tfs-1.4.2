function onUse(cid, item, fromPosition, itemEx, toPosition)

local cfg = {
	pos = {x = 682, y = 2544, z = 8},
	

}

if getPlayerStorageValue(cid, 9876544) >= 1 then
doTeleportThing(cid, cfg.pos)
doSendMagicEffect(getPlayerPosition(cid), 21)
doPlayerSendTextMessage(cid, 25, "Bem Vindo")
return true
else
doPlayerSendCancel(cid, "Parece que aqui tem uma passagem, Mais voc� esta impossibilitado de passar")
return true
end
end