-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		stats={
			[1]="active_skill_base_area_of_effect_radius"
		}
	},
	[2]={
		[1]={
			[1]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Lightning Spell Chains granted {0}"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]=1
					}
				},
				text="Buff causes Lightning Spells that cost Mana to Chain an additional time"
			},
			[3]={
				limit={
					[1]={
						[1]=2,
						[2]="#"
					}
				},
				text="Buff causes Lightning Spells that cost Mana to Chain {0} additional times"
			}
		},
		stats={
			[1]="mana_costing_lightning_spells_number_of_additional_beam_chains"
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
				text="Additional Chain targets granted {0}"
			},
			[2]={
				limit={
					[1]={
						[1]=1,
						[2]=1
					}
				},
				text="Buff causes Lightning Spells that cost Mana to also Chain to {0:+d} target when Chaining, but not Chain further from them"
			},
			[3]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Buff causes Lightning Spells that cost Mana to also Chain to {0:+d} targets when Chaining, but not Chain further from them"
			}
		},
		stats={
			[1]="mana_costing_lightning_spells_number_of_additional_beam_splits"
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
				text="Causes Lightning Spell Projectiles to Fork"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Projectiles from Empowered Lightning Spells Fork"
			}
		},
		stats={
			[1]="mana_costing_lightning_spells_projectiles_fork"
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
				text="Mana cost inherited from skills used {0}%"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="{0}% of Mana Spent while in the storm is\nadded to this Skill's Mana Cost per Second"
			}
		},
		stats={
			[1]="mana_tempest_mana_cost_%_to_add_to_cost_per_second"
		}
	},
	["active_skill_base_area_of_effect_radius"]=1,
	["mana_costing_lightning_spells_number_of_additional_beam_chains"]=2,
	["mana_costing_lightning_spells_number_of_additional_beam_splits"]=3,
	["mana_costing_lightning_spells_projectiles_fork"]=4,
	["mana_tempest_mana_cost_%_to_add_to_cost_per_second"]=5,
	parent="skill_stat_descriptions"
}