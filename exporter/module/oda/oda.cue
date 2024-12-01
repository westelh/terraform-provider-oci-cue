package oda

#resource: {
	attributes: {
		oda_instance: {
			identity_app_guid:        string
			identity_app_console_url: string
			state?:                   string
			time_updated:             string
			imported_package_ids: [...string]
			restricted_operations: [...{
				operation_name:      string
				restricting_service: string
			}]
			web_app_url: string
			defined_tags?: [_]: string
			connector_url:         string
			state_message:         string
			is_role_based_access?: bool
			attachment_types: [...string]
			imported_package_names: [...string]
			compartment_id!:     string
			display_name?:       string
			lifecycle_sub_state: string
			description?:        string
			shape_name!:         string
			attachment_ids: [...string]
			freeform_tags?: [_]: string
			identity_domain?: string
			time_created:     string
		}
		oda_private_endpoint: {
			description?: string
			time_created: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?: string
			nsg_ids?: [...string]
			state:           string
			compartment_id!: string
			subnet_id!:      string
			time_updated:    string
		}
		oda_private_endpoint_attachment: {
			time_created:             string
			time_updated:             string
			oda_instance_id!:         string
			oda_private_endpoint_id!: string
			compartment_id:           string
			state:                    string
		}
		oda_private_endpoint_scan_proxy: {
			scan_listener_infos!: [...{
				scan_listener_port?: int
				scan_listener_fqdn?: string
				scan_listener_ip?:   string
			}]
			scan_listener_type!:      string
			state:                    string
			time_created:             string
			oda_private_endpoint_id!: string
			protocol!:                string
		}
	}
	arguments: {
		oda_instance: {
			description?:     string
			identity_domain?: string
			state?:           string
			defined_tags?: [_]: string
			shape_name!:           string
			is_role_based_access?: bool
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
		}
		oda_private_endpoint: {
			display_name?: string
			nsg_ids?: [...string]
			compartment_id!: string
			freeform_tags?: [_]: string
			subnet_id!: string
			defined_tags?: [_]: string
			description?: string
		}
		oda_private_endpoint_attachment: {
			oda_instance_id!:         string
			oda_private_endpoint_id!: string
		}
		oda_private_endpoint_scan_proxy: {
			scan_listener_infos!: [...{
				scan_listener_fqdn?: string
				scan_listener_ip?:   string
				scan_listener_port?: int
			}]
			scan_listener_type!:      string
			oda_private_endpoint_id!: string
			protocol!:                string
		}
	}
}
#data: {
	oda_private_endpoints: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	oda_instance: oda_instance_id!: string
	oda_instances: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	oda_private_endpoint: oda_private_endpoint_id!: string
	oda_private_endpoint_attachment: oda_private_endpoint_attachment_id!: string
	oda_private_endpoint_attachments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:          string
		oda_private_endpoint_id!: string
		state?:                   string
	}
	oda_private_endpoint_scan_proxies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		oda_private_endpoint_id!: string
		state?:                   string
	}
	oda_private_endpoint_scan_proxy: {
		oda_private_endpoint_id!:            string
		oda_private_endpoint_scan_proxy_id!: string
	}
}

