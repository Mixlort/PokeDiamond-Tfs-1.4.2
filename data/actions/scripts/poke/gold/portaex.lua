local pos_room = {x=1038,y=576,z=7} 
local radius = 16
local Premio = {x=1038, y=556, z=7}
 
function getCreaturesInRange(position, radiusx, radiusy, showMonsters, showPlayers) 
    local creaturesList,radiusx,radiusy = {},radiusx or 0,radiusy or 0 
    for x = -radiusx, radiusx do 
        for y = -radiusy, radiusy do 
      local creature = getTopCreature({x = position.x+x, y = position.y+y, z = position.z, stackpos = STACKPOS_TOP_CREATURE}) 
         if (creature.type == 1 and showPlayers == true) or (creature.type == 2 and showMonsters == true) then 
            table.insert(creaturesList, creature.uid) 
         end 
        end 
    end 
    return creaturesList 
end 
 
function onUse(cid,item,pos) 
   if not(#getCreaturesInRange(pos_room, radius, radius, true) > 0)then 
         doTeleportThing(cid, Premio, true)  
		 doSendMagicEffect(getPlayerPosition(cid), 21)
		
		 return true
 
   else
   end
   doPlayerSendTextMessage(cid, 26, "Derrote todos os darkrai para sair do pesadelo ou reculha os pokemon para ball")
   return true 
end