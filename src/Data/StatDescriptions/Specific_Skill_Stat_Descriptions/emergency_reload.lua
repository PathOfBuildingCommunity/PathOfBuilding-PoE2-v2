-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
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
				text="Maximum Buff duration is {0} second"
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
				text="Maximum Buff duration is {0} seconds"
			}
		},
		stats={
			[1]="base_skill_effect_duration"
		}
	},
	[2]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Buff Empowers loaded bolts with {0}% more damage"
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
				text="Buff Empowers loaded bolts with {0}% less damage"
			}
		},
		stats={
			[1]="emergency_reload_damage_+%_final"
		}
	},
	[3]={
		[1]={
		},
		stats={
			[1]="skill_effect_duration"
		}
	},
	["base_skill_effect_duration"]=1,
	["emergency_reload_damage_+%_final"]=2,
	parent="skill_stat_descriptions",
	["skill_effect_duration"]=3
}