package load_balancer

#resource: {
	attributes: {
		backend: {
			ip_address!:       string
			load_balancer_id!: string
			state:             string
			drain?:            bool
			port!:             int
			max_connections?:  int
			offline?:          bool
			backendset_name!:  string
			name:              string
			backup?:           *false | bool
			weight?:           int
		}
		backend_set: {
			session_persistence_configuration?: [...{
				cookie_name!:      string
				disable_fallback?: *false | bool
			}]
			policy!: string
			ssl_configuration?: [...{
				server_order_preference?: string
				trusted_certificate_authority_ids?: [...string]
				verify_depth?:            *5 | int
				verify_peer_certificate?: *true | bool
				certificate_ids?: [...string]
				certificate_name?:  string
				cipher_suite_name?: string
				protocols?: [...string]
			}]
			backend: [...{
				weight?:          int
				name:             string
				ip_address!:      string
				port!:            int
				backup?:          *false | bool
				drain?:           *false | bool
				max_connections?: int
				offline?:         *false | bool
			}]
			load_balancer_id!: string
			name!:             string
			lb_cookie_session_persistence_configuration?: [...{
				is_secure?:          bool
				max_age_in_seconds?: int
				path?:               string
				cookie_name?:        string
				disable_fallback?:   bool
				domain?:             string
				is_http_only?:       bool
			}]
			health_checker!: [...{
				return_code?:         int
				url_path?:            string
				port?:                *0 | int
				response_body_regex?: string
				retries?:             *3 | int
				interval_ms?:         *30000 | int
				is_force_plain_text?: bool
				timeout_in_millis?:   *3000 | int
				protocol!:            string
			}]
			backend_max_connections?: int
			state:                    string
		}
		hostname: {
			state:             string
			hostname!:         string
			load_balancer_id!: string
			name!:             string
		}
		rule_set: {
			state: string
			items!: [...{
				ip_max_connections?: [...{
					ip_addresses?: [...string]
					max_connections?: int
				}]
				response_code?: int
				value?:         string
				conditions?: [...{
					operator?:        string
					attribute_name!:  string
					attribute_value!: string
				}]
				description?:             string
				status_code?:             int
				header?:                  string
				suffix?:                  string
				default_max_connections?: int
				redirect_uri?: [...{
					port?:     int
					protocol?: string
					query?:    *"{query}" | string
					host?:     string
					path?:     string
				}]
				are_invalid_characters_allowed?: bool
				action!:                         string
				allowed_methods?: [...string]
				http_large_header_size_in_kb?: int
				prefix?:                       string
			}]
			load_balancer_id!: string
			name!:             string
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
		listener: {
			path_route_set_name?: string
			load_balancer_id!:    string
			protocol!:            string
			hostname_names?: [...string]
			connection_configuration?: [...{
				backend_tcp_proxy_protocol_options?: [...string]
				backend_tcp_proxy_protocol_version?: int
				idle_timeout_in_seconds!:            string
			}]
			routing_policy_name?: string
			rule_set_names?: [...string]
			state: string
			name!: string
			port!: int
			ssl_configuration?: [...{
				certificate_ids?: [...string]
				verify_peer_certificate?: *true | bool
				cipher_suite_name?:       string
				server_order_preference?: string
				trusted_certificate_authority_ids?: [...string]
				verify_depth?:           *5 | int
				certificate_name?:       string
				has_session_resumption?: bool
				protocols?: [...string]
			}]
			default_backend_set_name!: string
		}
		load_balancer: {
			defined_tags?: [_]: string
			subnet_ids!: [...string]
			system_tags: [_]: string
			compartment_id!:        string
			is_request_id_enabled?: bool
			state:                  string
			reserved_ips?: [...{
				id?: string
			}]
			shape!: string
			ip_addresses: [...string]
			ip_mode?: string
			shape_details?: [...{
				maximum_bandwidth_in_mbps!: int
				minimum_bandwidth_in_mbps!: int
			}]
			request_id_header?:            string
			display_name!:                 string
			is_delete_protection_enabled?: bool
			network_security_group_ids?: [...string]
			time_created: string
			freeform_tags?: [_]: string
			is_private?: bool
			ip_address_details: [...{
				ip_address: string
				is_public:  bool
				reserved_ip: [...{
					id: string
				}]
			}]
		}
		load_balancer_routing_policy: {
			name!: string
			rules!: [...{
				actions!: [...{
					name!:             string
					backend_set_name!: string
				}]
				condition!: string
				name!:      string
			}]
			state:                       string
			condition_language_version!: string
			load_balancer_id!:           string
		}
		path_route_set: {
			path_routes!: [...{
				path_match_type!: [...{
					match_type!: string
				}]
				backend_set_name!: string
				path!:             string
			}]
			state:             string
			load_balancer_id!: string
			name!:             string
		}
		ssl_cipher_suite: {
			name!: string
			state: string
			ciphers!: [...string]
			load_balancer_id!: string
		}
	}
	arguments: {
		backend: {
			drain?:            bool
			weight?:           int
			backup?:           *false | bool
			ip_address!:       string
			load_balancer_id!: string
			offline?:          bool
			port!:             int
			max_connections?:  int
			backendset_name!:  string
		}
		backend_set: {
			name!: string
			lb_cookie_session_persistence_configuration?: [...{
				disable_fallback?:   bool
				domain?:             string
				is_http_only?:       bool
				is_secure?:          bool
				max_age_in_seconds?: int
				path?:               string
				cookie_name?:        string
			}]
			ssl_configuration?: [...{
				verify_depth?:            *5 | int
				verify_peer_certificate?: *true | bool
				certificate_ids?: [...string]
				certificate_name?:  string
				cipher_suite_name?: string
				protocols?: [...string]
				server_order_preference?: string
				trusted_certificate_authority_ids?: [...string]
			}]
			health_checker!: [...{
				timeout_in_millis?:   *3000 | int
				response_body_regex?: string
				retries?:             *3 | int
				interval_ms?:         *30000 | int
				url_path?:            string
				protocol!:            string
				port?:                *0 | int
				is_force_plain_text?: bool
				return_code?:         int
			}]
			policy!:                  string
			backend_max_connections?: int
			session_persistence_configuration?: [...{
				cookie_name!:      string
				disable_fallback?: *false | bool
			}]
			load_balancer_id!: string
		}
		hostname: {
			hostname!:         string
			load_balancer_id!: string
			name!:             string
		}
		rule_set: {
			items!: [...{
				are_invalid_characters_allowed?: bool
				value?:                          string
				conditions?: [...{
					attribute_name!:  string
					attribute_value!: string
					operator?:        string
				}]
				http_large_header_size_in_kb?: int
				allowed_methods?: [...string]
				header?:                  string
				suffix?:                  string
				default_max_connections?: int
				redirect_uri?: [...{
					query?:    *"{query}" | string
					host?:     string
					path?:     string
					port?:     int
					protocol?: string
				}]
				status_code?: int
				action!:      string
				ip_max_connections?: [...{
					max_connections?: int
					ip_addresses?: [...string]
				}]
				prefix?:        string
				response_code?: int
				description?:   string
			}]
			load_balancer_id!: string
			name!:             string
		}
		certificate: {
			ca_certificate?:     string
			passphrase?:         *"" | string
			private_key?:        string
			public_certificate?: string
			certificate_name!:   string
			load_balancer_id!:   string
		}
		listener: {
			load_balancer_id!: string
			protocol!:         string
			name!:             string
			port!:             int
			connection_configuration?: [...{
				backend_tcp_proxy_protocol_options?: [...string]
				backend_tcp_proxy_protocol_version?: int
				idle_timeout_in_seconds!:            string
			}]
			routing_policy_name?: string
			path_route_set_name?: string
			ssl_configuration?: [...{
				certificate_name?:       string
				has_session_resumption?: bool
				protocols?: [...string]
				verify_peer_certificate?: *true | bool
				verify_depth?:            *5 | int
				certificate_ids?: [...string]
				cipher_suite_name?:       string
				server_order_preference?: string
				trusted_certificate_authority_ids?: [...string]
			}]
			rule_set_names?: [...string]
			default_backend_set_name!: string
			hostname_names?: [...string]
		}
		load_balancer: {
			subnet_ids!: [...string]
			freeform_tags?: [_]: string
			compartment_id!:    string
			request_id_header?: string
			defined_tags?: [_]: string
			ip_mode?:               string
			is_request_id_enabled?: bool
			shape_details?: [...{
				maximum_bandwidth_in_mbps!: int
				minimum_bandwidth_in_mbps!: int
			}]
			shape!:                        string
			is_delete_protection_enabled?: bool
			network_security_group_ids?: [...string]
			is_private?: bool
			reserved_ips?: [...{
				id?: string
			}]
			display_name!: string
		}
		load_balancer_routing_policy: {
			name!: string
			rules!: [...{
				actions!: [...{
					name!:             string
					backend_set_name!: string
				}]
				condition!: string
				name!:      string
			}]
			condition_language_version!: string
			load_balancer_id!:           string
		}
		path_route_set: {
			load_balancer_id!: string
			name!:             string
			path_routes!: [...{
				backend_set_name!: string
				path!:             string
				path_match_type!: [...{
					match_type!: string
				}]
			}]
		}
		ssl_cipher_suite: {
			load_balancer_id!: string
			name!:             string
			ciphers!: [...string]
		}
	}
}
#data: {
	backend_set_health: {
		backend_set_name!: string
		load_balancer_id!: string
	}
	load_balancer_routing_policies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
	rule_sets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		load_balancer_id!: string
	}
	load_balancer_routing_policy: {
		load_balancer_id!:    string
		routing_policy_name!: string
	}
	load_balancers: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		detail?:         string
		display_name?:   string
	}
	rule_set: {
		load_balancer_id!: string
		name!:             string
	}
	ssl_cipher_suite: {
		load_balancer_id!: string
		name!:             string
	}
	backend_sets: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
	hostnames: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
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
	protocols: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	backends: {
		backendset_name!:  string
		load_balancer_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	health: load_balancer_id!: string
	policies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ssl_cipher_suites: {
		load_balancer_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	backend_health: {
		backend_set_name!: string
		load_balancer_id!: string
		backend_name!:     string
	}
	certificates: {
		load_balancer_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	path_route_sets: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		load_balancer_id!: string
	}
}

