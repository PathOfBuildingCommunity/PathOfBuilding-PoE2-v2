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
				text="Base Explosion radius is {0} metre"
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
				text="Base Explosion radius is {0} metres"
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
						[1]=2,
						[2]="#"
					},
					[2]={
						[1]="#",
						[2]="#"
					}
				},
				text="Fires {0} fragments per shot"
			}
		},
		stats={
			[1]="base_number_of_projectiles",
			[2]="skill_can_fire_arrows"
		}
	},
	[5]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]=1,
						[2]=1
					}
				},
				text="Bolts Pierce {0} Target"
			},
			[2]={
				limit={
					[1]={
						[1]=2,
						[2]="#"
					}
				},
				text="Bolts Pierce {0} Targets"
			}
		},
		stats={
			[1]="projectile_base_number_of_targets_to_pierce"
		}
	},
	[6]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Multiple fragments can Hit the same target, combining Damage"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Multiple fragments can Hit the same target\nMultiple Fragments hitting a target simultaniously will combine their damage into a single Hit"
			}
		},
		stats={
			[1]="projectiles_can_shotgun"
		}
	},
	["active_skill_area_of_effect_radius"]=2,
	["active_skill_base_area_of_effect_radius"]=3,
	["base_number_of_projectiles"]=4,
	["never_freeze"]=1,
	parent="skill_stat_descriptions",
	["projectile_base_number_of_targets_to_pierce"]=5,
	["projectiles_can_shotgun"]=6,
	["skill_can_fire_arrows"]=4
}