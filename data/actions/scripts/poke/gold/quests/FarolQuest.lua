function onUse(cid, item, fromPosition, itemEx, toPosition)

local cfg = {
	pos = {x = 719, y = 2654, z = 7},
	efeito = {x = 719, y = 2654, z = 7}

}

if getPlayerStorageValue(cid, 9876543) >= 1 then
doTeleportThing(cid, cfg.pos)
doSendMagicEffect(cfg.efeito, 21)
doPlayerSendTextMessage(cid, 25, "Bem Vindo")
return true
else
doPlayerSendCancel(cid, "Voc� precisa entregar todos os items primeiro")
return true
end
end