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
				text="Maximum afterimages {0}"
			},
			[2]={
				limit={
					[1]={
						[1]="#",
						[2]="#"
					}
				},
				text="Maximum {0} afterimages"
			}
		},
		stats={
			[1]="temporal_rift_maximum_snapshots"
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
				text="Afterimage creation interval {0}s"
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
				text="Creates an afterimage every {0} seconds"
			}
		},
		stats={
			[1]="temporal_rift_snapshot_interval"
		}
	},
	parent="skill_stat_descriptions",
	["temporal_rift_maximum_snapshots"]=1,
	["temporal_rift_snapshot_interval"]=2
}