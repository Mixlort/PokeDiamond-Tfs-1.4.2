local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerCloseChannel(cid) npcHandler:onPlayerCloseChannel(cid) end

npcHandler:addModule(FocusModule:new())

local function creatureGreetCallback(cid, message)
    local npc = Npc()
    local player = Player(cid)
    local pName = Player(cid):getName()
    for mon, l in ipairs(task_monsters) do
        if getCreatureName(getNpcCid():getId()) == l.nameNpc then
            dialog = "Ol� ".. pName ..". "..l.talk
            buttons = {
                {type = "Button", text = "Claro! Estou disposto a ajudar."},
                {type = "Button", text = "Receber recompensa"},
                {type = "Button", text = "Abandonar tarefa"},
            }
            doSendCallForNpc(npc, player, "HiNpc", "#0094eb", nil, dialog, buttons)
        end
    end
    return true
end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local npc = Npc()
    local player = Player(cid)
    if msg == 'Claro! Estou disposto a ajudar.' then
    	for mon, l in ipairs(task_monsters) do
    		if getCreatureName(getNpcCid():getId()) == l.nameNpc then
                dialog = "Excelente! preciso que voc� derrote "..getMonstersFromTableName(l.mons_list)..", voc� aceita essa miss�o?"
                buttons = {
                    {type = "Button", text = "Aceito! Vou come�ar a ca�ada agora mesmo."},
                }
                doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    		end
    	end
    elseif msg == 'Aceito! Vou come�ar a ca�ada agora mesmo.' then
    	if player:getStorageValue(task_sto_time) < os.time() then
    		if player:getStorageValue(task_storage) == -1 then 
    			for mon, l in ipairs(task_monsters) do

    				if player:getStorageValue(task_points) < 0 then
    					player:setStorageValue(task_points, 0)
    				end

    				if getCreatureName(getNpcCid():getId()) == l.nameNpc then
    					if player:getStorageValue(task_points) >= l.taskPointsNumber then
                            dialog = "Desculpe, mas voc� j� fez essa tarefa."
                            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                            npcHandler:releaseFocus(cid)
    						return true
    					end
    					if not (player:getStorageValue(task_points) == (l.taskPointsNumber)-1) then
                            dialog = "Desculpe, mas voc� tem que fazer outras tasks antes de poder fazer essa."
                            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                            npcHandler:releaseFocus(cid)
    						return true
    					end

                        dialog = "Ok, agora voc� est� fazendo a minha task! Voc� precisa matar "..getMonstersFromTableName(l.mons_list)..". Boa sorte!"
                        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)

    					player:setStorageValue(task_storage, mon)
                        getMonstersFromTable(player, 2, l.mons_list)
                        npcHandler:releaseFocus(cid)
    					break
    				elseif mon == #task_monsters then
                        dialog = "Desculpe, mas n�o temos essa tarefa."
                        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                        npcHandler:releaseFocus(cid)
                        return true
    				end
    			end
    		else
                dialog = "Voc� j� est� fazendo uma tarefa. Voc� s� pode fazer um de cada vez."
                doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                npcHandler:releaseFocus(cid)
                return true
    		end
    	else
            dialog = "N�o tenho permiss�o para lhe dar nenhuma tarefa porque voc� abandonou a anterior. Aguarde at� que as horas de puni��o "..task_time.." terminem."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
            npcHandler:releaseFocus(cid)
    	   return true
        end
    elseif msg == 'Receber recompensa' then
    	local ret_t = getTaskInfos(player)
    		if ret_t and getCreatureName(getNpcCid():getId()) == ret_t.nameNpc then
    			if getMonstersFromTable(player, 3, ret_t.mons_list) then
    				local pt1 = ret_t.pointsTask[1]
    				local pt2 = ret_t.pointsTask[2]
    				local txt = 'Obrigado por terminar a tarefa, seus pr�mios s�o: '..(pt1 > 1 and pt1..' task points' or pt1 <= 1 and pt1..' task point')..' e '..(pt2 > 1 and pt2..' rank points' or pt2 <= 1 and pt2..' rank point')..', '
    				if #getItemsFromTable(ret_t.items) > 0 then
    					txt = txt..'al�m de ganhar: '..getItemsFromTable(ret_t.items)..', '
        				for g = 1, #ret_t.items do
                            if ret_t.items[g].unique and ret_t.items[g].unique == true then
                                player:addUniqueItem(ret_t.items[g].id, ret_t.items[g].count)
                            else
                                player:addItem(ret_t.items[g].id, ret_t.items[g].count)
                            end
        				end
    				end
    				local exp = ret_t.exp
    				if exp > 0 then
    					txt = txt..'eu tamb�m vou te dar '..exp..'XP, '
    					player:addExperience(exp)
    				end
    				taskPoints_add(player, pt1)
    				taskRank_add(player, pt2)
    				player:setStorageValue(task_storage, -1)
                    dialog = txt..'obrigado novamente e at� mais!'
                    doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                    npcHandler:releaseFocus(cid)
                    return true
    			else
                    dialog = 'Voc� ainda n�o terminou sua tarefa atual completa. Voc� receber� quando terminar.'
                    doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                    npcHandler:releaseFocus(cid)
                    return true
    			end
    		else
                dialog = "Voc� n�o est� fazendo nenhuma tarefa comigo."
                doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
                npcHandler:releaseFocus(cid)
                return true
    		end
    elseif msg == 'Abandonar tarefa' then
        dialog = "Voc� quer mesmo abandonar sua task atual?"
        buttons = {
            {type = "Button", text = "Abandonar"},
        }
        doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, buttons)
    elseif msg == 'Abandonar' then
    	local ret_t = getTaskInfos(player)
    	if ret_t then
            dialog = 'Lament�vel essa situa��o, tinha f� que voc� me traria essa tarefa feita, mas me enganei. Como puni��o ser�o '..task_time..' horas sem poder fazer nenhuma tarefa.'
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
    		player:setStorageValue(task_sto_time, os.time()+task_time*60*60)
            getMonstersFromTable(player, 2, ret_t.mons_list)
    		player:setStorageValue(task_storage, -1)
            npcHandler:releaseFocus(cid)
            return true
    	else
            dialog = "Voc� n�o est� fazendo nenhuma tarefa para poder abandon�-la."
            doSendCallForNpc(npc, player, "conversation", "#0094eb", nil, dialog, nil)
            npcHandler:releaseFocus(cid)
            return true
    	end
    end
    return true
end

npcHandler:setCallback(CALLBACK_GREET, creatureGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)