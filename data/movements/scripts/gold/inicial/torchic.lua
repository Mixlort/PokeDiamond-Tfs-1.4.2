function onStepIn(cid, item, frompos, item2, topos)

local lukasfodao = {
	poke = "Torchic",
	ball = "normal",
	storage = 453454,
	pos = {x = 1038, y = 1035, z = 7}

}

	if getPlayerStorageValue(cid, lukasfodao.storage) <= 0 then
		addPokeToPlayer(cid, lukasfodao.poke, 0, gender, lukasfodao.ball)
		doPlayerAddItem(cid, 2394, 20) 
		doPlayerAddItem(cid, 2148, 50) 
		doPlayerAddLevel(cid,7)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Pronto, agora voc� j� est� pronto para come�ar sua jornada, para usar seu pok�mon mova a pokeball para o Slot e clique em Use!")
		doPlayerSendTextMessage(cid, 22, lukasfodao.poke)
		doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
		doSendMagicEffect(getThingPos(cid), 21)
		setPlayerStorageValue(cid, lukasfodao.storage, 1)
	else
		doPlayerSendCancel(cid, "Voc� j� pegou seu pok�mon inicial :)")
	end
		return true
end