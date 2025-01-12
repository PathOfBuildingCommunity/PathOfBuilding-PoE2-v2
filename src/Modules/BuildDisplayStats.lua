-- Path of Building
--
-- Module: Build Display Stats
-- Loads the displayStats and extraSaveStats.
--
-- This defines the stats in the side bar, and also which stats show in node/item comparisons
-- This may be user-customisable in the future


local displayStats = {
	{ stat = "ActiveMinionLimit", label = "Active Minion Limit", fmt = "d" },
	{ stat = "AverageHit", label = "Average Hit", fmt = ".1f", compPercent = true },
	{ stat = "PvpAverageHit", label = "PvP Average Hit", fmt = ".1f", compPercent = true, flag = "isPvP" },
	{ stat = "AverageDamage", label = "Average Damage", fmt = ".1f", compPercent = true, flag = "attack" },
	{ stat = "AverageDamage", label = "Average Damage", fmt = ".1f", compPercent = true, flag = "monsterExplode", condFunc = function(v,o) return o.HitChance ~= 100 end },
	{ stat = "AverageBurstDamage", label = "Average Burst Damage", fmt = ".1f", compPercent = true, condFunc = function(v,o) return o.AverageBurstHits and o.AverageBurstHits > 1 and v > 0 end },
	{ stat = "PvpAverageDamage", label = "PvP Average Damage", fmt = ".1f", compPercent = true, flag = "attackPvP" },
	{ stat = "Speed", label = "Attack Rate", fmt = ".2f", compPercent = true, flag = "attack", condFunc = function(v,o) return v > 0 and (o.TriggerTime or 0) == 0 end },
	{ stat = "Speed", label = "Cast Rate", fmt = ".2f", compPercent = true, flag = "spell", condFunc = function(v,o) return v > 0 and (o.TriggerTime or 0) == 0 end },
	{ stat = "Speed", label = "Effective Trigger Rate", fmt = ".2f", compPercent = true, condFunc = function(v,o) return (o.TriggerTime or 0) ~= 0 end },
	{ stat = "WarcryCastTime", label = "Cast Time", fmt = ".2fs", compPercent = true, lowerIsBetter = true, flag = "warcry" },
	{ stat = "HitSpeed", label = "Hit Rate", fmt = ".2f", compPercent = true, condFunc = function(v,o) return not o.TriggerTime end },
	{ stat = "HitTime", label = "Channel Time", fmt = ".2fs", compPercent = true, flag = "channelRelease", lowerIsBetter = true, condFunc = function(v,o) return not o.TriggerTime end },
	{ stat = "ChannelTimeToTrigger", label = "Channel Time", fmt = ".2fs", compPercent = true, lowerIsBetter = true, },
	{ stat = "TrapThrowingTime", label = "Trap Throwing Time", fmt = ".2fs", compPercent = true, lowerIsBetter = true, },
	{ stat = "TrapCooldown", label = "Trap Cooldown", fmt = ".3fs", lowerIsBetter = true },
	{ stat = "MineLayingTime", label = "Mine Throwing Time", fmt = ".2fs", compPercent = true, lowerIsBetter = true, },
	{ stat = "TrapThrowCount", label = "Avg. Traps per Throw", fmt = ".2f"},
	{ stat = "MineThrowCount", label = "Avg. Mines per Throw", fmt = ".2f"},
	{ stat = "TotemPlacementTime", label = "Totem Placement Time", fmt = ".2fs", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return not o.TriggerTime end },
	{ stat = "PreEffectiveCritChance", label = "Crit Chance", fmt = ".2f%%", flag = "hit" },
	{ stat = "CritChance", label = "Effective Crit Chance", fmt = ".2f%%", flag = "hit", condFunc = function(v,o) return v ~= o.PreEffectiveCritChance end },
	{ stat = "CritMultiplier", label = "Crit Multiplier", fmt = "d%%", pc = true, condFunc = function(v,o) return (o.CritChance or 0) > 0 end },
	{ stat = "HitChance", label = "Hit Chance", fmt = ".0f%%", flag = "attack" },
	{ stat = "HitChance", label = "Hit Chance", fmt = ".0f%%", condFunc = function(v,o) return o.enemyHasSpellBlock end },
	{ stat = "TotalDPS", label = "Hit DPS", fmt = ".1f", compPercent = true, flag = "notAverage" },
	{ stat = "PvpTotalDPS", label = "PvP Hit DPS", fmt = ".1f", compPercent = true, flag = "notAveragePvP" },
	{ stat = "TotalDPS", label = "Hit DPS", fmt = ".1f", compPercent = true, flag = "showAverage", condFunc = function(v,o) return (o.TriggerTime or 0) ~= 0 end },
	{ stat = "TotalDot", label = "DoT DPS", fmt = ".1f", compPercent = true },
	{ stat = "WithDotDPS", label = "Total DPS inc. DoT", fmt = ".1f", compPercent = true, flag = "notAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.PoisonDPS or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "BleedDPS", label = "Bleed DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Bleed DPS exceeds in game limit" end },
	{ stat = "CorruptingBloodDPS", label = "Corrupting Blood DPS", fmt = ".1f", compPercent = true, warnFunc = function(v,o) return v >= data.misc.DotDpsCap and "Corrupting Blood DPS exceeds in game limit" end },
	{ stat = "BleedDamage", label = "Total Damage per Bleed", fmt = ".1f", compPercent = true, flag = "showAverage" },
	{ stat = "WithBleedDPS", label = "Total DPS inc. Bleed", fmt = ".1f", compPercent = true, flag = "notAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.IgniteDPS or 0) == 0 end },
	{ stat = "IgniteDPS", label = "Ignite DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Ignite DPS exceeds in game limit" end },
	{ stat = "IgniteDamage", label = "Total Damage per Ignite", fmt = ".1f", compPercent = true, flag = "showAverage" },
	{ stat = "BurningGroundDPS", label = "Burning Ground DPS", fmt = ".1f", compPercent = true, warnFunc = function(v,o) return v >= data.misc.DotDpsCap and "Burning Ground DPS exceeds in game limit" end },
	{ stat = "MirageBurningGroundDPS", label = "Mirage Burning Ground DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.BurningGroundDPS end, warnFunc = function(v,o) return v >= data.misc.DotDpsCap and "Mirage Burning Ground DPS exceeds in game limit" end },
	{ stat = "WithIgniteDPS", label = "Total DPS inc. Ignite", fmt = ".1f", compPercent = true, flag = "notAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "PoisonDPS", label = "Poison DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Poison DPS exceeds in game limit" end },
	{ stat = "CausticGroundDPS", label = "Caustic Ground DPS", fmt = ".1f", compPercent = true, warnFunc = function(v,o) return v >= data.misc.DotDpsCap and "Caustic Ground DPS exceeds in game limit" end },
	{ stat = "MirageCausticGroundDPS", label = "Mirage Caustic Ground DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.CausticGroundDPS end, warnFunc = function(v,o) return v >= data.misc.DotDpsCap and "Mirage Caustic Ground DPS exceeds in game limit" end },
	{ stat = "PoisonDamage", label = "Total Damage per Poison", fmt = ".1f", compPercent = true, flag = "showAverage" },
	{ stat = "WithPoisonDPS", label = "Total DPS inc. Poison", fmt = ".1f", compPercent = true, flag = "notAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "DecayDPS", label = "Decay DPS", fmt = ".1f", compPercent = true },
	{ stat = "TotalDotDPS", label = "Total DoT DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return o.showTotalDotDPS or ( v ~= o.TotalDot and v ~= o.TotalPoisonDPS and v ~= o.CausticGroundDPS and v ~= (o.TotalIgniteDPS or o.IgniteDPS) and v ~= o.BurningGroundDPS and v ~= o.BleedDPS and v~= o.CorruptingBloodDPS and v ~= o.MirageCausticGroundDPS and v ~= o.MirageBurningGroundDPS) end, warnFunc = function(v) return v >= data.misc.DotDpsCap and "DoT DPS exceeds in game limit" end },
	{ stat = "ImpaleDPS", label = "Impale Damage", fmt = ".1f", compPercent = true, flag = "impale", flag = "showAverage" },
	{ stat = "WithImpaleDPS", label = "Damage inc. Impale", fmt = ".1f", compPercent = true, flag = "impale", flag = "showAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end  },
	{ stat = "ImpaleDPS", label = "Impale DPS", fmt = ".1f", compPercent = true, flag = "impale", flag = "notAverage" },
	{ stat = "WithImpaleDPS", label = "Total DPS inc. Impale", fmt = ".1f", compPercent = true, flag = "impale", flag = "notAverage", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "MirageDPS", label = "Total Mirage DPS", fmt = ".1f", compPercent = true, flag = "mirageArcher", condFunc = function(v,o) return v > 0 end },
	{ stat = "MirageDPS", label = "Total Wisp DPS", fmt = ".1f", compPercent = true, flag = "wisp", condFunc = function(v,o) return v > 0 end },
	{ stat = "CullingDPS", label = "Culling DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return (o.CullingDPS or 0) > 0 end },
	{ stat = "ReservationDPS", label = "Reservation DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return (o.ReservationDPS or 0) > 0 end },
	{ stat = "CombinedDPS", label = "Combined DPS", fmt = ".1f", compPercent = true, flag = "notAverage", condFunc = function(v,o) return v ~= ((o.TotalDPS or 0) + (o.TotalDot or 0)) and v ~= o.WithImpaleDPS and ( o.showTotalDotDPS or ( v ~= o.WithPoisonDPS and v ~= o.WithIgniteDPS and v ~= o.WithBleedDPS ) ) end },
	{ stat = "CombinedAvg", label = "Combined Total Damage", fmt = ".1f", compPercent = true, flag = "showAverage", condFunc = function(v,o) return (v ~= o.AverageDamage and (o.TotalDot or 0) == 0) and (v ~= o.WithPoisonDPS or v ~= o.WithIgniteDPS or v ~= o.WithBleedDPS) end },
	{ stat = "ExplodeChance", label = "Total Explode Chance", fmt = ".0f%%" },
	{ stat = "CombinedAvgToMonsterLife", label = "Enemy Life Equivalent", fmt = ".1f%%" },
	{ stat = "Cooldown", label = "Skill Cooldown", fmt = ".3fs", lowerIsBetter = true },
	{ stat = "SealCooldown", label = "Seal Gain Frequency", fmt = ".2fs", lowerIsBetter = true },
	{ stat = "SealMax", label = "Max Number of Seals", fmt = "d" },
	{ stat = "TimeMaxSeals", label = "Time to Gain Max Seals", fmt = ".2fs", lowerIsBetter = true },
	{ stat = "AreaOfEffectRadiusMetres", label = "AoE Radius", fmt = ".1fm" },
	{ stat = "BrandAttachmentRangeMetre", label = "Attachment Range", fmt = ".1fm", flag = "brand" },
	{ stat = "BrandTicks", label = "Activations per Brand", fmt = "d", flag = "brand" },
	{ stat = "ManaCost", label = "Mana Cost", fmt = "d", color = colorCodes.MANA, pool = "ManaUnreserved", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ManaHasCost end },
	{ stat = "ManaPercentCost", label = "Mana Cost", fmt = "d%%", color = colorCodes.MANA, pool = "ManaUnreservedPercent", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ManaPercentHasCost end },
	{ stat = "ManaPerSecondCost", label = "Mana Cost per second", fmt = ".2f", color = colorCodes.MANA, pool = "ManaUnreserved", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ManaPerSecondHasCost end },
	{ stat = "ManaPercentPerSecondCost", label = "Mana Cost per second", fmt = ".2f%%", color = colorCodes.MANA, pool = "ManaUnreservedPercent", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ManaPercentPerSecondHasCost end },
	{ stat = "LifeCost", label = "Life Cost", fmt = "d", color = colorCodes.LIFE, pool = "LifeUnreserved", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.LifeHasCost end },
	{ stat = "LifePercentCost", label = "Life Cost", fmt = "d%%", color = colorCodes.LIFE, pool = "LifeUnreservedPercent", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.LifePercentHasCost end },
	{ stat = "LifePerSecondCost", label = "Life Cost per second", fmt = ".2f", color = colorCodes.LIFE, pool = "LifeUnreserved", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.LifePerSecondHasCost end },
	{ stat = "LifePercentPerSecondCost", label = "Life Cost per second", fmt = ".2f%%", color = colorCodes.LIFE, pool = "LifeUnreservedPercent", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.LifePercentPerSecondHasCost end },
	{ stat = "ESCost", label = "Energy Shield Cost", fmt = "d", color = colorCodes.ES, pool = "EnergyShield", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ESHasCost end },
	{ stat = "ESPerSecondCost", label = "ES Cost per second", fmt = ".2f", color = colorCodes.ES, pool = "EnergyShield", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ESPerSecondHasCost end },
	{ stat = "ESPercentPerSecondCost", label = "ES Cost per second", fmt = ".2f%%", color = colorCodes.ES, compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.ESPercentPerSecondHasCost end },
	{ stat = "RageCost", label = "Rage Cost", fmt = "d", color = colorCodes.RAGE, pool = "Rage", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.RageHasCost end },
	{ stat = "RagePerSecondCost", label = "Rage Cost per second", fmt = ".2f", color = colorCodes.RAGE, pool = "Rage", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.RagePerSecondHasCost end },
	{ stat = "SoulCost", label = "Soul Cost", fmt = "d", color = colorCodes.RAGE, pool = "Soul", compPercent = true, lowerIsBetter = true, condFunc = function(v,o) return o.SoulHasCost end },
	{ },
	{ stat = "Str", label = "Strength", color = colorCodes.STRENGTH, fmt = "d" },
	{ stat = "ReqStr", label = "Strength Required", color = colorCodes.STRENGTH, fmt = "d", lowerIsBetter = true, condFunc = function(v,o) return v > o.Str end, warnFunc = function(v,o) return "You do not meet the Strength requirement of " .. (o.ReqStrItem.source == "Item" and o.ReqStrItem.sourceItem.name or o.ReqStrItem.source == "Gem" and o.ReqStrItem.sourceGem.nameSpec) end },
	{ stat = "Dex", label = "Dexterity", color = colorCodes.DEXTERITY, fmt = "d" },
	{ stat = "ReqDex", label = "Dexterity Required", color = colorCodes.DEXTERITY, fmt = "d", lowerIsBetter = true, condFunc = function(v,o) return v > o.Dex end, warnFunc = function(v,o) return "You do not meet the Dexterity requirement of " .. (o.ReqDexItem.source == "Item" and o.ReqDexItem.sourceItem.name or o.ReqDexItem.source == "Gem" and o.ReqDexItem.sourceGem.nameSpec) end },
	{ stat = "Int", label = "Intelligence", color = colorCodes.INTELLIGENCE, fmt = "d" },
	{ stat = "ReqInt", label = "Intelligence Required", color = colorCodes.INTELLIGENCE, fmt = "d", lowerIsBetter = true, condFunc = function(v,o) return v > o.Int end, warnFunc = function(v,o) return "You do not meet the Intelligence requirement of " .. (o.ReqIntItem.source == "Item" and o.ReqIntItem.sourceItem.name or o.ReqIntItem.source == "Gem" and o.ReqIntItem.sourceGem.nameSpec) end },
	{ },
	{ stat = "Devotion", label = "Devotion", color = colorCodes.RARE, fmt = "d" },
	{ },
	{ stat = "TotalEHP", label = "Effective Hit Pool", fmt = ".0f", compPercent = true },
	{ stat = "PvPTotalTakenHit", label = "PvP Hit Taken", fmt = ".1f", flag = "isPvP", lowerIsBetter = true },
	{ stat = "PhysicalMaximumHitTaken", label = "Phys Max Hit", fmt = ".0f", color = colorCodes.PHYS, compPercent = true,  },
	{ stat = "LightningMaximumHitTaken", label = "Elemental Max Hit", fmt = ".0f", color = colorCodes.LIGHTNING, compPercent = true, condFunc = function(v,o) return o.LightningMaximumHitTaken == o.ColdMaximumHitTaken and o.LightningMaximumHitTaken == o.FireMaximumHitTaken end },
	{ stat = "FireMaximumHitTaken", label = "Fire Max Hit", fmt = ".0f", color = colorCodes.FIRE, compPercent = true, condFunc = function(v,o) return o.LightningMaximumHitTaken ~= o.ColdMaximumHitTaken or o.LightningMaximumHitTaken ~= o.FireMaximumHitTaken end },
	{ stat = "ColdMaximumHitTaken", label = "Cold Max Hit", fmt = ".0f", color = colorCodes.COLD, compPercent = true, condFunc = function(v,o) return o.LightningMaximumHitTaken ~= o.ColdMaximumHitTaken or o.LightningMaximumHitTaken ~= o.FireMaximumHitTaken end },
	{ stat = "LightningMaximumHitTaken", label = "Lightning Max Hit", fmt = ".0f", color = colorCodes.LIGHTNING, compPercent = true, condFunc = function(v,o) return o.LightningMaximumHitTaken ~= o.ColdMaximumHitTaken or o.LightningMaximumHitTaken ~= o.FireMaximumHitTaken end },
	{ stat = "ChaosMaximumHitTaken", label = "Chaos Max Hit", fmt = ".0f", color = colorCodes.CHAOS, compPercent = true },
	{ },
	{ stat = "MainHand", childStat = "Accuracy", label = "MH Accuracy", fmt = "d", condFunc = function(v,o) return o.PreciseTechnique end, warnFunc = function(v,o) return v < o.Life and "You do not have enough Accuracy for Precise Technique" end, warnColor = true },
	{ stat = "OffHand", childStat = "Accuracy", label = "OH Accuracy", fmt = "d", condFunc = function(v,o) return o.PreciseTechnique end, warnFunc = function(v,o) return v < o.Life and "You do not have enough Accuracy for Precise Technique" end, warnColor = true },
	{ stat = "Life", label = "Total Life", fmt = "d", color = colorCodes.LIFE, compPercent = true },
	{ stat = "Spec:LifeInc", label = "%Inc Life from Tree", fmt = "d%%", color = colorCodes.LIFE, condFunc = function(v,o) return v > 0 and o.Life > 1 end },
	{ stat = "LifeUnreserved", label = "Unreserved Life", fmt = "d", color = colorCodes.LIFE, condFunc = function(v,o) return v < o.Life end, compPercent = true, warnFunc = function(v) return v <= 0 and "Your unreserved Life is below 1" end },
	{ stat = "LifeRecoverable", label = "Life Recoverable", fmt = "d", color = colorCodes.LIFE, condFunc = function(v,o) return v < o.LifeUnreserved end, },
	{ stat = "LifeUnreservedPercent", label = "Unreserved Life", fmt = "d%%", color = colorCodes.LIFE, condFunc = function(v,o) return v < 100 end },
	{ stat = "LifeRegenRecovery", label = "Life Regen", fmt = ".1f", color = colorCodes.LIFE, condFunc = function(v,o) return o.LifeRecovery <= 0 and o.LifeRegenRecovery ~= 0 end },
	{ stat = "LifeRegenRecovery", label = "Life Recovery", fmt = ".1f", color = colorCodes.LIFE, condFunc = function(v,o) return o.LifeRecovery > 0 and o.LifeRegenRecovery ~= 0 end },
	{ stat = "LifeLeechGainRate", label = "Life Leech/On Hit Rate", fmt = ".1f", color = colorCodes.LIFE, compPercent = true },
	{ stat = "LifeLeechGainPerHit", label = "Life Leech/Gain per Hit", fmt = ".1f", color = colorCodes.LIFE, compPercent = true },
	{ },
	{ stat = "Mana", label = "Total Mana", fmt = "d", color = colorCodes.MANA, compPercent = true },
	{ stat = "Spec:ManaInc", label = "%Inc Mana from Tree", color = colorCodes.MANA, fmt = "d%%" },
	{ stat = "ManaUnreserved", label = "Unreserved Mana", fmt = "d", color = colorCodes.MANA, condFunc = function(v,o) return v < o.Mana end, compPercent = true, warnFunc = function(v) return v < 0 and "Your unreserved Mana is negative" end },
	{ stat = "ManaUnreservedPercent", label = "Unreserved Mana", fmt = "d%%", color = colorCodes.MANA, condFunc = function(v,o) return v < 100 end },
	{ stat = "ManaRegenRecovery", label = "Mana Regen", fmt = ".1f", color = colorCodes.MANA, condFunc = function(v,o) return o.ManaRecovery <= 0 and o.ManaRegenRecovery ~= 0 end },
	{ stat = "ManaRegenRecovery", label = "Mana Recovery", fmt = ".1f", color = colorCodes.MANA, condFunc = function(v,o) return o.ManaRecovery > 0 and o.ManaRegenRecovery ~= 0 end },
	{ stat = "ManaLeechGainRate", label = "Mana Leech/On Hit Rate", fmt = ".1f", color = colorCodes.MANA, compPercent = true },
	{ stat = "ManaLeechGainPerHit", label = "Mana Leech/Gain per Hit", fmt = ".1f", color = colorCodes.MANA, compPercent = true },
	{ },
	{ stat = "Spirit", label = "Total Spirit", fmt = "d", color = colorCodes.SPIRIT, compPercent = true },
	{ stat = "SpiritUnreserved", label = "Unreserved Spirit", fmt = "d", color = colorCodes.SPIRIT, condFunc = function(v,o) return v < o.Spirit end, compPercent = true, warnFunc = function(v) return v < 0 and "Your unreserved Spirit is negative" end },
	{ stat = "SpiritUnreservedPercent", label = "Unreserved Spirit", fmt = "d%%", color = colorCodes.SPIRIT, condFunc = function(v,o) return v < 100 end },
	{ },
	{ stat = "EnergyShield", label = "Energy Shield", fmt = "d", color = colorCodes.ES, compPercent = true },
	{ stat = "EnergyShieldRecoveryCap", label = "Recoverable ES", color = colorCodes.ES, fmt = "d", condFunc = function(v,o) return o.CappingES end },
	{ stat = "Spec:EnergyShieldInc", label = "%Inc ES from Tree", color = colorCodes.ES, fmt = "d%%" },
	{ stat = "EnergyShieldRegenRecovery", label = "ES Regen", color = colorCodes.ES, fmt = ".1f", condFunc = function(v,o) return o.EnergyShieldRecovery <= 0 and o.EnergyShieldRegenRecovery ~= 0 end },
	{ stat = "EnergyShieldRegenRecovery", label = "ES Recovery", color = colorCodes.ES, fmt = ".1f", condFunc = function(v,o) return o.EnergyShieldRecovery > 0 and o.EnergyShieldRegenRecovery ~= 0 end },
	{ stat = "EnergyShieldLeechGainRate", label = "ES Leech/On Hit Rate", color = colorCodes.ES, fmt = ".1f", compPercent = true },
	{ stat = "EnergyShieldLeechGainPerHit", label = "ES Leech/Gain per Hit", color = colorCodes.ES, fmt = ".1f", compPercent = true },
	{ },
	{ stat = "Ward", label = "Ward", fmt = "d", color = colorCodes.WARD, compPercent = true },
	{ },
	{ stat = "Rage", label = "Rage", fmt = "d", color = colorCodes.RAGE, compPercent = true },
	{ stat = "RageRegenRecovery", label = "Rage Regen", fmt = ".1f", color = colorCodes.RAGE, compPercent = true },
	{ },
	{ stat = "TotalBuildDegen", label = "Total Degen", fmt = ".1f", lowerIsBetter = true },
	{ stat = "TotalNetRegen", label = "Total Net Recovery", fmt = "+.1f" },
	{ stat = "NetLifeRegen", label = "Net Life Recovery", fmt = "+.1f", color = colorCodes.LIFE },
	{ stat = "NetManaRegen", label = "Net Mana Recovery", fmt = "+.1f", color = colorCodes.MANA },
	{ stat = "NetEnergyShieldRegen", label = "Net ES Recovery", fmt = "+.1f", color = colorCodes.ES },
	{ },
	{ stat = "Evasion", label = "Evasion rating", fmt = "d", color = colorCodes.EVASION, compPercent = true },
	{ stat = "Spec:EvasionInc", label = "%Inc Evasion from Tree", color = colorCodes.EVASION, fmt = "d%%" },
	{ stat = "MeleeEvadeChance", label = "Evade Chance", fmt = "d%%", color = colorCodes.EVASION, condFunc = function(v,o) return v > 0 and o.MeleeEvadeChance == o.ProjectileEvadeChance end },
	{ stat = "MeleeEvadeChance", label = "Melee Evade Chance", fmt = "d%%", color = colorCodes.EVASION, condFunc = function(v,o) return v > 0 and o.MeleeEvadeChance ~= o.ProjectileEvadeChance end },
	{ stat = "ProjectileEvadeChance", label = "Projectile Evade Chance", fmt = "d%%", color = colorCodes.EVASION, condFunc = function(v,o) return v > 0 and o.MeleeEvadeChance ~= o.ProjectileEvadeChance end },
	{ },
	{ stat = "Armour", label = "Armour", fmt = "d", compPercent = true },
	{ stat = "Spec:ArmourInc", label = "%Inc Armour from Tree", fmt = "d%%" },
	{ stat = "PhysicalDamageReduction", label = "Phys. Damage Reduction", fmt = "d%%", condFunc = function() return true end },
	{ },
	{ stat = "EffectiveBlockChance", label = "Block Chance", fmt = "d%%", overCapStat = "BlockChanceOverCap" },
	{ stat = "EffectiveSpellBlockChance", label = "Spell Block Chance", fmt = "d%%", overCapStat = "SpellBlockChanceOverCap" },
	{ stat = "AttackDodgeChance", label = "Attack Dodge Chance", fmt = "d%%", overCapStat = "AttackDodgeChanceOverCap" },
	{ stat = "SpellDodgeChance", label = "Spell Dodge Chance", fmt = "d%%", overCapStat = "SpellDodgeChanceOverCap" },
	{ stat = "EffectiveSpellSuppressionChance", label = "Spell Suppression Chance", fmt = "d%%", overCapStat = "SpellSuppressionChanceOverCap" },
	{ },
	{ stat = "FireResist", label = "Fire Resistance", fmt = "d%%", color = colorCodes.FIRE, condFunc = function() return true end, overCapStat = "FireResistOverCap"},
	{ stat = "FireResistOverCap", label = "Fire Res. Over Max", fmt = "d%%", hideStat = true },
	{ stat = "ColdResist", label = "Cold Resistance", fmt = "d%%", color = colorCodes.COLD, condFunc = function() return true end, overCapStat = "ColdResistOverCap" },
	{ stat = "ColdResistOverCap", label = "Cold Res. Over Max", fmt = "d%%", hideStat = true },
	{ stat = "LightningResist", label = "Lightning Resistance", fmt = "d%%", color = colorCodes.LIGHTNING, condFunc = function() return true end, overCapStat = "LightningResistOverCap" },
	{ stat = "LightningResistOverCap", label = "Lightning Res. Over Max", fmt = "d%%", hideStat = true },
	{ stat = "ChaosResist", label = "Chaos Resistance", fmt = "d%%", color = colorCodes.CHAOS, condFunc = function(v,o) return not o.ChaosInoculation end, overCapStat = "ChaosResistOverCap" },
	{ stat = "ChaosResistOverCap", label = "Chaos Res. Over Max", fmt = "d%%", hideStat = true },
	{ label = "Chaos Resistance", val = "Immune", labelStat = "ChaosResist", color = colorCodes.CHAOS, condFunc = function(o) return o.ChaosInoculation end },
	{ },
	{ stat = "EffectiveMovementSpeedMod", label = "Movement Speed Modifier", fmt = "+.1f%%", mod = true, condFunc = function() return true end },
	--[[ potentially useful mods
	{ stat = "QuantityMultiplier", label = "Quantity Multiplier", fmt = "+d%%" },
	{ stat = "StoredUses", label = "Stored Uses", fmt = "d" },
	{ stat = "Duration", label = "Skill Duration", fmt = ".2f", flag = "duration" },
	{ stat = "DurationSecondary", label = "Secondary Duration", fmt = ".2f", flag = "duration" },
	{ stat = "AuraDuration", label = "Aura Duration", fmt = ".2f" },
	{ stat = "ReserveDuration", label = "Reserve Duration", fmt = ".2f" },
	{ stat = "SoulGainPreventionDuration", label = "Soul Gain Prevent.", fmt = ".2f" },
	{ stat = "SustainableTrauma", label = "Sustainable Trauma", fmt = "d" },
	{ stat = "ProjectileCount", label = "Projectile Count", fmt = "d", flag = "projectile" },
	{ stat = "PierceCountString", label = "Pierce Count", fmt = "d" },
	{ stat = "ForkCountString", label = "Fork Count", fmt = "d" },
	{ stat = "ChainMaxString", label = "Max Chain Count", fmt = "d" },
	{ stat = "SplitCountString", label = "Proj, Split Count", fmt = "d", flag = "projectile" },
	{ stat = "ProjectileSpeedMod", label = "Proj. Speed Mod", fmt = ".2f", flag = "projectile" },
	{ stat = "BounceCount", label = "Bounces Count", fmt = "d", flag = "bounce" },
	{ stat = "AuraEffectMod", label = "Aura Effect Mod", fmt = ".2f" },
	{ stat = "CurseEffectMod", label = "Curse Effect Mod", fmt = ".2f" },
	{ stat = "LootQuantity", label = "Item Quantity", fmt = "+d%%" },
	{ stat = "LootRarity", label = "Item Rarity", fmt = "+d%%" },
	--]]
	{ },
	{ stat = "FullDPS", label = "Full DPS", fmt = ".1f", color = colorCodes.CURRENCY, compPercent = true },
	{ stat = "FullDotDPS", label = "Full Dot DPS", fmt = ".1f", color = colorCodes.CURRENCY, compPercent = true, condFunc = function (v) return v >= data.misc.DotDpsCap end, warnFunc = function (v) return "Full Dot DPS exceeds in game limit" end },
	{ },
	{ stat = "SkillDPS", label = "Skill DPS", condFunc = function() return true end },
}
local minionDisplayStats = {
	{ stat = "AverageDamage", label = "Average Damage", fmt = ".1f", compPercent = true },
	{ stat = "Speed", label = "Attack/Cast Rate", fmt = ".2f", compPercent = true, condFunc = function(v,o) return v > 0 and (o.TriggerTime or 0) == 0 end },
	{ stat = "HitSpeed", label = "Hit Rate", fmt = ".2f" },
	{ stat = "Speed", label = "Effective Trigger Rate", fmt = ".2f", compPercent = true, condFunc = function(v,o) return (o.TriggerTime or 0) ~= 0 end },
	{ stat = "TotalDPS", label = "Hit DPS", fmt = ".1f", compPercent = true },
	{ stat = "TotalDot", label = "DoT DPS", fmt = ".1f", compPercent = true },
	{ stat = "WithDotDPS", label = "Total DPS inc. DoT", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.TotalDPS and (o.PoisonDPS or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "BleedDPS", label = "Bleed DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Minion Bleed DPS exceeds in game limit" end },
	{ stat = "WithBleedDPS", label = "Total DPS inc. Bleed", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.IgniteDPS or 0) == 0 end },
	{ stat = "IgniteDPS", label = "Ignite DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Minion Ignite DPS exceeds in game limit" end },
	{ stat = "WithIgniteDPS", label = "Total DPS inc. Ignite", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "PoisonDPS", label = "Poison DPS", fmt = ".1f", compPercent = true, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Minion Poison dps exceeds in game limit" end },
	{ stat = "PoisonDamage", label = "Total Damage per Poison", fmt = ".1f", compPercent = true },
	{ stat = "WithPoisonDPS", label = "Total DPS inc. Poison", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.ImpaleDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "DecayDPS", label = "Decay DPS", fmt = ".1f", compPercent = true },
	{ stat = "TotalDotDPS", label = "Total DoT DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= o.TotalDot and v ~= o.ImpaleDPS and v ~= o.TotalPoisonDPS and v ~= (o.TotalIgniteDPS or o.IgniteDPS) and v ~= o.BleedDPS end, warnFunc = function(v) return v >= data.misc.DotDpsCap and "Minion DoT DPS exceeds in game limit" end },
	{ stat = "ImpaleDPS", label = "Impale DPS", fmt = ".1f", compPercent = true, flag = "impale" },
	{ stat = "WithImpaleDPS", label = "Total DPS inc. Impale", fmt = ".1f", compPercent = true, flag = "impale", condFunc = function(v,o) return v ~= o.TotalDPS and (o.TotalDot or 0) == 0 and (o.IgniteDPS or 0) == 0 and (o.PoisonDPS or 0) == 0 and (o.BleedDPS or 0) == 0 end },
	{ stat = "CullingDPS", label = "Culling DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return (o.CullingDPS or 0) > 0 end },
	{ stat = "ReservationDPS", label = "Reservation DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return (o.ReservationDPS or 0) > 0 end },
	{ stat = "CombinedDPS", label = "Combined DPS", fmt = ".1f", compPercent = true, condFunc = function(v,o) return v ~= ((o.TotalDPS or 0) + (o.TotalDot or 0)) and v ~= o.WithImpaleDPS and v ~= o.WithPoisonDPS and v ~= o.WithIgniteDPS and v ~= o.WithBleedDPS end},
	{ stat = "Cooldown", label = "Skill Cooldown", fmt = ".3fs", lowerIsBetter = true },
	{ stat = "Life", label = "Total Life", fmt = ".1f", color = colorCodes.LIFE, compPercent = true },
	{ stat = "LifeRegenRecovery", label = "Life Recovery", fmt = ".1f", color = colorCodes.LIFE },
	{ stat = "LifeLeechGainRate", label = "Life Leech/On Hit Rate", fmt = ".1f", color = colorCodes.LIFE, compPercent = true },
	{ stat = "EnergyShield", label = "Energy Shield", fmt = "d", color = colorCodes.ES, compPercent = true },
	{ stat = "EnergyShieldRegenRecovery", label = "ES Recovery", fmt = ".1f", color = colorCodes.ES },
	{ stat = "EnergyShieldLeechGainRate", label = "ES Leech/On Hit Rate", fmt = ".1f", color = colorCodes.ES, compPercent = true },
}
-- Extra stats saved to the xml if not already saved there, mostly for 3rd party tools
local extraSaveStats = {
	"PowerCharges",
	"PowerChargesMax",
	"FrenzyCharges",
	"FrenzyChargesMax",
	"EnduranceCharges",
	"EnduranceChargesMax",
	"ActiveTotemLimit",
	"ActiveMinionLimit",
}

return displayStats, minionDisplayStats, extraSaveStats
