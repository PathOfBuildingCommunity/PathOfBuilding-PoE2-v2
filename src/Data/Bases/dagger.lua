-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games
local itemBases = ...

itemBases["Ethereal Blade"] = {
	type = "Dagger",
	quality = 20,
	hidden = true,
	socketLimit = 2,
	tags = { onehand = true, not_for_sale = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 5, PhysicalMax = 10, CritChanceBase = 6, AttackRateBase = 1.5, Range = 10, },
	req = { },
}
itemBases["Glass Shank"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, ezomyte_basetype = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 3, PhysicalMax = 10, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { },
}
itemBases["Crone Knife"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, ezomyte_basetype = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicit = "Leeches 4% of Physical Damage as Mana",
	implicitModTypes = { { "resource", "mana", "physical", "attack" }, },
	weapon = { PhysicalMin = 4, PhysicalMax = 15, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 6, dex = 10, int = 10, },
}
itemBases["Simple Dagger"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, ezomyte_basetype = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 8, PhysicalMax = 19, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 12, dex = 18, int = 18, },
}
itemBases["Skinning Knife"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { maraketh_basetype = true, onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 8, PhysicalMax = 22, CritChanceBase = 13.5, AttackRateBase = 1.65, Range = 10, },
	req = { level = 16, dex = 22, int = 22, },
}
itemBases["Moon Dagger"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { maraketh_basetype = true, onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { ColdMin = 11, ColdMax = 26, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 20, dex = 27, int = 27, },
}
itemBases["Engraved Knife"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { maraketh_basetype = true, onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 11, PhysicalMax = 34, CritChanceBase = 13.5, AttackRateBase = 1.55, Range = 10, },
	req = { level = 27, dex = 36, int = 36, },
}
itemBases["Obsidian Dagger"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, vaal_basetype = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 13, PhysicalMax = 39, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 33, dex = 43, int = 43, },
}
itemBases["Bloodletting Dagger"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, vaal_basetype = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicit = "25% of Spell Mana Cost Converted to Life Cost",
	implicitModTypes = { {  }, },
	weapon = { PhysicalMin = 18, PhysicalMax = 42, CritChanceBase = 15, AttackRateBase = 1.5, Range = 10, },
	req = { level = 39, dex = 50, int = 50, },
}
itemBases["Mail Breaker"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicit = "Breaks (400-500) Armour on Critical Hit",
	implicitModTypes = { {  }, },
	weapon = { PhysicalMin = 19, PhysicalMax = 44, CritChanceBase = 15, AttackRateBase = 1.5, Range = 10, },
	req = { level = 45, dex = 57, int = 57, },
}
itemBases["Kris Knife"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 16, PhysicalMax = 48, CritChanceBase = 15, AttackRateBase = 1.65, Range = 10, },
	req = { level = 49, dex = 62, int = 62, },
}
itemBases["Parrying Dagger"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 16, PhysicalMax = 55, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 52, dex = 66, int = 66, },
}
itemBases["Arcane Dirk"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 22, PhysicalMax = 52, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 56, dex = 71, int = 71, },
}
itemBases["Cinquedea"] = {
	type = "Dagger",
	quality = 20,
	socketLimit = 2,
	tags = { onehand = true, one_hand_weapon = true, weapon = true, dagger = true, default = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 21, PhysicalMax = 62, CritChanceBase = 15, AttackRateBase = 1.55, Range = 10, },
	req = { level = 65, dex = 81, int = 81, },
}
