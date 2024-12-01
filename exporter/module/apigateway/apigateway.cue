package apigateway

#resource: {
	attributes: {
		usage_plan: {
			compartment_id!: string
			time_updated:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?:     string
			time_created:      string
			lifecycle_details: string
			state:             string
			entitlements!: [...{
				name!:        string
				description?: string
				quota?: [...{
					unit!:                string
					value!:               int
					operation_on_breach!: string
					reset_policy!:        string
				}]
				rate_limit?: [...{
					unit!:  string
					value!: int
				}]
				targets?: [...{
					deployment_id!: string
				}]
			}]
		}
		api: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			specification_type: string
			state:              string
			validation_results: [...{
				result: string
				name:   string
			}]
			time_updated:      string
			content?:          string
			time_created:      string
			lifecycle_details: string
		}
		certificate: {
			freeform_tags?: [_]: string
			intermediate_certificates?: string
			subject_names: [...string]
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:        string
			certificate!:         string
			private_key!:         string
			lifecycle_details:    string
			state:                string
			time_created:         string
			time_not_valid_after: string
		}
		deployment: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			endpoint:      string
			time_updated:  string
			path_prefix!:  string
			display_name?: string
			state:         string
			specification!: [...{
				request_policies?: [...{
					cors?: [...{
						allowed_headers?: [...string]
						allowed_methods?: [...string]
						exposed_headers?: [...string]
						is_allow_credentials_enabled?: bool
						max_age_in_seconds?:           int
						allowed_origins!: [...string]
					}]
					dynamic_authentication?: [...{
						authentication_servers!: [...{
							authentication_server_detail!: [...{
								function_id?: string
								issuers?: [...string]
								token_query_param?: string
								validation_policy?: [...{
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
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									is_ssl_verify_disabled?: bool
									keys?: [...{
										alg?: string
										kty?: string
										use?: string
										key?: string
										kid?: string
										key_ops?: [...string]
										n?:      string
										format!: string
										e?:      string
									}]
									max_cache_duration_in_hours?: int
								}]
								token_auth_scheme?: string
								token_header?:      string
								public_keys?: [...{
									max_cache_duration_in_hours?: int
									uri?:                         string
									type!:                        string
									is_ssl_verify_disabled?:      bool
									keys?: [...{
										n?: string
										key_ops?: [...string]
										key?:    string
										use?:    string
										format!: string
										kty?:    string
										kid?:    string
										e?:      string
										alg?:    string
									}]
								}]
								cache_key?: [...string]
								is_anonymous_access_allowed?: bool
								parameters?: [_]: string
								max_clock_skew_in_seconds?: float
								verify_claims?: [...{
									is_required?: bool
									key?:         string
									values?: [...string]
								}]
								validation_failure_policy?: [...{
									fallback_redirect_path?:             string
									max_expiry_duration_in_hours?:       int
									response_code?:                      string
									use_cookies_for_intermediate_steps?: bool
									response_message?:                   string
									source_uri_details?: [...{
										uri?:  string
										type!: string
									}]
									response_type?:           string
									use_pkce?:                bool
									use_cookies_for_session?: bool
									client_details?: [...{
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									type!:        string
									logout_path?: string
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
												values?: [...string]
												if_exists?: string, name?: string
											}]
										}]
									}]
									scopes?: [...string]
								}]
								type!: string
								audiences?: [...string]
							}]
							key!: [...{
								values?: [...string]
								name!:       string
								expression?: string
								is_default?: bool
								type?:       string
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
						audiences?: [...string]
						max_clock_skew_in_seconds?: float
						public_keys?: [...{
							max_cache_duration_in_hours?: int
							uri?:                         string
							type!:                        string
							is_ssl_verify_disabled?:      bool
							keys?: [...{
								n?:      string
								use?:    string
								key?:    string
								alg?:    string
								kid?:    string
								kty?:    string
								format!: string
								key_ops?: [...string]
								e?: string
							}]
						}]
						token_query_param?: string
						validation_policy?: [...{
							uri?:  string
							type!: string
							additional_validation_policy?: [...{
								audiences?: [...string]
								issuers?: [...string]
								verify_claims?: [...{
									key?: string
									values?: [...string]
									is_required?: bool
								}]
							}]
							client_details?: [...{
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
								client_secret_version_number?: string
							}]
							is_ssl_verify_disabled?: bool
							keys?: [...{
								key?: string
								kid?: string
								kty?: string
								e?:   string
								n?:   string
								alg?: string
								key_ops?: [...string]
								use?:    string
								format!: string
							}]
							max_cache_duration_in_hours?: int
							source_uri_details?: [...{
								uri?:  string
								type!: string
							}]
						}]
						verify_claims?: [...{
							key?: string
							values?: [...string]
							is_required?: bool
						}]
						type!:                        string
						is_anonymous_access_allowed?: bool
						token_auth_scheme?:           string
						token_header?:                string
						cache_key?: [...string]
						function_id?: string
						parameters?: [_]: string
						validation_failure_policy?: [...{
							response_message?:                   string
							response_code?:                      string
							use_pkce?:                           bool
							fallback_redirect_path?:             string
							use_cookies_for_intermediate_steps?: bool
							client_details?: [...{
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
								client_secret_version_number?: string
							}]
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							response_type?: string
							type!:          string
							logout_path?:   string
							scopes?: [...string]
							response_header_transformations?: [...{
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
								set_headers?: [...{
									items?: [...{
										if_exists?: string, name?: string, values?: [...string]
									}]
								}]
							}]
							max_expiry_duration_in_hours?: int
							use_cookies_for_session?:      bool
						}]
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
						body_validation?: [...{
							validation_mode?: string
							content?: [...{
								media_type!:      string
								validation_type!: string
							}]
							required?: bool
						}]
						cors?: [...{
							exposed_headers?: [...string]
							is_allow_credentials_enabled?: bool
							max_age_in_seconds?:           int
							allowed_origins!: [...string]
							allowed_headers?: [...string]
							allowed_methods?: [...string]
						}]
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
						header_validations?: [...{
							headers?: [...{
								name!:     string
								required?: bool
							}]
							validation_mode?: string
						}]
						query_parameter_transformations?: [...{
							set_query_parameters?: [...{
								items!: [...{
									if_exists?: string, name!: string, values!: [...string]
								}]
							}]
							filter_query_parameters?: [...{
								type!: string
								items!: [...{
									name!: string
								}]
							}]
							rename_query_parameters?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
						}]
						query_parameter_validations?: [...{
							parameters?: [...{
								required?: bool
								name!:     string
							}]
							validation_mode?: string
						}]
						response_cache_lookup?: [...{
							is_enabled?:                 bool
							is_private_caching_enabled?: bool
							type!:                       string
							cache_key_additions?: [...string]
						}]
						authorization?: [...{
							type?: string
							allowed_scope?: [...string]
						}]
					}]
					response_policies?: [...{
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
									if_exists?: string, name!: string, values!: [...string]
								}]
							}]
						}]
						response_cache_store?: [...{
							time_to_live_in_seconds!: int
							type!:                    string
						}]
					}]
					backend!: [...{
						selection_source?: [...{
							type!:     string
							selector!: string
						}]
						read_timeout_in_seconds?: float
						post_logout_state?:       string
						url?:                     string
						body?:                    string
						allowed_post_logout_uris?: [...string]
						connect_timeout_in_seconds?: float
						is_ssl_verify_disabled?:     bool
						status?:                     int
						headers?: [...{
							name?:  string
							value?: string
						}]
						routing_backends?: [...{
							backend?: [...{
								headers: [...{
									name?:  string
									value?: string
								}]
								send_timeout_in_seconds:     float
								read_timeout_in_seconds?:    float
								status?:                     int
								url?:                        string
								is_ssl_verify_disabled?:     bool
								type!:                       string
								body?:                       string
								connect_timeout_in_seconds?: float
								function_id?:                string
							}]
							key?: [...{
								type!:       string
								name!:       string
								expression?: string
								values?: [...string]
								is_default?: bool
							}]
						}]
						type!:                    string
						send_timeout_in_seconds?: float
						function_id?:             string
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
			gateway_id!:       string
			lifecycle_details: string
			time_created:      string
			compartment_id!:   string
		}
		gateway: {
			compartment_id!: string
			time_created:    string
			freeform_tags?: [_]: string
			response_cache_details?: [...{
				type!:                                 string
				read_timeout_in_ms?:                   int
				is_ssl_verify_disabled?:               bool
				authentication_secret_id?:             string
				authentication_secret_version_number?: string
				connect_timeout_in_ms?:                int
				is_ssl_enabled?:                       bool
				send_timeout_in_ms?:                   int
				servers?: [...{
					host?: string
					port?: int
				}]
			}]
			lifecycle_details: string
			defined_tags?: [_]: string
			ip_addresses: [...{
				ip_address: string
			}]
			display_name?:  string
			subnet_id!:     string
			endpoint_type!: string
			ca_bundles?: [...{
				type!:                     string
				ca_bundle_id?:             string
				certificate_authority_id?: string
			}]
			hostname: string
			state:    string
			network_security_group_ids?: [...string]
			time_updated:    string
			certificate_id?: string
		}
		subscriber: {
			clients!: [...{
				name!:  string
				token!: string
			}]
			usage_plans!: [...string]
			defined_tags?: [_]: string
			display_name?:   string
			state:           string
			time_updated:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
		}
	}
	arguments: {
		usage_plan: {
			compartment_id!: string
			entitlements!: [...{
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
				rate_limit?: [...{
					unit!:  string
					value!: int
				}]
			}]
			display_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		api: {
			content?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		certificate: {
			freeform_tags?: [_]: string
			intermediate_certificates?: string
			compartment_id!:            string
			defined_tags?: [_]: string
			certificate!:  string
			private_key!:  string
			display_name?: string
		}
		deployment: {
			gateway_id!:     string
			path_prefix!:    string
			display_name?:   string
			compartment_id!: string
			specification!: [...{
				logging_policies?: [...{
					access_log?: [...{
						is_enabled?: bool
					}]
					execution_log?: [...{
						log_level?:  string
						is_enabled?: bool
					}]
				}]
				request_policies?: [...{
					cors?: [...{
						allowed_methods?: [...string]
						exposed_headers?: [...string]
						is_allow_credentials_enabled?: bool
						max_age_in_seconds?:           int
						allowed_origins!: [...string]
						allowed_headers?: [...string]
					}]
					dynamic_authentication?: [...{
						authentication_servers!: [...{
							authentication_server_detail!: [...{
								validation_failure_policy?: [...{
									use_cookies_for_session?:            bool
									use_cookies_for_intermediate_steps?: bool
									response_message?:                   string
									client_details?: [...{
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
										client_secret_version_number?: string
									}]
									use_pkce?: bool
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
												name?: string, values?: [...string]
												if_exists?: string
											}]
										}]
									}]
									fallback_redirect_path?:       string
									response_type?:                string
									type!:                         string
									max_expiry_duration_in_hours?: int
									response_code?:                string
									source_uri_details?: [...{
										type!: string
										uri?:  string
									}]
									scopes?: [...string]
									logout_path?: string
								}]
								public_keys?: [...{
									keys?: [...{
										format!: string
										alg?:    string
										kid?:    string
										n?:      string
										e?:      string
										key?:    string
										use?:    string
										key_ops?: [...string]
										kty?: string
									}]
									max_cache_duration_in_hours?: int
									uri?:                         string
									type!:                        string
									is_ssl_verify_disabled?:      bool
								}]
								max_clock_skew_in_seconds?: float
								issuers?: [...string]
								token_query_param?: string
								type!:              string
								parameters?: [_]: string
								verify_claims?: [...{
									key?: string
									values?: [...string]
									is_required?: bool
								}]
								cache_key?: [...string]
								is_anonymous_access_allowed?: bool
								function_id?:                 string
								token_auth_scheme?:           string
								token_header?:                string
								validation_policy?: [...{
									client_details?: [...{
										client_secret_version_number?: string
										type!:                         string
										client_id?:                    string
										client_secret_id?:             string
									}]
									is_ssl_verify_disabled?: bool
									keys?: [...{
										alg?: string
										n?:   string
										e?:   string
										kty?: string
										kid?: string
										key?: string
										key_ops?: [...string]
										use?:    string
										format!: string
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
								}]
								audiences?: [...string]
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
						allowed_sans?: [...string]
						is_verified_certificate_required?: bool
					}]
					rate_limiting?: [...{
						rate_in_requests_per_second!: int
						rate_key!:                    string
					}]
					usage_plans?: [...{
						token_locations!: [...string]
					}]
					authentication?: [...{
						token_header?: string
						audiences?: [...string]
						parameters?: [_]: string
						cache_key?: [...string]
						type!: string
						validation_failure_policy?: [...{
							client_details?: [...{
								type!:                         string
								client_id?:                    string
								client_secret_id?:             string
								client_secret_version_number?: string
							}]
							use_cookies_for_intermediate_steps?: bool
							use_pkce?:                           bool
							response_header_transformations?: [...{
								set_headers?: [...{
									items?: [...{
										if_exists?: string, name?: string, values?: [...string]
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
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							type!:                         string
							response_type?:                string
							use_cookies_for_session?:      bool
							logout_path?:                  string
							response_code?:                string
							max_expiry_duration_in_hours?: int
							scopes?: [...string]
							response_message?:       string
							fallback_redirect_path?: string
						}]
						validation_policy?: [...{
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
							client_details?: [...{
								client_secret_id?:             string
								client_secret_version_number?: string
								type!:                         string
								client_id?:                    string
							}]
							is_ssl_verify_disabled?: bool
							keys?: [...{
								e?:      string
								key?:    string
								n?:      string
								use?:    string
								format!: string
								kid?:    string
								kty?:    string
								alg?:    string
								key_ops?: [...string]
							}]
							max_cache_duration_in_hours?: int
							source_uri_details?: [...{
								type!: string
								uri?:  string
							}]
							uri?: string
						}]
						verify_claims?: [...{
							key?: string
							values?: [...string]
							is_required?: bool
						}]
						token_auth_scheme?: string
						token_query_param?: string
						issuers?: [...string]
						public_keys?: [...{
							type!:                   string
							is_ssl_verify_disabled?: bool
							keys?: [...{
								key?: string
								kty?: string
								use?: string
								e?:   string
								kid?: string
								key_ops?: [...string]
								n?:      string
								alg?:    string
								format!: string
							}]
							max_cache_duration_in_hours?: int
							uri?:                         string
						}]
						max_clock_skew_in_seconds?:   float
						is_anonymous_access_allowed?: bool
						function_id?:                 string
					}]
				}]
				routes!: [...{
					path!: string
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
						header_transformations?: [...{
							filter_headers?: [...{
								items!: [...{
									name!: string
								}]
								type!: string
							}]
							rename_headers?: [...{
								items!: [...{
									from!: string, to!: string
								}]
							}]
							set_headers?: [...{
								items!: [...{
									if_exists?: string, name!: string, values!: [...string]
								}]
							}]
						}]
						header_validations?: [...{
							headers?: [...{
								required?: bool
								name!:     string
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
									values!: [...string]
									if_exists?: string, name!: string
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
							is_enabled?:                 bool
							is_private_caching_enabled?: bool
							type!:                       string
							cache_key_additions?: [...string]
						}]
						authorization?: [...{
							allowed_scope?: [...string]
							type?: string
						}]
						body_validation?: [...{
							content?: [...{
								media_type!:      string
								validation_type!: string
							}]
							required?:        bool
							validation_mode?: string
						}]
						cors?: [...{
							allowed_methods?: [...string]
							exposed_headers?: [...string]
							is_allow_credentials_enabled?: bool
							max_age_in_seconds?:           int
							allowed_origins!: [...string]
							allowed_headers?: [...string]
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
							time_to_live_in_seconds!: int
							type!:                    string
						}]
					}]
					backend!: [...{
						headers?: [...{
							name?:  string
							value?: string
						}]
						post_logout_state?: string
						status?:            int
						routing_backends?: [...{
							backend?: [...{
								is_ssl_verify_disabled?:     bool
								read_timeout_in_seconds?:    float
								body?:                       string
								type!:                       string
								status?:                     int
								url?:                        string
								connect_timeout_in_seconds?: float
								function_id?:                string
							}]
							key?: [...{
								name!:       string
								expression?: string
								values?: [...string]
								is_default?: bool
								type!:       string
							}]
						}]
						send_timeout_in_seconds?: float
						selection_source?: [...{
							type!:     string
							selector!: string
						}]
						read_timeout_in_seconds?: float
						is_ssl_verify_disabled?:  bool
						url?:                     string
						body?:                    string
						allowed_post_logout_uris?: [...string]
						connect_timeout_in_seconds?: float
						type!:                       string
						function_id?:                string
					}]
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		gateway: {
			ca_bundles?: [...{
				ca_bundle_id?:             string
				certificate_authority_id?: string
				type!:                     string
			}]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			endpoint_type!: string
			response_cache_details?: [...{
				authentication_secret_id?:             string
				connect_timeout_in_ms?:                int
				is_ssl_enabled?:                       bool
				type!:                                 string
				authentication_secret_version_number?: string
				send_timeout_in_ms?:                   int
				servers?: [...{
					port?: int
					host?: string
				}]
				read_timeout_in_ms?:     int
				is_ssl_verify_disabled?: bool
			}]
			certificate_id?: string
			subnet_id!:      string
			compartment_id!: string
			network_security_group_ids?: [...string]
		}
		subscriber: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			clients!: [...{
				name!:  string
				token!: string
			}]
			compartment_id!: string
			display_name?:   string
			usage_plans!: [...string]
		}
	}
}
#data: {
	api: api_id!: string
	certificate: certificate_id!: string
	certificates: {
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
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		gateway_id?:     string
		state?:          string
	}
	subscribers: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	api_deployment_specification: api_id!: string
	api_validation: api_id!: string
	gateway: gateway_id!: string
	gateways: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		certificate_id?: string
		compartment_id!: string
		display_name?:   string
	}
	usage_plan: usage_plan_id!: string
	api_content: api_id!: string
	apis: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	deployment: deployment_id!: string
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
}

