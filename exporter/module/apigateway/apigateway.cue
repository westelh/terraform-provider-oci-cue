package apigateway

#resource: {
	attributes: {
		api: {
			defined_tags?: [_]: string
			content?:     string
			state:        string
			time_updated: string
			time_created: string
			freeform_tags?: [_]: string
			validation_results: [...{
				name:   string
				result: string
			}]
			display_name?:      string
			lifecycle_details:  string
			specification_type: string
			compartment_id!:    string
		}
		certificate: {
			time_created: string
			certificate!: string
			defined_tags?: [_]: string
			intermediate_certificates?: string
			lifecycle_details:          string
			private_key!:               string
			compartment_id!:            string
			display_name?:              string
			freeform_tags?: [_]: string
			time_updated: string
			state:        string
			subject_names: [...string]
			time_not_valid_after: string
		}
		deployment: {
			endpoint:          string
			lifecycle_details: string
			time_created:      string
			state:             string
			gateway_id!:       string
			defined_tags?: [_]: string
			specification!: [...{
				request_policies?: [...{
					authentication?: [...{
						verify_claims?: [...{
							key?: string
							values?: [...string]
							is_required?: bool
						}]
						token_auth_scheme?: string
						type!:              string
						validation_failure_policy?: [...{
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							use_pkce?: bool
							scopes?: [...string]
							fallback_redirect_path?:             string
							response_message?:                   string
							use_cookies_for_intermediate_steps?: bool
							logout_path?:                        string
							max_expiry_duration_in_hours?:       int
							client_details?: [...{
								client_secret_version_number?: string
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
							}]
							response_type?: string
							response_code?: string
							response_header_transformations?: [...{
								filter_headers?: [...{
									type?: string
									items?: [...{
										name?: string
									}]
								}]
								rename_headers?: [...{
									items?: [...{
										from?: string, to?: string
									}]
								}]
								set_headers?: [...{
									items?: [...{
										if_exists?: string, name?: string, values?: [...string]
									}]
								}]
							}]
							type!:                    string
							use_cookies_for_session?: bool
						}]
						issuers?: [...string]
						function_id?:                 string
						is_anonymous_access_allowed?: bool
						max_clock_skew_in_seconds?:   float
						cache_key?: [...string]
						parameters?: [_]: string
						token_header?: string
						validation_policy?: [...{
							client_details?: [...{
								client_id?:                    string
								client_secret_id?:             string
								client_secret_version_number?: string
								type!:                         string
							}]
							is_ssl_verify_disabled?: bool
							keys?: [...{
								n?:      string
								use?:    string
								alg?:    string
								e?:      string
								format!: string
								key_ops?: [...string]
								kid?: string
								kty?: string
								key?: string
							}]
							max_cache_duration_in_hours?: int
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							uri?:  string
							type!: string
							additional_validation_policy?: [...{
								verify_claims?: [...{
									key?: string
									values?: [...string]
									is_required?: bool
								}]
								audiences?: [...string]
								issuers?: [...string]
							}]
						}]
						public_keys?: [...{
							type!:                   string
							is_ssl_verify_disabled?: bool
							keys?: [...{
								use?: string
								key?: string
								alg?: string
								key_ops?: [...string]
								n?:      string
								e?:      string
								kid?:    string
								kty?:    string
								format!: string
							}]
							max_cache_duration_in_hours?: int
							uri?:                         string
						}]
						audiences?: [...string]
						token_query_param?: string
					}]
					cors?: [...{
						max_age_in_seconds?: int
						allowed_origins!: [...string]
						allowed_headers?: [...string]
						allowed_methods?: [...string]
						exposed_headers?: [...string]
						is_allow_credentials_enabled?: bool
					}]
					dynamic_authentication?: [...{
						authentication_servers!: [...{
							authentication_server_detail!: [...{
								type!:                        string
								token_query_param?:           string
								token_header?:                string
								max_clock_skew_in_seconds?:   float
								is_anonymous_access_allowed?: bool
								function_id?:                 string
								token_auth_scheme?:           string
								validation_policy?: [...{
									type!: string
									additional_validation_policy?: [...{
										verify_claims?: [...{
											is_required?: bool
											key?:         string
											values?: [...string]
										}]
										audiences?: [...string]
										issuers?: [...string]
									}]
									client_details?: [...{
										client_secret_id?:             string
										client_secret_version_number?: string
										type!:                         string
										client_id?:                    string
									}]
									is_ssl_verify_disabled?: bool
									keys?: [...{
										key_ops?: [...string]
										use?:    string
										kid?:    string
										n?:      string
										alg?:    string
										key?:    string
										kty?:    string
										format!: string
										e?:      string
									}]
									max_cache_duration_in_hours?: int
									source_uri_details?: [...{
										type!: string
										uri?:  string
									}]
									uri?: string
								}]
								cache_key?: [...string]
								parameters?: [_]: string
								validation_failure_policy?: [...{
									client_details?: [...{
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									response_code?: string
									response_header_transformations?: [...{
										set_headers?: [...{
											items?: [...{
												name?: string, values?: [...string]
												if_exists?: string
											}]
										}]
										filter_headers?: [...{
											items?: [...{
												name?: string
											}]
											type?: string
										}]
										rename_headers?: [...{
											items?: [...{
												from?: string, to?: string
											}]
										}]
									}]
									use_cookies_for_session?:            bool
									max_expiry_duration_in_hours?:       int
									response_message?:                   string
									fallback_redirect_path?:             string
									use_pkce?:                           bool
									response_type?:                      string
									use_cookies_for_intermediate_steps?: bool
									source_uri_details?: [...{
										type!: string
										uri?:  string
									}]
									type!: string
									scopes?: [...string]
									logout_path?: string
								}]
								public_keys?: [...{
									max_cache_duration_in_hours?: int
									uri?:                         string
									type!:                        string
									is_ssl_verify_disabled?:      bool
									keys?: [...{
										key?: string
										use?: string
										key_ops?: [...string]
										kid?:    string
										kty?:    string
										n?:      string
										alg?:    string
										e?:      string
										format!: string
									}]
								}]
								verify_claims?: [...{
									is_required?: bool
									key?:         string
									values?: [...string]
								}]
								issuers?: [...string]
								audiences?: [...string]
							}]
							key!: [...{
								name!:       string
								expression?: string
								is_default?: bool
								type?:       string
								values?: [...string]
							}]
						}]
						selection_source!: [...{
							selector!: string
							type!:     string
						}]
					}]
					mutual_tls?: [...{
						allowed_sans?: [...string]
						is_verified_certificate_required?: bool
					}]
					rate_limiting?: [...{
						rate_key!:                    string
						rate_in_requests_per_second!: int
					}]
					usage_plans?: [...{
						token_locations!: [...string]
					}]
				}]
				routes!: [...{
					logging_policies?: [...{
						access_log?: [...{
							is_enabled?: bool
						}]
						execution_log?: [...{
							is_enabled?: bool
							log_level?:  string
						}]
					}]
					methods?: [...string]
					request_policies?: [...{
						header_validations?: [...{
							headers?: [...{
								name!:     string
								required?: bool
							}]
							validation_mode?: string
						}]
						query_parameter_transformations?: [...{
							filter_query_parameters?: [...{
								items!: [...{
									name!: string
								}]
								type!: string
							}]
							rename_query_parameters?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
							set_query_parameters?: [...{
								items!: [...{
									name!: string, values!: [...string]
									if_exists?: string
								}]
							}]
						}]
						query_parameter_validations?: [...{
							parameters?: [...{
								name!:     string
								required?: bool
							}]
							validation_mode?: string
						}]
						response_cache_lookup?: [...{
							is_private_caching_enabled?: bool
							type!:                       string
							cache_key_additions?: [...string]
							is_enabled?: bool
						}]
						authorization?: [...{
							allowed_scope?: [...string]
							type?: string
						}]
						body_validation?: [...{
							required?:        bool
							validation_mode?: string
							content?: [...{
								media_type!:      string
								validation_type!: string
							}]
						}]
						cors?: [...{
							allowed_origins!: [...string]
							allowed_headers?: [...string]
							allowed_methods?: [...string]
							exposed_headers?: [...string]
							is_allow_credentials_enabled?: bool
							max_age_in_seconds?:           int
						}]
						header_transformations?: [...{
							set_headers?: [...{
								items!: [...{
									name!: string, values!: [...string]
									if_exists?: string
								}]
							}]
							filter_headers?: [...{
								type!: string
								items!: [...{
									name!: string
								}]
							}]
							rename_headers?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
						}]
					}]
					response_policies?: [...{
						header_transformations?: [...{
							rename_headers?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
							set_headers?: [...{
								items!: [...{
									values!: [...string]
									if_exists?: string, name!: string
								}]
							}]
							filter_headers?: [...{
								items!: [...{
									name!: string
								}]
								type!: string
							}]
						}]
						response_cache_store?: [...{
							type!:                    string
							time_to_live_in_seconds!: int
						}]
					}]
					backend!: [...{
						body?: string
						selection_source?: [...{
							selector!: string
							type!:     string
						}]
						send_timeout_in_seconds?:    float
						connect_timeout_in_seconds?: float
						post_logout_state?:          string
						routing_backends?: [...{
							key?: [...{
								values?: [...string]
								is_default?: bool
								type!:       string
								name!:       string
								expression?: string
							}]
							backend?: [...{
								connect_timeout_in_seconds?: float
								function_id?:                string
								is_ssl_verify_disabled?:     bool
								status?:                     int
								body?:                       string
								headers: [...{
									name?:  string
									value?: string
								}]
								read_timeout_in_seconds?: float
								url?:                     string
								type!:                    string
								send_timeout_in_seconds:  float
							}]
						}]
						allowed_post_logout_uris?: [...string]
						read_timeout_in_seconds?: float
						function_id?:             string
						headers?: [...{
							name?:  string
							value?: string
						}]
						type!:                   string
						is_ssl_verify_disabled?: bool
						status?:                 int
						url?:                    string
					}]
					path!: string
				}]
				logging_policies?: [...{
					access_log?: [...{
						is_enabled?: bool
					}]
					execution_log?: [...{
						is_enabled?: bool
						log_level?:  string
					}]
				}]
			}]
			display_name?: string
			freeform_tags?: [_]: string
			time_updated:    string
			compartment_id!: string
			path_prefix!:    string
		}
		gateway: {
			time_created: string
			state:        string
			network_security_group_ids?: [...string]
			lifecycle_details: string
			endpoint_type!:    string
			display_name?:     string
			freeform_tags?: [_]: string
			ip_addresses: [...{
				ip_address: string
			}]
			ca_bundles?: [...{
				type!:                     string
				ca_bundle_id?:             string
				certificate_authority_id?: string
			}]
			defined_tags?: [_]: string
			certificate_id?: string
			hostname:        string
			response_cache_details?: [...{
				type!:                                 string
				read_timeout_in_ms?:                   int
				authentication_secret_id?:             string
				authentication_secret_version_number?: string
				is_ssl_enabled?:                       bool
				servers?: [...{
					port?: int
					host?: string
				}]
				connect_timeout_in_ms?:  int
				send_timeout_in_ms?:     int
				is_ssl_verify_disabled?: bool
			}]
			time_updated:    string
			compartment_id!: string
			subnet_id!:      string
		}
		subscriber: {
			time_created:      string
			lifecycle_details: string
			state:             string
			usage_plans!: [...string]
			clients!: [...{
				name!:  string
				token!: string
			}]
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		usage_plan: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:             string
			lifecycle_details: string
			time_created:      string
			entitlements!: [...{
				targets?: [...{
					deployment_id!: string
				}]
				name!:        string
				description?: string
				quota?: [...{
					reset_policy!:        string
					unit!:                string
					value!:               int
					operation_on_breach!: string
				}]
				rate_limit?: [...{
					unit!:  string
					value!: int
				}]
			}]
			time_updated:  string
			display_name?: string
		}
	}
	arguments: {
		api: {
			compartment_id!: string
			content?:        string
			display_name?:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		certificate: {
			certificate!:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			private_key!:  string
			freeform_tags?: [_]: string
			intermediate_certificates?: string
		}
		deployment: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			gateway_id!:     string
			path_prefix!:    string
			specification!: [...{
				logging_policies?: [...{
					access_log?: [...{
						is_enabled?: bool
					}]
					execution_log?: [...{
						is_enabled?: bool
						log_level?:  string
					}]
				}]
				request_policies?: [...{
					cors?: [...{
						is_allow_credentials_enabled?: bool
						max_age_in_seconds?:           int
						allowed_origins!: [...string]
						allowed_headers?: [...string]
						allowed_methods?: [...string]
						exposed_headers?: [...string]
					}]
					dynamic_authentication?: [...{
						authentication_servers!: [...{
							authentication_server_detail!: [...{
								public_keys?: [...{
									is_ssl_verify_disabled?: bool
									keys?: [...{
										format!: string
										key?:    string
										alg?:    string
										kid?:    string
										kty?:    string
										e?:      string
										use?:    string
										n?:      string
										key_ops?: [...string]
									}]
									max_cache_duration_in_hours?: int
									uri?:                         string
									type!:                        string
								}]
								parameters?: [_]: string
								function_id?:       string
								token_auth_scheme?: string
								token_header?:      string
								verify_claims?: [...{
									key?: string
									values?: [...string]
									is_required?: bool
								}]
								max_clock_skew_in_seconds?: float
								issuers?: [...string]
								type!: string
								audiences?: [...string]
								validation_policy?: [...{
									max_cache_duration_in_hours?: int
									source_uri_details?: [...{
										type!: string
										uri?:  string
									}]
									uri?:  string
									type!: string
									additional_validation_policy?: [...{
										issuers?: [...string]
										verify_claims?: [...{
											values?: [...string]
											is_required?: bool
											key?:         string
										}]
										audiences?: [...string]
									}]
									client_details?: [...{
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									is_ssl_verify_disabled?: bool
									keys?: [...{
										key_ops?: [...string]
										n?:      string
										use?:    string
										e?:      string
										key?:    string
										kid?:    string
										alg?:    string
										kty?:    string
										format!: string
									}]
								}]
								cache_key?: [...string]
								is_anonymous_access_allowed?: bool
								token_query_param?:           string
								validation_failure_policy?: [...{
									response_header_transformations?: [...{
										filter_headers?: [...{
											items?: [...{
												name?: string
											}]
											type?: string
										}]
										rename_headers?: [...{
											items?: [...{
												to?: string, from?: string
											}]
										}]
										set_headers?: [...{
											items?: [...{
												name?: string, values?: [...string]
												if_exists?: string
											}]
										}]
									}]
									use_pkce?:         bool
									logout_path?:      string
									response_message?: string
									type!:             string
									scopes?: [...string]
									use_cookies_for_intermediate_steps?: bool
									response_type?:                      string
									client_details?: [...{
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									fallback_redirect_path?: string
									response_code?:          string
									source_uri_details?: [...{
										type!: string
										uri?:  string
									}]
									use_cookies_for_session?:      bool
									max_expiry_duration_in_hours?: int
								}]
							}]
							key!: [...{
								expression?: string
								is_default?: bool
								type?:       string
								values?: [...string]
								name!: string
							}]
						}]
						selection_source!: [...{
							selector!: string
							type!:     string
						}]
					}]
					mutual_tls?: [...{
						is_verified_certificate_required?: bool
						allowed_sans?: [...string]
					}]
					rate_limiting?: [...{
						rate_in_requests_per_second!: int
						rate_key!:                    string
					}]
					usage_plans?: [...{
						token_locations!: [...string]
					}]
					authentication?: [...{
						token_header?:      string
						type!:              string
						token_query_param?: string
						audiences?: [...string]
						validation_policy?: [...{
							keys?: [...{
								use?:    string
								format!: string
								key_ops?: [...string]
								alg?: string
								key?: string
								n?:   string
								kid?: string
								kty?: string
								e?:   string
							}]
							max_cache_duration_in_hours?: int
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							uri?:  string
							type!: string
							additional_validation_policy?: [...{
								audiences?: [...string]
								issuers?: [...string]
								verify_claims?: [...{
									is_required?: bool
									key?:         string
									values?: [...string]
								}]
							}]
							client_details?: [...{
								client_secret_version_number?: string
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
							}]
							is_ssl_verify_disabled?: bool
						}]
						parameters?: [_]: string
						function_id?:                 string
						is_anonymous_access_allowed?: bool
						public_keys?: [...{
							uri?:                    string
							type!:                   string
							is_ssl_verify_disabled?: bool
							keys?: [...{
								key?: string
								kid?: string
								kty?: string
								key_ops?: [...string]
								e?:      string
								n?:      string
								use?:    string
								format!: string
								alg?:    string
							}]
							max_cache_duration_in_hours?: int
						}]
						token_auth_scheme?: string
						validation_failure_policy?: [...{
							max_expiry_duration_in_hours?:       int
							response_type?:                      string
							use_cookies_for_intermediate_steps?: bool
							response_code?:                      string
							use_cookies_for_session?:            bool
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							scopes?: [...string]
							response_message?: string
							type!:             string
							client_details?: [...{
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
								client_secret_version_number?: string
							}]
							use_pkce?:               bool
							fallback_redirect_path?: string
							logout_path?:            string
							response_header_transformations?: [...{
								set_headers?: [...{
									items?: [...{
										name?: string, values?: [...string]
										if_exists?: string
									}]
								}]
								filter_headers?: [...{
									items?: [...{
										name?: string
									}]
									type?: string
								}]
								rename_headers?: [...{
									items?: [...{
										from?: string, to?: string
									}]
								}]
							}]
						}]
						max_clock_skew_in_seconds?: float
						verify_claims?: [...{
							is_required?: bool
							key?:         string
							values?: [...string]
						}]
						cache_key?: [...string]
						issuers?: [...string]
					}]
				}]
				routes!: [...{
					logging_policies?: [...{
						access_log?: [...{
							is_enabled?: bool
						}]
						execution_log?: [...{
							is_enabled?: bool
							log_level?:  string
						}]
					}]
					methods?: [...string]
					request_policies?: [...{
						response_cache_lookup?: [...{
							type!: string
							cache_key_additions?: [...string]
							is_enabled?:                 bool
							is_private_caching_enabled?: bool
						}]
						authorization?: [...{
							allowed_scope?: [...string]
							type?: string
						}]
						body_validation?: [...{
							validation_mode?: string
							content?: [...{
								media_type!:      string
								validation_type!: string
							}]
							required?: bool
						}]
						cors?: [...{
							allowed_origins!: [...string]
							allowed_headers?: [...string]
							allowed_methods?: [...string]
							exposed_headers?: [...string]
							is_allow_credentials_enabled?: bool
							max_age_in_seconds?:           int
						}]
						header_transformations?: [...{
							filter_headers?: [...{
								type!: string
								items!: [...{
									name!: string
								}]
							}]
							rename_headers?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
							set_headers?: [...{
								items!: [...{
									name!: string, values!: [...string]
									if_exists?: string
								}]
							}]
						}]
						header_validations?: [...{
							validation_mode?: string
							headers?: [...{
								name!:     string
								required?: bool
							}]
						}]
						query_parameter_transformations?: [...{
							set_query_parameters?: [...{
								items!: [...{
									name!: string, values!: [...string]
									if_exists?: string
								}]
							}]
							filter_query_parameters?: [...{
								items!: [...{
									name!: string
								}]
								type!: string
							}]
							rename_query_parameters?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
						}]
						query_parameter_validations?: [...{
							parameters?: [...{
								name!:     string
								required?: bool
							}]
							validation_mode?: string
						}]
					}]
					response_policies?: [...{
						response_cache_store?: [...{
							type!:                    string
							time_to_live_in_seconds!: int
						}]
						header_transformations?: [...{
							filter_headers?: [...{
								items!: [...{
									name!: string
								}]
								type!: string
							}]
							rename_headers?: [...{
								items!: [...{
									to!: string, from!: string
								}]
							}]
							set_headers?: [...{
								items!: [...{
									values!: [...string]
									if_exists?: string, name!: string
								}]
							}]
						}]
					}]
					backend!: [...{
						url?:                     string
						read_timeout_in_seconds?: float
						function_id?:             string
						routing_backends?: [...{
							key?: [...{
								values?: [...string]
								is_default?: bool
								type!:       string
								name!:       string
								expression?: string
							}]
							backend?: [...{
								read_timeout_in_seconds?:    float
								url?:                        string
								connect_timeout_in_seconds?: float
								function_id?:                string
								is_ssl_verify_disabled?:     bool
								status?:                     int
								type!:                       string
								body?:                       string
							}]
						}]
						status?: int
						body?:   string
						allowed_post_logout_uris?: [...string]
						headers?: [...{
							name?:  string
							value?: string
						}]
						post_logout_state?: string
						type!:              string
						selection_source?: [...{
							selector!: string
							type!:     string
						}]
						send_timeout_in_seconds?:    float
						connect_timeout_in_seconds?: float
						is_ssl_verify_disabled?:     bool
					}]
					path!: string
				}]
			}]
		}
		gateway: {
			endpoint_type!: string
			ca_bundles?: [...{
				type!:                     string
				ca_bundle_id?:             string
				certificate_authority_id?: string
			}]
			response_cache_details?: [...{
				is_ssl_verify_disabled?:               bool
				authentication_secret_id?:             string
				connect_timeout_in_ms?:                int
				send_timeout_in_ms?:                   int
				type!:                                 string
				read_timeout_in_ms?:                   int
				authentication_secret_version_number?: string
				is_ssl_enabled?:                       bool
				servers?: [...{
					port?: int
					host?: string
				}]
			}]
			subnet_id!:      string
			certificate_id?: string
			display_name?:   string
			network_security_group_ids?: [...string]
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		subscriber: {
			clients!: [...{
				name!:  string
				token!: string
			}]
			usage_plans!: [...string]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		usage_plan: {
			display_name?: string
			entitlements!: [...{
				rate_limit?: [...{
					unit!:  string
					value!: int
				}]
				targets?: [...{
					deployment_id!: string
				}]
				name!:        string
				description?: string
				quota?: [...{
					operation_on_breach!: string
					reset_policy!:        string
					unit!:                string
					value!:               int
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	gateway: gateway_id!: string
	subscriber: subscriber_id!: string
	usage_plans: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	api_content: api_id!: string
	api_validation: api_id!: string
	certificate: certificate_id!: string
	usage_plan: usage_plan_id!: string
	api: api_id!: string
	api_deployment_specification: api_id!: string
	apis: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	certificates: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	deployment: deployment_id!: string
	gateways: {
		certificate_id?: string
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	subscribers: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	deployments: {
		compartment_id!: string
		display_name?:   string
		gateway_id?:     string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
}

