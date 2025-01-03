-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="base_secondary_skill_effect_duration"
		}
	},
	[2]={
		[1]={
			[1]={
				[1]={
					k="milliseconds_to_seconds_2dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]=1000,
						[2]=1000
					}
				},
				text="Spike duration is {0} second"
			},
			[2]={
				[1]={
					k="milliseconds_to_seconds_2dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Spike duration is {0} seconds"
			}
		},
		stats={
			[1]="base_skill_effect_duration"
		}
	},
	[3]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Buff grants you {0}% more Spell damage"
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
				text="Buff grants you {0}% less Spell damage"
			}
		},
		stats={
			[1]="power_offering_buff_spell_damage_+%_final"
		}
	},
	[4]={
		[1]={
			[1]={
				[1]={
					k="milliseconds_to_seconds_2dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Spike duration {0}s"
			}
		},
		stats={
			[1]="skill_effect_duration"
		}
	},
	["base_secondary_skill_effect_duration"]=1,
	["base_skill_effect_duration"]=2,
	parent="skill_stat_descriptions",
	["power_offering_buff_spell_damage_+%_final"]=3,
	["skill_effect_duration"]=4
}