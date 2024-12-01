package fleet_apps_management

#resource: {
	attributes: {
		fleet_resource: {
			resource_region?:  string
			fleet_id!:         string
			tenancy_name:      string
			application_type:  string
			display_name:      string
			product_count:     int
			compartment_id!:   string
			lifecycle_details: string
			resource_type?:    string
			target_count:      int
			time_created:      string
			tenancy_id!:       string
			compartment:       string
			product:           string
			state:             string
			compliance_state:  string
			resource_id!:      string
			environment_type:  string
			system_tags: [_]: string
			time_updated: string
		}
		maintenance_window: {
			lifecycle_details: string
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			task_initiation_cutoff?:  int
			time_schedule_start?:     string
			resource_region:          string
			time_created:             string
			duration!:                string
			maintenance_window_type?: string
			time_updated:             string
			recurrences?:             string
			state:                    string
			system_tags: [_]: string
			display_name?: string
			is_outage?:    bool
			description?:  string
			is_recurring?: bool
		}
		onboarding: {
			system_tags: [_]: string
			time_created:                  string
			version:                       string
			compartment_id!:               string
			is_fams_tag_enabled?:          bool
			state:                         string
			resource_region:               string
			time_updated:                  string
			is_cost_tracking_tag_enabled?: bool
		}
		property: {
			lifecycle_details: string
			time_created:      string
			value_type!:       string
			defined_tags: [_]: string
			selection!: string
			freeform_tags: [_]: string
			type:          string
			display_name?: string
			state:         string
			scope:         string
			system_tags: [_]: string
			compartment_id!: string
			resource_region: string
			time_updated:    string
			values?: [...string]
		}
		scheduler_definition: {
			compartment_id!: string
			action_group_types: [...string]
			resource_region:           string
			count_of_affected_targets: int
			action_groups!: [...{
				resource_id!:         string
				runbook_id!:          string
				application_type?:    string
				lifecycle_operation?: string
				product?:             string
				subjects?: [...string]
				target_id?: string
				type?:      string
			}]
			description?: string
			application_types: [...string]
			lifecycle_details: string
			lifecycle_operations: [...string]
			count_of_affected_resources:  int
			activity_initiation_cut_off?: int
			products: [...string]
			time_updated:     string
			time_of_next_run: string
			schedule!: [...{
				execution_startdate!:   string
				type!:                  string
				duration?:              string
				maintenance_window_id?: string
				recurrences?:           string
			}]
			count_of_affected_action_groups: int
			system_tags: [_]: string
			time_created: string
			freeform_tags?: [_]: string
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
			state: string
			defined_tags?: [_]: string
			display_name?: string
		}
		fleet: {
			notification_preferences?: [...{
				compartment_id!: string
				topic_id!:       string
				preferences?: [...{
					on_job_failure?:           bool
					on_topology_modification?: bool
					on_upcoming_schedule?:     bool
				}]
			}]
			products?: [...string]
			system_tags: [_]: string
			fleet_type!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			is_target_auto_confirm?:  bool
			lifecycle_details:        string
			application_type?:        string
			resource_selection_type?: string
			time_updated:             string
			time_created:             string
			resource_region:          string
			description?:             string
			rule_selection_criteria?: [...{
				match_condition!: string
				rules!: [...{
					compartment_id!: string
					conditions!: [...{
						attr_value!: string
						attr_group!: string
						attr_key!:   string
					}]
					resource_compartment_id!: string
					basis?:                   string
				}]
			}]
			group_type?:       string
			display_name?:     string
			environment_type?: string
			compartment_id!:   string
			state:             string
		}
		fleet_credential: {
			entity_specifics!: [...{
				resource_id!:      string
				target!:           string
				credential_level!: string
			}]
			password!: [...{
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
				credential_type!: string
				key_id?:          string
			}]
			state:         string
			time_updated:  string
			display_name!: string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			fleet_id!:       string
			user!: [...{
				key_id?:          string
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
				credential_type!: string
			}]
			lifecycle_details: string
		}
		fleet_property: {
			value_type:      string
			value!:          string
			compartment_id!: string
			property_id!:    string
			selection_type:  string
			system_tags: [_]: string
			fleet_id!: string
			allowed_values: [...string]
			state:        string
			time_created: string
			time_updated: string
			display_name: string
		}
	}
	arguments: {
		fleet_resource: {
			fleet_id!:        string
			resource_id!:     string
			compartment_id!:  string
			tenancy_id!:      string
			resource_region?: string
			resource_type?:   string
		}
		maintenance_window: {
			task_initiation_cutoff?: int
			defined_tags?: [_]: string
			is_recurring?:        bool
			compartment_id!:      string
			display_name?:        string
			recurrences?:         string
			description?:         string
			time_schedule_start?: string
			freeform_tags?: [_]: string
			is_outage?:               bool
			duration!:                string
			maintenance_window_type?: string
		}
		onboarding: {
			compartment_id!:               string
			is_cost_tracking_tag_enabled?: bool
			is_fams_tag_enabled?:          bool
		}
		property: {
			values?: [...string]
			compartment_id!: string
			selection!:      string
			display_name?:   string
			value_type!:     string
		}
		scheduler_definition: {
			run_books?: [...{
				id!: string
				input_parameters?: [...{
					arguments?: [...{
						value?: string
						name!:  string
					}]
					step_name!: string
				}]
			}]
			schedule!: [...{
				recurrences?:           string
				execution_startdate!:   string
				type!:                  string
				duration?:              string
				maintenance_window_id?: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:                string
			activity_initiation_cut_off?: int
			freeform_tags?: [_]: string
			action_groups!: [...{
				runbook_id!:          string
				application_type?:    string
				lifecycle_operation?: string
				product?:             string
				subjects?: [...string]
				target_id?:   string
				type?:        string
				resource_id!: string
			}]
			description?: string
		}
		fleet: {
			application_type?:       string
			environment_type?:       string
			is_target_auto_confirm?: bool
			compartment_id!:         string
			defined_tags?: [_]: string
			display_name?:            string
			resource_selection_type?: string
			rule_selection_criteria?: [...{
				match_condition!: string
				rules!: [...{
					compartment_id!: string
					conditions!: [...{
						attr_group!: string
						attr_key!:   string
						attr_value!: string
					}]
					resource_compartment_id!: string
					basis?:                   string
				}]
			}]
			products?: [...string]
			freeform_tags?: [_]: string
			description?: string
			group_type?:  string
			notification_preferences?: [...{
				preferences?: [...{
					on_job_failure?:           bool
					on_topology_modification?: bool
					on_upcoming_schedule?:     bool
				}]
				compartment_id!: string
				topic_id!:       string
			}]
			fleet_type!: string
		}
		fleet_credential: {
			display_name!: string
			fleet_id!:     string
			user!: [...{
				secret_id?:       string
				secret_version?:  string
				value?:           string
				vault_id?:        string
				credential_type!: string
				key_id?:          string
				key_version?:     string
			}]
			compartment_id!: string
			entity_specifics!: [...{
				credential_level!: string
				resource_id!:      string
				target!:           string
			}]
			password!: [...{
				vault_id?:        string
				credential_type!: string
				key_id?:          string
				key_version?:     string
				secret_id?:       string
				secret_version?:  string
				value?:           string
			}]
		}
		fleet_property: {
			compartment_id!: string
			property_id!:    string
			fleet_id!:       string
			value!:          string
		}
	}
}
#data: {
	maintenance_windows: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	properties: {
		scope?: string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
	scheduler_definition_scheduled_fleets: {
		display_name?:            string
		scheduler_definition_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	scheduler_definitions: {
		id?:                    string
		fleet_id?:              string
		maintenance_window_id?: string
		state?:                 string
		compartment_id?:        string
		display_name?:          string
		product?:               string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	task_records: {
		display_name?: string
		id?:           string
		platform?:     string
		state?:        string
		type?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
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
	fleet_products: {
		fleet_id!:              string
		resource_display_name?: string
		resource_id?:           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
	}
	fleets: {
		state?:            string
		environment_type?: string
		fleet_type?:       string
		application_type?: string
		product?:          string
		compartment_id?:   string
		display_name?:     string
		id?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	fleet_resource: {
		fleet_resource_id!: string
		fleet_id!:          string
	}
	fleet_resources: {
		tenancy_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:        string
		fleet_id!:            string
		fleet_resource_type?: string
		id?:                  string
		state?:               string
	}
	maintenance_window: maintenance_window_id!: string
	onboarding_policies: filter?: [...{
		values!: [...string]
		regex?: *false | bool
		name!:  string
	}]
	runbook: runbook_id!: string
	fleet: fleet_id!: string
	fleet_credential: {
		fleet_credential_id!: string
		fleet_id!:            string
	}
	fleet_credentials: {
		display_name?: string
		fleet_id!:     string
		id?:           string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:   string
		credential_level?: string
	}
	task_record: task_record_id!: string
	onboardings: {
		id?:    string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	runbooks: {
		id?:       string
		platform?: string
		state?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:    string
		operation?:         string
		runbook_relevance?: string
		type?:              string
		display_name?:      string
	}
	scheduler_definition: scheduler_definition_id!: string
	fleet_properties: {
		fleet_id!: string
		id?:       string
		state?:    string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
	}
	fleet_property: {
		fleet_id!:          string
		fleet_property_id!: string
	}
	inventory_resources: {
		inventory_properties?: [...string]
		resource_region?:         string
		resource_compartment_id!: string
		state?:                   string
		defined_tag_equals?: [...string]
		freeform_tag_equals?: [...string]
		matching_criteria?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	fleet_compliance_report: {
		compliance_report_id!: string
		fleet_id!:             string
	}
	fleet_targets: {
		display_name?:          string
		fleet_id!:              string
		product?:               string
		resource_display_name?: string
		resource_id?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	property: property_id!: string
}

