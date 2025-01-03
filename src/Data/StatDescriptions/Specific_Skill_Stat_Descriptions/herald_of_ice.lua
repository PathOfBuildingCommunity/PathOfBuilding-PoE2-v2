-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="never_freeze"
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
	[4]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					},
					[2]={
						[1]=0,
						[2]=0
					}
				},
				text="{0}% of Explosion Physical Damage\nConverted to Cold Damage"
			}
		},
		stats={
			[1]="active_skill_base_physical_damage_%_to_convert_to_cold",
			[2]="active_skill_display_suppress_physical_to_cold_damage_conversion"
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
				text="Enemies you Shatter explode"
			}
		},
		stats={
			[1]="display_herald_of_ice_behaviour"
		}
	},
	["active_skill_area_of_effect_radius"]=2,
	["active_skill_base_area_of_effect_radius"]=3,
	["active_skill_base_physical_damage_%_to_convert_to_cold"]=4,
	["active_skill_display_suppress_physical_to_cold_damage_conversion"]=4,
	["display_herald_of_ice_behaviour"]=5,
	["never_freeze"]=1,
	parent="skill_stat_descriptions"
}