function onUse(cid, item, frompos, item2, topos) -- N�o mecha.


storage = 224241 -- Storage a cada quest que for criada aumente um numero da storage pra qnd vc pegar o ba� de outra quest � aparecer que vc j� fez.
item = 7958 -- Id do item ira ganhar.
nomeitem = "Jester Staff" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
level = 150 -- Level que precisa pra fazer.

	if getPlayerLevel(cid) >= level then
	if getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� ganhou uma "..nomeitem..".") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

else -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� ja fez esta quest.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.
return true
end
else -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Quando tentar pegar mais de uma vez o ba�.
return true
end
return true
end