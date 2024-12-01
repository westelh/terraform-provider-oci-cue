package fleet_software_update

#resource: {
	attributes: {
		fsu_collection: {
			system_tags: [_]: string
			target_count:      int
			compartment_id!:   string
			service_type!:     string
			type!:             string
			display_name?:     string
			lifecycle_details: string
			state:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			active_fsu_cycle: [...{
				display_name: string
				id:           string
			}]
			time_created: string
			time_updated: string
			id?:          string
			fleet_discovery?: [...{
				targets?: [...string]
				strategy!: string
				filters?: [...{
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
					identifiers?: [...string]
				}]
				fsu_discovery_id?: string
				query?:            string
			}]
			source_major_version!: string
		}
		fsu_cycle: {
			compartment_id!: string
			stage_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			goal_version_details!: [...{
				software_image_id?: string
				version?:           string
				type!:              string
				home_policy?:       string
				new_home_prefix?:   string
			}]
			fsu_collection_id!: string
			display_name?:      string
			is_ignore_missing_patches?: [...string]
			executing_fsu_action_id: string
			time_updated:            string
			type!:                   string
			collection_type:         string
			last_completed_action:   string
			time_finished:           string
			lifecycle_details:       string
			defined_tags?: [_]: string
			state: string
			next_action_to_execute: [...{
				time_to_start: string
				type:          string
			}]
			freeform_tags?: [_]: string
			is_ignore_patches?: bool
			apply_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			diagnostics_collection?: [...{
				log_collection_mode?: string
			}]
			system_tags: [_]: string
			max_drain_timeout_in_seconds?: int
			time_created:                  string
			batching_strategy?: [...{
				type?:                     string
				is_force_rolling?:         bool
				is_wait_for_batch_resume?: bool
				percentage?:               int
			}]
			is_keep_placement?: bool
		}
	}
	arguments: {
		fsu_collection: {
			defined_tags?: [_]: string
			fleet_discovery?: [...{
				filters?: [...{
					operator?: string
					tags?: [...{
						namespace?: string
						key!:       string
						value!:     string
					}]
					versions?: [...string]
					type!:        string
					entity_type?: string
					identifiers?: [...string]
					mode?: string
					names?: [...string]
				}]
				fsu_discovery_id?: string
				query?:            string
				targets?: [...string]
				strategy!: string
			}]
			source_major_version!: string
			type!:                 string
			id?:                   string
			display_name?:         string
			freeform_tags?: [_]: string
			compartment_id!: string
			service_type!:   string
		}
		fsu_cycle: {
			stage_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			display_name?: string
			apply_action_schedule?: [...{
				time_to_start!: string
				type!:          string
			}]
			diagnostics_collection?: [...{
				log_collection_mode?: string
			}]
			is_ignore_patches?: bool
			batching_strategy?: [...{
				is_force_rolling?:         bool
				is_wait_for_batch_resume?: bool
				percentage?:               int
				type?:                     string
			}]
			freeform_tags?: [_]: string
			is_ignore_missing_patches?: [...string]
			defined_tags?: [_]: string
			max_drain_timeout_in_seconds?: int
			fsu_collection_id!:            string
			is_keep_placement?:            bool
			compartment_id!:               string
			goal_version_details!: [...{
				software_image_id?: string
				version?:           string
				type!:              string
				home_policy?:       string
				new_home_prefix?:   string
			}]
			type!: string
		}
	}
}
#data: {
	fsu_collection: fsu_collection_id!: string
	fsu_collections: {
		display_name?: string
		state?:        string
		type?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	fsu_cycle: fsu_cycle_id!: string
	fsu_cycles: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		collection_type?:   string
		compartment_id!:    string
		display_name?:      string
		fsu_collection_id?: string
		state?:             string
		target_version?:    string
	}
}

