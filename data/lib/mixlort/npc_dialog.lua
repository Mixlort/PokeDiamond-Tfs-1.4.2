function doSendCallForNpc(npc, player, NpcType, colorName, NpcImage, dialogNpc, buttonsNpc)
  if buttonsNpc then
    for i, button in ipairs(buttonsNpc) do

      if button.rewards then
        for j, reward in ipairs(button.rewards) do
          reward.item = ItemType(reward.item):getClientId()
        end
      end

      if button.type and button.type == "itemsSelector" then
        button.id = ItemType(button.item):getClientId()
      end

      if button.creatures then
        for j, creature in ipairs(button.creatures) do
          creature.id = MonsterType(creature.name):getOutfit().lookType
        end
      end

      if button.poke then
        button.id = MonsterType(button.poke):getOutfit().lookType
      end

    end
  end
  local npcDialog = {}
  if type(npc) == 'string' then
    npcDialog = {
        npcInfo = {
            NpcName = {name = npc, color = colorName},
            type = NpcType,
            outfit = player:getOutfit(),
            image = NpcImage,
        },
        dialog = dialogNpc,
        Buttons = buttonsNpc,
    }
  else
    npcDialog = {
        npcInfo = {
            NpcName = {name = npc:getName(), color = colorName},
            type = NpcType,
            outfit = npc:getOutfit(),
            image = NpcImage,
        },
        dialog = dialogNpc,
        Buttons = buttonsNpc,
    }
  end
  player:sendExtendedOpcode(54, json.encode(npcDialog))
end
