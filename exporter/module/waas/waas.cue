package waas

#resource: {
	attributes: {
		waas_policy: {
			cname: string
			policy_config?: [...{
				is_https_forced?:               bool
				is_origin_compression_enabled?: bool
				is_response_buffering_enabled?: bool
				load_balancing_method?: [...{
					method!:                     string
					domain?:                     string
					expiration_time_in_seconds?: int
					name?:                       string
				}]
				tls_protocols?: [...string]
				cipher_group?:               string
				client_address_header?:      string
				is_behind_cdn?:              bool
				is_cache_control_respected?: bool
				is_sni_enabled?:             bool
				websocket_path_prefixes?: [...string]
				health_checks?: [...{
					is_response_text_check_enabled?: bool
					method?:                         string
					path?:                           string
					unhealthy_threshold?:            int
					healthy_threshold?:              int
					timeout_in_seconds?:             int
					interval_in_seconds?:            int
					is_enabled?:                     bool
					expected_response_code_group?: [...string]
					expected_response_text?: string
					headers?: [_]: string
				}]
				is_https_enabled?: bool
				certificate_id?:   string
			}]
			time_created: string
			additional_domains?: [...string]
			freeform_tags?: [_]: string
			domain!: string
			defined_tags?: [_]: string
			waf_config?: [...{
				human_interaction_challenge?: [...{
					action_expiration_in_seconds?: int
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					is_enabled!:                  bool
					action?:                      string
					interaction_threshold?:       int
					recording_period_in_seconds?: int
					is_nat_enabled?:              bool
					challenge_settings?: [...{
						captcha_header?:               string
						block_response_code?:          int
						captcha_footer?:               string
						captcha_title?:                string
						block_error_page_description?: string
						captcha_submit_label?:         string
						block_action?:                 string
						block_error_page_code?:        string
						block_error_page_message?:     string
					}]
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
				}]
				origin?: string
				access_rules?: [...{
					response_header_manipulation?: [...{
						action!: string
						header!: string
						value?:  string
					}]
					captcha_header?: string
					criteria!: [...{
						is_case_sensitive?: bool
						condition!:         string
						value!:             string
					}]
					block_error_page_message?:     string
					captcha_submit_label?:         string
					action!:                       string
					redirect_response_code?:       string
					captcha_footer?:               string
					redirect_url?:                 string
					block_response_code?:          int
					block_error_page_code?:        string
					name!:                         string
					block_action?:                 string
					block_error_page_description?: string
					bypass_challenges?: [...string]
					captcha_title?: string
				}]
				device_fingerprint_challenge?: [...{
					max_address_count?:                       int
					max_address_count_expiration_in_seconds?: int
					is_enabled!:                              bool
					action?:                                  string
					action_expiration_in_seconds?:            int
					challenge_settings?: [...{
						block_error_page_description?: string
						block_error_page_code?:        string
						block_error_page_message?:     string
						captcha_footer?:               string
						captcha_submit_label?:         string
						captcha_title?:                string
						captcha_header?:               string
						block_action?:                 string
						block_response_code?:          int
					}]
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
				}]
				origin_groups?: [...string]
				captchas?: [...{
					title!:                         string
					url!:                           string
					footer_text?:                   string
					header_text?:                   string
					failure_message!:               string
					session_expiration_in_seconds!: int
					submit_label!:                  string
				}]
				custom_protection_rules?: [...{
					exclusions?: [...{
						exclusions?: [...string]
						target?: string
					}]
					id?:     string
					action?: string
				}]
				protection_settings?: [...{
					max_argument_count?:                 int
					block_error_page_message?:           string
					max_name_length_per_argument?:       int
					max_response_size_in_ki_b?:          int
					max_total_name_length_of_arguments?: int
					recommendations_period_in_days?:     int
					allowed_http_methods?: [...string]
					block_response_code?:   int
					block_error_page_code?: string
					media_types?: [...string]
					block_error_page_description?: string
					is_response_inspected?:        bool
					block_action?:                 string
				}]
				address_rate_limiting?: [...{
					block_response_code?:           int
					max_delayed_count_per_address?: int
					is_enabled!:                    bool
					allowed_rate_per_address?:      int
				}]
				js_challenge?: [...{
					criteria?: [...{
						is_case_sensitive?: bool
						condition!:         string
						value!:             string
					}]
					is_enabled!:                   bool
					action?:                       string
					action_expiration_in_seconds?: int
					challenge_settings?: [...{
						block_error_page_message?:     string
						captcha_footer?:               string
						captcha_title?:                string
						block_action?:                 string
						block_error_page_code?:        string
						block_error_page_description?: string
						block_response_code?:          int
						captcha_header?:               string
						captcha_submit_label?:         string
					}]
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					are_redirects_challenged?: bool
					failure_threshold?:        int
					is_nat_enabled?:           bool
				}]
				whitelists?: [...{
					addresses?: [...string]
					name!: string
					address_lists?: [...string]
				}]
				caching_rules?: [...{
					name!:                      string
					caching_duration?:          string
					client_caching_duration?:   string
					is_client_caching_enabled?: bool
					key?:                       string
					action!:                    string
					criteria!: [...{
						condition!: string
						value!:     string
					}]
				}]
			}]
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
			display_name?:   string
			state:           string
			compartment_id!: string
		}
		address_list: {
			state:        string
			time_created: string
			addresses!: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			address_count: float
		}
		certificate: {
			public_key_info: [...{
				exponent:  int
				key_size:  int
				algorithm: string
			}]
			serial_number: string
			defined_tags?: [_]: string
			version:           int
			certificate_data!: string
			issuer_name: [...{
				common_name:         string
				country:             string
				email_address:       string
				locality:            string
				organization:        string
				organizational_unit: string
				state_province:      string
			}]
			signature_algorithm: string
			extensions: [...{
				is_critical: bool
				name:        string
				value:       string
			}]
			issued_by:         string
			private_key_data!: string
			freeform_tags?: [_]: string
			time_not_valid_before:           string
			is_trust_verification_disabled?: bool
			time_not_valid_after:            string
			time_created:                    string
			compartment_id!:                 string
			subject_name: [...{
				country:             string
				email_address:       string
				locality:            string
				organization:        string
				organizational_unit: string
				state_province:      string
				common_name:         string
			}]
			display_name?: string
			state:         string
		}
		custom_protection_rule: {
			mod_security_rule_ids: [...string]
			display_name!:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			template!: string
			defined_tags?: [_]: string
			description?: string
			state:        string
			time_created: string
		}
		http_redirect: {
			freeform_tags?: [_]: string
			state:           string
			display_name?:   string
			response_code?:  int
			time_created:    string
			compartment_id!: string
			domain!:         string
			defined_tags?: [_]: string
			target!: [...{
				path!:     string
				protocol!: string
				query!:    string
				port?:     int
				host!:     string
			}]
		}
		protection_rule: {
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
			mod_security_rule_ids: [...string]
		}
		purge_cache: {
			resources?: [...string]
			waas_policy_id!: string
		}
	}
	arguments: {
		waas_policy: {
			additional_domains?: [...string]
			defined_tags?: [_]: string
			origins?: [...{
				uri!:        string
				http_port?:  *80 | int
				https_port?: *443 | int
				custom_headers?: [...{
					value!: string
					name!:  string
				}]
				label!: string
			}]
			compartment_id!: string
			policy_config?: [...{
				client_address_header?: string
				is_https_enabled?:      bool
				tls_protocols?: [...string]
				websocket_path_prefixes?: [...string]
				certificate_id?:             string
				is_cache_control_respected?: bool
				health_checks?: [...{
					timeout_in_seconds?: int
					headers?: [_]: string
					unhealthy_threshold?:            int
					is_enabled?:                     bool
					is_response_text_check_enabled?: bool
					method?:                         string
					path?:                           string
					expected_response_code_group?: [...string]
					expected_response_text?: string
					healthy_threshold?:      int
					interval_in_seconds?:    int
				}]
				is_behind_cdn?:                 bool
				is_https_forced?:               bool
				is_origin_compression_enabled?: bool
				cipher_group?:                  string
				is_sni_enabled?:                bool
				load_balancing_method?: [...{
					method!:                     string
					domain?:                     string
					expiration_time_in_seconds?: int
					name?:                       string
				}]
				is_response_buffering_enabled?: bool
			}]
			display_name?: string
			waf_config?: [...{
				custom_protection_rules?: [...{
					action?: string
					exclusions?: [...{
						exclusions?: [...string]
						target?: string
					}]
					id?: string
				}]
				human_interaction_challenge?: [...{
					interaction_threshold?:                   int
					failure_threshold_expiration_in_seconds?: int
					is_enabled!:                              bool
					recording_period_in_seconds?:             int
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					failure_threshold?:            int
					is_nat_enabled?:               bool
					action?:                       string
					action_expiration_in_seconds?: int
					challenge_settings?: [...{
						block_error_page_code?:        string
						block_response_code?:          int
						block_error_page_description?: string
						captcha_submit_label?:         string
						block_action?:                 string
						block_error_page_message?:     string
						captcha_footer?:               string
						captcha_title?:                string
						captcha_header?:               string
					}]
				}]
				whitelists?: [...{
					name!: string
					address_lists?: [...string]
					addresses?: [...string]
				}]
				captchas?: [...{
					header_text?:                   string
					failure_message!:               string
					session_expiration_in_seconds!: int
					submit_label!:                  string
					title!:                         string
					url!:                           string
					footer_text?:                   string
				}]
				protection_settings?: [...{
					is_response_inspected?:              bool
					max_name_length_per_argument?:       int
					max_argument_count?:                 int
					max_response_size_in_ki_b?:          int
					max_total_name_length_of_arguments?: int
					media_types?: [...string]
					recommendations_period_in_days?: int
					block_error_page_description?:   string
					block_error_page_message?:       string
					block_response_code?:            int
					allowed_http_methods?: [...string]
					block_action?:          string
					block_error_page_code?: string
				}]
				address_rate_limiting?: [...{
					allowed_rate_per_address?:      int
					block_response_code?:           int
					max_delayed_count_per_address?: int
					is_enabled!:                    bool
				}]
				caching_rules?: [...{
					action!: string
					criteria!: [...{
						value!:     string
						condition!: string
					}]
					name!:                      string
					caching_duration?:          string
					client_caching_duration?:   string
					is_client_caching_enabled?: bool
					key?:                       string
				}]
				device_fingerprint_challenge?: [...{
					is_enabled!:                   bool
					action?:                       string
					action_expiration_in_seconds?: int
					challenge_settings?: [...{
						captcha_submit_label?:         string
						captcha_title?:                string
						captcha_header?:               string
						block_response_code?:          int
						captcha_footer?:               string
						block_error_page_description?: string
						block_error_page_message?:     string
						block_action?:                 string
						block_error_page_code?:        string
					}]
					failure_threshold?:                       int
					failure_threshold_expiration_in_seconds?: int
					max_address_count?:                       int
					max_address_count_expiration_in_seconds?: int
				}]
				js_challenge?: [...{
					set_http_header?: [...{
						name!:  string
						value!: string
					}]
					action_expiration_in_seconds?: int
					action?:                       string
					is_enabled!:                   bool
					are_redirects_challenged?:     bool
					criteria?: [...{
						condition!:         string
						value!:             string
						is_case_sensitive?: bool
					}]
					is_nat_enabled?: bool
					challenge_settings?: [...{
						block_error_page_message?:     string
						captcha_header?:               string
						block_error_page_description?: string
						captcha_submit_label?:         string
						captcha_footer?:               string
						block_response_code?:          int
						block_action?:                 string
						block_error_page_code?:        string
						captcha_title?:                string
					}]
					failure_threshold?: int
				}]
				origin_groups?: [...string]
				access_rules?: [...{
					action!:                       string
					block_error_page_code?:        string
					block_error_page_description?: string
					captcha_header?:               string
					redirect_url?:                 string
					response_header_manipulation?: [...{
						action!: string
						header!: string
						value?:  string
					}]
					captcha_title?:        string
					captcha_submit_label?: string
					block_response_code?:  int
					criteria!: [...{
						condition!:         string
						value!:             string
						is_case_sensitive?: bool
					}]
					block_error_page_message?: string
					redirect_response_code?:   string
					name!:                     string
					captcha_footer?:           string
					block_action?:             string
					bypass_challenges?: [...string]
				}]
				origin?: string
			}]
			domain!: string
			freeform_tags?: [_]: string
			origin_groups?: [...{
				label!: string
				origin_group!: [...{
					weight?: *1 | int
					origin!: string
				}]
			}]
		}
		address_list: {
			freeform_tags?: [_]: string
			addresses!: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
		certificate: {
			is_trust_verification_disabled?: bool
			display_name?:                   string
			compartment_id!:                 string
			private_key_data!:               string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			certificate_data!: string
		}
		custom_protection_rule: {
			display_name!: string
			template!:     string
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		http_redirect: {
			domain!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			target!: [...{
				path!:     string
				protocol!: string
				query!:    string
				port?:     int
				host!:     string
			}]
			display_name?:   string
			response_code?:  int
			compartment_id!: string
		}
		protection_rule: {
			waas_policy_id!: string
			key!:            string
			action?:         string
			exclusions?: [...{
				exclusions?: [...string]
				target?: string
			}]
		}
		purge_cache: {
			waas_policy_id!: string
			resources?: [...string]
		}
	}
}
#data: {
	custom_protection_rules: {
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
		states?: [...string]
	}
	edge_subnets: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	protection_rules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		action?: [...string]
		mod_security_rule_id?: [...string]
		waas_policy_id!: string
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
	waas_policy: waas_policy_id!: string
	address_list: address_list_id!: string
	certificates: {
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
		states?: [...string]
	}
	custom_protection_rule: custom_protection_rule_id!: string
	protection_rule: {
		waas_policy_id!:      string
		protection_rule_key!: string
	}
	http_redirects: {
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_names?: [...string]
		ids?: [...string]
		states?: [...string]
	}
	address_lists: {
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		ids?: [...string]
		names?: [...string]
		states?: [...string]
	}
	certificate: certificate_id!: string
	http_redirect: http_redirect_id!: string
}

