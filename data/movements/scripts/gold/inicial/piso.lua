function onStepIn(cid, item, position, fromPosition)
          if getPlayerStorageValue(cid, 11138) <= 0 then
                    doTeleportThing(cid, fromPosition, TRUE)
					doPlayerSendTextMessage(cid, 26, "N�o � poss�vel passar.")
          end
          return TRUE
end