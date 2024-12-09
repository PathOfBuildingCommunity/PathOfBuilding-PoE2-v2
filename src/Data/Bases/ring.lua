-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games
local itemBases = ...

itemBases["Golden Hoop"] = {
	type = "Ring",
	tags = { ring = true, demigods = true, not_for_sale = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(8-12) to all Attributes",
	implicitModTypes = { { "attribute" }, },
	req = { level = 12, },
}
itemBases["Iron Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "Adds 1 to 4 Physical Damage to Attacks",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { },
}
itemBases["Lazuli Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(20-30) to maximum Mana",
	implicitModTypes = { { "resource", "mana" }, },
	req = { },
}
itemBases["Ruby Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(20-30)% to Fire Resistance",
	implicitModTypes = { { "elemental", "fire", "resistance" }, },
	req = { level = 8, },
}
itemBases["Sapphire Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(20-30)% to Cold Resistance",
	implicitModTypes = { { "elemental", "cold", "resistance" }, },
	req = { level = 12, },
}
itemBases["Topaz Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(20-30)% to Lightning Resistance",
	implicitModTypes = { { "elemental", "lightning", "resistance" }, },
	req = { level = 16, },
}
itemBases["Amethyst Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(7-13)% to Chaos Resistance",
	implicitModTypes = { { "chaos", "resistance" }, },
	req = { level = 20, },
}
itemBases["Emerald Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(120-160) to Accuracy Rating",
	implicitModTypes = { { "attack" }, },
	req = { level = 26, },
}
itemBases["Pearl Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "(7-10)% increased Cast Speed",
	implicitModTypes = { { "caster", "speed" }, },
	req = { level = 32, },
}
itemBases["Prismatic Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "+(7-10)% to all Elemental Resistances",
	implicitModTypes = { { "elemental", "fire", "cold", "lightning", "resistance" }, },
	req = { level = 35, },
}
itemBases["Gold Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "(6-15)% increased Rarity of Items found",
	implicitModTypes = { {  }, },
	req = { level = 40, },
}
itemBases["Unset Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "Grants 1 additional Skill Slot",
	implicitModTypes = { {  }, },
	req = { level = 44, },
}
itemBases["Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicitModTypes = { },
	req = { },
}
itemBases["Breach Ring"] = {
	type = "Ring",
	tags = { ring = true, default = true, },
	influenceTags = { shaper = "ring_shaper", elder = "ring_elder", adjudicator = "ring_adjudicator", basilisk = "ring_basilisk", crusader = "ring_crusader", eyrie = "ring_eyrie", cleansing = "ring_cleansing", tangle = "ring_tangle" },
	implicit = "Maximum Quality is 50%",
	implicitModTypes = { {  }, },
	req = { level = 40, },
}
