package identity

#resource: {
	attributes: {
		db_credential: {
			description!:      string
			password!:         string
			user_id!:          string
			lifecycle_details: string
			state:             string
			time_created:      string
			time_expires:      string
		}
		domain: {
			is_hidden_on_login?: bool
			time_created:        string
			defined_tags?: [_]: string
			display_name!:              string
			is_primary_email_required?: bool
			license_type!:              string
			replica_regions: [...{
				region: string
				state:  string
				url:    string
			}]
			url:          string
			home_region!: string
			type:         string
			state?:       string
			freeform_tags?: [_]: string
			admin_first_name?:         string
			admin_last_name?:          string
			is_notification_bypassed?: bool
			description!:              string
			home_region_url:           string
			compartment_id!:           string
			admin_user_name?:          string
			lifecycle_details:         string
			admin_email?:              string
		}
		domain_replication_to_region: {
			replica_region?: string
			domain_id!:      string
		}
		tag: {
			time_created: string
			is_retired?:  bool
			validator?: [...{
				validator_type!: string
				values!: [...string]
			}]
			tag_namespace_id!: string
			name!:             string
			is_cost_tracking?: bool
			state:             string
			description!:      string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		tag_namespace: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_retired?:     bool
			state:           string
			time_created:    string
			compartment_id!: string
			description!:    string
			name!:           string
		}
		authentication_policy: {
			compartment_id!: string
			network_policy?: [...{
				network_source_ids?: [...string]
			}]
			password_policy?: [...{
				is_numeric_characters_required?:   bool
				is_special_characters_required?:   bool
				is_uppercase_characters_required?: bool
				is_username_containment_allowed?:  bool
				minimum_password_length?:          int
				is_lowercase_characters_required?: bool
			}]
		}
		customer_secret_key: {
			time_expires:   string
			display_name!:  string
			user_id!:       string
			inactive_state: string
			key:            string
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
			work_request_id:              string
			compartment_id!:              string
			standard_tag_namespace_name!: string
		}
		network_source: {
			public_source_list?: [...string]
			compartment_id!: string
			description!:    string
			state:           string
			time_created:    string
			services?: [...string]
			virtual_source_list?: [...{
				vcn_id!: string
				ip_ranges!: [...string]
			}]
			name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			inactive_state: string
		}
		policy: {
			freeform_tags?: [_]: string
			policyHash: string
			defined_tags?: [_]: string
			version_date?:  string
			state:          string
			lastUpdateETag: string
			description!:   string
			inactive_state: string
			ETag:           string
			time_created:   string
			name!:          string
			statements!: [...string]
			compartment_id!: string
		}
		smtp_credential: {
			time_expires:   string
			username:       string
			description!:   string
			user_id!:       string
			inactive_state: string
			password:       string
			state:          string
			time_created:   string
		}
		user: {
			name!: string
			defined_tags?: [_]: string
			time_created:                   string
			db_user_name:                   string
			inactive_state:                 string
			state:                          string
			compartment_id?:                string
			email_verified:                 bool
			description!:                   string
			last_successful_login_time:     string
			previous_successful_login_time: string
			capabilities: [...{
				can_use_api_keys:                 bool
				can_use_auth_tokens:              bool
				can_use_console_password:         bool
				can_use_customer_secret_keys:     bool
				can_use_db_credentials:           bool
				can_use_oauth2client_credentials: bool
				can_use_smtp_credentials:         bool
			}]
			email?: string
			freeform_tags?: [_]: string
			external_identifier:  string
			identity_provider_id: string
		}
		user_group_membership: {
			compartment_id?: string
			inactive_state:  string
			state:           string
			time_created:    string
			group_id!:       string
			user_id!:        string
		}
		user_capabilities_management: {
			can_use_auth_tokens?:          bool
			can_use_console_password?:     bool
			can_use_customer_secret_keys?: bool
			can_use_smtp_credentials?:     bool
			user_id!:                      string
			can_use_api_keys?:             bool
		}
		compartment: {
			enable_delete?: bool
			freeform_tags?: [_]: string
			name!:           string
			time_created:    string
			compartment_id?: string
			inactive_state:  string
			is_accessible:   bool
			state:           string
			description!:    string
			defined_tags?: [_]: string
		}
		dynamic_group: {
			description!:   string
			matching_rule!: string
			inactive_state: string
			defined_tags?: [_]: string
			time_created: string
			state:        string
			name!:        string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		ui_password: {
			user_id!:        string
			inactive_status: string
			password:        string
			state:           string
			time_created:    string
		}
		api_key: {
			inactive_status: string
			state:           string
			time_created:    string
			key_value!:      string
			user_id!:        string
			fingerprint:     string
		}
		auth_token: {
			time_created:   string
			time_expires:   string
			token:          string
			description!:   string
			user_id!:       string
			inactive_state: string
			state:          string
		}
		group: {
			freeform_tags?: [_]: string
			inactive_state:  string
			state:           string
			time_created:    string
			compartment_id?: string
			description!:    string
			name!:           string
			defined_tags?: [_]: string
		}
		identity_provider: {
			time_created: string
			defined_tags?: [_]: string
			redirect_url:        string
			name!:               string
			description!:        string
			metadata_url!:       string
			signing_certificate: string
			inactive_state:      string
			freeform_tags?: [_]: string
			state:           string
			product_type!:   string
			compartment_id!: string
			metadata!:       string
			freeform_attributes?: [_]: string
			protocol!: string
		}
		tag_default: {
			tag_definition_name: string
			tag_namespace_id:    string
			time_created:        string
			compartment_id!:     string
			tag_definition_id!:  string
			value!:              string
			is_required?:        bool
			state:               string
		}
	}
	arguments: {
		db_credential: {
			user_id!:     string
			description!: string
			password!:    string
		}
		domain: {
			admin_email?:        string
			admin_last_name?:    string
			is_hidden_on_login?: bool
			admin_user_name?:    string
			home_region!:        string
			description!:        string
			compartment_id!:     string
			state?:              string
			freeform_tags?: [_]: string
			is_primary_email_required?: bool
			is_notification_bypassed?:  bool
			display_name!:              string
			defined_tags?: [_]: string
			admin_first_name?: string
			license_type!:     string
		}
		domain_replication_to_region: {
			replica_region?: string
			domain_id!:      string
		}
		tag: {
			validator?: [...{
				values!: [...string]
				validator_type!: string
			}]
			description!: string
			defined_tags?: [_]: string
			is_cost_tracking?: bool
			name!:             string
			tag_namespace_id!: string
			freeform_tags?: [_]: string
			is_retired?: bool
		}
		tag_namespace: {
			compartment_id!: string
			description!:    string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_retired?: bool
		}
		authentication_policy: {
			network_policy?: [...{
				network_source_ids?: [...string]
			}]
			password_policy?: [...{
				is_special_characters_required?:   bool
				is_uppercase_characters_required?: bool
				is_username_containment_allowed?:  bool
				minimum_password_length?:          int
				is_lowercase_characters_required?: bool
				is_numeric_characters_required?:   bool
			}]
			compartment_id!: string
		}
		customer_secret_key: {
			user_id!:      string
			display_name!: string
		}
		idp_group_mapping: {
			identity_provider_id!: string
			idp_group_name!:       string
			group_id!:             string
		}
		import_standard_tags_management: {
			compartment_id!:              string
			standard_tag_namespace_name!: string
		}
		network_source: {
			description!: string
			name!:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			public_source_list?: [...string]
			services?: [...string]
			virtual_source_list?: [...{
				vcn_id!: string
				ip_ranges!: [...string]
			}]
			compartment_id!: string
		}
		policy: {
			freeform_tags?: [_]: string
			version_date?:   string
			description!:    string
			name!:           string
			compartment_id!: string
			defined_tags?: [_]: string
			statements!: [...string]
		}
		smtp_credential: {
			description!: string
			user_id!:     string
		}
		user: {
			name!:        string
			description!: string
			email?:       string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			compartment_id?: string
		}
		user_group_membership: {
			user_id!:        string
			compartment_id?: string
			group_id!:       string
		}
		user_capabilities_management: {
			can_use_customer_secret_keys?: bool
			can_use_smtp_credentials?:     bool
			user_id!:                      string
			can_use_api_keys?:             bool
			can_use_auth_tokens?:          bool
			can_use_console_password?:     bool
		}
		compartment: {
			compartment_id?: string
			enable_delete?:  bool
			freeform_tags?: [_]: string
			description!: string
			name!:        string
			defined_tags?: [_]: string
		}
		dynamic_group: {
			name!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			description!:   string
			matching_rule!: string
		}
		ui_password: user_id!: string
		api_key: {
			key_value!: string
			user_id!:   string
		}
		auth_token: {
			description!: string
			user_id!:     string
		}
		group: {
			name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id?: string
			description!:    string
		}
		identity_provider: {
			metadata!:     string
			product_type!: string
			description!:  string
			metadata_url!: string
			freeform_tags?: [_]: string
			protocol!: string
			defined_tags?: [_]: string
			freeform_attributes?: [_]: string
			compartment_id!: string
			name!:           string
		}
		tag_default: {
			value!:             string
			is_required?:       bool
			compartment_id!:    string
			tag_definition_id!: string
		}
	}
}
#data: {
	network_source: network_source_id!: string
	tag_defaults: {
		tag_definition_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		id?:             string
		state?:          string
	}
	tag_standard_tag_namespace_templates: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	user: user_id!: string
	availability_domain: {
		ad_number?:      int
		compartment_id!: string
		id?:             string
	}
	domain: domain_id!: string
	dynamic_groups: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
	}
	regions: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	ui_password: user_id!: string
	user_group_memberships: {
		group_id?: string
		user_id?:  string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	availability_domains: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	tag_standard_tag_namespace_template: {
		compartment_id!:              string
		standard_tag_namespace_name!: string
	}
	group: group_id!: string
	compartments: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		name?:                      string
		state?:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?: string
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
	iam_work_request: iam_work_request_id!: string
	iam_work_request_logs: {
		iam_work_request_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	identity_providers: {
		compartment_id!: string
		name?:           string
		protocol!:       string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	idp_group_mappings: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		identity_provider_id!: string
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
	authentication_policy: compartment_id!: string
	region_subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		tenancy_id!: string
	}
	cost_tracking_tags: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	tags: {
		tag_namespace_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		state?: string
	}
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
	auth_tokens: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
	db_credentials: {
		user_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:  string
		state?: string
	}
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
	tag_default: tag_default_id!: string
	allowed_domain_license_types: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		current_license_type_name?: string
	}
	domains: {
		type?:               string
		display_name?:       string
		is_hidden_on_login?: bool
		state?:              string
		name?:               string
		url?:                string
		home_region_url?:    string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		license_type?:   string
	}
	iam_work_request_errors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		iam_work_request_id!: string
	}
	iam_work_requests: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:      string
		resource_identifier?: string
	}
	identity_provider_groups: {
		identity_provider_id!: string
		name?:                 string
		state?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	smtp_credentials: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
	tag_namespaces: {
		include_subcompartments?: bool
		state?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	tenancy: tenancy_id!: string
	customer_secret_keys: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
	compartment: id!: string
	fault_domains: {
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
	}
	tag: {
		tag_namespace_id!: string
		tag_name!:         string
	}
	api_keys: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_id!: string
	}
}

