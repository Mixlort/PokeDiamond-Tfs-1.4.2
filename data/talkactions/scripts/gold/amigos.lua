function onSay(cid, words, param)

if exhaustion.check(cid, 2123) then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� precisa esperar para enviar.")

return true

end

if #param <= 1 then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua sugest�o precisa pelo menos ter 1 letras.")

return true

end

local file = io.open("./datapack/logs/sug/amigos.txt", "a")

file:write("\n"..getPlayerName(cid)..": deu uma sugest�o ("..param..")")

file:close()

setGlobalStorageValue(28211, getGlobalStorageValue(28211)+1)

exhaustion.set(cid, 2123, 36000)

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua sugest�o de amisade foi enviada com sucesso, obrigado pela colabora��o!")

for _, id in ipairs(getPlayersOnline()) do

if getPlayerGroupId(cid) > 5 then

exhaustion.set(cid, 2123, 36000)

return true

end

return true

end

end
