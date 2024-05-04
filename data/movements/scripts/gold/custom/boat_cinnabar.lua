-- Train System 1.0 by Dino
local m = {
        storage = 4592, -- Cinnabar
	place1 = { x = 1341, y = 1355, z = 7}, -- Aqui va el lugar que te llevara despues de x tiempo
        cancel = "You need to buy a ticket for travel by ship.", -- Mensaje para abortar
        success = "Welcome, please stay in place while you reach the desired location.", -- Mensaje para abortar
	place = { x = 1143, y = 1385, z = 9} -- Aqui va el lugar que te llevara al instante
}

function tp(cid) 
     doSendMagicEffect(getThingPos(cid),66)
          setPlayerStorageValue(cid, m.storage, -1)       
         return true
    end

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
		if (getCreatureStorage(cid, m.storage) == 1) == TRUE then
			doTeleportThing(cid, m.place)
            addEvent(tp, 15000)
			addEvent(doTeleportThing, 15000, cid:getId(), m.place1)
            doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, m.success)
			doPlayerSendTextMessage(cid,25,"You're currently traveling to vermilion.")
			setPlayerStorageValue(cid, m.storage, -1)
		elseif (getCreatureStorage(cid, m.storage) == 1) == FALSE then
				doTeleportThing(cid, fromPosition)
				doPlayerSendCancel(cid, m.cancel)
		end
	return true
end