package load_balancer

#resource: {
	attributes: {
		backend_set: {
			health_checker!: [...{
				timeout_in_millis?:   *3000 | int
				url_path?:            string
				interval_ms?:         *30000 | int
				protocol!:            string
				is_force_plain_text?: bool
				port?:                *0 | int
				response_body_regex?: string
				return_code?:         int
				retries?:             *3 | int
			}]
			name!:                    string
			policy!:                  string
			backend_max_connections?: int
			lb_cookie_session_persistence_configuration?: [...{
				is_http_only?:       bool
				is_secure?:          bool
				max_age_in_seconds?: int
				path?:               string
				cookie_name?:        string
				disable_fallback?:   bool
				domain?:             string
			}]
			ssl_configuration?: [...{
				trusted_certificate_authority_ids?: [...string]
				verify_depth?:            *5 | int
				verify_peer_certificate?: *true | bool
				certificate_ids?: [...string]
				certificate_name?:  string
				cipher_suite_name?: string
				protocols?: [...string]
				server_order_preference?: string
			}]
			backend: [...{
				ip_address!:      string
				port!:            int
				backup?:          *false | bool
				drain?:           *false | bool
				max_connections?: int
				offline?:         *false | bool
				weight?:          int
				name:             string
			}]
			state: string
			session_persistence_configuration?: [...{
				cookie_name!:      string
				disable_fallback?: *false | bool
			}]
			load_balancer_id!: string
		}
		certificate: {
			public_certificate?: string
			state:               string
			certificate_name!:   string
			load_balancer_id!:   string
			ca_certificate?:     string
			passphrase?:         *"" | string
			private_key?:        string
		}
		hostname: {
			state:             string
			hostname!:         string
			load_balancer_id!: string
			name!:             string
		}
		listener: {
			connection_configuration?: [...{
				idle_timeout_in_seconds!: string
				backend_tcp_proxy_protocol_options?: [...string]
				backend_tcp_proxy_protocol_version?: int
			}]
			state:                     string
			default_backend_set_name!: string
			ssl_configuration?: [...{
				trusted_certificate_authority_ids?: [...string]
				certificate_name?:        string
				cipher_suite_name?:       string
				verify_peer_certificate?: *true | bool
				has_session_resumption?:  bool
				server_order_preference?: string
				verify_depth?:            *5 | int
				certificate_ids?: [...string]
				protocols?: [...string]
			}]
			path_route_set_name?: string
			rule_set_names?: [...string]
			port!:                int
			protocol!:            string
			routing_policy_name?: string
			load_balancer_id!:    string
			name!:                string
			hostname_names?: [...string]
		}
		load_balancer_routing_policy: {
			name!: string
			rules!: [...{
				name!: string
				actions!: [...{
					backend_set_name!: string
					name!:             string
				}]
				condition!: string
			}]
			state:                       string
			condition_language_version!: string
			load_balancer_id!:           string
		}
		path_route_set: {
			state:             string
			load_balancer_id!: string
			name!:             string
			path_routes!: [...{
				path!: string
				path_match_type!: [...{
					match_type!: string
				}]
				backend_set_name!: string
			}]
		}
		ssl_cipher_suite: {
			ciphers!: [...string]
			load_balancer_id!: string
			name!:             string
			state:             string
		}
		backend: {
			ip_address!:       string
			load_balancer_id!: string
			port!:             int
			drain?:            bool
			max_connections?:  int
			weight?:           int
			name:              string
			backendset_name!:  string
			backup?:           *false | bool
			offline?:          bool
			state:             string
		}
		rule_set: {
			items!: [...{
				default_max_connections?: int
				action!:                  string
				conditions?: [...{
					attribute_name!:  string
					attribute_value!: string
					operator?:        string
				}]
				redirect_uri?: [...{
					query?:    *"{query}" | string
					host?:     string
					path?:     string
					port?:     int
					protocol?: string
				}]
				description?: string
				header?:      string
				prefix?:      string
				ip_max_connections?: [...{
					ip_addresses?: [...string]
					max_connections?: int
				}]
				value?:                          string
				suffix?:                         string
				are_invalid_characters_allowed?: bool
				http_large_header_size_in_kb?:   int
				response_code?:                  int
				status_code?:                    int
				allowed_methods?: [...string]
			}]
			load_balancer_id!: string
			name!:             string
			state:             string
		}
		load_balancer: {
			network_security_group_ids?: [...string]
			is_request_id_enabled?: bool
			shape!:                 string
			subnet_ids!: [...string]
			compartment_id!: string
			ip_addresses: [...string]
			is_private?:        bool
			request_id_header?: string
			display_name!:      string
			freeform_tags?: [_]: string
			is_delete_protection_enabled?: bool
			state:                         string
			ip_address_details: [...{
				ip_address: string
				is_public:  bool
				reserved_ip: [...{
					id: string
				}]
			}]
			shape_details?: [...{
				maximum_bandwidth_in_mbps!: int
				minimum_bandwidth_in_mbps!: int
			}]
			defined_tags?: [_]: string
			ip_mode?: string
			reserved_ips?: [...{
				id?: string
			}]
			time_created: string
			system_tags: [_]: string
		}
	}
	arguments: {
		backend_set: {
			ssl_configuration?: [...{
				protocols?: [...string]
				server_order_preference?: string
				trusted_certificate_authority_ids?: [...string]
				verify_depth?:            *5 | int
				verify_peer_certificate?: *true | bool
				certificate_ids?: [...string]
				certificate_name?:  string
				cipher_suite_name?: string
			}]
			session_persistence_configuration?: [...{
				cookie_name!:      string
				disable_fallback?: *false | bool
			}]
			load_balancer_id!:        string
			name!:                    string
			policy!:                  string
			backend_max_connections?: int
			lb_cookie_session_persistence_configuration?: [...{
				path?:               string
				cookie_name?:        string
				disable_fallback?:   bool
				domain?:             string
				is_http_only?:       bool
				is_secure?:          bool
				max_age_in_seconds?: int
			}]
			health_checker!: [...{
				interval_ms?:         *30000 | int
				response_body_regex?: string
				port?:                *0 | int
				return_code?:         int
				timeout_in_millis?:   *3000 | int
				url_path?:            string
				protocol!:            string
				is_force_plain_text?: bool
				retries?:             *3 | int
			}]
		}
		certificate: {
			certificate_name!:   string
			load_balancer_id!:   string
			ca_certificate?:     string
			passphrase?:         *"" | string
			private_key?:        string
			public_certificate?: string
		}
		hostname: {
			hostname!:         string
			load_balancer_id!: string
			name!:             string
		}
		listener: {
			hostname_names?: [...string]
			ssl_configuration?: [...{
				verify_depth?: *5 | int
				protocols?: [...string]
				verify_peer_certificate?: *true | bool
				cipher_suite_name?:       string
				has_session_resumption?:  bool
				trusted_certificate_authority_ids?: [...string]
				certificate_ids?: [...string]
				certificate_name?:        string
				server_order_preference?: string
			}]
			connection_configuration?: [...{
				idle_timeout_in_seconds!: string
				backend_tcp_proxy_protocol_options?: [...string]
				backend_tcp_proxy_protocol_version?: int
			}]
			load_balancer_id!:         string
			name!:                     string
			default_backend_set_name!: string
			path_route_set_name?:      string
			rule_set_names?: [...string]
			port!:                int
			protocol!:            string
			routing_policy_name?: string
		}
		load_balancer_routing_policy: {
			condition_language_version!: string
			load_balancer_id!:           string
			name!:                       string
			rules!: [...{
				name!: string
				actions!: [...{
					backend_set_name!: string
					name!:             string
				}]
				condition!: string
			}]
		}
		path_route_set: {
			path_routes!: [...{
				backend_set_name!: string
				path!:             string
				path_match_type!: [...{
					match_type!: string
				}]
			}]
			load_balancer_id!: string
			name!:             string
		}
		ssl_cipher_suite: {
			load_balancer_id!: string
			name!:             string
			ciphers!: [...string]
		}
		backend: {
			ip_address!:       string
			offline?:          bool
			load_balancer_id!: string
			port!:             int
			drain?:            bool
			backup?:           *false | bool
			max_connections?:  int
			weight?:           int
			backendset_name!:  string
		}
		rule_set: {
			items!: [...{
				default_max_connections?:      int
				http_large_header_size_in_kb?: int
				prefix?:                       string
				header?:                       string
				conditions?: [...{
					attribute_name!:  string
					attribute_value!: string
					operator?:        string
				}]
				ip_max_connections?: [...{
					ip_addresses?: [...string]
					max_connections?: int
				}]
				status_code?: int
				description?: string
				redirect_uri?: [...{
					path?:     string
					port?:     int
					protocol?: string
					query?:    *"{query}" | string
					host?:     string
				}]
				response_code?: int
				allowed_methods?: [...string]
				value?:                          string
				suffix?:                         string
				action!:                         string
				are_invalid_characters_allowed?: bool
			}]
			load_balancer_id!: string
			name!:             string
		}
		load_balancer: {
			subnet_ids!: [...string]
			is_delete_protection_enabled?: bool
			ip_mode?:                      string
			request_id_header?:            string
			reserved_ips?: [...{
				id?: string
			}]
			compartment_id!: string
			network_security_group_ids?: [...string]
			freeform_tags?: [_]: string
			is_request_id_enabled?: bool
			display_name!:          string
			shape!:                 string
			is_private?:            bool
			shape_details?: [...{
				maximum_bandwidth_in_mbps!: int
				minimum_bandwidth_in_mbps!: int
			}]
			defined_tags?: [_]: string
		}
	}
}
#data: {
	load_balancers: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		detail?:         string
		display_name?:   string
		state?:          string
	}
	rule_set: {
		load_balancer_id!: string
		name!:             string
	}
	backend_health: {
		load_balancer_id!: string
		backend_name!:     string
		backend_set_name!: string
	}
	backend_sets: {
		load_balancer_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	health: load_balancer_id!: string
	path_route_sets: {
		load_balancer_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	backend_set_health: {
		backend_set_name!: string
		load_balancer_id!: string
	}
	backends: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		backendset_name!:  string
		load_balancer_id!: string
	}
	listener_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		listener_name!:    string
		load_balancer_id!: string
	}
	shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ssl_cipher_suite: {
		load_balancer_id!: string
		name!:             string
	}
	ssl_cipher_suites: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		load_balancer_id!: string
	}
	hostnames: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
	policies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	load_balancer_routing_policy: {
		load_balancer_id!:    string
		routing_policy_name!: string
	}
	rule_sets: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
	certificates: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
	protocols: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	load_balancer_routing_policies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
}

