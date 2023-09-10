function _print(message)
	DEFAULT_CHAT_FRAME:AddMessage(tostring(message));
end

local spellsToTrigger = {
    "Web Spin", "Thundershock", "Paralyzing Poison", "Ice Tomb", "Chest Pains", "Rhahk'Zor Slam",
    "Gust of Wind", "Ground Smash", "Might of Shahram", "Crystal Gaze", "Crash of Waves", "Fel Stomp",
    "Crystal Flash", "Wide Swipe", "Charge Stun", "Crystallize", "Crusader's Hammer", "Hand of Ragnaros",
    "Glacial Roar", "Kodo Stomp", "Smite Slam", "Axe Toss", "Ground Tremor", "Shadowstalker Slash",
    "Thundercrack", "Stun Bomb", "Flash Freeze", "Scald", "Brunind Winds", "Pyroclast Barrage",
    "Touch of Ravenclaw", "Freeze Solid", "Throw Axe", "Stormbolt", "Ground Stomp", "Highlord's Justice",
    "Storm Bolt", "War Stomp", "Cheap Shot", "Kidney Shot", "Pounce", "Hammer of Justice", "Bash", "Kidney Shot",
    "Starfire Stun", "Intimidation", "Improved Concussive Shot", "Impact", "Blackout", "Mace Stun Effect",
    "Gouge", "Sap", "Seduction", "Concussion Blow", "Intercept Stun", "Knockdown", "Thorium Grenade", 
    "M73 Frag Grenade", "Rough Copper Bomb", "Big Bronze Bomb", "Iron Grenade", "Big Iron Bomb", "Hi-Explosive Bomb", 
    "Goblin Mortar", "Sleep", "Tidal Charm", "Reckless Charge", "Earthshaker", "Stun", "Malown's Slam", "Stunning Blow"
}


local frame = CreateFrame("Frame");
frame:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE");
frame:RegisterEvent("CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE");

frame:SetScript("OnEvent", function()
  if not arg1 then return end
  
  local i, j = string.find(arg1, "was resisted");
  
  if i ~= nil then
	for index, spell in spellsToTrigger do
		local k, l = string.find(arg1, spell);
		if k ~= nil then
			DoEmote("roar");
			break;
		end
	end
  end
 end);
