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
					k="divide_by_ten_1dp_if_required",
					v=1
				},
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Aura radius {0}m"
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
				text="Aura radius is {0} metre"
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
				text="Aura radius is {0} metres"
			}
		},
		stats={
			[1]="active_skill_base_area_of_effect_radius"
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
	[5]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Minion increased Attack and Cast Speed granted {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Aura grants Minions {0}% increased Attack and Cast Speed"
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
				text="Aura grants Minions {0}% reduced Attack and Cast Speed"
			}
		},
		stats={
			[1]="pain_offering_attack_and_cast_speed_+%"
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
				text="Minion more damage granted {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]="#"
					}
				},
				text="Aura grants Minions {0}% more Damage"
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
				text="Aura grants Minions {0}% less Damage"
			}
		},
		stats={
			[1]="pain_offering_damage_+%_final"
		}
	},
	[7]={
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
	["active_skill_area_of_effect_radius"]=2,
	["active_skill_base_area_of_effect_radius"]=3,
	["base_secondary_skill_effect_duration"]=1,
	["base_skill_effect_duration"]=4,
	["pain_offering_attack_and_cast_speed_+%"]=5,
	["pain_offering_damage_+%_final"]=6,
	parent="skill_stat_descriptions",
	["skill_effect_duration"]=7
}