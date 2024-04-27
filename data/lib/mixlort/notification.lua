NOTIFICATION_OPCODE = 81

function getOutfitOtclient(outfit)
	return {
		type    = tonumber(outfit.lookType)   or 0,
		feet    = tonumber(outfit.lookFeet)   or 0,
		addons  = tonumber(outfit.lookAddons) or 0,
		legs    = tonumber(outfit.lookLegs)   or 0,
		auxType = tonumber(outfit.lookTypeEx) or 0,
		head    = tonumber(outfit.lookHead)   or 0,
		body    = tonumber(outfit.lookBody)   or 0,
	}
end

function doPlayerSendNotification(cid, message, params)
	local data = { message = message, timer = 12 }

	if ( params ) then
		if ( params.itemId ) then
			data.itemId = ItemType(params.itemId):getClientId()
		elseif ( params.lookType ) then
			data.outfit = getOutfitOtclient({ lookType = params.lookType })
		elseif ( params.image ) then
			data.image = params.image
		end
		
		if ( params.timer ) then
			data.timer = params.timer
		end
	end
	
	doSendPlayerExtendedOpcode(cid, NOTIFICATION_OPCODE, json.encode({data = data}))
end