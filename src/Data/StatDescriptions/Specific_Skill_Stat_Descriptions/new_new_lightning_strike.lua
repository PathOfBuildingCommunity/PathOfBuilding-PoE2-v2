-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
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
				text="Cone length {0}m"
			}
		},
		stats={
			[1]="active_skill_area_of_effect_radius"
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
						[1]=10,
						[2]=10
					}
				},
				text="Cone length is {0} metre"
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
				text="Cone length is {0} metres"
			}
		},
		stats={
			[1]="active_skill_base_area_of_effect_radius"
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
				text="More Damage per Power Charge Consumed {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% more Damage per Power Charge Consumed"
			},
			[3]={
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
				text="{0}% less Damage per Power Charge Consumed"
			}
		},
		stats={
			[1]="lightning_strike_damage_+%_final_per_power_charge"
		}
	},
	[4]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="More Damage if Power Charge Consumed {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="{0}% more Damage if a Power Charge was Consumed"
			},
			[3]={
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
				text="{0}% less Damage if a Power Charge was Consumed"
			}
		},
		stats={
			[1]="lightning_strike_damage_+%_final_when_charged"
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
				text="Projectiles per Power Charge Consumed {0}"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]=1
					}
				},
				text="Fires {0} Projectile per Power Charge Consumed"
			},
			[3]={
				limit={
					[1]={
						[1]=2,
						[2]="#"
					}
				},
				text="Fires {0} Projectiles per Power Charge Consumed"
			}
		},
		stats={
			[1]="lightning_strike_base_number_of_projectiles_per_power_charge"
		}
	},
	["active_skill_area_of_effect_radius"]=1,
	["active_skill_base_area_of_effect_radius"]=2,
	["lightning_strike_base_number_of_projectiles_per_power_charge"]=5,
	["lightning_strike_damage_+%_final_per_power_charge"]=3,
	["lightning_strike_damage_+%_final_when_charged"]=4,
	parent="skill_stat_descriptions"
}