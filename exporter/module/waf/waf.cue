package waf

#resource: {
	attributes: {
		web_app_firewall: {
			system_tags?: [_]: string
			lifecycle_details: string
			time_updated:      string
			defined_tags?: [_]: string
			display_name?:               string
			time_created:                string
			backend_type!:               string
			web_app_firewall_policy_id!: string
			compartment_id!:             string
			freeform_tags?: [_]: string
			state:             string
			load_balancer_id!: string
		}
		web_app_firewall_policy: {
			time_updated: string
			defined_tags?: [_]: string
			request_rate_limiting?: [...{
				rules?: [...{
					action_name!: string, configurations!: [...{
							action_duration_in_seconds?: int, period_in_seconds!: int, requests_limit!: int
					}]
					name!: string, type!: string, condition?: string, condition_language?: string
				}]
			}]
			state: string
			freeform_tags?: [_]: string
			response_access_control?: [...{
				rules?: [...{
					condition?: string, condition_language?: string, action_name!: string, name!: string, type!: string
				}]
			}]
			actions?: [...{
				body?: [...{
					text?:     string
					template?: string
					type!:     string
				}]
				code?: int
				headers?: [...{
					value?: string
					name?:  string
				}]
				name!: string
				type!: string
			}]
			system_tags?: [_]: string
			lifecycle_details: string
			response_protection?: [...{
				rules?: [...{
					protection_capability_settings?: [...{
						allowed_http_methods?: [...string]
						max_http_request_header_length?: *8000 | int, max_http_request_headers?: *25 | int, max_number_of_arguments?: *255 | int, max_single_argument_length?: *400 | int, max_total_argument_length?: *64000 | int
					}]
					action_name!: string, name!: string, protection_capabilities!: [...{
							key!:          string, version!: int, action_name?: string, collaborative_action_threshold?: int, collaborative_weights?: [...{
									key!:             string, weight!:   int
							}]
						exclusions?: [...{
							args?: [...string]
							request_cookies?: [...string]
						}]
					}]
					type!: string, condition?: string, condition_language?: string, is_body_inspection_enabled?: bool
				}]
			}]
			time_created: string
			request_protection?: [...{
				rules?: [...{
					name!: string
					protection_capabilities!: [...{
						version!:                        int
						action_name?:                    string
						collaborative_action_threshold?: int
						collaborative_weights?: [...{
							key!:    string
							weight!: int
						}]
						exclusions?: [...{
							request_cookies?: [...string]
							args?: [...string]
						}]
						key!: string
					}]
					type!:                       string
					condition?:                  string
					condition_language?:         string
					is_body_inspection_enabled?: bool
					protection_capability_settings?: [...{
						allowed_http_methods?: [...string]
						max_http_request_header_length?: *8000 | int
						max_http_request_headers?:       *25 | int
						max_number_of_arguments?:        *255 | int
						max_single_argument_length?:     *400 | int
						max_total_argument_length?:      *64000 | int
					}]
					action_name!: string
				}]
				body_inspection_size_limit_exceeded_action_name?: string
				body_inspection_size_limit_in_bytes?:             *8192 | int
			}]
			display_name?: string
			request_access_control?: [...{
				default_action_name!: string
				rules?: [...{
					condition?:          string
					condition_language?: string
					action_name!:        string
					name!:               string
					type!:               string
				}]
			}]
			compartment_id!: string
		}
		network_address_list: {
			display_name?: string
			system_tags?: [_]: string
			vcn_addresses?: [...{
				vcn_id?:    string
				addresses?: string
			}]
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_updated:      string
			state:             string
			type!:             string
			addresses?: [...string]
		}
	}
	arguments: {
		web_app_firewall: {
			web_app_firewall_policy_id!: string
			system_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			backend_type!:     string
			load_balancer_id!: string
		}
		web_app_firewall_policy: {
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			request_rate_limiting?: [...{
				rules?: [...{
					action_name!: string, configurations!: [...{
							period_in_seconds!: int, requests_limit!: int, action_duration_in_seconds?: int
					}]
					name!: string, type!: string, condition?: string, condition_language?: string
				}]
			}]
			request_protection?: [...{
				body_inspection_size_limit_exceeded_action_name?: string
				body_inspection_size_limit_in_bytes?:             *8192 | int
				rules?: [...{
					protection_capabilities!: [...{
						key!:                            string
						version!:                        int
						action_name?:                    string
						collaborative_action_threshold?: int
						collaborative_weights?: [...{
							key!:    string
							weight!: int
						}]
						exclusions?: [...{
							args?: [...string]
							request_cookies?: [...string]
						}]
					}]
					type!:                       string
					condition?:                  string
					condition_language?:         string
					is_body_inspection_enabled?: bool
					protection_capability_settings?: [...{
						allowed_http_methods?: [...string]
						max_http_request_header_length?: *8000 | int
						max_http_request_headers?:       *25 | int
						max_number_of_arguments?:        *255 | int
						max_single_argument_length?:     *400 | int
						max_total_argument_length?:      *64000 | int
					}]
					action_name!: string
					name!:        string
				}]
			}]
			request_access_control?: [...{
				default_action_name!: string
				rules?: [...{
					condition_language?: string
					action_name!:        string
					name!:               string
					type!:               string
					condition?:          string
				}]
			}]
			actions?: [...{
				code?: int
				headers?: [...{
					value?: string
					name?:  string
				}]
				name!: string
				type!: string
				body?: [...{
					text?:     string
					template?: string
					type!:     string
				}]
			}]
			response_access_control?: [...{
				rules?: [...{
					action_name!: string, name!: string, type!: string, condition?: string, condition_language?: string
				}]
			}]
			response_protection?: [...{
				rules?: [...{
					type!: string, condition?:       string, condition_language?:             string, is_body_inspection_enabled?:    bool, protection_capability_settings?: [...{
						max_number_of_arguments?: *255 | int, max_single_argument_length?: *400 | int, max_total_argument_length?: *64000 | int, allowed_http_methods?: [...string]
						max_http_request_header_length?: *8000 | int, max_http_request_headers?: *25 | int
					}]
					action_name!: string, name!: string, protection_capabilities!: [...{
							exclusions?: [...{
								request_cookies?: [...string]
							args?: [...string]
						}]
						key!: string, version!: int, action_name?: string, collaborative_action_threshold?: int, collaborative_weights?: [...{
							key!:             string, weight!:   int
						}]
					}]
				}]
			}]
			display_name?: string
		}
		network_address_list: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			system_tags?: [_]: string
			vcn_addresses?: [...{
				addresses?: string
				vcn_id?:    string
			}]
			type!: string
			addresses?: [...string]
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	web_app_firewalls: {
		web_app_firewall_policy_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?: [...string]
	}
	network_address_list: network_address_list_id!: string
	network_address_lists: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	protection_capabilities: {
		compartment_id!: string
		display_name?:   string
		group_tag?: [...string]
		is_latest_version?: [...bool]
		key?:  string
		type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	protection_capability_group_tags: {
		compartment_id!: string
		name?:           string
		type?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	web_app_firewall: web_app_firewall_id!: string
	web_app_firewall_policies: {
		display_name?: string
		id?:           string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	web_app_firewall_policy: web_app_firewall_policy_id!: string
}

