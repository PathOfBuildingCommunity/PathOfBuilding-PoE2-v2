-- This file is automatically generated, do not edit!
-- Path of Building
--
-- Other active skills
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["MeleeUnarmedPlayer"] = {
	name = "Punch",
	hidden = true,
	color = 4,
	incrementalEffectiveness = 0.054999999701977,
	description = "Perform an Unarmed Strike.",
	skillTypes = { [SkillType.Attack] = true, [SkillType.MeleeSingleTarget] = true, [SkillType.Multistrikeable] = true, [SkillType.Melee] = true, [SkillType.Area] = true, },
	statDescriptionScope = "skill_stat_descriptions",
	castTime = 1,
	baseFlags = {
		attack = true,
		area = true,
		melee = true,
	},
	constantStats = {
		{ "melee_conditional_step_distance", 10 },
	},
	stats = {
		"is_area_damage",
	},
	levels = {
		[1] = { levelRequirement = 0, actorLevel = 1, },
		[2] = { levelRequirement = 3, actorLevel = 3.4519999027252, },
		[3] = { levelRequirement = 6, actorLevel = 6.7670001983643, },
		[4] = { levelRequirement = 10, actorLevel = 10.307999610901, },
		[5] = { levelRequirement = 14, actorLevel = 14.074999809265, },
		[6] = { levelRequirement = 18, actorLevel = 18.068000793457, },
		[7] = { levelRequirement = 22, actorLevel = 22.287000656128, },
		[8] = { levelRequirement = 26, actorLevel = 26.732000350952, },
		[9] = { levelRequirement = 31, actorLevel = 31.40299987793, },
		[10] = { levelRequirement = 36, actorLevel = 36.299999237061, },
		[11] = { levelRequirement = 41, actorLevel = 41.423000335693, },
		[12] = { levelRequirement = 46, actorLevel = 46.771999359131, },
		[13] = { levelRequirement = 52, actorLevel = 52.34700012207, },
		[14] = { levelRequirement = 58, actorLevel = 58.147998809814, },
		[15] = { levelRequirement = 64, actorLevel = 64.175003051758, },
		[16] = { levelRequirement = 66, actorLevel = 70.428001403809, },
		[17] = { levelRequirement = 72, actorLevel = 76.906997680664, },
		[18] = { levelRequirement = 78, actorLevel = 83.611999511719, },
		[19] = { levelRequirement = 84, actorLevel = 90.542999267578, },
		[20] = { levelRequirement = 90, actorLevel = 97.699996948242, },
		[21] = { levelRequirement = 90, actorLevel = 105.08300018311, },
		[22] = { levelRequirement = 90, actorLevel = 112.69200134277, },
		[23] = { levelRequirement = 90, actorLevel = 120.52700042725, },
		[24] = { levelRequirement = 90, actorLevel = 128.58799743652, },
		[25] = { levelRequirement = 90, actorLevel = 136.875, },
		[26] = { levelRequirement = 90, actorLevel = 145.38800048828, },
		[27] = { levelRequirement = 90, actorLevel = 154.12699890137, },
		[28] = { levelRequirement = 90, actorLevel = 163.09199523926, },
		[29] = { levelRequirement = 90, actorLevel = 172.28300476074, },
		[30] = { levelRequirement = 90, actorLevel = 181.69999694824, },
		[31] = { levelRequirement = 90, actorLevel = 191.34300231934, },
		[32] = { levelRequirement = 90, actorLevel = 201.21200561523, },
		[33] = { levelRequirement = 90, actorLevel = 211.30700683594, },
		[34] = { levelRequirement = 90, actorLevel = 221.62800598145, },
		[35] = { levelRequirement = 90, actorLevel = 232.17500305176, },
		[36] = { levelRequirement = 90, actorLevel = 242.94799804688, },
		[37] = { levelRequirement = 90, actorLevel = 253.94700622559, },
		[38] = { levelRequirement = 90, actorLevel = 265.17199707031, },
		[39] = { levelRequirement = 90, actorLevel = 276.62298583984, },
		[40] = { levelRequirement = 90, actorLevel = 288.29998779297, },
	},
}