package waas

#resource: {
	attributes: {
		certificate: {
			serial_number:     string
			certificate_data!: string
			subject_name: [...{
				locality:            string
				organization:        string
				organizational_unit: string
				state_province:      string
				common_name:         string
				country:             string
				email_address:       string
			}]
			compartment_id!:      string
			signature_algorithm:  string
			time_not_valid_after: string
			freeform_tags?: [_]: string
			private_key_data!: string
			defined_tags?: [_]: string
			display_name?: string
			extensions: [...{
				is_critical: bool
				name:        string
				value:       string
			}]
			issued_by: string
			public_key_info: [...{
				algorithm: string
				exponent:  int
				key_size:  int
			}]
			issuer_name: [...{
				organization:        string
				organizational_unit: string
				state_province:      string
				common_name:         string
				country:             string
				email_address:       string
				locality:            string
			}]
			is_trust_verification_disabled?: bool
			state:                           string
			time_created:                    string
			time_not_valid_before:           string
			version:                         int
		}
		custom_protection_rule: {
			defined_tags?: [_]: string
			time_created: string
			description?: string
			freeform_tags?: [_]: string
			mod_security_rule_ids: [...string]
			state:           string
			compartment_id!: string
			display_name!:   string
			template!:       string
		}
		http_redirect: {
			display_name?: string
			time_created:  string
			target!: [...{
				port?:     int
				host!:     string
				path!:     string
				protocol!: string
				query!:    string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			response_code?:  int
			compartment_id!: string
			domain!:         string
			state:           string
		}
		protection_rule: {
			mod_security_rule_ids: [...string]
			name:            string
			waas_policy_id!: string
			key!:            string
			action?:         string
			exclusions?: [...{
				exclusions?: [...string]
				target?: string
			}]
			description: string
			labels: [...string]
		}
		purge_cache: {
			waas_policy_id!: string
			resources?: [...string]
		}
		waas_policy: {
			state:         string
			time_created:  string
			display_name?: string
			freeform_tags?: [_]: string
			policy_config?: [...{
				is_cache_control_respected?: bool
				load_balancing_method?: [...{
					name?:                       string
					method!:                     string
					domain?:                     string
					expiration_time_in_seconds?: int
				}]
				cipher_group?:                  string
				is_response_buffering_enabled?: bool
				is_sni_enabled?:                bool
				is_origin_compression_enabled?: bool
				is_https_enabled?:              bool
				health_checks?: [...{
					timeout_in_seconds?:  int
					healthy_threshold?:   int
					interval_in_seconds?: int
					headers?: [_]: string
					path?:                           string
					unhealthy_threshold?:            int
					expected_response_text?:         string
					method?:                         string
					is_enabled?:                     bool
					is_response_text_check_enabled?: bool
					expected_response_code_group?: [...string]
				}]
				tls_protocols?: [...string]
				websocket_path_prefixes?: [...string]
				is_behind_cdn?:         bool
				is_https_forced?:       bool
				client_address_header?: string
				certificate_id?:        string
			}]
			additional_domains?: [...string]
			waf_config?: [...{
				origin?: string
				origin_groups?: [...string]
				caching_rules?: [...{
					is_client_caching_enabled?: bool
					key?:                       string
					action!:                    string
					criteria!: [...{
						value!:     string
						condition!: string
					}]
					name!:                    string
					caching_duration?:        string
					client_caching_duration?: string
				}]
				human_interaction_challenge?: [...{
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					failure_threshold_expiration_in_seconds?: int
					is_nat_enabled?:                          bool
					recording_period_in_seconds?:             int
					action?:                                  string
					action_expiration_in_seconds?:            int
					failure_threshold?:                       int
					interaction_threshold?:                   int
					is_enabled!:                              bool
					challenge_settings?: [...{
						captcha_title?:                string
						block_error_page_code?:        string
						block_action?:                 string
						captcha_footer?:               string
						block_error_page_message?:     string
						block_response_code?:          int
						block_error_page_description?: string
						captcha_header?:               string
						captcha_submit_label?:         string
					}]
				}]
				protection_settings?: [...{
					block_action?:                 string
					block_error_page_description?: string
					media_types?: [...string]
					max_name_length_per_argument?:       int
					max_total_name_length_of_arguments?: int
					block_response_code?:                int
					is_response_inspected?:              bool
					recommendations_period_in_days?:     int
					block_error_page_message?:           string
					max_argument_count?:                 int
					max_response_size_in_ki_b?:          int
					allowed_http_methods?: [...string]
					block_error_page_code?: string
				}]
				address_rate_limiting?: [...{
					block_response_code?:           int
					max_delayed_count_per_address?: int
					is_enabled!:                    bool
					allowed_rate_per_address?:      int
				}]
				access_rules?: [...{
					captcha_title?:                string
					name!:                         string
					action!:                       string
					captcha_submit_label?:         string
					block_error_page_description?: string
					response_header_manipulation?: [...{
						action!: string
						header!: string
						value?:  string
					}]
					captcha_footer?: string
					block_action?:   string
					redirect_url?:   string
					bypass_challenges?: [...string]
					captcha_header?:         string
					block_response_code?:    int
					redirect_response_code?: string
					criteria!: [...{
						condition!:         string
						value!:             string
						is_case_sensitive?: bool
					}]
					block_error_page_code?:    string
					block_error_page_message?: string
				}]
				captchas?: [...{
					session_expiration_in_seconds!: int
					submit_label!:                  string
					title!:                         string
					url!:                           string
					footer_text?:                   string
					header_text?:                   string
					failure_message!:               string
				}]
				whitelists?: [...{
					name!: string
					address_lists?: [...string]
					addresses?: [...string]
				}]
				js_challenge?: [...{
					action?:                       string
					action_expiration_in_seconds?: int
					criteria?: [...{
						condition!:         string
						value!:             string
						is_case_sensitive?: bool
					}]
					is_nat_enabled?:           bool
					is_enabled!:               bool
					are_redirects_challenged?: bool
					challenge_settings?: [...{
						captcha_title?:                string
						block_action?:                 string
						block_error_page_message?:     string
						captcha_footer?:               string
						block_error_page_description?: string
						block_error_page_code?:        string
						captcha_header?:               string
						captcha_submit_label?:         string
						block_response_code?:          int
					}]
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					failure_threshold?: int
				}]
				custom_protection_rules?: [...{
					exclusions?: [...{
						exclusions?: [...string]
						target?: string
					}]
					id?:     string
					action?: string
				}]
				device_fingerprint_challenge?: [...{
					max_address_count?:                       int
					max_address_count_expiration_in_seconds?: int
					is_enabled!:                              bool
					action?:                                  string
					action_expiration_in_seconds?:            int
					challenge_settings?: [...{
						block_error_page_description?: string
						block_error_page_message?:     string
						captcha_footer?:               string
						captcha_submit_label?:         string
						block_error_page_code?:        string
						block_response_code?:          int
						captcha_header?:               string
						captcha_title?:                string
						block_action?:                 string
					}]
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
				}]
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			origin_groups?: [...{
				label!: string
				origin_group!: [...{
					origin!: string
					weight?: *1 | int
				}]
			}]
			origins?: [...{
				label!:      string
				uri!:        string
				http_port?:  *80 | int
				https_port?: *443 | int
				custom_headers?: [...{
					value!: string
					name!:  string
				}]
			}]
			domain!: string
			cname:   string
		}
		address_list: {
			addresses!: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			address_count: float
			state:         string
			time_created:  string
		}
	}
	arguments: {
		certificate: {
			freeform_tags?: [_]: string
			is_trust_verification_disabled?: bool
			defined_tags?: [_]: string
			display_name?:     string
			certificate_data!: string
			private_key_data!: string
			compartment_id!:   string
		}
		custom_protection_rule: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			description?:    string
			compartment_id!: string
			display_name!:   string
			template!:       string
		}
		http_redirect: {
			target!: [...{
				port?:     int
				host!:     string
				path!:     string
				protocol!: string
				query!:    string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			response_code?:  int
			compartment_id!: string
			domain!:         string
			display_name?:   string
		}
		protection_rule: {
			waas_policy_id!: string
			key!:            string
			action?:         string
			exclusions?: [...{
				target?: string
				exclusions?: [...string]
			}]
		}
		purge_cache: {
			waas_policy_id!: string
			resources?: [...string]
		}
		waas_policy: {
			domain!:       string
			display_name?: string
			additional_domains?: [...string]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			waf_config?: [...{
				human_interaction_challenge?: [...{
					action?: string
					challenge_settings?: [...{
						block_action?:                 string
						captcha_footer?:               string
						block_error_page_message?:     string
						captcha_submit_label?:         string
						captcha_header?:               string
						block_response_code?:          int
						captcha_title?:                string
						block_error_page_code?:        string
						block_error_page_description?: string
					}]
					recording_period_in_seconds?:             int
					interaction_threshold?:                   int
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					is_nat_enabled?:               bool
					is_enabled!:                   bool
					action_expiration_in_seconds?: int
				}]
				js_challenge?: [...{
					is_enabled!:                   bool
					action_expiration_in_seconds?: int
					criteria?: [...{
						value!:             string
						is_case_sensitive?: bool
						condition!:         string
					}]
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					are_redirects_challenged?: bool
					challenge_settings?: [...{
						captcha_submit_label?:         string
						block_error_page_message?:     string
						block_error_page_code?:        string
						captcha_title?:                string
						block_error_page_description?: string
						captcha_footer?:               string
						captcha_header?:               string
						block_action?:                 string
						block_response_code?:          int
					}]
					failure_threshold?: int
					is_nat_enabled?:    bool
					action?:            string
				}]
				origin_groups?: [...string]
				protection_settings?: [...{
					block_action?:                   string
					is_response_inspected?:          bool
					max_name_length_per_argument?:   int
					block_error_page_description?:   string
					max_argument_count?:             int
					recommendations_period_in_days?: int
					allowed_http_methods?: [...string]
					block_error_page_code?:     string
					block_response_code?:       int
					block_error_page_message?:  string
					max_response_size_in_ki_b?: int
					media_types?: [...string]
					max_total_name_length_of_arguments?: int
				}]
				access_rules?: [...{
					bypass_challenges?: [...string]
					captcha_title?:            string
					block_error_page_message?: string
					redirect_url?:             string
					captcha_header?:           string
					criteria!: [...{
						condition!:         string
						value!:             string
						is_case_sensitive?: bool
					}]
					block_error_page_description?: string
					redirect_response_code?:       string
					action!:                       string
					captcha_submit_label?:         string
					block_error_page_code?:        string
					response_header_manipulation?: [...{
						action!: string
						header!: string
						value?:  string
					}]
					block_action?:        string
					captcha_footer?:      string
					name!:                string
					block_response_code?: int
				}]
				custom_protection_rules?: [...{
					exclusions?: [...{
						exclusions?: [...string]
						target?: string
					}]
					id?:     string
					action?: string
				}]
				device_fingerprint_challenge?: [...{
					action_expiration_in_seconds?: int
					challenge_settings?: [...{
						captcha_submit_label?:         string
						captcha_header?:               string
						block_error_page_description?: string
						captcha_footer?:               string
						block_error_page_code?:        string
						block_error_page_message?:     string
						block_action?:                 string
						block_response_code?:          int
						captcha_title?:                string
					}]
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
					max_address_count?:                       int
					max_address_count_expiration_in_seconds?: int
					is_enabled!:                              bool
					action?:                                  string
				}]
				whitelists?: [...{
					name!: string
					address_lists?: [...string]
					addresses?: [...string]
				}]
				caching_rules?: [...{
					key?:    string
					action!: string
					criteria!: [...{
						condition!: string
						value!:     string
					}]
					name!:                      string
					caching_duration?:          string
					client_caching_duration?:   string
					is_client_caching_enabled?: bool
				}]
				origin?: string
				address_rate_limiting?: [...{
					is_enabled!:                    bool
					allowed_rate_per_address?:      int
					block_response_code?:           int
					max_delayed_count_per_address?: int
				}]
				captchas?: [...{
					failure_message!:               string
					session_expiration_in_seconds!: int
					submit_label!:                  string
					title!:                         string
					url!:                           string
					footer_text?:                   string
					header_text?:                   string
				}]
			}]
			compartment_id!: string
			origin_groups?: [...{
				label!: string
				origin_group!: [...{
					origin!: string
					weight?: *1 | int
				}]
			}]
			origins?: [...{
				uri!:        string
				http_port?:  *80 | int
				https_port?: *443 | int
				custom_headers?: [...{
					name!:  string
					value!: string
				}]
				label!: string
			}]
			policy_config?: [...{
				websocket_path_prefixes?: [...string]
				certificate_id?:             string
				is_https_enabled?:           bool
				is_https_forced?:            bool
				is_sni_enabled?:             bool
				is_behind_cdn?:              bool
				is_cache_control_respected?: bool
				load_balancing_method?: [...{
					method!:                     string
					domain?:                     string
					expiration_time_in_seconds?: int
					name?:                       string
				}]
				is_response_buffering_enabled?: bool
				client_address_header?:         string
				health_checks?: [...{
					method?:                         string
					timeout_in_seconds?:             int
					healthy_threshold?:              int
					interval_in_seconds?:            int
					is_response_text_check_enabled?: bool
					path?:                           string
					unhealthy_threshold?:            int
					headers?: [_]: string
					is_enabled?: bool
					expected_response_code_group?: [...string]
					expected_response_text?: string
				}]
				is_origin_compression_enabled?: bool
				tls_protocols?: [...string]
				cipher_group?: string
			}]
		}
		address_list: {
			freeform_tags?: [_]: string
			addresses!: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	http_redirects: {
		states?: [...string]
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_names?: [...string]
		ids?: [...string]
	}
	waas_policy: waas_policy_id!: string
	certificate: certificate_id!: string
	certificates: {
		states?: [...string]
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_names?: [...string]
		ids?: [...string]
	}
	custom_protection_rules: {
		time_created_less_than?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_names?: [...string]
		ids?: [...string]
		states?: [...string]
		time_created_greater_than_or_equal_to?: string
	}
	edge_subnets: filter?: [...{
		values!: [...string]
		regex?: *false | bool
		name!:  string
	}]
	http_redirect: http_redirect_id!: string
	protection_rules: {
		mod_security_rule_id?: [...string]
		waas_policy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		action?: [...string]
	}
	waas_policies: {
		ids?: [...string]
		states?: [...string]
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_names?: [...string]
	}
	protection_rule: {
		protection_rule_key!: string
		waas_policy_id!:      string
	}
	address_list: address_list_id!: string
	address_lists: {
		ids?: [...string]
		names?: [...string]
		states?: [...string]
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	custom_protection_rule: custom_protection_rule_id!: string
}

