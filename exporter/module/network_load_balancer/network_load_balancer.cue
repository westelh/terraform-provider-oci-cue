package network_load_balancer

#resource: {
	attributes: {
		backend: {
			port!:                     int
			name?:                     string
			target_id?:                string
			backend_set_name!:         string
			network_load_balancer_id!: string
			ip_address?:               string
			is_backup?:                bool
			is_drain?:                 bool
			is_offline?:               bool
			weight?:                   int
		}
		backend_set: {
			backends: [...{
				target_id?:  string
				weight?:     int
				port!:       int
				ip_address?: string
				is_backup?:  bool
				is_drain?:   bool
				is_offline?: bool
				name?:       string
			}]
			policy!:                   string
			ip_version?:               string
			name!:                     string
			network_load_balancer_id!: string
			is_fail_open?:             bool
			is_preserve_source?:       bool
			health_checker!: [...{
				port?:              int
				request_data?:      string
				response_data?:     string
				retries?:           int
				timeout_in_millis?: int
				return_code?:       int
				url_path?:          string
				protocol!:          string
				dns?: [...{
					query_type?: string
					rcodes?: [...string]
					transport_protocol?: string
					domain_name!:        string
					query_class?:        string
				}]
				interval_in_millis?:  int
				response_body_regex?: string
			}]
			is_instant_failover_enabled?: bool
		}
		listener: {
			name!:                     string
			ip_version?:               string
			udp_idle_timeout?:         int
			port!:                     int
			network_load_balancer_id!: string
			protocol!:                 string
			l3ip_idle_timeout?:        int
			default_backend_set_name!: string
			is_ppv2enabled?:           bool
			tcp_idle_timeout?:         int
		}
		network_load_balancer: {
			network_security_group_ids?: [...string]
			nlb_ip_version?:   string
			lifecycle_details: string
			system_tags: [_]: string
			ip_addresses: [...{
				is_public: bool
				reserved_ip: [...{
					id: string
				}]
				ip_address: string
				ip_version: string
			}]
			display_name!:  string
			assigned_ipv6?: string
			security_attributes?: [_]: string
			subnet_id!:                      string
			is_symmetric_hash_enabled?:      bool
			subnet_ipv6cidr?:                string
			is_preserve_source_destination?: bool
			time_updated:                    string
			compartment_id!:                 string
			is_private?:                     bool
			assigned_private_ipv4?:          string
			state:                           string
			time_created:                    string
			reserved_ips?: [...{
				id?: string
			}]
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		network_load_balancers_backend_sets_unified: {
			is_preserve_source?:          bool
			policy!:                      string
			ip_version?:                  string
			is_instant_failover_enabled?: bool
			health_checker!: [...{
				response_body_regex?: string
				protocol!:            string
				return_code?:         int
				timeout_in_millis?:   int
				url_path?:            string
				request_data?:        string
				port?:                int
				response_data?:       string
				retries?:             int
				dns?: [...{
					domain_name!: string
					query_class?: string
					query_type?:  string
					rcodes?: [...string]
					transport_protocol?: string
				}]
				interval_in_millis?: int
			}]
			backends?: [...{
				target_id?:  string
				weight?:     int
				port!:       int
				ip_address?: string
				is_backup?:  bool
				is_drain?:   bool
				is_offline?: bool
				name?:       string
			}]
			is_fail_open?:             bool
			network_load_balancer_id!: string
			name!:                     string
		}
	}
	arguments: {
		backend: {
			target_id?:                string
			weight?:                   int
			ip_address?:               string
			is_drain?:                 bool
			name?:                     string
			is_backup?:                bool
			is_offline?:               bool
			backend_set_name!:         string
			network_load_balancer_id!: string
			port!:                     int
		}
		backend_set: {
			is_preserve_source?: bool
			health_checker!: [...{
				dns?: [...{
					domain_name!: string
					query_class?: string
					query_type?:  string
					rcodes?: [...string]
					transport_protocol?: string
				}]
				retries?:             int
				return_code?:         int
				url_path?:            string
				protocol!:            string
				request_data?:        string
				response_data?:       string
				timeout_in_millis?:   int
				interval_in_millis?:  int
				response_body_regex?: string
				port?:                int
			}]
			policy!:                      string
			ip_version?:                  string
			is_instant_failover_enabled?: bool
			name!:                        string
			network_load_balancer_id!:    string
			is_fail_open?:                bool
		}
		listener: {
			tcp_idle_timeout?:         int
			default_backend_set_name!: string
			protocol!:                 string
			ip_version?:               string
			port!:                     int
			is_ppv2enabled?:           bool
			name!:                     string
			network_load_balancer_id!: string
			udp_idle_timeout?:         int
			l3ip_idle_timeout?:        int
		}
		network_load_balancer: {
			compartment_id!: string
			freeform_tags?: [_]: string
			security_attributes?: [_]: string
			subnet_id!:    string
			is_private?:   bool
			display_name!: string
			defined_tags?: [_]: string
			assigned_ipv6?:                  string
			is_preserve_source_destination?: bool
			nlb_ip_version?:                 string
			subnet_ipv6cidr?:                string
			network_security_group_ids?: [...string]
			reserved_ips?: [...{
				id?: string
			}]
			assigned_private_ipv4?:     string
			is_symmetric_hash_enabled?: bool
		}
		network_load_balancers_backend_sets_unified: {
			health_checker!: [...{
				port?:                int
				request_data?:        string
				return_code?:         int
				url_path?:            string
				interval_in_millis?:  int
				protocol!:            string
				response_body_regex?: string
				response_data?:       string
				retries?:             int
				timeout_in_millis?:   int
				dns?: [...{
					query_type?: string
					rcodes?: [...string]
					transport_protocol?: string
					domain_name!:        string
					query_class?:        string
				}]
			}]
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
			is_preserve_source?:          bool
			policy!:                      string
			ip_version?:                  string
			is_fail_open?:                bool
			is_instant_failover_enabled?: bool
			name!:                        string
			network_load_balancer_id!:    string
		}
	}
}
#data: {
	network_load_balancers_policies: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	network_load_balancers_protocols: filter?: [...{
		values!: [...string]
		regex?: *false | bool
		name!:  string
	}]
	backend_set: {
		backend_set_name!:         string
		network_load_balancer_id!: string
	}
	backend_set_health: {
		backend_set_name!:         string
		network_load_balancer_id!: string
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
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		network_load_balancer_id!: string
	}
	network_load_balancer_health: network_load_balancer_id!: string
	network_load_balancers: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	backend_health: {
		network_load_balancer_id!: string
		backend_name!:             string
		backend_set_name!:         string
	}
	backend_sets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		network_load_balancer_id!: string
	}
	listener: {
		listener_name!:            string
		network_load_balancer_id!: string
	}
	network_load_balancer: network_load_balancer_id!: string
}

