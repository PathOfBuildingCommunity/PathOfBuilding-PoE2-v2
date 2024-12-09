-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games
local itemBases = ...

itemBases["Broadhead Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "Adds 1 to 3 Physical Damage to Attacks",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { },
}
itemBases["Fire Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "Adds 3 to 5 Fire damage to Attacks",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	req = { level = 8, },
}
itemBases["Sacral Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "Gain (2-3) Life per Enemy Hit with Attacks",
	implicitModTypes = { { "resource", "life", "attack" }, },
	req = { level = 16, },
}
itemBases["Two-Point Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(20-30)% increased Accuracy Rating",
	implicitModTypes = { { "attack" }, },
	req = { level = 24, },
}
itemBases["Blunt Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(20-30)% reduced Enemy Stun Threshold",
	implicitModTypes = { {  }, },
	req = { level = 32, },
}
itemBases["Toxic Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(10-15)% chance to Poison on Hit with Attacks",
	implicitModTypes = { { "poison", "chaos", "attack", "ailment" }, },
	req = { level = 39, },
}
itemBases["Serrated Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "Attacks have (10-15)% chance to cause Bleeding",
	implicitModTypes = { { "bleed", "physical", "attack", "ailment" }, },
	req = { level = 44, },
}
itemBases["Primed Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(7-10)% increased Attack Speed",
	implicitModTypes = { { "attack", "speed" }, },
	req = { level = 51, },
}
itemBases["Penetrating Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "100% chance to Pierce an Enemy",
	implicitModTypes = { {  }, },
	req = { level = 55, },
}
itemBases["Volant Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(20-30)% increased Arrow Speed",
	implicitModTypes = { { "attack", "speed" }, },
	req = { level = 60, },
}
itemBases["Visceral Quiver"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	influenceTags = { shaper = "quiver_shaper", elder = "quiver_elder", adjudicator = "quiver_adjudicator", basilisk = "quiver_basilisk", crusader = "quiver_crusader", eyrie = "quiver_eyrie", cleansing = "quiver_cleansing", tangle = "quiver_tangle" },
	implicit = "(20-30)% increased Critical Hit Chance for Attacks",
	implicitModTypes = { { "attack", "critical" }, },
	req = { level = 64, },
}
