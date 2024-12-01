package integration

#resource: {
	attributes: {
		integration_instance: {
			idcs_info: [...{
				idcs_app_name:                 string
				instance_primary_audience_url: string
				idcs_app_display_name:         string
				idcs_app_id:                   string
				idcs_app_location_url:         string
			}]
			integration_instance_type!: string
			network_endpoint_details?: [...{
				allowlisted_http_ips?: [...string]
				allowlisted_http_vcns?: [...{
					allowlisted_ips?: [...string]
					id!: string
				}]
				is_integration_vcn_allowlisted?: bool
				network_endpoint_type!:          string
			}]
			shape?:       string
			time_created: string
			system_tags: [_]: string
			disaster_recovery_details: [...{
				cross_region_integration_instance_details: [...{
					id:                string
					region:            string
					role:              string
					time_role_changed: string
				}]
				regional_instance_url: string
				role:                  string
			}]
			instance_design_time_url:       string
			lifecycle_details:              string
			extend_data_retention_trigger?: int
			custom_endpoint?: [...{
				alias:                      string
				certificate_secret_version: int
				dns_type?:                  string
				dns_zone_name!:             string
				managed_type:               string
				hostname!:                  string
				certificate_secret_id?:     string
			}]
			idcs_at?:                   string
			is_visual_builder_enabled?: bool
			domain_id?:                 string
			display_name!:              string
			failover_trigger?:          int
			message_packs!:             int
			state?:                     string
			defined_tags?: [_]: string
			enable_process_automation_trigger?: int
			is_byol!:                           bool
			alternate_custom_endpoints?: [...{
				certificate_secret_version: int
				dns_type:                   string
				dns_zone_name:              string
				managed_type:               string
				hostname!:                  string
				certificate_secret_id?:     string
				alias:                      string
			}]
			state_message: string
			private_endpoint_outbound_connection: [...{
				nsg_ids: [...string]
				outbound_connection_type: string
				subnet_id:                string
			}]
			compartment_id!:    string
			consumption_model?: string
			freeform_tags?: [_]: string
			time_updated:                  string
			is_disaster_recovery_enabled?: bool
			is_file_server_enabled?:       bool
			instance_url:                  string
			attachments: [...{
				is_implicit:         bool
				target_id:           string
				target_instance_url: string
				target_role:         string
				target_service_type: string
			}]
			data_retention_period: string
		}
		private_endpoint_outbound_connection: {
			integration_instance_id!: string
			subnet_id!:               string
			nsg_ids?: [...string]
			state?: string
		}
		oracle_managed_custom_endpoint: {
			hostname!:                string
			dns_type?:                string
			dns_zone_name?:           string
			managed_type?:            string
			state?:                   string
			integration_instance_id!: string
		}
	}
	arguments: {
		integration_instance: {
			domain_id?:                     string
			display_name!:                  string
			is_byol!:                       bool
			is_visual_builder_enabled?:     bool
			is_disaster_recovery_enabled?:  bool
			extend_data_retention_trigger?: int
			message_packs!:                 int
			alternate_custom_endpoints?: [...{
				certificate_secret_id?: string
				hostname!:              string
			}]
			is_file_server_enabled?: bool
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			custom_endpoint?: [...{
				hostname!:              string
				certificate_secret_id?: string
				dns_type?:              string
				dns_zone_name!:         string
			}]
			network_endpoint_details?: [...{
				network_endpoint_type!: string
				allowlisted_http_ips?: [...string]
				allowlisted_http_vcns?: [...{
					allowlisted_ips?: [...string]
					id!: string
				}]
				is_integration_vcn_allowlisted?: bool
			}]
			consumption_model?:                 string
			enable_process_automation_trigger?: int
			idcs_at?:                           string
			shape?:                             string
			state?:                             string
			compartment_id!:                    string
			failover_trigger?:                  int
			integration_instance_type!:         string
		}
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
	}
}
#data: {
	integration_instance: integration_instance_id!: string
	integration_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
}

