package network_firewall

#resource: {
	attributes: {
		network_firewall_policy_service: {
			type!:                       string
			parent_resource_id:          string
			name!:                       string
			network_firewall_policy_id!: string
			port_ranges!: [...{
				minimum_port!: int
				maximum_port?: int
			}]
		}
		network_firewall_policy_tunnel_inspection_rule: {
			priority_order:              string
			name!:                       string
			protocol!:                   string
			action?:                     string
			network_firewall_policy_id!: string
			parent_resource_id:          string
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			profile?: [...{
				must_return_traffic_to_source?: bool
			}]
		}
		network_firewall: {
			ipv4address?:      string
			ipv6address?:      string
			time_created:      string
			state:             string
			lifecycle_details: string
			network_security_group_ids?: [...string]
			subnet_id!:                  string
			network_firewall_policy_id!: string
			display_name?:               string
			availability_domain?:        string
			defined_tags?: [_]: string
			time_updated: string
			system_tags: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		network_firewall_policy: {
			system_tags: [_]: string
			time_created: string
			freeform_tags?: [_]: string
			attached_network_firewall_count: int
			state:                           string
			time_updated:                    string
			compartment_id!:                 string
			lifecycle_details:               string
			display_name?:                   string
			defined_tags?: [_]: string
		}
		network_firewall_policy_address_list: {
			total_addresses:             int
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
			addresses!: [...string]
			parent_resource_id: string
		}
		network_firewall_policy_application_group: {
			total_apps: int
			name!:      string
			apps!: [...string]
			network_firewall_policy_id!: string
			parent_resource_id:          string
		}
		network_firewall_policy_decryption_profile: {
			network_firewall_policy_id!:            string
			is_expired_certificate_blocked?:        bool
			is_unknown_revocation_status_blocked?:  bool
			is_unsupported_cipher_blocked?:         bool
			are_certificate_extensions_restricted?: bool
			is_unsupported_version_blocked?:        bool
			is_untrusted_issuer_blocked?:           bool
			is_out_of_capacity_blocked?:            bool
			is_revocation_status_timeout_blocked?:  bool
			type!:                                  string
			is_auto_include_alt_name?:              bool
			parent_resource_id:                     string
			name!:                                  string
		}
		network_firewall_policy_mapped_secret: {
			type!:                       string
			vault_secret_id!:            string
			version_number!:             int
			parent_resource_id:          string
			name!:                       string
			network_firewall_policy_id!: string
			source!:                     string
		}
		network_firewall_policy_application: {
			icmp_code?:                  int
			parent_resource_id:          string
			icmp_type!:                  int
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
		}
		network_firewall_policy_decryption_rule: {
			action!:                     string
			name!:                       string
			network_firewall_policy_id!: string
			secret?:                     string
			parent_resource_id:          string
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			priority_order?:     string
			decryption_profile?: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
		}
		network_firewall_policy_security_rule: {
			inspection?:        string
			priority_order?:    string
			parent_resource_id: string
			action!:            string
			condition!: [...{
				service?: [...string]
				source_address?: [...string]
				url?: [...string]
				application?: [...string]
				destination_address?: [...string]
			}]
			name!:                       string
			network_firewall_policy_id!: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
		}
		network_firewall_policy_service_list: {
			services!: [...string]
			parent_resource_id:          string
			total_services:              int
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_url_list: {
			urls!: [...{
				pattern!: string
				type!:    string
			}]
			parent_resource_id:          string
			total_urls:                  int
			name!:                       string
			network_firewall_policy_id!: string
		}
	}
	arguments: {
		network_firewall_policy_service: {
			network_firewall_policy_id!: string
			port_ranges!: [...{
				maximum_port?: int
				minimum_port!: int
			}]
			type!: string
			name!: string
		}
		network_firewall_policy_tunnel_inspection_rule: {
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			network_firewall_policy_id!: string
			profile?: [...{
				must_return_traffic_to_source?: bool
			}]
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			name!:     string
			protocol!: string
			action?:   string
		}
		network_firewall: {
			compartment_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			ipv4address?: string
			network_security_group_ids?: [...string]
			network_firewall_policy_id!: string
			subnet_id!:                  string
			availability_domain?:        string
			display_name?:               string
			ipv6address?:                string
		}
		network_firewall_policy: {
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
		}
		network_firewall_policy_address_list: {
			network_firewall_policy_id!: string
			type!:                       string
			addresses!: [...string]
			name!: string
		}
		network_firewall_policy_application_group: {
			apps!: [...string]
			network_firewall_policy_id!: string
			name!:                       string
		}
		network_firewall_policy_decryption_profile: {
			is_unsupported_version_blocked?:        bool
			are_certificate_extensions_restricted?: bool
			is_auto_include_alt_name?:              bool
			is_expired_certificate_blocked?:        bool
			is_revocation_status_timeout_blocked?:  bool
			is_unknown_revocation_status_blocked?:  bool
			is_unsupported_cipher_blocked?:         bool
			is_out_of_capacity_blocked?:            bool
			type!:                                  string
			name!:                                  string
			network_firewall_policy_id!:            string
			is_untrusted_issuer_blocked?:           bool
		}
		network_firewall_policy_mapped_secret: {
			version_number!:             int
			name!:                       string
			network_firewall_policy_id!: string
			source!:                     string
			type!:                       string
			vault_secret_id!:            string
		}
		network_firewall_policy_application: {
			icmp_type!:                  int
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
			icmp_code?:                  int
		}
		network_firewall_policy_decryption_rule: {
			decryption_profile?: string
			position?: [...{
				before_rule?: string
				after_rule?:  string
			}]
			secret?:         string
			action!:         string
			priority_order?: string
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_security_rule: {
			position?: [...{
				before_rule?: string
				after_rule?:  string
			}]
			inspection?:     string
			priority_order?: string
			action!:         string
			condition!: [...{
				url?: [...string]
				application?: [...string]
				destination_address?: [...string]
				service?: [...string]
				source_address?: [...string]
			}]
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_service_list: {
			services!: [...string]
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_url_list: {
			network_firewall_policy_id!: string
			urls!: [...{
				pattern!: string
				type!:    string
			}]
			name!: string
		}
	}
}
#data: {
	network_firewall_policy_service: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall: network_firewall_id!: string
	network_firewall_policy_application: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_mapped_secrets: {
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_security_rule: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_service_lists: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_tunnel_inspection_rule: {
		tunnel_inspection_rule_name!: string
		network_firewall_policy_id!:  string
	}
	network_firewall_policy_url_list: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_url_lists: {
		network_firewall_policy_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?: string
	}
	network_firewall_policies: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	network_firewall_policy_application_groups: {
		network_firewall_policy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	network_firewall_policy_decryption_rule: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_decryption_rules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		decryption_rule_priority_order?: int
		display_name?:                   string
		network_firewall_policy_id!:     string
	}
	network_firewall_policy_mapped_secret: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewalls: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:        string
		compartment_id!:             string
		display_name?:               string
		id?:                         string
		network_firewall_policy_id?: string
		state?:                      string
	}
	network_firewall_policy: network_firewall_policy_id!: string
	network_firewall_policy_application_group: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_decryption_profile: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_decryption_profiles: {
		network_firewall_policy_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?: string
	}
	network_firewall_policy_security_rules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:                 string
		network_firewall_policy_id!:   string
		security_rule_priority_order?: int
	}
	network_firewall_policy_service_list: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_services: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_tunnel_inspection_rules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:                          string
		network_firewall_policy_id!:            string
		tunnel_inspection_rule_priority_order?: int
	}
	network_firewall_policy_address_list: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_address_lists: {
		display_name?:               string
		network_firewall_policy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	network_firewall_policy_applications: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
}

