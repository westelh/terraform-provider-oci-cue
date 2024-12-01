package bastion

#resource: {
	attributes: {
		bastion: {
			state:             string
			target_subnet_id!: string
			phone_book_entry?: string
			target_vcn_id:     string
			client_cidr_block_allow_list?: [...string]
			max_session_ttl_in_seconds?: int
			bastion_type!:               string
			defined_tags?: [_]: string
			time_created:      string
			compartment_id!:   string
			time_updated:      string
			name?:             string
			lifecycle_details: string
			dns_proxy_status?: string
			freeform_tags?: [_]: string
			static_jump_host_ip_addresses?: [...string]
			max_sessions_allowed: int
			system_tags: [_]: string
			private_endpoint_ip_address: string
		}
		session: {
			lifecycle_details: string
			target_resource_details!: [...{
				target_resource_id?:                         string
				target_resource_operating_system_user_name?: string
				target_resource_port?:                       int
				target_resource_private_ip_address?:         string
				target_resource_display_name:                string
				session_type!:                               string
				target_resource_fqdn?:                       string
			}]
			display_name?: string
			time_updated:  string
			key_details!: [...{
				public_key_content!: string
			}]
			key_type?:                    string
			bastion_id!:                  string
			bastion_public_host_key_info: string
			bastion_user_name:            string
			session_ttl_in_seconds?:      int
			ssh_metadata: [_]: string
			time_created: string
			bastion_name: string
			state:        string
		}
	}
	arguments: {
		bastion: {
			bastion_type!: string
			defined_tags?: [_]: string
			static_jump_host_ip_addresses?: [...string]
			compartment_id!:   string
			target_subnet_id!: string
			phone_book_entry?: string
			name?:             string
			dns_proxy_status?: string
			freeform_tags?: [_]: string
			client_cidr_block_allow_list?: [...string]
			max_session_ttl_in_seconds?: int
		}
		session: {
			display_name?:           string
			session_ttl_in_seconds?: int
			bastion_id!:             string
			key_details!: [...{
				public_key_content!: string
			}]
			key_type?: string
			target_resource_details!: [...{
				target_resource_id?:                         string
				target_resource_operating_system_user_name?: string
				target_resource_port?:                       int
				target_resource_private_ip_address?:         string
				session_type!:                               string
				target_resource_fqdn?:                       string
			}]
		}
	}
}
#data: {
	bastion: bastion_id!: string
	bastions: {
		compartment_id!: string
		name?:           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		bastion_id?:              string
		bastion_lifecycle_state?: string
	}
	session: session_id!: string
	sessions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bastion_id!:              string
		display_name?:            string
		session_id?:              string
		session_lifecycle_state?: string
	}
}

