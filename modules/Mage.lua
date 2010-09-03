
local myname, Cork = ...
Cork.IHASCAT = select(4, GetBuildInfo()) >= 40000
local _, c = UnitClass("player")
if c ~= "MAGE" then return end


-- Armor
Cork:GenerateAdvancedSelfBuffer("Armor", {168, 7302, 6117, 30482})

-- Fuckus Magic
local spellname, _, icon = GetSpellInfo(54646)
Cork:GenerateLastBuffedBuffer(spellname, icon)

if not Cork.IHASCAT then
	-- Amplify Magic
	local spellname, _, icon = GetSpellInfo(1008)
	Cork:GenerateRaidBuffer(spellname, nil, icon, false)

	-- Dampen Magic
	local spellname, _, icon = GetSpellInfo(604)
	Cork:GenerateRaidBuffer(spellname, nil, icon, false)
end
