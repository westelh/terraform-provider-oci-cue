package fusion_apps

#resource: {
	attributes: {
		fusion_environment: {
			create_fusion_environment_admin_user_details!: [...{
				first_name!:    string
				last_name!:     string
				username!:      string
				password?:      string
				email_address!: string
			}]
			lifecycle_details:             string
			version:                       string
			fusion_environment_family_id!: string
			maintenance_policy?: [...{
				environment_maintenance_override?: string
				monthly_patching_override?:        string
				quarterly_upgrade_begin_times: [...{
					override_type:     string
					begin_times_value: string
				}]
			}]
			kms_key_info: [...{
				scheduled_key_version:       string
				current_key_lifecycle_state: string
				scheduled_lifecycle_state:   string
				scheduled_key_status:        string
				active_key_id:               string
				active_key_version:          string
				scheduled_key_id:            string
			}]
			system_name:              string
			compartment_id!:          string
			dns_prefix?:              string
			public_url:               string
			domain_id:                string
			time_created:             string
			is_break_glass_enabled:   bool
			fusion_environment_type!: string
			kms_key_id?:              string
			subscription_ids: [...string]
			idcs_domain_url: string
			defined_tags?: [_]: string
			lockbox_id: string
			state:      string
			applied_patch_bundles: [...string]
			rules?: [...{
				description?: string
				action!:      string
				conditions!: [...{
					attribute_name!:  string
					attribute_value!: string
				}]
			}]
			refresh: [...{
				source_fusion_environment_id: string
				time_finished:                string
				time_of_restoration_point:    string
			}]
			freeform_tags?: [_]: string
			display_name!:             string
			time_upcoming_maintenance: string
			time_updated:              string
			additional_language_packs?: [...string]
		}
		fusion_environment_admin_user: {
			password?: string
			items: [...{
				username:      string
				email_address: string
				first_name:    string
				last_name:     string
			}]
			email_address!:         string
			first_name!:            string
			fusion_environment_id!: string
			last_name!:             string
			username!:              string
		}
		fusion_environment_data_masking_activity: {
			is_resume_data_masking?: bool
			state:                   string
			time_masking_finish:     string
			time_masking_start:      string
			fusion_environment_id!:  string
		}
		fusion_environment_family: {
			state: string
			defined_tags?: [_]: string
			family_maintenance_policy?: [...{
				concurrent_maintenance?:        string
				is_monthly_patching_enabled?:   bool
				quarterly_upgrade_begin_times?: string
			}]
			freeform_tags?: [_]: string
			time_created:                  string
			is_subscription_update_needed: bool
			compartment_id!:               string
			system_name:                   string
			display_name!:                 string
			time_updated?:                 string
			subscription_ids!: [...string]
			lifecycle_details: string
		}
		fusion_environment_refresh_activity: {
			time_updated:                  string
			source_fusion_environment_id!: string
			state:                         string
			refresh_activity_id:           string
			service_availability:          string
			is_data_masking_opted?:        bool
			time_finished:                 string
			lifecycle_details:             string
			time_expected_finish:          string
			refresh_issue_details_list: [...{
				refresh_issues: string
			}]
			time_accepted:             string
			time_of_restoration_point: string
			fusion_environment_id!:    string
			display_name:              string
		}
		fusion_environment_service_attachment: {
			state: string
			defined_tags?: [_]: string
			is_sku_based:         bool
			service_instance_id!: string
			freeform_tags: [_]: string
			time_updated:           string
			service_instance_type!: string
			compartment_id:         string
			display_name:           string
			fusion_environment_id!: string
			service_url:            string
			time_created:           string
		}
	}
	arguments: {
		fusion_environment: {
			defined_tags?: [_]: string
			dns_prefix?:     string
			compartment_id!: string
			additional_language_packs?: [...string]
			kms_key_id?:   string
			display_name!: string
			rules?: [...{
				action!: string
				conditions!: [...{
					attribute_name!:  string
					attribute_value!: string
				}]
				description?: string
			}]
			create_fusion_environment_admin_user_details!: [...{
				first_name!:    string
				last_name!:     string
				username!:      string
				password?:      string
				email_address!: string
			}]
			fusion_environment_type!:      string
			fusion_environment_family_id!: string
			freeform_tags?: [_]: string
			maintenance_policy?: [...{
				environment_maintenance_override?: string
				monthly_patching_override?:        string
			}]
		}
		fusion_environment_admin_user: {
			username!:              string
			password?:              string
			email_address!:         string
			first_name!:            string
			fusion_environment_id!: string
			last_name!:             string
		}
		fusion_environment_data_masking_activity: {
			fusion_environment_id!:  string
			is_resume_data_masking?: bool
		}
		fusion_environment_family: {
			subscription_ids!: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			family_maintenance_policy?: [...{
				concurrent_maintenance?:        string
				is_monthly_patching_enabled?:   bool
				quarterly_upgrade_begin_times?: string
			}]
			freeform_tags?: [_]: string
			display_name!: string
			time_updated?: string
		}
		fusion_environment_refresh_activity: {
			fusion_environment_id!:        string
			source_fusion_environment_id!: string
			is_data_masking_opted?:        bool
		}
		fusion_environment_service_attachment: {
			defined_tags?: [_]: string
			service_instance_type!: string
			service_instance_id!:   string
			fusion_environment_id!: string
		}
	}
}
#data: {
	fusion_environment_data_masking_activities: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fusion_environment_id!: string
	}
	fusion_environment_family_limits_and_usage: fusion_environment_family_id!: string
	fusion_environment_refresh_activity: {
		refresh_activity_id!:   string
		fusion_environment_id!: string
	}
	fusion_environment_time_available_for_refresh: fusion_environment_id!: string
	fusion_environment_admin_user: fusion_environment_id!: string
	fusion_environment_data_masking_activity: {
		data_masking_activity_id!: string
		fusion_environment_id!:    string
	}
	fusion_environment_family_subscription_detail: fusion_environment_family_id!: string
	fusion_environment_refresh_activities: {
		time_expected_finish_less_than_or_equal_to?:    string
		time_scheduled_start_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:          string
		fusion_environment_id!: string
		state?:                 string
	}
	fusion_environment_scheduled_activity: {
		scheduled_activity_id!: string
		fusion_environment_id!: string
	}
	fusion_environment_service_attachment: {
		fusion_environment_id!: string
		service_attachment_id!: string
	}
	fusion_environment_service_attachments: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:          string
		fusion_environment_id!: string
		service_instance_type?: string
	}
	fusion_environments: {
		display_name?:                 string
		fusion_environment_family_id?: string
		state?:                        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	fusion_environment_families: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:               string
		display_name?:                 string
		fusion_environment_family_id?: string
	}
	fusion_environment_family: fusion_environment_family_id!: string
	fusion_environment_scheduled_activities: {
		display_name?:                                  string
		fusion_environment_id!:                         string
		run_cycle?:                                     string
		state?:                                         string
		time_expected_finish_less_than_or_equal_to?:    string
		time_scheduled_start_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	fusion_environment_status: fusion_environment_id!: string
	fusion_environment_time_available_for_refreshs: {
		fusion_environment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	fusion_environment: fusion_environment_id!: string
	fusion_environment_admin_users: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fusion_environment_id!: string
	}
}

