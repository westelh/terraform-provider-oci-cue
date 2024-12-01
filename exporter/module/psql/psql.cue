package psql

#resource: {
	attributes: {
		backup: {
			defined_tags?: [_]: string
			state:                        string
			last_completed_request_token: string
			source_type:                  string
			display_name!:                string
			freeform_tags?: [_]: string
			description?:                string
			last_accepted_request_token: string
			lifecycle_details:           string
			db_system_details: [...{
				db_version:  string
				system_type: string
			}]
			compartment_id!: string
			system_tags: [_]: string
			time_created:      string
			db_system_id!:     string
			backup_size:       int
			retention_period?: int
			time_updated:      string
		}
		configuration: {
			config_type: string
			state:       string
			freeform_tags?: [_]: string
			compartment_id!:      string
			lifecycle_details:    string
			description?:         string
			instance_ocpu_count?: int
			db_version!:          string
			display_name!:        string
			is_flexible?:         bool
			shape!:               string
			configuration_details: [...{
				items: [...{
					default_config_value: string, description: string, is_overridable: bool, is_restart_required: bool, overriden_config_value: string, allowed_values: string, config_key: string, data_type: string
				}]
			}]
			defined_tags?: [_]: string
			db_configuration_overrides!: [...{
				items!: [...{
					config_key!: string, overriden_config_value!: string
				}]
			}]
			instance_memory_size_in_gbs?: int
			system_tags?: [_]: string
			time_created: string
		}
		db_system: {
			patch_operations?: [...{
				selection!:     string
				value?:         _|_
				from?:          string
				position?:      string
				selected_item?: string
				operation!:     string
			}]
			credentials?: [...{
				password_details!: [...{
					password_type!:  string
					password?:       string
					secret_id?:      string
					secret_version?: string
				}]
				username!: string
			}]
			db_version!:                  string
			state:                        string
			instance_memory_size_in_gbs?: int
			description?:                 string
			lifecycle_details:            string
			compartment_id!:              string
			config_id?:                   string
			system_type?:                 string
			freeform_tags?: [_]: string
			instance_count?: int
			source?: [...{
				source_type!:                        string
				backup_id?:                          string
				is_having_restore_config_overrides?: bool
			}]
			time_updated:         string
			instance_ocpu_count?: int
			apply_config?:        string
			network_details!: [...{
				subnet_id!:                  string
				is_reader_endpoint_enabled?: bool
				nsg_ids?: [...string]
				primary_db_endpoint_private_ip?: string
			}]
			time_created: string
			storage_details!: [...{
				is_regionally_durable!: bool
				system_type!:           string
				availability_domain?:   string
				iops?:                  string
			}]
			system_tags: [_]: string
			instances_details?: [...{
				display_name?: string
				private_ip?:   string
				description?:  string
			}]
			admin_username: string
			defined_tags?: [_]: string
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
			display_name!: string
			shape!:        string
			instances: [...{
				availability_domain: string
				description:         string
				display_name:        string
				id:                  string
				lifecycle_details:   string
				state:               string
				time_created:        string
				time_updated:        string
			}]
		}
	}
	arguments: {
		backup: {
			defined_tags?: [_]: string
			retention_period?: int
			compartment_id!:   string
			freeform_tags?: [_]: string
			display_name!: string
			db_system_id!: string
			description?:  string
		}
		configuration: {
			system_tags?: [_]: string
			freeform_tags?: [_]: string
			shape!:                       string
			compartment_id!:              string
			description?:                 string
			db_version!:                  string
			instance_memory_size_in_gbs?: int
			is_flexible?:                 bool
			display_name!:                string
			instance_ocpu_count?:         int
			defined_tags?: [_]: string
			db_configuration_overrides!: [...{
				items!: [...{
					config_key!: string, overriden_config_value!: string
				}]
			}]
		}
		db_system: {
			apply_config?: string
			config_id?:    string
			system_type?:  string
			patch_operations?: [...{
				selected_item?: string
				operation!:     string
				selection!:     string
				value?:         _|_
				from?:          string
				position?:      string
			}]
			network_details!: [...{
				subnet_id!:                  string
				is_reader_endpoint_enabled?: bool
				nsg_ids?: [...string]
				primary_db_endpoint_private_ip?: string
			}]
			instance_count?: int
			credentials?: [...{
				username!: string
				password_details!: [...{
					password_type!:  string
					password?:       string
					secret_id?:      string
					secret_version?: string
				}]
			}]
			db_version!:                  string
			shape!:                       string
			description?:                 string
			instance_memory_size_in_gbs?: int
			storage_details!: [...{
				is_regionally_durable!: bool
				system_type!:           string
				availability_domain?:   string
				iops?:                  string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:        string
			instance_ocpu_count?: int
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
			compartment_id!: string
			source?: [...{
				source_type!:                        string
				backup_id?:                          string
				is_having_restore_config_overrides?: bool
			}]
			instances_details?: [...{
				private_ip?:   string
				description?:  string
				display_name?: string
			}]
		}
	}
}
#data: {
	db_system: {
		excluded_fields?: string
		db_system_id!:    string
	}
	db_system_primary_db_instance: db_system_id!: string
	default_configurations: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		configuration_id?: string
		db_version?:       string
		display_name?:     string
		shape?:            string
	}
	backup: backup_id!: string
	backups: {
		time_started?:   string
		backup_id?:      string
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		time_ended?: string
	}
	configuration: configuration_id!: string
	default_configuration: default_configuration_id!: string
	shapes: {
		id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	configurations: {
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
		shape?:            string
	}
	db_system_connection_detail: db_system_id!: string
	db_systems: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

