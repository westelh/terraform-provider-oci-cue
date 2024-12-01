package analytics

#resource: {
	attributes: {
		analytics_instance: {
			system_tags: [_]: string
			defined_tags?: [_]: string
			time_created: string
			capacity!: [...{
				capacity_type!:  string
				capacity_value!: int
			}]
			license_type!:      string
			feature_bundle?:    string
			feature_set!:       string
			update_channel?:    string
			service_url:        string
			idcs_access_token?: string
			domain_id?:         string
			kms_key_id?:        *"" | string
			network_endpoint_details?: [...{
				vcn_id?: string
				whitelisted_ips?: [...string]
				whitelisted_services?: [...string]
				whitelisted_vcns?: [...{
					id?: string
					whitelisted_ips?: [...string]
				}]
				network_endpoint_type!: string
				network_security_group_ids?: [...string]
				subnet_id?: string
			}]
			email_notification?: string
			compartment_id!:     string
			state?:              string
			admin_user?:         string
			description?:        string
			time_updated:        string
			name!:               string
			freeform_tags?: [_]: string
		}
		analytics_instance_private_access_channel: {
			key: string
			egress_source_ip_addresses: [...string]
			private_source_dns_zones!: [...{
				dns_zone!:    string
				description?: string
			}]
			private_source_scan_hosts?: [...{
				description?:   string
				scan_hostname!: string
				scan_port!:     int
			}]
			analytics_instance_id!: string
			vcn_id!:                string
			ip_address:             string
			display_name!:          string
			subnet_id!:             string
			network_security_group_ids?: [...string]
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
			description?:    string
			domain_id?:      string
			compartment_id!: string
			defined_tags?: [_]: string
			update_channel?: string
			kms_key_id?:     *"" | string
			capacity!: [...{
				capacity_type!:  string
				capacity_value!: int
			}]
			license_type!:      string
			feature_set!:       string
			state?:             string
			idcs_access_token?: string
			network_endpoint_details?: [...{
				subnet_id?: string
				vcn_id?:    string
				whitelisted_ips?: [...string]
				whitelisted_services?: [...string]
				whitelisted_vcns?: [...{
					id?: string
					whitelisted_ips?: [...string]
				}]
				network_endpoint_type!: string
				network_security_group_ids?: [...string]
			}]
			feature_bundle?: string
			name!:           string
			freeform_tags?: [_]: string
			admin_user?:         string
			email_notification?: string
		}
		analytics_instance_private_access_channel: {
			private_source_scan_hosts?: [...{
				scan_hostname!: string
				scan_port!:     int
				description?:   string
			}]
			analytics_instance_id!: string
			subnet_id!:             string
			network_security_group_ids?: [...string]
			display_name!: string
			private_source_dns_zones!: [...{
				description?: string
				dns_zone!:    string
			}]
			vcn_id!: string
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
		analytics_instance_id!:      string
		private_access_channel_key!: string
	}
	analytics_instances: {
		feature_set?: string
		name?:        string
		state?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		capacity_type?:  string
		compartment_id!: string
	}
}

