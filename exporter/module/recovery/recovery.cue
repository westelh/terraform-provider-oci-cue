package recovery

#resource: {
	attributes: {
		recovery_service_subnet: {
			time_created: string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			system_tags: [_]: string
			time_updated:    string
			display_name!:   string
			subnet_id?:      string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			lifecycle_details: string
			subnets?: [...string]
			state: string
		}
		protected_database: {
			metrics: [...{
				is_redo_logs_enabled:                bool
				minimum_recovery_needed_in_days:     float
				retention_period_in_days:            float
				unprotected_window_in_seconds:       float
				backup_space_estimate_in_gbs:        float
				backup_space_used_in_gbs:            float
				current_retention_period_in_seconds: float
				db_size_in_gbs:                      float
			}]
			db_unique_name!: string
			freeform_tags?: [_]: string
			health:                  string
			state:                   string
			protection_policy_id!:   string
			time_created:            string
			health_details:          string
			vpc_user_name:           string
			policy_locked_date_time: string
			database_id?:            string
			lifecycle_details:       string
			recovery_service_subnets!: [...{
				state:                       string
				recovery_service_subnet_id!: string
			}]
			is_redo_logs_shipped?: bool
			time_updated:          string
			deletion_schedule?:    string
			is_read_only_resource: bool
			compartment_id!:       string
			system_tags: [_]: string
			defined_tags?: [_]: string
			database_size?:   string
			display_name!:    string
			password!:        string
			subscription_id?: string
		}
		protection_policy: {
			time_updated:  string
			display_name!: string
			freeform_tags?: [_]: string
			is_predefined_policy: bool
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
			lifecycle_details:                string
			must_enforce_cloud_locality?:     bool
			compartment_id!:                  string
			policy_locked_date_time?:         string
			state:                            string
			backup_retention_period_in_days!: int
		}
	}
	arguments: {
		recovery_service_subnet: {
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!: string
			nsg_ids?: [...string]
			subnet_id?: string
			subnets?: [...string]
		}
		protected_database: {
			deletion_schedule?: string
			display_name!:      string
			password!:          string
			db_unique_name!:    string
			freeform_tags?: [_]: string
			database_size?:        string
			protection_policy_id!: string
			database_id?:          string
			recovery_service_subnets!: [...{
				recovery_service_subnet_id!: string
			}]
			subscription_id?: string
			defined_tags?: [_]: string
			is_redo_logs_shipped?: bool
			compartment_id!:       string
		}
		protection_policy: {
			compartment_id!: string
			defined_tags?: [_]: string
			policy_locked_date_time?:         string
			backup_retention_period_in_days!: int
			display_name!:                    string
			freeform_tags?: [_]: string
			must_enforce_cloud_locality?: bool
		}
	}
}
#data: {
	protected_database: protected_database_id!: string
	protected_database_fetch_configuration: {
		configuration_type?:    string
		protected_database_id!: string
		base64_encode_content?: *true | bool
	}
	protected_databases: {
		display_name?:               string
		id?:                         string
		protection_policy_id?:       string
		recovery_service_subnet_id?: string
		state?:                      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	protection_policies: {
		owner?:                string
		protection_policy_id?: string
		state?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	protection_policy: protection_policy_id!: string
	recovery_service_subnet: recovery_service_subnet_id!: string
	recovery_service_subnets: {
		state?:  string
		vcn_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
}

