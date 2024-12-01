package oda

#resource: {
	attributes: {
		oda_instance: {
			defined_tags?: [_]: string
			connector_url:         string
			identity_domain?:      string
			state?:                string
			state_message:         string
			is_role_based_access?: bool
			time_created:          string
			identity_app_guid:     string
			restricted_operations: [...{
				operation_name:      string
				restricting_service: string
			}]
			description?: string
			imported_package_ids: [...string]
			freeform_tags?: [_]: string
			compartment_id!:     string
			lifecycle_sub_state: string
			shape_name!:         string
			attachment_ids: [...string]
			identity_app_console_url: string
			display_name?:            string
			imported_package_names: [...string]
			time_updated: string
			attachment_types: [...string]
			web_app_url: string
		}
		oda_private_endpoint: {
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			time_created: string
			state:        string
			subnet_id!:   string
			description?: string
		}
		oda_private_endpoint_attachment: {
			time_updated:             string
			oda_instance_id!:         string
			oda_private_endpoint_id!: string
			compartment_id:           string
			state:                    string
			time_created:             string
		}
		oda_private_endpoint_scan_proxy: {
			state:                    string
			time_created:             string
			oda_private_endpoint_id!: string
			protocol!:                string
			scan_listener_infos!: [...{
				scan_listener_fqdn?: string
				scan_listener_ip?:   string
				scan_listener_port?: int
			}]
			scan_listener_type!: string
		}
	}
	arguments: {
		oda_instance: {
			shape_name!:      string
			identity_domain?: string
			description?:     string
			state?:           string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			is_role_based_access?: bool
			compartment_id!:       string
		}
		oda_private_endpoint: {
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			subnet_id!:      string
			nsg_ids?: [...string]
		}
		oda_private_endpoint_attachment: {
			oda_instance_id!:         string
			oda_private_endpoint_id!: string
		}
		oda_private_endpoint_scan_proxy: {
			scan_listener_infos!: [...{
				scan_listener_port?: int
				scan_listener_fqdn?: string
				scan_listener_ip?:   string
			}]
			scan_listener_type!:      string
			oda_private_endpoint_id!: string
			protocol!:                string
		}
	}
}
#data: {
	oda_private_endpoint_attachments: {
		oda_private_endpoint_id!: string
		state?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	oda_private_endpoint_scan_proxies: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		oda_private_endpoint_id!: string
		state?:                   string
	}
	oda_private_endpoint_scan_proxy: {
		oda_private_endpoint_scan_proxy_id!: string
		oda_private_endpoint_id!:            string
	}
	oda_private_endpoints: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	oda_instance: oda_instance_id!: string
	oda_instances: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	oda_private_endpoint: oda_private_endpoint_id!: string
	oda_private_endpoint_attachment: oda_private_endpoint_attachment_id!: string
}

