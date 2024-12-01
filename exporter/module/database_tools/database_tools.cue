package database_tools

#resource: {
	attributes: {
		database_tools_private_endpoint: {
			vcn_id:               string
			lifecycle_details:    string
			endpoint_fqdn:        string
			state:                string
			endpoint_service_id!: string
			compartment_id!:      string
			subnet_id!:           string
			system_tags: [_]: string
			defined_tags?: [_]: string
			nsg_ids?: [...string]
			additional_fqdns: [...string]
			private_endpoint_vnic_id: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			private_endpoint_ip?: string
			freeform_tags?: [_]: string
			reverse_connection_configuration: [...{
				reverse_connections_source_ips: [...{
					source_ip: string
				}]
			}]
			time_created:  string
			display_name!: string
			time_updated:  string
			description?:  string
		}
		database_tools_connection: {
			time_updated: string
			advanced_properties?: [_]: string
			connection_string?: string
			system_tags: [_]: string
			lifecycle_details:    string
			compartment_id!:      string
			private_endpoint_id?: string
			url?:                 string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			type!: string
			user_password!: [...{
				secret_id!:  string
				value_type!: string
			}]
			runtime_support?: string
			time_created:     string
			user_name!:       string
			defined_tags?: [_]: string
			display_name!: string
			state:         string
			proxy_client?: [...{
				proxy_authentication_type!: string
				roles?: [...string]
				user_name?: string
				user_password?: [...{
					secret_id!:  string
					value_type!: string
				}]
			}]
			freeform_tags?: [_]: string
			key_stores?: [...{
				key_store_content?: [...{
					value_type!: string
					secret_id?:  string
				}]
				key_store_password?: [...{
					value_type!: string
					secret_id?:  string
				}]
				key_store_type?: string
			}]
			related_resource?: [...{
				entity_type?: string
				identifier?:  string
			}]
		}
	}
	arguments: {
		database_tools_private_endpoint: {
			private_endpoint_ip?: string
			compartment_id!:      string
			description?:         string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			display_name!: string
			subnet_id!:    string
			defined_tags?: [_]: string
			endpoint_service_id!: string
		}
		database_tools_connection: {
			private_endpoint_id?: string
			user_password!: [...{
				secret_id!:  string
				value_type!: string
			}]
			runtime_support?: string
			display_name!:    string
			type!:            string
			freeform_tags?: [_]: string
			key_stores?: [...{
				key_store_password?: [...{
					value_type!: string
					secret_id?:  string
				}]
				key_store_type?: string
				key_store_content?: [...{
					value_type!: string
					secret_id?:  string
				}]
			}]
			user_name!: string
			defined_tags?: [_]: string
			proxy_client?: [...{
				proxy_authentication_type!: string
				roles?: [...string]
				user_name?: string
				user_password?: [...{
					secret_id!:  string
					value_type!: string
				}]
			}]
			compartment_id!: string
			related_resource?: [...{
				entity_type?: string
				identifier?:  string
			}]
			url?: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			connection_string?: string
			advanced_properties?: [_]: string
		}
	}
}
#data: {
	database_tools_private_endpoints: {
		endpoint_service_id?: string
		state?:               string
		subnet_id?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	database_tools_connection: database_tools_connection_id!: string
	database_tools_connections: {
		type?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:              string
		display_name?:                string
		related_resource_identifier?: string
		runtime_support?: [...string]
		state?: string
	}
	database_tools_endpoint_service: database_tools_endpoint_service_id!: string
	database_tools_endpoint_services: {
		compartment_id!: string
		display_name?:   string
		name?:           string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	database_tools_private_endpoint: database_tools_private_endpoint_id!: string
}

