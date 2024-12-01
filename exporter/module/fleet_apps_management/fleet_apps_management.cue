package fleet_apps_management

#resource: {
	attributes: {
		scheduler_definition: {
			state: string
			action_group_types: [...string]
			schedule!: [...{
				duration?:              string
				maintenance_window_id?: string
				recurrences?:           string
				execution_startdate!:   string
				type!:                  string
			}]
			time_created:              string
			count_of_affected_targets: int
			run_books?: [...{
				id!: string
				input_parameters?: [...{
					step_name!: string
					arguments?: [...{
						name!:  string
						value?: string
					}]
				}]
			}]
			display_name?: string
			time_updated:  string
			action_groups!: [...{
				lifecycle_operation?: string
				product?:             string
				subjects?: [...string]
				target_id?:        string
				type?:             string
				resource_id!:      string
				runbook_id!:       string
				application_type?: string
			}]
			freeform_tags?: [_]: string
			time_of_next_run: string
			application_types: [...string]
			activity_initiation_cut_off?: int
			products: [...string]
			count_of_affected_action_groups: int
			count_of_affected_resources:     int
			defined_tags?: [_]: string
			resource_region: string
			system_tags: [_]: string
			compartment_id!:   string
			lifecycle_details: string
			lifecycle_operations: [...string]
			description?: string
		}
		fleet: {
			time_created:      string
			compartment_id!:   string
			description?:      string
			application_type?: string
			state:             string
			resource_region:   string
			group_type?:       string
			rule_selection_criteria?: [...{
				rules!: [...{
					conditions!: [...{
						attr_group!: string
						attr_key!:   string
						attr_value!: string
					}]
					resource_compartment_id!: string
					basis?:                   string
					compartment_id!:          string
				}]
				match_condition!: string
			}]
			time_updated: string
			system_tags: [_]: string
			notification_preferences?: [...{
				compartment_id!: string
				topic_id!:       string
				preferences?: [...{
					on_topology_modification?: bool
					on_upcoming_schedule?:     bool
					on_job_failure?:           bool
				}]
			}]
			products?: [...string]
			defined_tags?: [_]: string
			is_target_auto_confirm?: bool
			freeform_tags?: [_]: string
			fleet_type!:              string
			lifecycle_details:        string
			environment_type?:        string
			resource_selection_type?: string
			display_name?:            string
		}
		fleet_credential: {
			compartment_id!: string
			user!: [...{
				credential_type!: string
				key_id?:          string
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
			}]
			lifecycle_details: string
			system_tags: [_]: string
			time_created:  string
			time_updated:  string
			display_name!: string
			entity_specifics!: [...{
				credential_level!: string
				resource_id!:      string
				target!:           string
			}]
			fleet_id!: string
			password!: [...{
				credential_type!: string
				key_id?:          string
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
			}]
			state: string
		}
		fleet_property: {
			selection_type: string
			system_tags: [_]: string
			time_updated:    string
			property_id!:    string
			time_created:    string
			value_type:      string
			compartment_id!: string
			display_name:    string
			value!:          string
			allowed_values: [...string]
			fleet_id!: string
			state:     string
		}
		fleet_resource: {
			application_type: string
			environment_type: string
			product_count:    int
			compartment_id!:  string
			tenancy_name:     string
			tenancy_id!:      string
			compliance_state: string
			fleet_id!:        string
			time_created:     string
			product:          string
			display_name:     string
			system_tags: [_]: string
			state:             string
			resource_region?:  string
			time_updated:      string
			resource_id!:      string
			resource_type?:    string
			lifecycle_details: string
			compartment:       string
			target_count:      int
		}
		maintenance_window: {
			time_created:         string
			recurrences?:         string
			time_schedule_start?: string
			resource_region:      string
			system_tags: [_]: string
			is_recurring?: bool
			time_updated:  string
			freeform_tags?: [_]: string
			compartment_id!:          string
			lifecycle_details:        string
			is_outage?:               bool
			task_initiation_cutoff?:  int
			description?:             string
			display_name?:            string
			maintenance_window_type?: string
			duration!:                string
			state:                    string
			defined_tags?: [_]: string
		}
		onboarding: {
			time_updated:                  string
			is_cost_tracking_tag_enabled?: bool
			is_fams_tag_enabled?:          bool
			resource_region:               string
			time_created:                  string
			version:                       string
			state:                         string
			system_tags: [_]: string
			compartment_id!: string
		}
		property: {
			time_created: string
			freeform_tags: [_]: string
			display_name?: string
			time_updated:  string
			type:          string
			defined_tags: [_]: string
			lifecycle_details: string
			resource_region:   string
			state:             string
			compartment_id!:   string
			selection!:        string
			values?: [...string]
			scope: string
			system_tags: [_]: string
			value_type!: string
		}
	}
	arguments: {
		scheduler_definition: {
			action_groups!: [...{
				application_type?:    string
				lifecycle_operation?: string
				product?:             string
				subjects?: [...string]
				target_id?:   string
				type?:        string
				resource_id!: string
				runbook_id!:  string
			}]
			description?:  string
			display_name?: string
			schedule!: [...{
				recurrences?:           string
				execution_startdate!:   string
				type!:                  string
				duration?:              string
				maintenance_window_id?: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:              string
			activity_initiation_cut_off?: int
			run_books?: [...{
				id!: string
				input_parameters?: [...{
					step_name!: string
					arguments?: [...{
						value?: string
						name!:  string
					}]
				}]
			}]
		}
		fleet: {
			resource_selection_type?: string
			freeform_tags?: [_]: string
			fleet_type!: string
			rule_selection_criteria?: [...{
				rules!: [...{
					basis?:          string
					compartment_id!: string
					conditions!: [...{
						attr_value!: string
						attr_group!: string
						attr_key!:   string
					}]
					resource_compartment_id!: string
				}]
				match_condition!: string
			}]
			compartment_id!:   string
			environment_type?: string
			notification_preferences?: [...{
				preferences?: [...{
					on_job_failure?:           bool
					on_topology_modification?: bool
					on_upcoming_schedule?:     bool
				}]
				compartment_id!: string
				topic_id!:       string
			}]
			defined_tags?: [_]: string
			products?: [...string]
			group_type?:             string
			description?:            string
			application_type?:       string
			display_name?:           string
			is_target_auto_confirm?: bool
		}
		fleet_credential: {
			fleet_id!: string
			password!: [...{
				value?:           string
				vault_id?:        string
				credential_type!: string
				key_id?:          string
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
			}]
			user!: [...{
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
				credential_type!: string
				key_id?:          string
			}]
			compartment_id!: string
			display_name!:   string
			entity_specifics!: [...{
				target!:           string
				credential_level!: string
				resource_id!:      string
			}]
		}
		fleet_property: {
			fleet_id!:       string
			property_id!:    string
			value!:          string
			compartment_id!: string
		}
		fleet_resource: {
			resource_region?: string
			fleet_id!:        string
			compartment_id!:  string
			resource_id!:     string
			resource_type?:   string
			tenancy_id!:      string
		}
		maintenance_window: {
			compartment_id!:          string
			is_outage?:               bool
			description?:             string
			maintenance_window_type?: string
			defined_tags?: [_]: string
			task_initiation_cutoff?: int
			display_name?:           string
			recurrences?:            string
			time_schedule_start?:    string
			duration!:               string
			freeform_tags?: [_]: string
			is_recurring?: bool
		}
		onboarding: {
			compartment_id!:               string
			is_cost_tracking_tag_enabled?: bool
			is_fams_tag_enabled?:          bool
		}
		property: {
			compartment_id!: string
			value_type!:     string
			display_name?:   string
			values?: [...string]
			selection!: string
		}
	}
}
#data: {
	maintenance_window: maintenance_window_id!: string
	properties: {
		display_name?: string
		id?:           string
		scope?:        string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	property: property_id!: string
	runbook: runbook_id!: string
	task_records: {
		state?: string
		type?:  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		platform?:       string
	}
	fleet_credential: {
		fleet_credential_id!: string
		fleet_id!:            string
	}
	fleet_resource: {
		fleet_resource_id!: string
		fleet_id!:          string
	}
	fleet_compliance_report: {
		compliance_report_id!: string
		fleet_id!:             string
	}
	fleet_products: {
		fleet_id!:              string
		resource_display_name?: string
		resource_id?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	fleet_properties: {
		fleet_id!: string
		id?:       string
		state?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	inventory_resources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		resource_compartment_id!: string
		resource_region?:         string
		matching_criteria?:       string
		compartment_id!:          string
		display_name?:            string
		freeform_tag_equals?: [...string]
		state?: string
		defined_tag_equals?: [...string]
		inventory_properties?: [...string]
	}
	scheduler_definition_scheduled_fleets: {
		display_name?:            string
		scheduler_definition_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	announcements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:     string
		summary_contains?: string
	}
	fleet: fleet_id!: string
	maintenance_windows: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	onboarding_policies: filter?: [...{
		regex?: *false | bool
		name!:  string
		values!: [...string]
	}]
	scheduler_definition: scheduler_definition_id!: string
	scheduler_definitions: {
		id?:       string
		fleet_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:          string
		maintenance_window_id?: string
		product?:               string
		state?:                 string
		compartment_id?:        string
	}
	task_record: task_record_id!: string
	fleet_credentials: {
		credential_level?: string
		display_name?:     string
		fleet_id!:         string
		id?:               string
		state?:            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	fleet_resources: {
		state?:      string
		tenancy_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:        string
		fleet_id!:            string
		fleet_resource_type?: string
		id?:                  string
	}
	fleets: {
		display_name?:     string
		environment_type?: string
		id?:               string
		application_type?: string
		fleet_type?:       string
		state?:            string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		product?:        string
	}
	onboardings: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		id?:             string
		state?:          string
	}
	runbooks: {
		platform?:          string
		id?:                string
		runbook_relevance?: string
		state?:             string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		operation?:      string
		display_name?:   string
		type?:           string
	}
	fleet_property: {
		fleet_id!:          string
		fleet_property_id!: string
	}
	fleet_targets: {
		resource_display_name?: string
		resource_id?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?: string
		fleet_id!:     string
		product?:      string
	}
}

