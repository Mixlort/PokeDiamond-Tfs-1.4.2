function onCastSpell(cid, var)

    ----Novo padrão by Mixlort---------------------------------------------------------------------

    if hasSummons(cid) then
        cid = cid:getSummon()
    end
    
    local baseSpell = mixlortBaseSpell(cid, var.string)
    if not baseSpell then
        print("Erro novo sistema de spells: "..var.string)
        -- return true
    end
    if baseSpell == "true" then
        return true
    elseif baseSpell == "false" then
        return false
    end

    local spell = var.string
    local min = baseSpell.min or 0
    local max = baseSpell.max or 0
    local target = baseSpell.target or cid
    local getDistDelay = baseSpell.getDistDelay or 0

     --Posições--
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ----Novo padrão by Mixlort---------------------------------------------------------------------

   if getPlayerStorageValue(cid, 32623) == 1 then
   return true
   end

   setPlayerStorageValue(cid, 32623, 1)

   if isInArray({"Persian", "Raticate", "Shiny Raticate"}, getSubName(cid, target)) then  --alterado v1.6.1
      doRaiseStatus(cid, 1.5, 0, 0, 10)
   else                                               --alterado v1.5 
      doRaiseStatus(cid, 1.5, 1.5, 0, 10)     --ver isso
   end
            
   for t = 1, 7 do                  --alterado v1.5
       addEvent(sendMoveEffect, t*1500, cid:getId(), 12)
   end
   addEvent(setPlayerStorageValue, 10500, cid:getId(), 32623, 0) --alterado v1.8
   
return true
end