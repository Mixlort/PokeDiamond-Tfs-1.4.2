--[[
	Script: Exemplo de Quest
	Autor: MySticaL
	Email: matadormatou275@gmail.com
]]

	function onUse(cid, item, frompos, item2, topos) -- N�o mecha.

if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Black stone ilegalmente")
return true
end
storage = 66420 -- Storage a cada quest que for criada aumente um numero da storage pra qnd vc pegar o ba� de outra quest � aparecer que vc j� fez.
item = 4852 -- Id do item ira ganhar.
nomeitem = "Black Stone" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
level = 350 -- Level que precisa pra fazer.

	if getPlayerLevel(cid) >= level and getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� encontrou o SEGUNDO amuleto que um dia pertenceu aos s�bios. Falta pouco para desvendar o MIST�RIO! 2/2") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

elseif getPlayerLevel(cid) <= level then -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.

elseif getPlayerStorageValue(cid,storage) >= 1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� j� fez est� quest") -- Quando tentar pegar mais de uma vez o ba�.
end
return true
end