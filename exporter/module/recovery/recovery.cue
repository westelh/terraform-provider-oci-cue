package recovery

#resource: {
	attributes: {
		protected_database: {
			policy_locked_date_time: string
			health:                  string
			state:                   string
			time_updated:            string
			time_created:            string
			is_redo_logs_shipped?:   bool
			vpc_user_name:           string
			deletion_schedule?:      string
			freeform_tags?: [_]: string
			protection_policy_id!: string
			database_id?:          string
			subscription_id?:      string
			db_unique_name!:       string
			defined_tags?: [_]: string
			is_read_only_resource: bool
			compartment_id!:       string
			lifecycle_details:     string
			metrics: [...{
				unprotected_window_in_seconds:       float
				backup_space_estimate_in_gbs:        float
				backup_space_used_in_gbs:            float
				current_retention_period_in_seconds: float
				db_size_in_gbs:                      float
				is_redo_logs_enabled:                bool
				minimum_recovery_needed_in_days:     float
				retention_period_in_days:            float
			}]
			recovery_service_subnets!: [...{
				recovery_service_subnet_id!: string
				state:                       string
			}]
			database_size?: string
			health_details: string
			display_name!:  string
			password!:      string
			system_tags: [_]: string
		}
		protection_policy: {
			is_predefined_policy: bool
			state:                string
			time_created:         string
			defined_tags?: [_]: string
			policy_locked_date_time?: string
			compartment_id!:          string
			system_tags: [_]: string
			time_updated:  string
			display_name!: string
			freeform_tags?: [_]: string
			must_enforce_cloud_locality?:     bool
			lifecycle_details:                string
			backup_retention_period_in_days!: int
		}
		recovery_service_subnet: {
			subnet_id?: string
			subnets?: [...string]
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			time_created:    string
			time_updated:    string
			vcn_id!:         string
			compartment_id!: string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		protected_database: {
			db_unique_name!:       string
			subscription_id?:      string
			is_redo_logs_shipped?: bool
			password!:             string
			protection_policy_id!: string
			database_id?:          string
			database_size?:        string
			compartment_id!:       string
			display_name!:         string
			recovery_service_subnets!: [...{
				recovery_service_subnet_id!: string
			}]
			deletion_schedule?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		protection_policy: {
			freeform_tags?: [_]: string
			must_enforce_cloud_locality?:     bool
			backup_retention_period_in_days!: int
			compartment_id!:                  string
			defined_tags?: [_]: string
			policy_locked_date_time?: string
			display_name!:            string
		}
		recovery_service_subnet: {
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			subnet_id?: string
			subnets?: [...string]
			display_name!: string
			vcn_id!:       string
		}
	}
}
#data: {
	protection_policy: protection_policy_id!: string
	recovery_service_subnet: recovery_service_subnet_id!: string
	recovery_service_subnets: {
		display_name?: string
		id?:           string
		state?:        string
		vcn_id?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	protected_database: protected_database_id!: string
	protected_database_fetch_configuration: {
		protected_database_id!: string
		base64_encode_content?: *true | bool
		configuration_type?:    string
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
		compartment_id!:       string
		display_name?:         string
		owner?:                string
		protection_policy_id?: string
		state?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

