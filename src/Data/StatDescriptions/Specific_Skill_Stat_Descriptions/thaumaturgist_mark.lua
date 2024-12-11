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
				text="Mark duration is {0} second"
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
				text="Mark duration is {0} seconds"
			}
		},
		stats={
			[1]="base_skill_effect_duration"
		}
	},
	[3]={
		[1]={
		},
		stats={
			[1]="skill_effect_duration"
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
				text="Hits against Marked enemy have\n{0}% more chance to Shock"
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
				text="Hits against Marked enemy have\n{0}% less chance to Shock"
			}
		},
		stats={
			[1]="thaumaturgist_mark_enemies_shocked_chance_+%_final"
		}
	},
	[5]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Shock has {0}% increased effect on Marked enemy"
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
				text="Shock has {0}% reduced effect on Marked enemy"
			}
		},
		stats={
			[1]="thaumaturgist_mark_enemy_shock_effect_+%_taken"
		}
	},
	["base_secondary_skill_effect_duration"]=1,
	["base_skill_effect_duration"]=2,
	parent="skill_stat_descriptions",
	["skill_effect_duration"]=3,
	["thaumaturgist_mark_enemies_shocked_chance_+%_final"]=4,
	["thaumaturgist_mark_enemy_shock_effect_+%_taken"]=5
}