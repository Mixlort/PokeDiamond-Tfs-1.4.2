--[[
	Script: Exemplo de Quest
	Autor: MySticaL
	Email: matadormatou275@gmail.com
]]

	function onUse(cid, item, frompos, item2, topos) -- N�o mecha.

storage = 1147870 -- A CADA BAU AUMENTA 1 NUMERO, 1147852, 1147853, 1147854 ...
item = 11115 -- Id do item ira ganhar.
nomeitem = "Heart Backpack with items" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
level = 200 -- Level que precisa pra fazer.

	if getPlayerLevel(cid) >= level and getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid,22,"Voce ganhou uma " .. nomeitem .. "!") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
doPlayerAddItem(cid, 2160, 200) -- N�o mecha.
doPlayerAddItem(cid, 12618, 4) -- N�o mecha.
doPlayerAddItem(cid, 10503, 3) -- N�o mecha.
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

elseif getPlayerLevel(cid) <= level then -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.

elseif getPlayerStorageValue(cid,storage) >= 1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� pegou a recompensa") -- Quando tentar pegar mais de uma vez o ba�.
end
return true
end