package network_load_balancer

#resource: {
	attributes: {
		backend: {
			name?:                     string
			port!:                     int
			is_drain?:                 bool
			target_id?:                string
			ip_address?:               string
			is_backup?:                bool
			is_offline?:               bool
			backend_set_name!:         string
			network_load_balancer_id!: string
			weight?:                   int
		}
		backend_set: {
			name!:                     string
			is_fail_open?:             bool
			network_load_balancer_id!: string
			is_preserve_source?:       bool
			health_checker!: [...{
				url_path?:           string
				protocol!:           string
				interval_in_millis?: int
				port?:               int
				dns?: [...{
					domain_name!: string
					query_class?: string
					query_type?:  string
					rcodes?: [...string]
					transport_protocol?: string
				}]
				request_data?:        string
				return_code?:         int
				timeout_in_millis?:   int
				response_body_regex?: string
				response_data?:       string
				retries?:             int
			}]
			backends: [...{
				name?:       string
				target_id?:  string
				weight?:     int
				port!:       int
				ip_address?: string
				is_backup?:  bool
				is_drain?:   bool
				is_offline?: bool
			}]
			policy!:                      string
			ip_version?:                  string
			is_instant_failover_enabled?: bool
		}
		listener: {
			udp_idle_timeout?:         int
			default_backend_set_name!: string
			l3ip_idle_timeout?:        int
			network_load_balancer_id!: string
			ip_version?:               string
			is_ppv2enabled?:           bool
			port!:                     int
			protocol!:                 string
			tcp_idle_timeout?:         int
			name!:                     string
		}
		network_load_balancer: {
			defined_tags?: [_]: string
			state: string
			reserved_ips?: [...{
				id?: string
			}]
			display_name!: string
			security_attributes?: [_]: string
			time_updated:           string
			assigned_private_ipv4?: string
			network_security_group_ids?: [...string]
			ip_addresses: [...{
				ip_version: string
				is_public:  bool
				reserved_ip: [...{
					id: string
				}]
				ip_address: string
			}]
			lifecycle_details:               string
			assigned_ipv6?:                  string
			is_preserve_source_destination?: bool
			system_tags: [_]: string
			is_symmetric_hash_enabled?: bool
			time_created:               string
			is_private?:                bool
			subnet_ipv6cidr?:           string
			freeform_tags?: [_]: string
			nlb_ip_version?: string
			subnet_id!:      string
			compartment_id!: string
		}
		network_load_balancers_backend_sets_unified: {
			is_fail_open?:                bool
			is_instant_failover_enabled?: bool
			health_checker!: [...{
				protocol!:           string
				interval_in_millis?: int
				retries?:            int
				url_path?:           string
				dns?: [...{
					domain_name!: string
					query_class?: string
					query_type?:  string
					rcodes?: [...string]
					transport_protocol?: string
				}]
				port?:                int
				request_data?:        string
				return_code?:         int
				timeout_in_millis?:   int
				response_body_regex?: string
				response_data?:       string
			}]
			name!:                     string
			network_load_balancer_id!: string
			backends?: [...{
				is_drain?:   bool
				is_offline?: bool
				name?:       string
				target_id?:  string
				weight?:     int
				port!:       int
				ip_address?: string
				is_backup?:  bool
			}]
			ip_version?:         string
			is_preserve_source?: bool
			policy!:             string
		}
	}
	arguments: {
		backend: {
			is_drain?:                 bool
			is_backup?:                bool
			is_offline?:               bool
			weight?:                   int
			port!:                     int
			backend_set_name!:         string
			network_load_balancer_id!: string
			ip_address?:               string
			name?:                     string
			target_id?:                string
		}
		backend_set: {
			policy!:     string
			ip_version?: string
			health_checker!: [...{
				request_data?:        string
				response_body_regex?: string
				response_data?:       string
				dns?: [...{
					rcodes?: [...string]
					transport_protocol?: string
					domain_name!:        string
					query_class?:        string
					query_type?:         string
				}]
				interval_in_millis?: int
				return_code?:        int
				url_path?:           string
				protocol!:           string
				timeout_in_millis?:  int
				port?:               int
				retries?:            int
			}]
			name!:                        string
			is_fail_open?:                bool
			is_instant_failover_enabled?: bool
			is_preserve_source?:          bool
			network_load_balancer_id!:    string
		}
		listener: {
			l3ip_idle_timeout?:        int
			network_load_balancer_id!: string
			ip_version?:               string
			default_backend_set_name!: string
			port!:                     int
			is_ppv2enabled?:           bool
			name!:                     string
			tcp_idle_timeout?:         int
			udp_idle_timeout?:         int
			protocol!:                 string
		}
		network_load_balancer: {
			is_preserve_source_destination?: bool
			is_private?:                     bool
			subnet_ipv6cidr?:                string
			display_name!:                   string
			nlb_ip_version?:                 string
			assigned_private_ipv4?:          string
			assigned_ipv6?:                  string
			compartment_id!:                 string
			is_symmetric_hash_enabled?:      bool
			security_attributes?: [_]: string
			network_security_group_ids?: [...string]
			subnet_id!: string
			reserved_ips?: [...{
				id?: string
			}]
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		network_load_balancers_backend_sets_unified: {
			is_instant_failover_enabled?: bool
			is_preserve_source?:          bool
			health_checker!: [...{
				interval_in_millis?:  int
				response_body_regex?: string
				response_data?:       string
				return_code?:         int
				timeout_in_millis?:   int
				url_path?:            string
				protocol!:            string
				request_data?:        string
				retries?:             int
				dns?: [...{
					query_type?: string
					rcodes?: [...string]
					transport_protocol?: string
					domain_name!:        string
					query_class?:        string
				}]
				port?: int
			}]
			name!:                     string
			ip_version?:               string
			policy!:                   string
			is_fail_open?:             bool
			network_load_balancer_id!: string
			backends?: [...{
				ip_address?: string
				is_backup?:  bool
				is_drain?:   bool
				is_offline?: bool
				name?:       string
				target_id?:  string
				weight?:     int
				port!:       int
			}]
		}
	}
}
#data: {
	backend_sets: {
		network_load_balancer_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	backends: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		backend_set_name!:         string
		network_load_balancer_id!: string
	}
	listeners: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		network_load_balancer_id!: string
	}
	network_load_balancers: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	network_load_balancers_policies: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	network_load_balancers_protocols: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	backend_health: {
		network_load_balancer_id!: string
		backend_name!:             string
		backend_set_name!:         string
	}
	backend_set: {
		network_load_balancer_id!: string
		backend_set_name!:         string
	}
	backend_set_health: {
		backend_set_name!:         string
		network_load_balancer_id!: string
	}
	listener: {
		network_load_balancer_id!: string
		listener_name!:            string
	}
	network_load_balancer: network_load_balancer_id!: string
	network_load_balancer_health: network_load_balancer_id!: string
}

