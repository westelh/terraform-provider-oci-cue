package fusion_apps

#resource: {
	attributes: {
		fusion_environment_family: {
			defined_tags?: [_]: string
			family_maintenance_policy?: [...{
				concurrent_maintenance?:        string
				is_monthly_patching_enabled?:   bool
				quarterly_upgrade_begin_times?: string
			}]
			time_updated?:                 string
			is_subscription_update_needed: bool
			system_name:                   string
			compartment_id!:               string
			lifecycle_details:             string
			state:                         string
			time_created:                  string
			display_name!:                 string
			freeform_tags?: [_]: string
			subscription_ids!: [...string]
		}
		fusion_environment_refresh_activity: {
			source_fusion_environment_id!: string
			refresh_issue_details_list: [...{
				refresh_issues: string
			}]
			state:                     string
			refresh_activity_id:       string
			service_availability:      string
			time_updated:              string
			time_of_restoration_point: string
			is_data_masking_opted?:    bool
			fusion_environment_id!:    string
			time_accepted:             string
			time_expected_finish:      string
			time_finished:             string
			lifecycle_details:         string
			display_name:              string
		}
		fusion_environment_service_attachment: {
			freeform_tags: [_]: string
			time_created:           string
			state:                  string
			service_instance_id!:   string
			compartment_id:         string
			display_name:           string
			service_instance_type!: string
			defined_tags?: [_]: string
			service_url:            string
			is_sku_based:           bool
			time_updated:           string
			fusion_environment_id!: string
		}
		fusion_environment: {
			time_created: string
			create_fusion_environment_admin_user_details!: [...{
				username!:      string
				password?:      string
				email_address!: string
				first_name!:    string
				last_name!:     string
			}]
			kms_key_info: [...{
				scheduled_key_id:            string
				scheduled_key_version:       string
				current_key_lifecycle_state: string
				scheduled_lifecycle_state:   string
				scheduled_key_status:        string
				active_key_id:               string
				active_key_version:          string
			}]
			is_break_glass_enabled: bool
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:                         string
			domain_id:                     string
			lockbox_id:                    string
			display_name!:                 string
			public_url:                    string
			compartment_id!:               string
			kms_key_id?:                   string
			fusion_environment_family_id!: string
			maintenance_policy?: [...{
				environment_maintenance_override?: string
				monthly_patching_override?:        string
				quarterly_upgrade_begin_times: [...{
					begin_times_value: string
					override_type:     string
				}]
			}]
			subscription_ids: [...string]
			time_upcoming_maintenance: string
			rules?: [...{
				action!: string
				conditions!: [...{
					attribute_name!:  string
					attribute_value!: string
				}]
				description?: string
			}]
			lifecycle_details: string
			additional_language_packs?: [...string]
			system_name: string
			dns_prefix?: string
			version:     string
			refresh: [...{
				source_fusion_environment_id: string
				time_finished:                string
				time_of_restoration_point:    string
			}]
			time_updated: string
			applied_patch_bundles: [...string]
			fusion_environment_type!: string
			idcs_domain_url:          string
		}
		fusion_environment_admin_user: {
			username!: string
			password?: string
			items: [...{
				email_address: string
				first_name:    string
				last_name:     string
				username:      string
			}]
			email_address!:         string
			first_name!:            string
			fusion_environment_id!: string
			last_name!:             string
		}
		fusion_environment_data_masking_activity: {
			time_masking_start:      string
			fusion_environment_id!:  string
			is_resume_data_masking?: bool
			state:                   string
			time_masking_finish:     string
		}
	}
	arguments: {
		fusion_environment_family: {
			time_updated?: string
			display_name!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			subscription_ids!: [...string]
			defined_tags?: [_]: string
			family_maintenance_policy?: [...{
				concurrent_maintenance?:        string
				is_monthly_patching_enabled?:   bool
				quarterly_upgrade_begin_times?: string
			}]
		}
		fusion_environment_refresh_activity: {
			fusion_environment_id!:        string
			source_fusion_environment_id!: string
			is_data_masking_opted?:        bool
		}
		fusion_environment_service_attachment: {
			fusion_environment_id!: string
			service_instance_type!: string
			defined_tags?: [_]: string
			service_instance_id!: string
		}
		fusion_environment: {
			create_fusion_environment_admin_user_details!: [...{
				password?:      string
				email_address!: string
				first_name!:    string
				last_name!:     string
				username!:      string
			}]
			rules?: [...{
				action!: string
				conditions!: [...{
					attribute_name!:  string
					attribute_value!: string
				}]
				description?: string
			}]
			dns_prefix?: string
			additional_language_packs?: [...string]
			maintenance_policy?: [...{
				environment_maintenance_override?: string
				monthly_patching_override?:        string
			}]
			display_name!: string
			freeform_tags?: [_]: string
			kms_key_id?: string
			defined_tags?: [_]: string
			fusion_environment_type!:      string
			compartment_id!:               string
			fusion_environment_family_id!: string
		}
		fusion_environment_admin_user: {
			last_name!:             string
			username!:              string
			password?:              string
			email_address!:         string
			first_name!:            string
			fusion_environment_id!: string
		}
		fusion_environment_data_masking_activity: {
			fusion_environment_id!:  string
			is_resume_data_masking?: bool
		}
	}
}
#data: {
	fusion_environment_family_limits_and_usage: fusion_environment_family_id!: string
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
	fusion_environment_service_attachment: {
		fusion_environment_id!: string
		service_attachment_id!: string
	}
	fusion_environment: fusion_environment_id!: string
	fusion_environment_admin_user: fusion_environment_id!: string
	fusion_environment_admin_users: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fusion_environment_id!: string
	}
	fusion_environment_data_masking_activity: {
		data_masking_activity_id!: string
		fusion_environment_id!:    string
	}
	fusion_environment_refresh_activity: {
		refresh_activity_id!:   string
		fusion_environment_id!: string
	}
	fusion_environment_family_subscription_detail: fusion_environment_family_id!: string
	fusion_environment_scheduled_activity: {
		scheduled_activity_id!: string
		fusion_environment_id!: string
	}
	fusion_environment_time_available_for_refresh: fusion_environment_id!: string
	fusion_environment_service_attachments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:          string
		fusion_environment_id!: string
		service_instance_type?: string
		state?:                 string
	}
	fusion_environment_status: fusion_environment_id!: string
	fusion_environment_time_available_for_refreshs: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		fusion_environment_id!: string
	}
	fusion_environments: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:               string
		display_name?:                 string
		fusion_environment_family_id?: string
		state?:                        string
	}
	fusion_environment_data_masking_activities: {
		fusion_environment_id!: string
		state?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	fusion_environment_families: {
		display_name?:                 string
		fusion_environment_family_id?: string
		state?:                        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	fusion_environment_family: fusion_environment_family_id!: string
	fusion_environment_scheduled_activities: {
		run_cycle?:                                     string
		state?:                                         string
		time_expected_finish_less_than_or_equal_to?:    string
		time_scheduled_start_greater_than_or_equal_to?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:          string
		fusion_environment_id!: string
	}
}

