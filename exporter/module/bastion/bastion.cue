package bastion

#resource: {
	attributes: {
		bastion: {
			bastion_type!: string
			freeform_tags?: [_]: string
			phone_book_entry?: string
			lifecycle_details: string
			target_subnet_id!: string
			name?:             string
			target_vcn_id:     string
			static_jump_host_ip_addresses?: [...string]
			private_endpoint_ip_address: string
			defined_tags?: [_]: string
			max_session_ttl_in_seconds?: int
			state:                       string
			time_updated:                string
			time_created:                string
			compartment_id!:             string
			max_sessions_allowed:        int
			system_tags: [_]: string
			client_cidr_block_allow_list?: [...string]
			dns_proxy_status?: string
		}
		session: {
			display_name?: string
			key_details!: [...{
				public_key_content!: string
			}]
			key_type?:                    string
			lifecycle_details:            string
			bastion_id!:                  string
			session_ttl_in_seconds?:      int
			state:                        string
			bastion_public_host_key_info: string
			ssh_metadata: [_]: string
			time_updated: string
			target_resource_details!: [...{
				target_resource_id?:                         string
				target_resource_operating_system_user_name?: string
				target_resource_port?:                       int
				target_resource_private_ip_address?:         string
				target_resource_display_name:                string
				session_type!:                               string
				target_resource_fqdn?:                       string
			}]
			bastion_user_name: string
			time_created:      string
			bastion_name:      string
		}
	}
	arguments: {
		bastion: {
			dns_proxy_status?: string
			name?:             string
			compartment_id!:   string
			client_cidr_block_allow_list?: [...string]
			max_session_ttl_in_seconds?: int
			static_jump_host_ip_addresses?: [...string]
			freeform_tags?: [_]: string
			phone_book_entry?: string
			defined_tags?: [_]: string
			target_subnet_id!: string
			bastion_type!:     string
		}
		session: {
			key_details!: [...{
				public_key_content!: string
			}]
			key_type?: string
			target_resource_details!: [...{
				session_type!:                               string
				target_resource_fqdn?:                       string
				target_resource_id?:                         string
				target_resource_operating_system_user_name?: string
				target_resource_port?:                       int
				target_resource_private_ip_address?:         string
			}]
			bastion_id!:             string
			display_name?:           string
			session_ttl_in_seconds?: int
		}
	}
}
#data: {
	bastions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bastion_id?:              string
		bastion_lifecycle_state?: string
		compartment_id!:          string
		name?:                    string
	}
	session: session_id!: string
	sessions: {
		session_lifecycle_state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bastion_id!:   string
		display_name?: string
		session_id?:   string
	}
	bastion: bastion_id!: string
}

