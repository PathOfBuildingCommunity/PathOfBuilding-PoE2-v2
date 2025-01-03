-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="base_skill_effect_duration"
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
						[1]="#",
						[2]="#"
					}
				},
				text="Charging time {0}s"
			}
		},
		stats={
			[1]="display_rapid_shot_charge_up_time_ms"
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
				text="Damage Gained as extra Fire per Heat {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Rapid Shots Gain {0}% of Damage as extra Fire Damage per Heat"
			}
		},
		stats={
			[1]="rapid_shot_all_damage_%_to_gain_as_fire_per_stack"
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
				text="Attack time required to charge {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Charges for {0}% of Attack Time before firing if used when you have no Heat"
			}
		},
		stats={
			[1]="rapid_shot_charge_up_time_as_%_of_attack_time"
		}
	},
	[5]={
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
				text="Heat gained per second {0}"
			},
			[2]={
				limit={
					[1]={
						[1]=60,
						[2]=60
					}
				},
				text="Gain Heat once per second while firing"
			},
			[3]={
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
				text="Gain Heat {0} times per second while firing"
			}
		},
		stats={
			[1]="rapid_shot_heat_gained_per_minue_while_performing"
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
				text="Grenade Damage Gained as extra Fire per Heat {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Grenades Gain {0}% of Damage as extra Fire Damage per Heat"
			}
		},
		stats={
			[1]="rapid_shot_next_grenade_all_damage_%_to_gain_as_fire_per_stack"
		}
	},
	["base_skill_effect_duration"]=1,
	["display_rapid_shot_charge_up_time_ms"]=2,
	parent="skill_stat_descriptions",
	["rapid_shot_all_damage_%_to_gain_as_fire_per_stack"]=3,
	["rapid_shot_charge_up_time_as_%_of_attack_time"]=4,
	["rapid_shot_heat_gained_per_minue_while_performing"]=5,
	["rapid_shot_next_grenade_all_damage_%_to_gain_as_fire_per_stack"]=6
}