function onUse(cid, item, frompos, item2, topos) -- N�o mecha.
if getPlayerGroupId(cid) >= 5 then
doBroadcastMessage("o "..getCreatureName(cid).." esta tentando fazer a quest Conquest ilegalmente")
return true
end

storage = 95148455 -- Storage a cada quest que for criada aumente um numero da storage pra qnd vc pegar o ba� de outra quest � aparecer que vc j� fez.
item = 2183 -- Id do item ira ganhar.
item2 = 13381 --- item 2
nomeitem = "Addon Box" -- Nome do item
nomeitem2 = "Cursed Soul" -- Nome do item
quantidade = 1 -- Quantidade ira ganhar.
quantidade2 = 1 -- Quantidade ira ganhar.
level = 150 -- Level que precisa pra fazer.

if getPlayerLevel(cid) >= level and getPlayerStorageValue(cid,storage) == -1 then -- N�o mecha.
doPlayerSendTextMessage(cid,25,"Voc� completou a quest e recebeu uma "..nomeitem.." e uma "..nomeitem2.." !") -- Mensagem que aparecera quando ganhar o item.
doPlayerAddItem(cid, item, quantidade) -- N�o mecha.
doPlayerAddItem(cid, item2, quantidade2) -- N�o mecha.
setPlayerStorageValue(cid,storage,1) -- N�o mecha.

elseif getPlayerLevel(cid) <= level then -- N�o mecha
doPlayerSendTextMessage(cid,25,"Voc� precisa ser level "..level.." ou mais.") -- Mensagem que ira aparecer se o player tiver menos level que o necessario.

elseif getPlayerStorageValue(cid,storage) >= 1 then -- N�o mecha.
doPlayerSendTextMessage(cid,22,"Voc� ja pegou oque estava detro") -- Quando tentar pegar mais de uma vez o ba�.
end
return true
end