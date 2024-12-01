package network_firewall

#resource: {
	attributes: {
		network_firewall: {
			system_tags: [_]: string
			network_firewall_policy_id!: string
			ipv4address?:                string
			defined_tags?: [_]: string
			state:             string
			ipv6address?:      string
			lifecycle_details: string
			subnet_id!:        string
			display_name?:     string
			freeform_tags?: [_]: string
			compartment_id!:      string
			availability_domain?: string
			time_created:         string
			time_updated:         string
			network_security_group_ids?: [...string]
		}
		network_firewall_policy_address_list: {
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
			addresses!: [...string]
			parent_resource_id: string
			total_addresses:    int
		}
		network_firewall_policy_application: {
			icmp_type!:                  int
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
			icmp_code?:                  int
			parent_resource_id:          string
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
		network_firewall_policy_service_list: {
			services!: [...string]
			parent_resource_id:          string
			total_services:              int
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_tunnel_inspection_rule: {
			name!:   string
			action?: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			network_firewall_policy_id!: string
			priority_order:              string
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			profile?: [...{
				must_return_traffic_to_source?: bool
			}]
			protocol!:          string
			parent_resource_id: string
		}
		network_firewall_policy: {
			display_name?: string
			state:         string
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			attached_network_firewall_count: int
			lifecycle_details:               string
			time_updated:                    string
			compartment_id!:                 string
		}
		network_firewall_policy_application_group: {
			name!: string
			apps!: [...string]
			network_firewall_policy_id!: string
			parent_resource_id:          string
			total_apps:                  int
		}
		network_firewall_policy_decryption_profile: {
			are_certificate_extensions_restricted?: bool
			is_revocation_status_timeout_blocked?:  bool
			is_unknown_revocation_status_blocked?:  bool
			network_firewall_policy_id!:            string
			parent_resource_id:                     string
			type!:                                  string
			is_unsupported_version_blocked?:        bool
			name!:                                  string
			is_auto_include_alt_name?:              bool
			is_expired_certificate_blocked?:        bool
			is_out_of_capacity_blocked?:            bool
			is_untrusted_issuer_blocked?:           bool
			is_unsupported_cipher_blocked?:         bool
		}
		network_firewall_policy_decryption_rule: {
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			name!:                       string
			decryption_profile?:         string
			network_firewall_policy_id!: string
			secret?:                     string
			parent_resource_id:          string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			action!:         string
			priority_order?: string
		}
		network_firewall_policy_security_rule: {
			action!: string
			condition!: [...{
				url?: [...string]
				application?: [...string]
				destination_address?: [...string]
				service?: [...string]
				source_address?: [...string]
			}]
			name!:                       string
			network_firewall_policy_id!: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			inspection?:        string
			priority_order?:    string
			parent_resource_id: string
		}
		network_firewall_policy_service: {
			parent_resource_id:          string
			name!:                       string
			network_firewall_policy_id!: string
			port_ranges!: [...{
				minimum_port!: int
				maximum_port?: int
			}]
			type!: string
		}
		network_firewall_policy_url_list: {
			urls!: [...{
				type!:    string
				pattern!: string
			}]
			parent_resource_id:          string
			total_urls:                  int
			name!:                       string
			network_firewall_policy_id!: string
		}
	}
	arguments: {
		network_firewall: {
			display_name?: string
			freeform_tags?: [_]: string
			subnet_id!:                  string
			network_firewall_policy_id!: string
			ipv4address?:                string
			compartment_id!:             string
			availability_domain?:        string
			defined_tags?: [_]: string
			ipv6address?: string
			network_security_group_ids?: [...string]
		}
		network_firewall_policy_address_list: {
			network_firewall_policy_id!: string
			type!:                       string
			addresses!: [...string]
			name!: string
		}
		network_firewall_policy_application: {
			icmp_type!:                  int
			name!:                       string
			network_firewall_policy_id!: string
			type!:                       string
			icmp_code?:                  int
		}
		network_firewall_policy_mapped_secret: {
			source!:                     string
			type!:                       string
			vault_secret_id!:            string
			version_number!:             int
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_service_list: {
			name!:                       string
			network_firewall_policy_id!: string
			services!: [...string]
		}
		network_firewall_policy_tunnel_inspection_rule: {
			action?: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			profile?: [...{
				must_return_traffic_to_source?: bool
			}]
			network_firewall_policy_id!: string
			protocol!:                   string
			condition!: [...{
				source_address?: [...string]
				destination_address?: [...string]
			}]
			name!: string
		}
		network_firewall_policy: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		network_firewall_policy_application_group: {
			network_firewall_policy_id!: string
			name!:                       string
			apps!: [...string]
		}
		network_firewall_policy_decryption_profile: {
			is_out_of_capacity_blocked?:            bool
			is_unknown_revocation_status_blocked?:  bool
			is_unsupported_cipher_blocked?:         bool
			is_unsupported_version_blocked?:        bool
			are_certificate_extensions_restricted?: bool
			is_expired_certificate_blocked?:        bool
			is_revocation_status_timeout_blocked?:  bool
			is_untrusted_issuer_blocked?:           bool
			network_firewall_policy_id!:            string
			type!:                                  string
			name!:                                  string
			is_auto_include_alt_name?:              bool
		}
		network_firewall_policy_decryption_rule: {
			priority_order?: string
			condition!: [...{
				destination_address?: [...string]
				source_address?: [...string]
			}]
			name!:               string
			decryption_profile?: string
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			action!:                     string
			network_firewall_policy_id!: string
			secret?:                     string
		}
		network_firewall_policy_security_rule: {
			position?: [...{
				after_rule?:  string
				before_rule?: string
			}]
			inspection?:     string
			priority_order?: string
			action!:         string
			condition!: [...{
				service?: [...string]
				source_address?: [...string]
				url?: [...string]
				application?: [...string]
				destination_address?: [...string]
			}]
			name!:                       string
			network_firewall_policy_id!: string
		}
		network_firewall_policy_service: {
			network_firewall_policy_id!: string
			port_ranges!: [...{
				minimum_port!: int
				maximum_port?: int
			}]
			type!: string
			name!: string
		}
		network_firewall_policy_url_list: {
			name!:                       string
			network_firewall_policy_id!: string
			urls!: [...{
				pattern!: string
				type!:    string
			}]
		}
	}
}
#data: {
	network_firewall: network_firewall_id!: string
	network_firewall_policy_decryption_rule: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_decryption_rules: {
		decryption_rule_priority_order?: int
		display_name?:                   string
		network_firewall_policy_id!:     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	network_firewall_policy_mapped_secrets: {
		network_firewall_policy_id!: string
		display_name?:               string
	}
	network_firewall_policy_security_rule: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_decryption_profiles: {
		network_firewall_policy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	network_firewall_policy_service: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_service_list: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_tunnel_inspection_rules: {
		display_name?:                          string
		network_firewall_policy_id!:            string
		tunnel_inspection_rule_priority_order?: int
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	network_firewall_policy_url_list: {
		name!:                       string
		network_firewall_policy_id!: string
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
	network_firewall_policy_services: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy: network_firewall_policy_id!: string
	network_firewall_policy_address_list: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_address_lists: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_application_group: {
		network_firewall_policy_id!: string
		name!:                       string
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
	network_firewall_policy_decryption_profile: {
		network_firewall_policy_id!: string
		name!:                       string
	}
	network_firewall_policy_url_lists: {
		network_firewall_policy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	network_firewalls: {
		display_name?:               string
		id?:                         string
		network_firewall_policy_id?: string
		state?:                      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
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
	network_firewall_policy_application: {
		name!:                       string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_application_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		network_firewall_policy_id!: string
	}
	network_firewall_policy_mapped_secret: {
		name!:                       string
		network_firewall_policy_id!: string
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
	network_firewall_policy_tunnel_inspection_rule: {
		network_firewall_policy_id!:  string
		tunnel_inspection_rule_name!: string
	}
}

