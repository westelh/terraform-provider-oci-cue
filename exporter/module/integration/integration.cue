package integration

#resource: {
	attributes: {
		private_endpoint_outbound_connection: {
			nsg_ids?: [...string]
			state?:                   string
			integration_instance_id!: string
			subnet_id!:               string
		}
		oracle_managed_custom_endpoint: {
			hostname!:                string
			dns_type?:                string
			dns_zone_name?:           string
			managed_type?:            string
			state?:                   string
			integration_instance_id!: string
		}
		integration_instance: {
			state?:                   string
			failover_trigger?:        int
			instance_design_time_url: string
			private_endpoint_outbound_connection: [...{
				nsg_ids: [...string]
				outbound_connection_type: string
				subnet_id:                string
			}]
			extend_data_retention_trigger?:     int
			time_created:                       string
			shape?:                             string
			enable_process_automation_trigger?: int
			idcs_at?:                           string
			is_byol!:                           bool
			compartment_id!:                    string
			is_file_server_enabled?:            bool
			is_visual_builder_enabled?:         bool
			custom_endpoint?: [...{
				dns_zone_name!:             string
				managed_type:               string
				hostname!:                  string
				certificate_secret_id?:     string
				alias:                      string
				certificate_secret_version: int
				dns_type?:                  string
			}]
			time_updated: string
			disaster_recovery_details: [...{
				regional_instance_url: string
				role:                  string
				cross_region_integration_instance_details: [...{
					id:                string
					region:            string
					role:              string
					time_role_changed: string
				}]
			}]
			idcs_info: [...{
				idcs_app_display_name:         string
				idcs_app_id:                   string
				idcs_app_location_url:         string
				idcs_app_name:                 string
				instance_primary_audience_url: string
			}]
			instance_url: string
			defined_tags?: [_]: string
			alternate_custom_endpoints?: [...{
				certificate_secret_id?:     string
				alias:                      string
				certificate_secret_version: int
				dns_type:                   string
				dns_zone_name:              string
				managed_type:               string
				hostname!:                  string
			}]
			data_retention_period: string
			state_message:         string
			network_endpoint_details?: [...{
				network_endpoint_type!: string
				allowlisted_http_ips?: [...string]
				allowlisted_http_vcns?: [...{
					id!: string
					allowlisted_ips?: [...string]
				}]
				is_integration_vcn_allowlisted?: bool
			}]
			integration_instance_type!:    string
			is_disaster_recovery_enabled?: bool
			message_packs!:                int
			lifecycle_details:             string
			attachments: [...{
				target_id:           string
				target_instance_url: string
				target_role:         string
				target_service_type: string
				is_implicit:         bool
			}]
			domain_id?:         string
			consumption_model?: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			display_name!: string
		}
	}
	arguments: {
		private_endpoint_outbound_connection: {
			state?:                   string
			integration_instance_id!: string
			subnet_id!:               string
			nsg_ids?: [...string]
		}
		oracle_managed_custom_endpoint: {
			managed_type?:            string
			state?:                   string
			integration_instance_id!: string
			hostname!:                string
			dns_type?:                string
			dns_zone_name?:           string
		}
		integration_instance: {
			is_visual_builder_enabled?: bool
			custom_endpoint?: [...{
				dns_zone_name!:         string
				hostname!:              string
				certificate_secret_id?: string
				dns_type?:              string
			}]
			compartment_id!:                    string
			domain_id?:                         string
			shape?:                             string
			state?:                             string
			display_name!:                      string
			consumption_model?:                 string
			enable_process_automation_trigger?: int
			message_packs!:                     int
			is_byol!:                           bool
			defined_tags?: [_]: string
			is_file_server_enabled?:        bool
			failover_trigger?:              int
			extend_data_retention_trigger?: int
			integration_instance_type!:     string
			network_endpoint_details?: [...{
				is_integration_vcn_allowlisted?: bool
				network_endpoint_type!:          string
				allowlisted_http_ips?: [...string]
				allowlisted_http_vcns?: [...{
					allowlisted_ips?: [...string]
					id!: string
				}]
			}]
			alternate_custom_endpoints?: [...{
				certificate_secret_id?: string
				hostname!:              string
			}]
			is_disaster_recovery_enabled?: bool
			idcs_at?:                      string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	integration_instance: integration_instance_id!: string
	integration_instances: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

