package database_tools

#resource: {
	attributes: {
		database_tools_connection: {
			state: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			related_resource?: [...{
				entity_type?: string
				identifier?:  string
			}]
			url?:         string
			time_created: string
			time_updated: string
			user_password!: [...{
				secret_id!:  string
				value_type!: string
			}]
			lifecycle_details:    string
			private_endpoint_id?: string
			key_stores?: [...{
				key_store_password?: [...{
					secret_id?:  string
					value_type!: string
				}]
				key_store_type?: string
				key_store_content?: [...{
					value_type!: string
					secret_id?:  string
				}]
			}]
			advanced_properties?: [_]: string
			connection_string?: string
			compartment_id!:    string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			runtime_support?: string
			user_name!:       string
			proxy_client?: [...{
				user_password?: [...{
					secret_id!:  string
					value_type!: string
				}]
				proxy_authentication_type!: string
				roles?: [...string]
				user_name?: string
			}]
			defined_tags?: [_]: string
			type!:         string
			display_name!: string
		}
		database_tools_private_endpoint: {
			endpoint_fqdn: string
			reverse_connection_configuration: [...{
				reverse_connections_source_ips: [...{
					source_ip: string
				}]
			}]
			time_updated:         string
			subnet_id!:           string
			description?:         string
			time_created:         string
			private_endpoint_ip?: string
			additional_fqdns: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			private_endpoint_vnic_id: string
			vcn_id:                   string
			nsg_ids?: [...string]
			system_tags: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			lifecycle_details:    string
			display_name!:        string
			endpoint_service_id!: string
			state:                string
		}
	}
	arguments: {
		database_tools_connection: {
			proxy_client?: [...{
				proxy_authentication_type!: string
				roles?: [...string]
				user_name?: string
				user_password?: [...{
					secret_id!:  string
					value_type!: string
				}]
			}]
			user_password!: [...{
				secret_id!:  string
				value_type!: string
			}]
			connection_string?: string
			compartment_id!:    string
			user_name!:         string
			related_resource?: [...{
				entity_type?: string
				identifier?:  string
			}]
			advanced_properties?: [_]: string
			type!:            string
			runtime_support?: string
			url?:             string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
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
			display_name!:        string
			private_endpoint_id?: string
			defined_tags?: [_]: string
		}
		database_tools_private_endpoint: {
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!:        string
			description?:         string
			subnet_id!:           string
			endpoint_service_id!: string
			nsg_ids?: [...string]
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			private_endpoint_ip?: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	database_tools_private_endpoints: {
		compartment_id!:      string
		display_name?:        string
		endpoint_service_id?: string
		state?:               string
		subnet_id?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	database_tools_connection: database_tools_connection_id!: string
	database_tools_connections: {
		runtime_support?: [...string]
		state?: string
		type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:              string
		display_name?:                string
		related_resource_identifier?: string
	}
	database_tools_endpoint_service: database_tools_endpoint_service_id!: string
	database_tools_endpoint_services: {
		display_name?: string
		name?:         string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	database_tools_private_endpoint: database_tools_private_endpoint_id!: string
}

