-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="damage_taken_+%_from_hits"
		}
	},
	[2]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Devotion"
			}
		},
		stats={
			[1]="base_devotion"
		}
	},
	[3]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Strength"
			}
		},
		stats={
			[1]="base_strength"
		}
	},
	[4]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Strength"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Strength"
			}
		},
		stats={
			[1]="strength_+%"
		}
	},
	[5]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Dexterity"
			}
		},
		stats={
			[1]="base_dexterity"
		}
	},
	[6]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Dexterity"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Dexterity"
			}
		},
		stats={
			[1]="dexterity_+%"
		}
	},
	[7]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Intelligence"
			}
		},
		stats={
			[1]="base_intelligence"
		}
	},
	[8]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Intelligence"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Intelligence"
			}
		},
		stats={
			[1]="intelligence_+%"
		}
	},
	[9]={
		[1]={
			[1]={
				[1]={
					k="per_minute_to_per_second",
					v=1
				},
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Regenerate {0}% of Mana per second"
			}
		},
		stats={
			[1]="mana_regeneration_rate_per_minute_%"
		}
	},
	[10]={
		[1]={
			[1]={
				[1]={
					k="per_minute_to_per_second",
					v=1
				},
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Regenerate {0}% of Mana per second per Power Charge"
			}
		},
		stats={
			[1]="mana_regeneration_rate_per_minute_%_per_power_charge"
		}
	},
	[11]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum Endurance Charges"
			}
		},
		stats={
			[1]="max_endurance_charges"
		}
	},
	[12]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum Frenzy Charges"
			}
		},
		stats={
			[1]="max_frenzy_charges"
		}
	},
	[13]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum Power Charges"
			}
		},
		stats={
			[1]="max_power_charges"
		}
	},
	[14]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Physical Damage per Frenzy Charge"
			}
		},
		stats={
			[1]="physical_damage_+%_per_frenzy_charge"
		}
	},
	[15]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Gain a Frenzy Charge on Kill"
			}
		},
		stats={
			[1]="add_frenzy_charge_on_kill"
		}
	},
	[16]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Converts all Evasion Rating to Armour"
			}
		},
		stats={
			[1]="keystone_iron_reflexes"
		}
	},
	[17]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="75% of Damage Converted to Fire Damage\nDeal no Non-Fire Damage"
			}
		},
		stats={
			[1]="keystone_avatar_of_fire"
		}
	},
	[18]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Converts all Energy Shield to Mana"
			}
		},
		stats={
			[1]="keystone_eldritch_battery"
		}
	},
	[19]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Unlimited number of Summoned Totems\nTotems reserve 100 Spirit each"
			}
		},
		stats={
			[1]="keystone_ancestral_bond"
		}
	},
	[20]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum number of Spectres"
			}
		},
		stats={
			[1]="base_number_of_spectres_allowed"
		}
	},
	[21]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum number of Skeletons"
			}
		},
		stats={
			[1]="base_number_of_skeletons_allowed"
		}
	},
	[22]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Maximum number of Summoned Raging Spirits"
			}
		},
		stats={
			[1]="base_number_of_raging_spirits_allowed"
		}
	},
	[23]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Can Evade all Hits\n70% less Evasion Rating"
			}
		},
		stats={
			[1]="keystone_acrobatics"
		}
	},
	[24]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="30% less Critical Damage Bonus when on Full Life\n30% more Critical Damage Bonus when on Low Life"
			}
		},
		stats={
			[1]="keystone_pain_attunement"
		}
	},
	[25]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="1% increased Projectile Attack damage per 2 Strength\nStrength provides no bonus to Life"
			}
		},
		stats={
			[1]="keystone_strong_bowman"
		}
	},
	[26]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Projectile Attack Hits deal up to 30% more Damage to targets at the start of their movement, dealing less Damage to targets as the projectile travels farther"
			}
		},
		stats={
			[1]="keystone_point_blank"
		}
	},
	[27]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="If you would gain a Charge, Allies in your Presence gain that Charge instead"
			}
		},
		stats={
			[1]="keystone_conduit"
		}
	},
	[28]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Evasion Rating is Doubled against Projectile Attacks\n25% less Evasion Rating against Melee Attacks"
			}
		},
		stats={
			[1]="keystone_projectile_evasion"
		}
	},
	[29]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Removes all Mana\nSkill Mana Costs Converted to Life Costs"
			}
		},
		stats={
			[1]="keystone_blood_magic"
		}
	},
	[30]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Minions Explode when reduced to Low Life, dealing 33% of their Life as Fire Damage to surrounding Enemies"
			}
		},
		stats={
			[1]="keystone_minion_instability"
		}
	},
	[31]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Hits that deal Fire Damage remove Fire Exposure and inflict Lightning Exposure\nHits that deal Cold Damage remove Cold Exposure and inflict Fire Exposure\nHits that deal Lightning Damage remove Lightning Exposure and inflict Cold Exposure"
			}
		},
		stats={
			[1]="keystone_elemental_equilibrium"
		}
	},
	[32]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Maximum Life becomes 1, Immune to Chaos Damage"
			}
		},
		stats={
			[1]="keystone_chaos_inoculation"
		}
	},
	[33]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Life Leech is Instant\nCannot use Life Flasks"
			}
		},
		stats={
			[1]="keystone_vaal_pact"
		}
	},
	[34]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Critical Hit Chance"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Critical Hit Chance"
			}
		},
		stats={
			[1]="critical_strike_chance_+%"
		}
	},
	[35]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d}% Chance to Block Attack Damage while wielding a Staff"
			}
		},
		stats={
			[1]="staff_block_%"
		}
	},
	[36]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="All Damage is taken from Mana before Life\n50% less Mana Recovery Rate"
			}
		},
		stats={
			[1]="keystone_mana_shield"
		}
	},
	[37]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Your Hits can't be Evaded\nNever deal Critical Hits"
			}
		},
		stats={
			[1]="resolute_technique"
		}
	},
	[38]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Your Stun Threshold is doubled\nCannot Dodge Roll"
			}
		},
		stats={
			[1]="keystone_unwavering_stance"
		}
	},
	[39]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Can be allocated without connection to the tree"
			}
		},
		stats={
			[1]="passive_can_be_allocated_without_connection"
		}
	},
	[40]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Strength and Dexterity"
			}
		},
		stats={
			[1]="base_strength_and_dexterity"
		}
	},
	[41]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Strength and Intelligence"
			}
		},
		stats={
			[1]="base_strength_and_intelligence"
		}
	},
	[42]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to Dexterity and Intelligence"
			}
		},
		stats={
			[1]="base_dexterity_and_intelligence"
		}
	},
	[43]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]=99
					}
				},
				text="{0}% chance to Blind Enemies on Hit"
			},
			[2]={
				limit={
					[1]={
						[1]=100,
						[2]="#"
					}
				},
				text="Blind Enemies on Hit"
			}
		},
		stats={
			[1]="global_chance_to_blind_on_hit_%"
		}
	},
	[44]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=0,
						[2]=0
					},
					[2]={
						[1]=1,
						[2]=1
					}
				},
				text="Skills fire an additional Projectile"
			},
			[2]={
				limit={
					[1]={
						[1]=0,
						[2]=0
					},
					[2]={
						[1]=2,
						[2]="#"
					}
				},
				text="Skills fire {1} additional Projectiles"
			}
		},
		stats={
			[1]="active_skill_additional_projectiles_description_mode",
			[2]="number_of_additional_projectiles"
		}
	},
	[45]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0:+d} to maximum number of Summoned Golems"
			}
		},
		stats={
			[1]="base_number_of_golems_allowed"
		}
	},
	[46]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]=1
					}
				},
				text="Can Allocate Passives from the Marauder's starting point"
			},
			[2]={
				limit={
					[1]={
						[1]=2,
						[2]=2
					}
				},
				text="Can Allocate Passives from the Ranger's starting point"
			},
			[3]={
				limit={
					[1]={
						[1]=3,
						[2]=3
					}
				},
				text="Can Allocate Passives from the Witch's starting point"
			},
			[4]={
				limit={
					[1]={
						[1]=4,
						[2]=4
					}
				},
				text="Can Allocate Passives from the Duelist's starting point"
			},
			[5]={
				limit={
					[1]={
						[1]=5,
						[2]=5
					}
				},
				text="Can Allocate Passives from the Templar's starting point"
			},
			[6]={
				limit={
					[1]={
						[1]=6,
						[2]=6
					}
				},
				text="Can Allocate Passives from the Shadow's starting point"
			}
		},
		stats={
			[1]="display_can_take_character_start_point"
		}
	},
	[47]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]=99
					}
				},
				text="{0}% chance to create Consecrated Ground on Kill, lasting 8 seconds"
			},
			[2]={
				limit={
					[1]={
						[1]=100,
						[2]="#"
					}
				},
				text="Create Consecrated Ground on Kill, lasting 8 seconds"
			}
		},
		stats={
			[1]="consecrate_ground_on_kill_%_for_3_seconds"
		}
	},
	[48]={
		[1]={
			[1]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="Enemies in your Presence are Slowed by {0}%"
			}
		},
		stats={
			[1]="ascendancy_chronomancer_apex_of_the_moment_base_slow_aura_value"
		}
	},
	[49]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Magnitude of Chill you inflict"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Magnitude of Chill you inflict"
			}
		},
		stats={
			[1]="chill_effect_+%"
		}
	},
	[50]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Your Hits are Crushing Blows"
			}
		},
		stats={
			[1]="crushing_blow"
		}
	},
	[51]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="DNT Enemies in Close Range are Taunted"
			}
		},
		stats={
			[1]="display_nearby_enemies_are_taunted"
		}
	},
	[52]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="You have {0} Fortification"
			}
		},
		stats={
			[1]="display_you_have_x_fortification"
		}
	},
	[53]={
		[1]={
			[1]={
				[1]={
					k="milliseconds_to_seconds",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Every second, inflict Withered on nearby Enemies for {0} seconds"
			}
		},
		stats={
			[1]="every_1_second_nearby_enemies_withered_for_X_ms"
		}
	},
	[54]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Dodge Roll cannot Avoid Damage\nTake 30% less Damage from Hits while Dodge Rolling"
			}
		},
		stats={
			[1]="keystone_bulwark"
		}
	},
	[55]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You can inflict Bleeding on an Enemy up to 8 times\nYour Bleeding does not deal extra Damage while the Enemy is moving\n50% less Damage with Bleeding"
			}
		},
		stats={
			[1]="keystone_crimson_dance"
		}
	},
	[56]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="25% more Skill Speed while Off Hand is empty and you have\na One-Handed Martial Weapon equipped in your Main Hand"
			}
		},
		stats={
			[1]="keystone_dance_with_death"
		}
	},
	[57]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You can wield Two-Handed Axes, Maces and Swords in one hand\nTriple Attribute requirements of weapons"
			}
		},
		stats={
			[1]="keystone_giants_blood"
		}
	},
	[58]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Excess Life Recovery from Regeneration is applied to Energy Shield\nEnergy Shield does not Recharge"
			}
		},
		stats={
			[1]="keystone_zealots_oath"
		}
	},
	[59]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Nearby Enemies have {0}% increased Life Regeneration Rate"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="Nearby Enemies have {0}% reduced Life Regeneration Rate"
			}
		},
		stats={
			[1]="life_mastery_nearby_enemy_life_regeneration_rate_+%"
		}
	},
	[60]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Projectile Barrages have no spread"
			}
		},
		stats={
			[1]="no_barrage_projectile_spread"
		}
	},
	[61]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Physical Damage"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Physical Damage"
			}
		},
		stats={
			[1]="physical_damage_+%"
		}
	},
	[62]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% increased Magnitude of Shock you inflict"
			},
			[2]={
				[1]={
					k="negate",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]=-1
					}
				},
				text="{0}% reduced Magnitude of Shock you inflict"
			}
		},
		stats={
			[1]="shock_effect_+%"
		}
	},
	[63]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Your Energy Shield starts at zero"
			}
		},
		stats={
			[1]="start_at_zero_energy_shield"
		}
	},
	[64]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Phasing"
			}
		},
		stats={
			[1]="base_phasing_without_visual"
		}
	},
	[65]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=-1,
						[2]=-1
					}
				},
				text="No path found to your Class' starting location"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0} Allocated Passive Skills between this Socket and your Class' starting location"
			}
		},
		stats={
			[1]="local_jewel_display_number_of_allocated_passives_between_jewel_and_class_start"
		}
	},
	[66]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Dexterity's inherent bonus is 1% increased Armour per 2 Dexterity instead"
			}
		},
		stats={
			[1]="keystone_alternate_dexterity_bonus"
		}
	},
	[67]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Intelligence's inherent bonus is 1% increased Evasion Rating per 2 Intelligence instead"
			}
		},
		stats={
			[1]="keystone_alternate_intelligence_bonus"
		}
	},
	[68]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Strength's inherent bonus is 1% increased Energy Shield per 2 Strength instead"
			}
		},
		stats={
			[1]="keystone_alternate_strength_bonus"
		}
	},
	[69]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Attack Projectiles always inflict Bleeding and Maim, and Knock Back Enemies\nProjectiles cannot Pierce, Fork or Chain"
			}
		},
		stats={
			[1]="keystone_barbed_tips"
		}
	},
	[70]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You are Blind\nBlind does not affect your Light Radius\n25% more Melee Critical Hit Chance while Blinded"
			}
		},
		stats={
			[1]="keystone_blind_monk"
		}
	},
	[71]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Using Warcries is Instant\nWarcries share their Cooldown"
			}
		},
		stats={
			[1]="keystone_call_to_arms"
		}
	},
	[72]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Gain Power Charges instead of Frenzy Charges\nGain Frenzy Charges instead of Endurance Charges\nGain Endurance Charges instead of Power Charges"
			}
		},
		stats={
			[1]="keystone_charge_cycle"
		}
	},
	[73]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Every second, Consume a nearby Corpse to Recover 5% of Life and Mana\n10% more Damage taken if you haven't Consumed a Corpse Recently"
			}
		},
		stats={
			[1]="keystone_disciple_of_kitava"
		}
	},
	[74]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="All Damage taken bypasses Energy Shield\n50% of Elemental Damage taken as Chaos Damage\n+5% to maximum Chaos Resistance"
			}
		},
		stats={
			[1]="keystone_divine_flesh"
		}
	},
	[75]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Cannot Recover Energy Shield to above Armour\n3% of Physical Damage prevented from Hits Recently is Regenerated as Energy Shield per second"
			}
		},
		stats={
			[1]="keystone_divine_shield"
		}
	},
	[76]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Skills that have dealt a Critical Hit in the past 8 seconds deal 40% more Elemental Damage with Hits\nYour Critical Hits do not deal extra Damage"
			}
		},
		stats={
			[1]="keystone_elemental_overload"
		}
	},
	[77]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Life Recovery from Flasks also applies to Energy Shield\n30% less Life Recovery from Flasks"
			}
		},
		stats={
			[1]="keystone_emperors_heart"
		}
	},
	[78]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Life Recharges instead of Energy Shield\nLife Recovery from Flasks applies to Energy Shield instead"
			}
		},
		stats={
			[1]="keystone_eternal_youth"
		}
	},
	[79]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Mana Recovery from Regeneration is not applied\n1 Rage Regenerated for every 25 Mana Regeneration per Second\nSkills Cost +3 Rage"
			}
		},
		stats={
			[1]="keystone_focused_rage"
		}
	},
	[80]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Block Chance is doubled\nYou take 50% of Damage from Blocked Hits"
			}
		},
		stats={
			[1]="keystone_glancing_blows"
		}
	},
	[81]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Take 50% less Damage over Time if you've started taking Damage over Time in the past second\nTake 50% more Damage over Time if you've haven't started taking Damage over Time in the past second"
			}
		},
		stats={
			[1]="keystone_heartstopper"
		}
	},
	[82]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You can only have one Herald\n50% more Effect of Herald Buffs on you\n100% more Damage with Hits from Herald Skills\n50% more Damage Over Time with Herald Skills\nMinions from Herald Skills deal 25% more Damage\nYour Aura Skills are Disabled"
			}
		},
		stats={
			[1]="keystone_herald_of_doom"
		}
	},
	[83]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You can apply an additional Curse\nDouble Activation Delay of Curses"
			}
		},
		stats={
			[1]="keystone_hex_master"
		}
	},
	[84]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="When your Hits Impale Enemies, also Impale other Enemies near them\nInflict 4 additional Impales on Enemies you Impale\nFor 4 seconds after you Impale Enemies, they cannot be Impaled again, and Impales cannot be Called from them"
			}
		},
		stats={
			[1]="keystone_impale"
		}
	},
	[85]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Dexterity provides no inherent bonus to Evasion Rating\n+1% Chance to Suppress Spell Damage per 15 Dexterity"
			}
		},
		stats={
			[1]="keystone_magebane"
		}
	},
	[86]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Nearby Allies and Enemies Share Charges with you\nEnemies Hitting you have 10% chance to gain an Endurance, \nFrenzy or Power Charge"
			}
		},
		stats={
			[1]="keystone_magnetic_charge"
		}
	},
	[87]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="80% of Maximum Mana is Converted to twice that much Armour"
			}
		},
		stats={
			[1]="keystone_mental_conditioning"
		}
	},
	[88]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Gain 2 Grasping Vines each second while stationary\n2% chance to deal Double Damage per Grasping Vine\n1% less Damage taken per Grasping Vine"
			}
		},
		stats={
			[1]="keystone_natures_presence"
		}
	},
	[89]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Cannot use Charms\n30% more Recovery from Flasks"
			}
		},
		stats={
			[1]="keystone_oasis"
		}
	},
	[90]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="40% more Attack Damage if Accuracy Rating is higher than Maximum Life\nNever deal Critical Hits"
			}
		},
		stats={
			[1]="keystone_precise_technique"
		}
	},
	[91]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Armour applies to Fire, Cold and Lightning Damage taken from Hits instead of Physical Damage\n-15% to all maximum Elemental Resistances"
			}
		},
		stats={
			[1]="keystone_prismatic_bulwark"
		}
	},
	[92]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="3% more Spell Damage per Power Charge\nGain Power Charges instead of Frenzy Charges"
			}
		},
		stats={
			[1]="keystone_quiet_might"
		}
	},
	[93]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="-1 to maximum number of Summoned Totems\nYou can have an additional Brand Attached to an Enemy"
			}
		},
		stats={
			[1]="keystone_runebinder"
		}
	},
	[94]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="100% chance to Defend with 200% of Armour\nMaximum Damage Reduction for any Damage Type is 50%"
			}
		},
		stats={
			[1]="keystone_sacred_bastion"
		}
	},
	[95]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Cannot Ignite, Chill, Freeze or Shock\nCritical Hits inflict Scorch, Brittle and Sapped"
			}
		},
		stats={
			[1]="keystone_secrets_of_suffering"
		}
	},
	[96]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Can't use Helmets\nYour Critical Hit Chance is Lucky\nYour Damage with Critical Hits is Lucky\nEnemies' Damage with Critical Hits against you is Lucky"
			}
		},
		stats={
			[1]="keystone_sharp_and_brittle"
		}
	},
	[97]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Intelligence provides no inherent bonus to Energy Shield\n2% reduced Duration of Elemental Ailments on you per 15 Intelligence"
			}
		},
		stats={
			[1]="keystone_solipsism"
		}
	},
	[98]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="DNT Ded."
			}
		},
		stats={
			[1]="keystone_strength_of_blood"
		}
	},
	[99]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Auras from your Skills can only affect you\nAura Skills have 1% more Aura Effect per 2% of maximum Mana they Reserve\n40% more Mana Reservation of Aura Skills"
			}
		},
		stats={
			[1]="keystone_supreme_ego"
		}
	},
	[100]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Ignore Attribute Requirements\nGain no inherent bonuses from Attributes"
			}
		},
		stats={
			[1]="keystone_supreme_prodigy"
		}
	},
	[101]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="50% of Cold and Lightning Damage taken as Fire Damage\n50% less Cold Resistance\n50% less Lightning Resistance"
			}
		},
		stats={
			[1]="keystone_tempered_by_war"
		}
	},
	[102]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="You count as Dual Wielding while you are Unencumbered\n40% more Attack Speed with Melee Skills while you are Unencumbered\nAdds 14 to 20 Attack Physical Damage to Melee Skills per 10 Dexterity while you are Unencumbered"
			}
		},
		stats={
			[1]="keystone_hollow_palm_technique"
		}
	},
	[103]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="-25% to maximum Chance to Block Attack Damage\n-25% to maximum Chance to Block Spell Damage\n+2% Chance to Block Spell Damage for each 1% Overcapped Chance to Block Attack Damage"
			}
		},
		stats={
			[1]="keystone_versatile_combatant"
		}
	},
	[104]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="+10% to all Elemental Resistances and maximum Elemental Resistances while affected by a Non-Vaal Guard Skill\n20% additional Physical Damage Reduction while affected by a Non-Vaal Guard Skill\n20% more Damage taken if a Non-Vaal Guard Buff was lost Recently"
			}
		},
		stats={
			[1]="keystone_veterans_awareness"
		}
	},
	[105]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="20% less Attack Damage taken if you haven't been Hit by an Attack Recently\n10% more chance to Evade Attacks if you have been Hit by an Attack Recently\n20% more Attack Damage taken if you have been Hit by an Attack Recently"
			}
		},
		stats={
			[1]="keystone_wind_dancer"
		}
	},
	[106]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="1% increased Spell damage per 2 Strength\nStrength provides no bonus to Life"
			}
		},
		stats={
			[1]="strong_casting"
		}
	},
	["active_skill_additional_projectiles_description_mode"]=44,
	["add_frenzy_charge_on_kill"]=15,
	["ascendancy_chronomancer_apex_of_the_moment_base_slow_aura_value"]=48,
	["base_devotion"]=2,
	["base_dexterity"]=5,
	["base_dexterity_and_intelligence"]=42,
	["base_intelligence"]=7,
	["base_number_of_golems_allowed"]=45,
	["base_number_of_raging_spirits_allowed"]=22,
	["base_number_of_skeletons_allowed"]=21,
	["base_number_of_spectres_allowed"]=20,
	["base_phasing_without_visual"]=64,
	["base_strength"]=3,
	["base_strength_and_dexterity"]=40,
	["base_strength_and_intelligence"]=41,
	["chill_effect_+%"]=49,
	["consecrate_ground_on_kill_%_for_3_seconds"]=47,
	["critical_strike_chance_+%"]=34,
	["crushing_blow"]=50,
	["damage_taken_+%_from_hits"]=1,
	["dexterity_+%"]=6,
	["display_can_take_character_start_point"]=46,
	["display_nearby_enemies_are_taunted"]=51,
	["display_you_have_x_fortification"]=52,
	["every_1_second_nearby_enemies_withered_for_X_ms"]=53,
	["global_chance_to_blind_on_hit_%"]=43,
	["intelligence_+%"]=8,
	["keystone_acrobatics"]=23,
	["keystone_alternate_dexterity_bonus"]=66,
	["keystone_alternate_intelligence_bonus"]=67,
	["keystone_alternate_strength_bonus"]=68,
	["keystone_ancestral_bond"]=19,
	["keystone_avatar_of_fire"]=17,
	["keystone_barbed_tips"]=69,
	["keystone_blind_monk"]=70,
	["keystone_blood_magic"]=29,
	["keystone_bulwark"]=54,
	["keystone_call_to_arms"]=71,
	["keystone_chaos_inoculation"]=32,
	["keystone_charge_cycle"]=72,
	["keystone_conduit"]=27,
	["keystone_crimson_dance"]=55,
	["keystone_dance_with_death"]=56,
	["keystone_disciple_of_kitava"]=73,
	["keystone_divine_flesh"]=74,
	["keystone_divine_shield"]=75,
	["keystone_eldritch_battery"]=18,
	["keystone_elemental_equilibrium"]=31,
	["keystone_elemental_overload"]=76,
	["keystone_emperors_heart"]=77,
	["keystone_eternal_youth"]=78,
	["keystone_focused_rage"]=79,
	["keystone_giants_blood"]=57,
	["keystone_glancing_blows"]=80,
	["keystone_heartstopper"]=81,
	["keystone_herald_of_doom"]=82,
	["keystone_hex_master"]=83,
	["keystone_hollow_palm_technique"]=102,
	["keystone_impale"]=84,
	["keystone_iron_reflexes"]=16,
	["keystone_magebane"]=85,
	["keystone_magnetic_charge"]=86,
	["keystone_mana_shield"]=36,
	["keystone_mental_conditioning"]=87,
	["keystone_minion_instability"]=30,
	["keystone_natures_presence"]=88,
	["keystone_oasis"]=89,
	["keystone_pain_attunement"]=24,
	["keystone_point_blank"]=26,
	["keystone_precise_technique"]=90,
	["keystone_prismatic_bulwark"]=91,
	["keystone_projectile_evasion"]=28,
	["keystone_quiet_might"]=92,
	["keystone_runebinder"]=93,
	["keystone_sacred_bastion"]=94,
	["keystone_secrets_of_suffering"]=95,
	["keystone_sharp_and_brittle"]=96,
	["keystone_solipsism"]=97,
	["keystone_strength_of_blood"]=98,
	["keystone_strong_bowman"]=25,
	["keystone_supreme_ego"]=99,
	["keystone_supreme_prodigy"]=100,
	["keystone_tempered_by_war"]=101,
	["keystone_unwavering_stance"]=38,
	["keystone_vaal_pact"]=33,
	["keystone_versatile_combatant"]=103,
	["keystone_veterans_awareness"]=104,
	["keystone_wind_dancer"]=105,
	["keystone_zealots_oath"]=58,
	["life_mastery_nearby_enemy_life_regeneration_rate_+%"]=59,
	["local_jewel_display_number_of_allocated_passives_between_jewel_and_class_start"]=65,
	["mana_regeneration_rate_per_minute_%"]=9,
	["mana_regeneration_rate_per_minute_%_per_power_charge"]=10,
	["max_endurance_charges"]=11,
	["max_frenzy_charges"]=12,
	["max_power_charges"]=13,
	["no_barrage_projectile_spread"]=60,
	["number_of_additional_projectiles"]=44,
	parent="stat_descriptions",
	["passive_can_be_allocated_without_connection"]=39,
	["physical_damage_+%"]=61,
	["physical_damage_+%_per_frenzy_charge"]=14,
	["resolute_technique"]=37,
	["shock_effect_+%"]=62,
	["staff_block_%"]=35,
	["start_at_zero_energy_shield"]=63,
	["strength_+%"]=4,
	["strong_casting"]=106
}