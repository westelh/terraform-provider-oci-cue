package psql

#resource: {
	attributes: {
		backup: {
			defined_tags?: [_]: string
			db_system_id!: string
			system_tags: [_]: string
			db_system_details: [...{
				db_version:  string
				system_type: string
			}]
			state:       string
			backup_size: int
			source_type: string
			freeform_tags?: [_]: string
			time_updated:                 string
			compartment_id!:              string
			retention_period?:            int
			time_created:                 string
			description?:                 string
			last_accepted_request_token:  string
			last_completed_request_token: string
			lifecycle_details:            string
			display_name!:                string
		}
		configuration: {
			defined_tags?: [_]: string
			config_type:                  string
			instance_memory_size_in_gbs?: int
			freeform_tags?: [_]: string
			lifecycle_details: string
			db_configuration_overrides!: [...{
				items!: [...{
					config_key!: string, overriden_config_value!: string
				}]
			}]
			system_tags?: [_]: string
			description?: string
			db_version!:  string
			configuration_details: [...{
				items: [...{
					overriden_config_value: string, allowed_values: string, config_key: string, data_type: string, default_config_value: string, description: string, is_overridable: bool, is_restart_required: bool
				}]
			}]
			display_name!:        string
			shape!:               string
			instance_ocpu_count?: int
			state:                string
			time_created:         string
			is_flexible?:         bool
			compartment_id!:      string
		}
		db_system: {
			credentials?: [...{
				password_details!: [...{
					secret_version?: string
					password_type!:  string
					password?:       string
					secret_id?:      string
				}]
				username!: string
			}]
			display_name!: string
			management_policy?: [...{
				maintenance_window_start?: string
				backup_policy?: [...{
					days_of_the_month?: [...int]
					days_of_the_week?: [...string]
					kind?:           string
					retention_days?: int
					backup_start?:   string
				}]
			}]
			freeform_tags?: [_]: string
			storage_details!: [...{
				is_regionally_durable!: bool
				system_type!:           string
				availability_domain?:   string
				iops?:                  string
			}]
			system_tags: [_]: string
			description?: string
			source?: [...{
				backup_id?:                          string
				is_having_restore_config_overrides?: bool
				source_type!:                        string
			}]
			lifecycle_details:            string
			shape!:                       string
			config_id?:                   string
			compartment_id!:              string
			instance_count?:              int
			instance_ocpu_count?:         int
			instance_memory_size_in_gbs?: int
			instances: [...{
				display_name:        string
				id:                  string
				lifecycle_details:   string
				state:               string
				time_created:        string
				time_updated:        string
				availability_domain: string
				description:         string
			}]
			db_version!:   string
			apply_config?: string
			instances_details?: [...{
				display_name?: string
				private_ip?:   string
				description?:  string
			}]
			system_type?: string
			defined_tags?: [_]: string
			network_details!: [...{
				is_reader_endpoint_enabled?: bool
				nsg_ids?: [...string]
				primary_db_endpoint_private_ip?: string
				subnet_id!:                      string
			}]
			state:        string
			time_updated: string
			patch_operations?: [...{
				operation!:     string
				selection!:     string
				value?:         _
				from?:          string
				position?:      string
				selected_item?: string
			}]
			time_created:   string
			admin_username: string
		}
	}
	arguments: {
		backup: {
			compartment_id!: string
			freeform_tags?: [_]: string
			retention_period?: int
			description?:      string
			db_system_id!:     string
			defined_tags?: [_]: string
			display_name!: string
		}
		configuration: {
			instance_ocpu_count?: int
			is_flexible?:         bool
			system_tags?: [_]: string
			description?: string
			db_version!:  string
			shape!:       string
			freeform_tags?: [_]: string
			db_configuration_overrides!: [...{
				items!: [...{
					config_key!: string, overriden_config_value!: string
				}]
			}]
			display_name!:                string
			instance_memory_size_in_gbs?: int
			defined_tags?: [_]: string
			compartment_id!: string
		}
		db_system: {
			apply_config?: string
			db_version!:   string
			freeform_tags?: [_]: string
			shape!: string
			patch_operations?: [...{
				operation!:     string
				selection!:     string
				value?:         _
				from?:          string
				position?:      string
				selected_item?: string
			}]
			instance_count?: int
			instances_details?: [...{
				description?:  string
				display_name?: string
				private_ip?:   string
			}]
			management_policy?: [...{
				backup_policy?: [...{
					backup_start?: string
					days_of_the_month?: [...int]
					days_of_the_week?: [...string]
					kind?:           string
					retention_days?: int
				}]
				maintenance_window_start?: string
			}]
			source?: [...{
				source_type!:                        string
				backup_id?:                          string
				is_having_restore_config_overrides?: bool
			}]
			instance_memory_size_in_gbs?: int
			credentials?: [...{
				password_details!: [...{
					password?:       string
					secret_id?:      string
					secret_version?: string
					password_type!:  string
				}]
				username!: string
			}]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			instance_ocpu_count?: int
			storage_details!: [...{
				availability_domain?:   string
				iops?:                  string
				is_regionally_durable!: bool
				system_type!:           string
			}]
			config_id?:   string
			description?: string
			network_details!: [...{
				subnet_id!:                  string
				is_reader_endpoint_enabled?: bool
				nsg_ids?: [...string]
				primary_db_endpoint_private_ip?: string
			}]
			system_type?: string
		}
	}
}
#data: {
	backup: backup_id!: string
	db_system: {
		db_system_id!:    string
		excluded_fields?: string
	}
	db_systems: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	default_configurations: {
		db_version?:   string
		display_name?: string
		shape?:        string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		configuration_id?: string
	}
	shapes: {
		compartment_id?: string
		id?:             string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	backups: {
		display_name?: string
		id?:           string
		state?:        string
		time_ended?:   string
		time_started?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		backup_id?:      string
		compartment_id?: string
	}
	configuration: configuration_id!: string
	configurations: {
		shape?: string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:   string
		configuration_id?: string
		db_version?:       string
		display_name?:     string
	}
	db_system_connection_detail: db_system_id!: string
	db_system_primary_db_instance: db_system_id!: string
	default_configuration: default_configuration_id!: string
}

