-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Flask recovery granted to Allies {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0}% of recovery from your Flasks is also\ngranted to Allies in your Presence"
			}
		},
		stats={
			[1]="recovery_from_flasks_applies_to_allies_in_presence_%"
		}
	},
	[2]={
		[1]={
			[1]={
				[1]={
					k="per_minute_to_per_second_2dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Flask charges per second {0}"
			},
			[2]={
				[1]={
					k="per_minute_to_per_second_2dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Grants you {0} Flask charges per second"
			}
		},
		stats={
			[1]="skill_alchemists_boon_generate_x_charges_for_any_flask_per_minute"
		}
	},
	parent="skill_stat_descriptions",
	["recovery_from_flasks_applies_to_allies_in_presence_%"]=1,
	["skill_alchemists_boon_generate_x_charges_for_any_flask_per_minute"]=2
}