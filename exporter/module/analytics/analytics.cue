package analytics

#resource: {
	attributes: {
		analytics_instance: {
			freeform_tags?: [_]: string
			license_type!:   string
			feature_bundle?: string
			defined_tags?: [_]: string
			email_notification?: string
			update_channel?:     string
			domain_id?:          string
			time_updated:        string
			state?:              string
			compartment_id!:     string
			name!:               string
			feature_set!:        string
			system_tags: [_]: string
			time_created: string
			capacity!: [...{
				capacity_type!:  string
				capacity_value!: int
			}]
			admin_user?: string
			network_endpoint_details?: [...{
				whitelisted_vcns?: [...{
					id?: string
					whitelisted_ips?: [...string]
				}]
				network_endpoint_type!: string
				network_security_group_ids?: [...string]
				subnet_id?: string
				vcn_id?:    string
				whitelisted_ips?: [...string]
				whitelisted_services?: [...string]
			}]
			kms_key_id?:        *"" | string
			idcs_access_token?: string
			service_url:        string
			description?:       string
		}
		analytics_instance_private_access_channel: {
			vcn_id!: string
			network_security_group_ids?: [...string]
			key:                    string
			analytics_instance_id!: string
			subnet_id!:             string
			ip_address:             string
			private_source_dns_zones!: [...{
				dns_zone!:    string
				description?: string
			}]
			display_name!: string
			private_source_scan_hosts?: [...{
				scan_hostname!: string
				scan_port!:     int
				description?:   string
			}]
			egress_source_ip_addresses: [...string]
		}
		analytics_instance_vanity_url: {
			ca_certificate!: string
			hosts!: [...string]
			private_key!:           string
			public_certificate!:    string
			description?:           string
			passphrase?:            string
			analytics_instance_id!: string
		}
	}
	arguments: {
		analytics_instance: {
			idcs_access_token?: string
			admin_user?:        string
			compartment_id!:    string
			update_channel?:    string
			state?:             string
			feature_set!:       string
			capacity!: [...{
				capacity_type!:  string
				capacity_value!: int
			}]
			license_type!:       string
			description?:        string
			email_notification?: string
			feature_bundle?:     string
			freeform_tags?: [_]: string
			name!:       string
			domain_id?:  string
			kms_key_id?: *"" | string
			defined_tags?: [_]: string
			network_endpoint_details?: [...{
				network_security_group_ids?: [...string]
				subnet_id?: string
				vcn_id?:    string
				whitelisted_ips?: [...string]
				whitelisted_services?: [...string]
				whitelisted_vcns?: [...{
					id?: string
					whitelisted_ips?: [...string]
				}]
				network_endpoint_type!: string
			}]
		}
		analytics_instance_private_access_channel: {
			private_source_dns_zones!: [...{
				dns_zone!:    string
				description?: string
			}]
			network_security_group_ids?: [...string]
			subnet_id!: string
			vcn_id!:    string
			private_source_scan_hosts?: [...{
				scan_port!:     int
				description?:   string
				scan_hostname!: string
			}]
			analytics_instance_id!: string
			display_name!:          string
		}
		analytics_instance_vanity_url: {
			analytics_instance_id!: string
			ca_certificate!:        string
			hosts!: [...string]
			private_key!:        string
			public_certificate!: string
			description?:        string
			passphrase?:         string
		}
	}
}
#data: {
	analytics_instance: analytics_instance_id!: string
	analytics_instance_private_access_channel: {
		private_access_channel_key!: string
		analytics_instance_id!:      string
	}
	analytics_instances: {
		capacity_type?:  string
		compartment_id!: string
		feature_set?:    string
		name?:           string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
}

