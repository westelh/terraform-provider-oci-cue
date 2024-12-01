package fleet_software_update

#resource: {
	attributes: {
		fsu_cycle: {
			state:                   string
			executing_fsu_action_id: string
			display_name?:           string
			is_ignore_missing_patches?: [...string]
			batching_strategy?: [...{
				is_force_rolling?:         bool
				is_wait_for_batch_resume?: bool
				percentage?:               int
				type?:                     string
			}]
			diagnostics_collection?: [...{
				log_collection_mode?: string
			}]
			last_completed_action: string
			lifecycle_details:     string
			defined_tags?: [_]: string
			time_updated:       string
			type!:              string
			is_ignore_patches?: bool
			is_keep_placement?: bool
			next_action_to_execute: [...{
				time_to_start: string
				type:          string
			}]
			system_tags: [_]: string
			time_finished: string
			goal_version_details!: [...{
				type!:              string
				home_policy?:       string
				new_home_prefix?:   string
				software_image_id?: string
				version?:           string
			}]
			time_created:                  string
			compartment_id!:               string
			fsu_collection_id!:            string
			max_drain_timeout_in_seconds?: int
			stage_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			apply_action_schedule?: [...{
				type!:          string
				time_to_start!: string
			}]
			collection_type: string
			freeform_tags?: [_]: string
		}
		fsu_collection: {
			service_type!: string
			time_updated:  string
			display_name?: string
			id?:           string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			state:             string
			system_tags: [_]: string
			type!:                 string
			source_major_version!: string
			target_count:          int
			compartment_id!:       string
			active_fsu_cycle: [...{
				id:           string
				display_name: string
			}]
			defined_tags?: [_]: string
			fleet_discovery?: [...{
				strategy!: string
				filters?: [...{
					identifiers?: [...string]
					mode?: string
					names?: [...string]
					operator?: string
					tags?: [...{
						key!:       string
						value!:     string
						namespace?: string
					}]
					versions?: [...string]
					type!:        string
					entity_type?: string
				}]
				fsu_discovery_id?: string
				query?:            string
				targets?: [...string]
			}]
		}
	}
	arguments: {
		fsu_cycle: {
			batching_strategy?: [...{
				is_wait_for_batch_resume?: bool
				percentage?:               int
				type?:                     string
				is_force_rolling?:         bool
			}]
			is_ignore_patches?: bool
			type!:              string
			display_name?:      string
			fsu_collection_id!: string
			diagnostics_collection?: [...{
				log_collection_mode?: string
			}]
			max_drain_timeout_in_seconds?: int
			is_ignore_missing_patches?: [...string]
			compartment_id!: string
			goal_version_details!: [...{
				new_home_prefix?:   string
				software_image_id?: string
				version?:           string
				type!:              string
				home_policy?:       string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_keep_placement?: bool
			apply_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			stage_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
		}
		fsu_collection: {
			compartment_id!: string
			display_name?:   string
			type!:           string
			defined_tags?: [_]: string
			source_major_version!: string
			id?:                   string
			freeform_tags?: [_]: string
			fleet_discovery?: [...{
				targets?: [...string]
				strategy!: string
				filters?: [...{
					type!:        string
					entity_type?: string
					identifiers?: [...string]
					mode?: string
					names?: [...string]
					operator?: string
					tags?: [...{
						namespace?: string
						key!:       string
						value!:     string
					}]
					versions?: [...string]
				}]
				fsu_discovery_id?: string
				query?:            string
			}]
			service_type!: string
		}
	}
}
#data: {
	fsu_collection: fsu_collection_id!: string
	fsu_collections: {
		type?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	fsu_cycle: fsu_cycle_id!: string
	fsu_cycles: {
		display_name?:      string
		fsu_collection_id?: string
		state?:             string
		target_version?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		collection_type?: string
		compartment_id!:  string
	}
}

