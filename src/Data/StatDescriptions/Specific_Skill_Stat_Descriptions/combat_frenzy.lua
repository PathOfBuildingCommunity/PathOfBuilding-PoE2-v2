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
						[1]="#",
						[2]="#"
					}
				},
				text="Minimum Frenzy Charge gain interval {0}s"
			},
			[2]={
				limit={
					[1]={
						[1]=1000,
						[2]=1000
					}
				},
				text="Gain a Frenzy Charge when you Freeze, Electrocute or Pin an enemy, no more than once per second"
			},
			[3]={
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
				text="Gain a Frenzy Charge when you Freeze, Electrocute or Pin an enemy, no more than once every {0} seconds"
			}
		},
		stats={
			[1]="skill_combat_frenzy_x_ms_cooldown"
		}
	},
	parent="skill_stat_descriptions",
	["skill_combat_frenzy_x_ms_cooldown"]=1
}