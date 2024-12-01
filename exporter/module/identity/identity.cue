package identity

#resource: {
	attributes: {
		user: {
			name!:        string
			description!: string
			email?:       string
			capabilities: [...{
				can_use_db_credentials:           bool
				can_use_oauth2client_credentials: bool
				can_use_smtp_credentials:         bool
				can_use_api_keys:                 bool
				can_use_auth_tokens:              bool
				can_use_console_password:         bool
				can_use_customer_secret_keys:     bool
			}]
			freeform_tags?: [_]: string
			state:                          string
			previous_successful_login_time: string
			time_created:                   string
			identity_provider_id:           string
			email_verified:                 bool
			last_successful_login_time:     string
			defined_tags?: [_]: string
			external_identifier: string
			db_user_name:        string
			inactive_state:      string
			compartment_id?:     string
		}
		user_capabilities_management: {
			can_use_console_password?:     bool
			can_use_customer_secret_keys?: bool
			can_use_smtp_credentials?:     bool
			user_id!:                      string
			can_use_api_keys?:             bool
			can_use_auth_tokens?:          bool
		}
		policy: {
			version_date?:   string
			time_created:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			inactive_state: string
			state:          string
			description!:   string
			name!:          string
			ETag:           string
			policyHash:     string
			lastUpdateETag: string
			statements!: [...string]
			defined_tags?: [_]: string
		}
		ui_password: {
			password:        string
			state:           string
			time_created:    string
			user_id!:        string
			inactive_status: string
		}
		compartment: {
			freeform_tags?: [_]: string
			inactive_state: string
			defined_tags?: [_]: string
			description!:    string
			is_accessible:   bool
			state:           string
			time_created:    string
			compartment_id?: string
			name!:           string
			enable_delete?:  bool
		}
		db_credential: {
			password!:         string
			user_id!:          string
			lifecycle_details: string
			state:             string
			time_created:      string
			time_expires:      string
			description!:      string
		}
		group: {
			compartment_id?: string
			description!:    string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			inactive_state: string
			state:          string
			time_created:   string
		}
		idp_group_mapping: {
			group_id!:             string
			identity_provider_id!: string
			idp_group_name!:       string
			compartment_id:        string
			inactive_state:        string
			state:                 string
			time_created:          string
		}
		import_standard_tags_management: {
			compartment_id!:              string
			standard_tag_namespace_name!: string
			work_request_id:              string
		}
		network_source: {
			time_created:    string
			compartment_id!: string
			virtual_source_list?: [...{
				vcn_id!: string
				ip_ranges!: [...string]
			}]
			state: string
			freeform_tags?: [_]: string
			inactive_state: string
			description!:   string
			public_source_list?: [...string]
			name!: string
			defined_tags?: [_]: string
			services?: [...string]
		}
		auth_token: {
			description!:   string
			user_id!:       string
			inactive_state: string
			state:          string
			time_created:   string
			time_expires:   string
			token:          string
		}
		authentication_policy: {
			network_policy?: [...{
				network_source_ids?: [...string]
			}]
			password_policy?: [...{
				is_uppercase_characters_required?: bool
				is_username_containment_allowed?:  bool
				minimum_password_length?:          int
				is_lowercase_characters_required?: bool
				is_numeric_characters_required?:   bool
				is_special_characters_required?:   bool
			}]
			compartment_id!: string
		}
		smtp_credential: {
			user_id!:       string
			inactive_state: string
			password:       string
			state:          string
			time_created:   string
			time_expires:   string
			username:       string
			description!:   string
		}
		domain: {
			freeform_tags?: [_]: string
			home_region_url: string
			description!:    string
			defined_tags?: [_]: string
			type:                       string
			admin_email?:               string
			is_primary_email_required?: bool
			replica_regions: [...{
				region: string
				state:  string
				url:    string
			}]
			lifecycle_details:         string
			license_type!:             string
			is_notification_bypassed?: bool
			is_hidden_on_login?:       bool
			url:                       string
			display_name!:             string
			admin_first_name?:         string
			time_created:              string
			compartment_id!:           string
			admin_last_name?:          string
			home_region!:              string
			admin_user_name?:          string
			state?:                    string
		}
		domain_replication_to_region: {
			replica_region?: string
			domain_id!:      string
		}
		dynamic_group: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			inactive_state:  string
			time_created:    string
			name!:           string
			matching_rule!:  string
			compartment_id!: string
			description!:    string
			state:           string
		}
		user_group_membership: {
			inactive_state:  string
			state:           string
			time_created:    string
			group_id!:       string
			user_id!:        string
			compartment_id?: string
		}
		api_key: {
			user_id!:        string
			fingerprint:     string
			inactive_status: string
			state:           string
			time_created:    string
			key_value!:      string
		}
		customer_secret_key: {
			key:            string
			state:          string
			time_created:   string
			time_expires:   string
			display_name!:  string
			user_id!:       string
			inactive_state: string
		}
		tag_default: {
			tag_definition_id!:  string
			value!:              string
			is_required?:        bool
			state:               string
			tag_definition_name: string
			tag_namespace_id:    string
			time_created:        string
			compartment_id!:     string
		}
		tag_namespace: {
			is_retired?:     bool
			state:           string
			time_created:    string
			compartment_id!: string
			description!:    string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		identity_provider: {
			defined_tags?: [_]: string
			metadata_url!: string
			metadata!:     string
			freeform_tags?: [_]: string
			protocol!:     string
			redirect_url:  string
			product_type!: string
			freeform_attributes?: [_]: string
			state:               string
			signing_certificate: string
			name!:               string
			description!:        string
			time_created:        string
			inactive_state:      string
			compartment_id!:     string
		}
		tag: {
			validator?: [...{
				validator_type!: string
				values!: [...string]
			}]
			description!:      string
			is_retired?:       bool
			state:             string
			time_created:      string
			name!:             string
			tag_namespace_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_cost_tracking?: bool
		}
	}
	arguments: {
		user: {
			defined_tags?: [_]: string
			name!: string
			freeform_tags?: [_]: string
			description!:    string
			email?:          string
			compartment_id?: string
		}
		user_capabilities_management: {
			can_use_smtp_credentials?:     bool
			user_id!:                      string
			can_use_api_keys?:             bool
			can_use_auth_tokens?:          bool
			can_use_console_password?:     bool
			can_use_customer_secret_keys?: bool
		}
		policy: {
			description!: string
			statements!: [...string]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			version_date?:   string
		}
		ui_password: user_id!: string
		compartment: {
			description!:    string
			compartment_id?: string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			enable_delete?: bool
		}
		db_credential: {
			password!:    string
			user_id!:     string
			description!: string
		}
		group: {
			description!: string
			name!:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id?: string
		}
		idp_group_mapping: {
			group_id!:             string
			identity_provider_id!: string
			idp_group_name!:       string
		}
		import_standard_tags_management: {
			compartment_id!:              string
			standard_tag_namespace_name!: string
		}
		network_source: {
			freeform_tags?: [_]: string
			virtual_source_list?: [...{
				vcn_id!: string
				ip_ranges!: [...string]
			}]
			name!: string
			defined_tags?: [_]: string
			public_source_list?: [...string]
			services?: [...string]
			compartment_id!: string
			description!:    string
		}
		auth_token: {
			description!: string
			user_id!:     string
		}
		authentication_policy: {
			compartment_id!: string
			network_policy?: [...{
				network_source_ids?: [...string]
			}]
			password_policy?: [...{
				is_lowercase_characters_required?: bool
				is_numeric_characters_required?:   bool
				is_special_characters_required?:   bool
				is_uppercase_characters_required?: bool
				is_username_containment_allowed?:  bool
				minimum_password_length?:          int
			}]
		}
		smtp_credential: {
			description!: string
			user_id!:     string
		}
		domain: {
			admin_first_name?: string
			compartment_id!:   string
			admin_user_name?:  string
			state?:            string
			admin_email?:      string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			is_notification_bypassed?:  bool
			is_hidden_on_login?:        bool
			display_name!:              string
			admin_last_name?:           string
			description!:               string
			home_region!:               string
			license_type!:              string
			is_primary_email_required?: bool
		}
		domain_replication_to_region: {
			domain_id!:      string
			replica_region?: string
		}
		dynamic_group: {
			defined_tags?: [_]: string
			compartment_id!: string
			description!:    string
			name!:           string
			matching_rule!:  string
			freeform_tags?: [_]: string
		}
		user_group_membership: {
			user_id!:        string
			compartment_id?: string
			group_id!:       string
		}
		api_key: {
			key_value!: string
			user_id!:   string
		}
		customer_secret_key: {
			user_id!:      string
			display_name!: string
		}
		tag_default: {
			compartment_id!:    string
			tag_definition_id!: string
			value!:             string
			is_required?:       bool
		}
		tag_namespace: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_retired?:     bool
			compartment_id!: string
			description!:    string
			name!:           string
		}
		identity_provider: {
			protocol!:     string
			metadata_url!: string
			defined_tags?: [_]: string
			compartment_id!: string
			name!:           string
			freeform_tags?: [_]: string
			description!: string
			freeform_attributes?: [_]: string
			metadata!:     string
			product_type!: string
		}
		tag: {
			freeform_tags?: [_]: string
			validator?: [...{
				validator_type!: string
				values!: [...string]
			}]
			is_cost_tracking?: bool
			is_retired?:       bool
			description!:      string
			name!:             string
			tag_namespace_id!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	allowed_domain_license_types: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		current_license_type_name?: string
	}
	authentication_policy: compartment_id!: string
	customer_secret_keys: {
		user_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	db_credentials: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:    string
		state?:   string
		user_id!: string
	}
	domain: domain_id!: string
	tag_standard_tag_namespace_template: {
		compartment_id!:              string
		standard_tag_namespace_name!: string
	}
	domains: {
		type?:            string
		compartment_id!:  string
		license_type?:    string
		name?:            string
		home_region_url?: string
		display_name?:    string
		url?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:              string
		is_hidden_on_login?: bool
	}
	identity_provider_groups: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		identity_provider_id!: string
		name?:                 string
	}
	policies: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	iam_work_requests: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:      string
		resource_identifier?: string
	}
	cost_tracking_tags: {
		compartment_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	fault_domains: {
		compartment_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain!: string
	}
	iam_work_request_errors: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		iam_work_request_id!: string
	}
	iam_work_request_logs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		iam_work_request_id!: string
	}
	idp_group_mappings: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		identity_provider_id!: string
	}
	network_source: network_source_id!: string
	regions: filter?: [...{
		values!: [...string]
		regex?: *false | bool
		name!:  string
	}]
	smtp_credentials: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
	tags: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:            string
		tag_namespace_id!: string
	}
	api_keys: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		user_id!: string
	}
	availability_domains: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	dynamic_groups: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
	group: group_id!: string
	network_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	tag_defaults: {
		id?:                string
		state?:             string
		tag_definition_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	ui_password: user_id!: string
	user_group_memberships: {
		group_id?: string
		user_id?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	compartment: id!: string
	compartments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		name?:                      string
		state?:                     string
	}
	tag: {
		tag_namespace_id!: string
		tag_name!:         string
	}
	tag_default: tag_default_id!: string
	tag_standard_tag_namespace_templates: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	tenancy: tenancy_id!: string
	users: {
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:       string
		external_identifier?:  string
		identity_provider_id?: string
	}
	availability_domain: {
		compartment_id!: string
		id?:             string
		ad_number?:      int
	}
	groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	identity_providers: {
		protocol!: string
		state?:    string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		name?:           string
	}
	user: user_id!: string
	auth_tokens: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
	iam_work_request: iam_work_request_id!: string
	region_subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		tenancy_id!: string
	}
	tag_namespaces: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:          string
		include_subcompartments?: bool
		state?:                   string
	}
}

