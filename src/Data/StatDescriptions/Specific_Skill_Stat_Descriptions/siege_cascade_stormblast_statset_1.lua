-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="active_skill_base_secondary_area_of_effect_radius"
		}
	},
	[2]={
		[1]={
			[1]={
				[1]={
					k="divide_by_ten_1dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Explosion radius {0}m"
			}
		},
		stats={
			[1]="active_skill_area_of_effect_radius"
		}
	},
	[3]={
		[1]={
			[1]={
				[1]={
					k="divide_by_ten_1dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]=10,
						[2]=10
					}
				},
				text="Explosion radius is {0} metre"
			},
			[2]={
				[1]={
					k="divide_by_ten_1dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Explosion radius is {0} metres"
			}
		},
		stats={
			[1]="active_skill_base_area_of_effect_radius"
		}
	},
	["active_skill_area_of_effect_radius"]=2,
	["active_skill_base_area_of_effect_radius"]=3,
	["active_skill_base_secondary_area_of_effect_radius"]=1,
	parent="skill_stat_descriptions"
}