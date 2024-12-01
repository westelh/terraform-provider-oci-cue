package identity_domains

#resource: {
	attributes: {
		cloud_gate_server: {
			ssl!:          bool
			description?:  string
			display_name!: string
			schemas!: [...string]
			compartment_ocid:              string
			idcs_endpoint!:                string
			idcs_last_upgraded_in_release: string
			domain_ocid:                   string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			port!:                         int
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			is_opc_service: bool
			cloud_gate!: [...{
				ref:    string
				value!: string
			}]
			ocid?:              string
			host_name!:         string
			delete_in_progress: bool
			id:                 string
			idcs_prevented_operations: [...string]
			tenancy_ocid:    string
			nginx_settings?: string
			attributes?:     string
			authorization?:  string
			tags?: [...{
				key!:   string
				value!: string
			}]
		}
		setting: {
			company_names?: [...{
				locale!: string
				value!:  string
			}]
			tenant_custom_claims?: [...{
				expression!: bool
				mode!:       string
				name!:       string
				token_type!: string
				value!:      string
				scopes?: [...string]
				all_scopes!: bool
			}]
			diagnostic_record_for_search_identifies_returned_resources?: bool
			max_no_of_app_cmva_to_return?:                               int
			tags?: [...{
				key!:   string
				value!: string
			}]
			cloud_migration_custom_url?: string
			sub_mapping_attr?:           string
			preferred_language?:         string
			external_id?:                string
			default_login_texts: [...{
				locale!: string
				value!:  string
			}]
			delete_in_progress: bool
			re_auth_factor?: [...string]
			privacy_policy_url?: string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			compartment_ocid: string
			idcs_endpoint!:   string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			timezone?: string
			allowed_domains?: [...string]
			re_auth_when_changing_my_authentication_factors?: bool
			images?: [...{
				type!:    string
				value!:   string
				display?: string
			}]
			domain_ocid: string
			cloud_gate_cors_settings?: [...{
				cloud_gate_cors_exposed_headers?: [...string]
				cloud_gate_cors_max_age?:           int
				cloud_gate_cors_allow_null_origin?: bool
				cloud_gate_cors_allowed_origins?: [...string]
				cloud_gate_cors_enabled?: bool
			}]
			diagnostic_level?:           int
			custom_branding?:            bool
			signing_cert_public_access?: bool
			migration_status:            string
			diagnostic_tracing_upto:     string
			default_company_names: [...{
				value!:  string
				locale!: string
			}]
			setting_id!: string
			default_images: [...{
				type!:    string
				value!:   string
				display?: string
			}]
			allowed_forgot_password_flow_return_urls?: [...string]
			tenancy_ocid:                string
			locale?:                     string
			account_always_trust_scope?: bool
			idcs_prevented_operations: [...string]
			iam_upst_session_expiry?: int
			custom_css_location?:     string
			custom_html_location?:    string
			ocid?:                    string
			schemas!: [...string]
			service_admin_cannot_list_other_users?: bool
			is_hosted_page?:                        bool
			contact_emails?: [...string]
			allowed_notification_redirect_urls?: [...string]
			attributes?: string
			id?:         string
			login_texts?: [...{
				locale!: string
				value!:  string
			}]
			cloud_migration_url_enabled?: bool
			attribute_sets?: [...string]
			authorization?:                string
			on_premises_provisioning:      bool
			idcs_last_upgraded_in_release: string
			resource_type_schema_version?: string
			cloud_account_name:            string
			audit_event_retention_period?: int
			certificate_validation?: [...{
				ocsp_settings_responder_url_preferred?: bool
				crl_enabled?:                           bool
				ocsp_responder_url?:                    string
				ocsp_timeout_duration?:                 int
				crl_check_on_ocsp_failure_enabled?:     bool
				ocsp_enabled?:                          bool
				crl_refresh_interval?:                  int
				ocsp_unknown_response_status_allowed?:  bool
				crl_location?:                          string
				ocsp_signing_certificate_alias?:        string
			}]
			csr_access!:                           string
			prev_issuer?:                          string
			terms_of_use_url?:                     string
			custom_translation?:                   string
			max_no_of_app_role_members_to_return?: int
			default_trust_scope?:                  string
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			issuer?: string
			purge_configs?: [...{
				retention_period!: int
				resource_name!:    string
			}]
			enable_terms_of_use?: bool
		}
		smtp_credential: {
			id:          string
			attributes?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			attribute_sets?: [...string]
			idcs_endpoint!:   string
			authorization?:   string
			compartment_ocid: string
			user_name:        string
			description?:     string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			tenancy_ocid: string
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			ocid?: string
			user?: [...{
				ocid?:   string
				value?:  string
				display: string
				name:    string
				ref:     string
			}]
			password:           string
			status?:            string
			delete_in_progress: bool
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			domain_ocid:                   string
			resource_type_schema_version?: string
			expires_on?:                   string
		}
		auth_token: {
			idcs_last_upgraded_in_release: string
			attribute_sets?: [...string]
			compartment_ocid:              string
			id:                            string
			attributes?:                   string
			resource_type_schema_version?: string
			ocid?:                         string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			domain_ocid:  string
			tenancy_ocid: string
			schemas!: [...string]
			idcs_endpoint!: string
			description?:   string
			status?:        string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			expires_on?:        string
			delete_in_progress: bool
			token:              string
			idcs_prevented_operations: [...string]
			tags?: [...{
				value!: string
				key!:   string
			}]
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
			authorization?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
		}
		my_user_db_credential: {
			user?: [...{
				value!:  string
				ocid?:   string
				display: string
				name:    string
				ref:     string
			}]
			idcs_endpoint!: string
			domain_ocid:    string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_upgraded_in_release: string
			id:                            string
			description?:                  string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			idcs_prevented_operations: [...string]
			expired:        bool
			salt:           string
			mixed_salt:     string
			authorization?: string
			tenancy_ocid:   string
			schemas!: [...string]
			status?:                       string
			mixed_db_password:             string
			resource_type_schema_version?: string
			last_set_date:                 string
			db_password!:                  string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			name:               string
			delete_in_progress: bool
			expires_on?:        string
			ocid?:              string
			compartment_ocid:   string
		}
		notification_setting: {
			tags?: [...{
				key!:   string
				value!: string
			}]
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			external_id?:                           string
			resource_type_schema_version?:          string
			send_notifications_to_secondary_email?: bool
			tenancy_ocid:                           string
			test_mode_enabled?:                     bool
			from_email_address!: [...{
				display_name?:     string
				validation_status: string
				validate!:         string
				value!:            string
			}]
			delete_in_progress: bool
			domain_ocid:        string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_prevented_operations: [...string]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			schemas!: [...string]
			ocid?: string
			test_recipients?: [...string]
			notification_enabled!: bool
			event_settings!: [...{
				event_id!: string
				enabled?:  bool
			}]
			compartment_ocid:              string
			idcs_last_upgraded_in_release: string
			notification_setting_id!:      string
			attribute_sets?: [...string]
			attributes?:                                                                       string
			send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email?: bool
			idcs_endpoint!:                                                                    string
			authorization?:                                                                    string
			id:                                                                                string
		}
		authentication_factor_setting: {
			phone_call_enabled?:                bool
			authentication_factor_setting_id!:  string
			hide_backup_factor_enabled?:        bool
			attributes?:                        string
			security_questions_enabled!:        bool
			auto_enroll_email_factor_disabled?: bool
			totp_settings!: [...{
				jwt_validity_duration_in_secs!:       int
				time_step_in_secs!:                   int
				sms_passcode_length!:                 int
				key_refresh_interval_in_days!:        int
				time_step_tolerance!:                 int
				email_otp_validity_duration_in_mins!: int
				passcode_length!:                     int
				email_passcode_length!:               int
				hashing_algorithm!:                   string
				sms_otp_validity_duration_in_mins!:   int
			}]
			push_enabled!: bool
			urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings?: [...{
				domain_validation_level?:              int
				authenticator_selection_resident_key!: string
				exclude_credentials!:                  bool
				timeout!:                              int
				attestation!:                          string
				public_key_types!: [...string]
				authenticator_selection_attachment!:           string
				authenticator_selection_require_resident_key!: bool
				authenticator_selection_user_verification!:    string
			}]
			attribute_sets?: [...string]
			email_settings?: [...{
				email_link_enabled!:    bool
				email_link_custom_url?: string
			}]
			id: string
			urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings?: [...{
				duo_security_settings?: [...{
					secret_key!: string, user_mapping_attribute!: string, attestation_key?: string, api_hostname!: string, integration_key!: string
				}]
			}]
			bypass_code_enabled!: bool
			sms_enabled!:         bool
			totp_enabled!:        bool
			user_enrollment_disabled_factors?: [...string]
			client_app_settings!: [...{
				policy_update_freq_in_days!:          int
				initial_lockout_period_in_secs!:      int
				min_pin_length!:                      int
				max_failures_before_warning!:         int
				request_signing_algo!:                string
				device_protection_policy!:            string
				unlock_app_for_each_request_enabled!: bool
				unlock_on_app_start_enabled!:         bool
				max_failures_before_lockout!:         int
				lockout_escalation_pattern!:          string
				unlock_on_app_foreground_enabled!:    bool
				key_pair_length!:                     int
				max_lockout_interval_in_secs!:        int
				unlock_app_interval_in_secs!:         int
				shared_secret_encoding!:              string
			}]
			email_enabled?: bool
			bypass_code_settings!: [...{
				help_desk_generation_enabled!:    bool
				help_desk_max_usage!:             int
				length!:                          int
				max_active!:                      int
				self_service_generation_enabled!: bool
				help_desk_code_expiry_in_mins!:   int
			}]
			idcs_prevented_operations: [...string]
			compliance_policy!: [...{
				action!: string
				name!:   string
				value!:  string
			}]
			delete_in_progress: bool
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			resource_type_schema_version?: string
			identity_store_settings?: [...{
				mobile_number_enabled?:        bool
				mobile_number_update_enabled?: bool
			}]
			idcs_endpoint!:              string
			authorization?:              string
			compartment_ocid:            string
			fido_authenticator_enabled?: bool
			yubico_otp_enabled?:         bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			endpoint_restrictions!: [...{
				trusted_endpoints_enabled!:           bool
				max_endpoint_trust_duration_in_days!: int
				max_enrolled_devices!:                int
				max_incorrect_attempts!:              int
				max_trusted_endpoints!:               int
			}]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			mfa_enabled_category:          string
			tenancy_ocid:                  string
			third_party_factor?: [...{
				duo_security!: bool
			}]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			domain_ocid:          string
			mfa_enrollment_type!: string
			notification_settings!: [...{
				pull_enabled!: bool
			}]
			ocid?: string
		}
		approval_workflow_assignment: {
			schemas!: [...string]
			compartment_ocid: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			assignment_type!: string
			idcs_prevented_operations: [...string]
			delete_in_progress: bool
			assigned_to!: [...{
				ocid?:       string
				description: string
				display:     string
				type!:       string
				value!:      string
			}]
			idcs_endpoint!:                string
			id:                            string
			domain_ocid:                   string
			tenancy_ocid:                  string
			resource_type_schema_version?: string
			attributes?:                   string
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_last_upgraded_in_release: string
			ocid?:                         string
			attribute_sets?: [...string]
			authorization?: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			approval_workflow!: [...{
				type!:   string
				value!:  string
				ocid?:   string
				display: string
				ref:     string
			}]
		}
		approval_workflow_step: {
			minimum_approvals?: int
			domain_ocid:        string
			compartment_ocid:   string
			order!:             int
			delete_in_progress: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			id: string
			schemas!: [...string]
			resource_type_schema_version?: string
			approvers_expressions?: [...string]
			ocid?: string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			idcs_prevented_operations: [...string]
			attributes?:    string
			authorization?: string
			type!:          string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			idcs_last_upgraded_in_release: string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			idcs_endpoint!: string
			tenancy_ocid:   string
			approvers?: [...{
				ocid?:   string
				display: string
				ref:     string
				type!:   string
				value!:  string
			}]
			attribute_sets?: [...string]
		}
		my_support_account: {
			idcs_endpoint!:                string
			idcs_last_upgraded_in_release: string
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			tenancy_ocid: string
			token!:       string
			idcs_prevented_operations: [...string]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			schemas!: [...string]
			ocid?:                       string
			user_id:                     string
			compartment_ocid:            string
			domain_ocid:                 string
			id:                          string
			authorization?:              string
			my_support_account_provider: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			resource_type_schema_version?: string
			delete_in_progress:            bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
		}
		oauth2client_credential: {
			idcs_endpoint!: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			schemas!: [...string]
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?: string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			compartment_ocid:              string
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			idcs_last_upgraded_in_release: string
			description?:                  string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			secret:             string
			domain_ocid:        string
			authorization?:     string
			name!:              string
			delete_in_progress: bool
			is_reset_secret?:   bool
			idcs_prevented_operations: [...string]
			scopes!: [...{
				scope!:    string
				audience!: string
			}]
			expires_on?: string
			attribute_sets?: [...string]
			status?:      string
			id:           string
			attributes?:  string
			tenancy_ocid: string
		}
		oauth_partner_certificate: {
			external_id?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?:         string
			x509base64certificate?: string
			idcs_prevented_operations: [...string]
			cert_start_date:               string
			domain_ocid:                   string
			tenancy_ocid:                  string
			key_store_password?:           string
			resource_type_schema_version?: string
			map?:                          string
			key_store_id?:                 string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			ocid?:              string
			delete_in_progress: bool
			idcs_endpoint!:     string
			key_store_name?:    string
			compartment_ocid:   string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			cert_end_date: string
			id:            string
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			sha1thumbprint:                string
			certificate_alias!:            string
			sha256thumbprint:              string
		}
		rule: {
			policy_type!: [...{
				value!: string
				ref:    string
			}]
			return!: [...{
				name!:          string
				value!:         string
				return_groovy?: string
			}]
			name!:       string
			domain_ocid: string
			id:          string
			condition_group?: [...{
				value?: string
				ref:    string
				name:   string
				type!:  string
			}]
			idcs_prevented_operations: [...string]
			description?: string
			attribute_sets?: [...string]
			ocid?:                         string
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			tenancy_ocid: string
			attributes?:  string
			external_id?: string
			locked?:      bool
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			rule_groovy?: string
			schemas!: [...string]
			active?:    bool
			condition!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			compartment_ocid:              string
			delete_in_progress:            bool
			authorization?:                string
			idcs_last_upgraded_in_release: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
		}
		user_db_credential: {
			mixed_db_password: string
			db_password!:      string
			compartment_ocid:  string
			id:                string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			status?:      string
			expires_on?:  string
			tenancy_ocid: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			mixed_salt:                    string
			resource_type_schema_version?: string
			expired:                       bool
			attribute_sets?: [...string]
			salt:               string
			last_set_date:      string
			idcs_endpoint!:     string
			delete_in_progress: bool
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			user?: [...{
				ocid?:   string
				display: string
				name:    string
				ref:     string
				value!:  string
			}]
			name: string
			idcs_prevented_operations: [...string]
			authorization?: string
			domain_ocid:    string
			attributes?:    string
			description?:   string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			idcs_last_upgraded_in_release: string
			schemas!: [...string]
		}
		app_role: {
			idcs_last_upgraded_in_release: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			available_to_groups?: bool
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			available_to_clients?: bool
			available_to_users?:   bool
			ocid?:                 string
			id:                    string
			schemas!: [...string]
			app!: [...{
				value!:                      string
				display:                     string
				name:                        string
				ref:                         string
				service_instance_identifier: string
			}]
			idcs_endpoint!:                string
			localized_display_name:        string
			legacy_group_name?:            string
			tenancy_ocid:                  string
			limited_to_one_or_more_groups: bool
			display_name!:                 string
			resource_type_schema_version?: string
			authorization?:                string
			domain_ocid:                   string
			members: [...{
				display?: string
				ref:      string
				type!:    string
				value!:   string
			}]
			unique_name: string
			idcs_prevented_operations: [...string]
			public?: bool
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			delete_in_progress: bool
			compartment_ocid:   string
			admin_role?:        bool
			description?:       string
			attributes?:        string
			attribute_sets?: [...string]
		}
		identity_provider: {
			last_notification_sent_time:              string
			encryption_certificate?:                  string
			domain_ocid:                              string
			jit_user_prov_group_saml_attribute_name?: string
			partner_name!:                            string
			idcs_endpoint!:                           string
			jit_user_prov_group_assignment_method?:   string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			correlation_policy?: [...{
				display?: string
				ref:      string
				type!:    string
				value!:   string
			}]
			attributes?: string
			requested_authentication_context?: [...string]
			assertion_attribute?:                             string
			authorization?:                                   string
			logout_binding?:                                  string
			partner_provider_id?:                             string
			requires_encrypted_assertion?:                    bool
			compartment_ocid:                                 string
			name_id_format?:                                  string
			succinct_id?:                                     string
			user_mapping_store_attribute?:                    string
			jit_user_prov_enabled?:                           bool
			service_instance_identifier?:                     string
			icon_url?:                                        string
			jit_user_prov_attribute_update_enabled?:          bool
			jit_user_prov_create_user_enabled?:               bool
			authn_request_binding?:                           string
			logout_request_url?:                              string
			metadata?:                                        string
			enabled!:                                         bool
			jit_user_prov_group_assertion_attribute_enabled?: bool
			jit_user_prov_attributes?: [...{
				value!: string
				ref:    string
			}]
			description?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			attribute_sets?: [...string]
			tenancy_ocid:                                 string
			id:                                           string
			type?:                                        string
			jit_user_prov_ignore_error_on_absent_groups?: bool
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			require_force_authn?:                     bool
			delete_in_progress:                       bool
			logout_response_url?:                     string
			tenant_provider_id:                       string
			jit_user_prov_group_static_list_enabled?: bool
			user_mapping_method?:                     string
			include_signing_cert_in_signature?:       bool
			shown_on_login_page?:                     bool
			tags?: [...{
				value!: string
				key!:   string
			}]
			signing_certificate?:          string
			idp_sso_url?:                  string
			ocid?:                         string
			idcs_last_upgraded_in_release: string
			saml_ho_krequired?:            bool
			jit_user_prov_assigned_groups?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider?: [...{
				discovery_url?:                      string
				consumer_secret!:                    string
				clock_skew_in_seconds?:              int
				redirect_url?:                       string
				registration_enabled!:               bool
				jit_prov_group_static_list_enabled?: bool
				jit_prov_assigned_groups?: [...{
					value!:   string
					display?: string
					ref:      string
				}]
				service_provider_name!: string
				admin_scope?: [...string]
				client_credential_in_payload?: bool
				profile_url?:                  string
				access_token_url?:             string
				authz_url?:                    string
				auto_redirect_enabled?:        bool
				account_linking_enabled!:      bool
				scope?: [...string]
				status?:                          string
				social_jit_provisioning_enabled?: bool
				consumer_key!:                    string
				id_attribute?:                    string
			}]
			idcs_prevented_operations: [...string]
			resource_type_schema_version?: string
			external_id?:                  string
			signature_hash_algorithm?:     string
			jit_user_prov_group_mappings?: [...{
				idp_group!: string
				value!:     string
				ref:        string
			}]
			jit_user_prov_group_mapping_mode?: string
			schemas!: [...string]
			urnietfparamsscimschemasoracleidcsextensionx509identity_provider?: [...{
				crl_check_on_ocsp_failure_enabled?: bool
				crl_enabled?:                       bool
				crl_location?:                      string
				eku_validation_enabled?:            bool
				signing_certificate_chain!: [...string]
				ocsp_responder_url?:                 string
				cert_match_attribute!:               string
				ocsp_revalidate_time?:               int
				ocsp_server_name?:                   string
				user_match_attribute!:               string
				other_cert_match_attribute?:         string
				ocsp_allow_unknown_response_status?: bool
				eku_values?: [...string]
				ocsp_enabled?: bool
				ocsp_trust_cert_chain?: [...string]
				ocsp_enable_signed_response?: bool
				crl_reload_duration?:         int
			}]
			logout_enabled?: bool
		}
		my_api_key: {
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			id:                            string
			resource_type_schema_version?: string
			description?:                  string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_endpoint!:                string
			delete_in_progress:            bool
			tenancy_ocid:                  string
			authorization?:                string
			ocid?:                         string
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			key!: string
			schemas!: [...string]
			fingerprint: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			compartment_ocid: string
			domain_ocid:      string
			user?: [...{
				value?:  string
				display: string
				name:    string
				ref:     string
				ocid?:   string
			}]
		}
		my_auth_token: {
			idcs_endpoint!: string
			idcs_prevented_operations: [...string]
			delete_in_progress: bool
			id:                 string
			status?:            string
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			schemas!: [...string]
			ocid?: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			description?:                  string
			resource_type_schema_version?: string
			idcs_last_upgraded_in_release: string
			expires_on?:                   string
			domain_ocid:                   string
			authorization?:                string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			tenancy_ocid: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			compartment_ocid: string
		}
		my_customer_secret_key: {
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			description?:       string
			delete_in_progress: bool
			access_key:         string
			expires_on?:        string
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			tenancy_ocid:   string
			authorization?: string
			id:             string
			tags?: [...{
				key!:   string
				value!: string
			}]
			status?:                       string
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			resource_type_schema_version?: string
			compartment_ocid:              string
			display_name?:                 string
			domain_ocid:                   string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_endpoint!: string
			schemas!: [...string]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			ocid?: string
		}
		policy: {
			authorization?:                string
			resource_type_schema_version?: string
			attributes?:                   string
			description?:                  string
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			name!:   string
			active?: bool
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			external_id?:   string
			policy_groovy?: string
			idcs_endpoint!: string
			attribute_sets?: [...string]
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			delete_in_progress: bool
			compartment_ocid:   string
			ocid?:              string
			domain_ocid:        string
			policy_type!: [...{
				value!: string
				ref:    string
			}]
			id: string
			idcs_prevented_operations: [...string]
			schemas!: [...string]
			rules?: [...{
				value!:    string
				name:      string
				ref:       string
				sequence!: int
			}]
		}
		social_identity_provider: {
			tags?: [...{
				key!:   string
				value!: string
			}]
			delete_in_progress:               bool
			social_jit_provisioning_enabled?: bool
			show_on_login!:                   bool
			jit_prov_assigned_groups?: [...{
				value!:  string
				ref:     string
				display: string
			}]
			profile_url?:                  string
			authorization?:                string
			authz_url?:                    string
			discovery_url?:                string
			idcs_last_upgraded_in_release: string
			access_token_url?:             string
			domain_ocid:                   string
			ocid?:                         string
			resource_type_schema_version?: string
			client_credential_in_payload?: bool
			redirect_url?:                 string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			idcs_endpoint!:         string
			refresh_token_url?:     string
			registration_enabled!:  bool
			icon_url?:              string
			status?:                string
			enabled!:               bool
			clock_skew_in_seconds?: int
			compartment_ocid:       string
			idcs_prevented_operations: [...string]
			consumer_key!: string
			description?:  string
			scope?: [...string]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			admin_scope?: [...string]
			name!:                    string
			account_linking_enabled!: bool
			service_provider_name!:   string
			auto_redirect_enabled?:   bool
			tenancy_ocid:             string
			schemas!: [...string]
			relay_idp_param_mappings?: [...{
				relay_param_key!:   string
				relay_param_value?: string
			}]
			consumer_secret!:                    string
			jit_prov_group_static_list_enabled?: bool
			id_attribute?:                       string
		}
		condition: {
			ocid?:       string
			attributes?: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			attribute_name!:               string
			idcs_endpoint!:                string
			id:                            string
			external_id?:                  string
			compartment_ocid:              string
			domain_ocid:                   string
			resource_type_schema_version?: string
			description?:                  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_prevented_operations: [...string]
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			name!:                         string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			schemas!: [...string]
			attribute_sets?: [...string]
			authorization?:   string
			attribute_value!: string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			tenancy_ocid:           string
			operator!:              string
			evaluate_condition_if?: string
		}
		identity_propagation_trust: {
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_prevented_operations: [...string]
			subject_mapping_attribute?: string
			domain_ocid:                string
			tags?: [...{
				key!:   string
				value!: string
			}]
			account_id?:                   string
			idcs_last_upgraded_in_release: string
			id:                            string
			name!:                         string
			active?:                       bool
			tenancy_ocid:                  string
			delete_in_progress:            bool
			oauth_clients?: [...string]
			resource_type_schema_version?: string
			public_key_endpoint?:          string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			subject_claim_name?: string
			attributes?:         string
			keytab?: [...{
				secret_ocid!:    string
				secret_version?: int
			}]
			type!: string
			schemas!: [...string]
			public_certificate?:  string
			client_claim_name?:   string
			clock_skew_seconds?:  int
			allow_impersonation?: bool
			idcs_endpoint!:       string
			authorization?:       string
			attribute_sets?: [...string]
			compartment_ocid: string
			impersonation_service_users?: [...{
				value!: string
				ocid?:  string
				ref:    string
				rule!:  string
			}]
			ocid?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			subject_type?: string
			issuer!:       string
			description?:  string
			client_claim_values?: [...string]
		}
		api_key: {
			idcs_prevented_operations: [...string]
			idcs_endpoint!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			fingerprint: string
			id:          string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			compartment_ocid: string
			description?:     string
			authorization?:   string
			attribute_sets?: [...string]
			key!:                          string
			idcs_last_upgraded_in_release: string
			domain_ocid:                   string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			ocid?:              string
			delete_in_progress: bool
			tenancy_ocid:       string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			schemas!: [...string]
			attributes?: string
			user?: [...{
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
				display: string
			}]
		}
		user: {
			id: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			password?: string
			urnietfparamsscimschemasoracleidcsextensionuser_state_user?: [...{
				recovery_locked?: [...{
					lock_date?: string
					on?:        bool
				}]
				previous_successful_login_date: string
				max_concurrent_sessions?:       int
				last_failed_login_date:         string
				recovery_enroll_attempts:       int
				login_attempts:                 int
				locked?: [...{
					expired?:   bool
					lock_date?: string
					on?:        bool
					reason?:    int
				}]
				last_successful_login_date: string
				recovery_attempts:          int
			}]
			urnietfparamsscimschemasoracleidcsextensionsocial_account_user?: [...{
				social_accounts?: [...{
					display?: string, ref: string, value!: string
				}]
			}]
			attribute_sets?: [...string]
			title?:       string
			tenancy_ocid: string
			ims?: [...{
				primary?: bool
				type!:    string
				value!:   string
				display?: string
			}]
			urnietfparamsscimschemasoracleidcsextensiondb_credentials_user?: [...{
				db_login_attempts: int
				db_user_name?:     string
			}]
			user_name!: string
			urnietfparamsscimschemasextensionenterprise20user?: [...{
				manager?: [...{
					value?:       string
					display_name: string
					ref:          string
				}]
				organization?:    string
				cost_center?:     string
				department?:      string
				division?:        string
				employee_number?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user?: [...{
				sec_questions?: [...{
					answer!: string, value!: string, hint_text?: string, ref: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensioncapabilities_user?: [...{
				can_use_auth_tokens?:              bool
				can_use_console?:                  bool
				can_use_console_password?:         bool
				can_use_customer_secret_keys?:     bool
				can_use_db_credentials?:           bool
				can_use_oauth2client_credentials?: bool
				can_use_smtp_credentials?:         bool
				can_use_api_keys?:                 bool
			}]
			display_name?: string
			external_id?:  string
			urnietfparamsscimschemasoracleidcsextensionuser_credentials_user: [...{
				smtp_credentials?: [...{
					ocid?:  string
					value?: string
					ref:    string
				}]
				api_keys?: [...{
					key?:   string
					ocid?:  string
					value?: string
					ref:    string
				}]
				auth_tokens?: [...{
					ref:    string
					ocid?:  string
					value?: string
				}]
				customer_secret_keys?: [...{
					ocid?:  string
					value?: string
					ref:    string
				}]
				db_credentials?: [...{
					ocid?:  string
					value?: string
					ref:    string
				}]
				o_auth2client_credentials?: [...{
					ocid?:  string
					value?: string
					ref:    string
				}]
			}]
			idcs_prevented_operations: [...string]
			attributes?:  string
			description?: string
			urnietfparamsscimschemasoracleidcsextensionposix_user?: [...{
				gid_number?:     int
				home_directory?: string
				login_shell?:    string
				uid_number?:     int
				gecos?:          string
			}]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			timezone?:    string
			profile_url?: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			urnietfparamsscimschemasoracleidcsextensionadaptive_user?: [...{
				risk_level?: string
				risk_scores?: [...{
					source?:                string
					status?:                string
					ref:                    string
					last_update_timestamp!: string
					risk_level!:            string
					score!:                 int
					value!:                 string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensionself_registration_user?: [...{
				self_registration_profile!: [...{
					value!:   string
					display?: string
					ref:      string
				}]
				consent_granted?: bool
				user_token?:      string
			}]
			user_type?: string
			roles?: [...{
				primary?: bool
				type!:    string
				value!:   string
				display?: string
			}]
			idcs_last_upgraded_in_release: string
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				tag_slug: string
			}]
			delete_in_progress: bool
			force_delete?:      bool
			urnietfparamsscimschemasoracleidcsextensionterms_of_use_user?: [...{
				terms_of_use_consents?: [...{
					value!: string, ref: string
				}]
			}]
			active?: bool
			name?: [...{
				honorific_prefix?: string
				honorific_suffix?: string
				middle_name?:      string
				family_name?:      string
				formatted?:        string
				given_name?:       string
			}]
			phone_numbers?: [...{
				display:  string
				verified: bool
				type!:    string
				value!:   string
				primary?: bool
			}]
			emails?: [...{
				value!:                    string
				primary?:                  bool
				secondary?:                bool
				verified?:                 bool
				pending_verification_data: string
				type!:                     string
			}]
			locale?:     string
			domain_ocid: string
			x509certificates?: [...{
				primary?: bool
				type?:    string
				value!:   string
				display?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionpasswordless_user?: [...{
				factor_method?: string
				factor_type?:   string
				factor_identifier?: [...{
					value!:   string
					display?: string
					ref:      string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionpassword_state_user: [...{
				expired?:                         bool
				last_failed_validation_date?:     string
				last_successful_set_date?:        string
				last_successful_validation_date?: string
				must_change?:                     bool
				applicable_password_policy?: [...{
					priority?: int
					ref:       string
					value!:    string
					display?:  string
				}]
				cant_change?: bool
				cant_expire?: bool
			}]
			schemas!: [...string]
			urnietfparamsscimschemasoracleidcsextensionuser_user?: [...{
				user_provider?: string
				idcs_app_roles_limited_to_groups: [...{
					value!:            string
					display?:          string
					ocid?:             string
					ref:               string
					idcs_app_role_id!: string
				}]
				is_authentication_delegated?:    bool
				notification_email_template_id?: string
				is_account_recovery_enrolled:    bool
				do_not_show_getting_started?:    bool
				synced_from_app?: [...{
					type!:    string
					value!:   string
					display?: string
					ref:      string
				}]
				account_recovery_required?: bool
				delegated_authentication_target_app?: [...{
					ref:      string
					type!:    string
					value!:   string
					display?: string
				}]
				grants: [...{
					app_id?:          string
					grant_mechanism?: string
					grantor_id?:      string
					value?:           string
					ref:              string
				}]
				bypass_notification?: bool
				is_federated_user?:   bool
				status:               string
				user_token: [...{
					value?: string
					ref:    string
				}]
				user_flow_controlled_by_external_client?: bool
				is_group_membership_normalized?:          bool
				creation_mechanism?:                      string
				service_user?:                            bool
				accounts: [...{
					value?:  string
					ref:     string
					active?: bool
					app_id?: string
					name?:   string
				}]
				app_roles: [...{
					app_name?:          string
					display?:           string
					legacy_group_name?: string
					type?:              string
					ref:                string
					value!:             string
					admin_role?:        bool
					app_id?:            string
				}]
				support_accounts: [...{
					ocid?:          string
					user_id?:       string
					value?:         string
					ref:            string
					user_provider?: string
				}]
				applicable_authentication_target_app: [...{
					target_request_timeout?: int
					value?:                  string
					ref:                     string
					type!:                   string
					display?:                string
				}]
				is_group_membership_synced_to_users_groups?: bool
				group_membership_last_modified:              string
				preferred_ui_landing_page?:                  string
			}]
			compartment_ocid:    string
			preferred_language?: string
			addresses?: [...{
				region?:         string
				street_address?: string
				type!:           string
				country?:        string
				formatted?:      string
				locality?:       string
				postal_code?:    string
				primary?:        bool
			}]
			urnietfparamsscimschemasoracleidcsextensiondb_user_user: [...{
				db_global_roles?: [...string]
				domain_level_schema?:   string
				instance_level_schema?: string
				is_db_user?:            bool
				password_verifiers?: [...{
					type!:  string
					value!: string
				}]
			}]
			entitlements?: [...{
				value!:   string
				display?: string
				primary?: bool
				type!:    string
			}]
			groups: [...{
				ref:                 string
				ocid?:               string
				non_unique_display?: string
				value!:              string
				date_added?:         string
				external_id?:        string
				display?:            string
				membership_ocid?:    string
				type?:               string
			}]
			nick_name?:     string
			idcs_endpoint!: string
			urnietfparamsscimschemasoracleidcsextensionsff_user?: [...{
				sff_auth_keys?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionkerberos_user_user?: [...{
				realm_users?: [...{
					principal_name?: string, realm_name?: string, ref: string, value!: string
				}]
			}]
			authorization?: string
			urnietfparamsscimschemasoracleidcsextensionmfa_user?: [...{
				preferred_authentication_factor?: string
				preferred_authentication_method?: string
				mfa_enabled_on?:                  string
				mfa_ignored_apps?: [...string]
				bypass_codes?: [...{
					value!: string
					ref:    string
				}]
				mfa_status?: string
				devices?: [...{
					status?:                  string
					ref:                      string
					authentication_method?:   string
					display?:                 string
					last_sync_time?:          string
					value!:                   string
					third_party_vendor_name?: string
					factor_type?:             string
					factor_status?:           string
				}]
				trusted_user_agents?: [...{
					ref:      string
					value!:   string
					display?: string
				}]
				login_attempts?:               int
				preferred_third_party_vendor?: string
				preferred_device?: [...{
					value!:   string
					display?: string
					ref:      string
				}]
			}]
			ocid?:                         string
			resource_type_schema_version?: string
			photos?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
		}
		security_question: {
			ocid?:   string
			active!: bool
			question_text!: [...{
				default?: bool
				locale!:  string
				value!:   string
			}]
			tenancy_ocid:   string
			idcs_endpoint!: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			resource_type_schema_version?: string
			schemas!: [...string]
			type!: string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			attributes?: string
			idcs_prevented_operations: [...string]
			delete_in_progress: bool
			domain_ocid:        string
			authorization?:     string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_upgraded_in_release: string
			attribute_sets?: [...string]
			external_id?:     string
			compartment_ocid: string
			id:               string
		}
		app: {
			attribute_sets?: [...string]
			is_login_target?: bool
			urnietfparamsscimschemasoracleidcsextensiondbcs_app?: [...{
				domain_name?: string
				domain_app?: [...{
					ref:     string
					value!:  string
					display: string
				}]
			}]
			name?:                         string
			resource_type_schema_version?: string
			trust_scope?:                  string
			admin_roles: [...{
				value!:       string
				description?: string
				display?:     string
				ref:          string
			}]
			radius_policy?: [...{
				value!: string
				ref:    string
			}]
			as_opc_service?: [...{
				value!: string
				ref:    string
			}]
			bypass_consent?:   bool
			is_unmanaged_app?: bool
			cloud_control_properties: [...{
				name!: string
				values!: [...string]
			}]
			disable_kmsi_token_authentication?: bool
			id_token_enc_algo?:                 string
			idp_policy?: [...{
				value!: string
				ref:    string
			}]
			delete_in_progress:         bool
			is_multicloud_service_app?: bool
			is_obligation_capable?:     bool
			apps_network_perimeters?: [...{
				value!: string
				ref:    string
			}]
			logout_uri?:         string
			privacy_policy_url?: string
			allowed_grants?: [...string]
			attributes?: string
			allowed_scopes?: [...{
				id_of_defining_app: string
				read_only:          bool
				fqs!:               string
			}]
			show_in_my_apps?: bool
			compartment_ocid: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			is_enterprise_app?: bool
			urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app?: [...{
				web_tier_policy_az_control?: string
				web_tier_policy_json?:       string
				resource_ref?:               bool
			}]
			display_name!: string
			allowed_operations?: [...string]
			client_type?:              string
			tenancy_ocid:              string
			is_saml_service_provider?: bool
			schemas!: [...string]
			secondary_audiences?: [...string]
			is_database_service: bool
			identity_providers?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			granted_app_roles: [...{
				read_only?:         bool
				type?:              string
				value!:             string
				admin_role?:        bool
				app_id?:            string
				app_name?:          string
				display?:           string
				legacy_group_name?: string
				ref:                string
			}]
			signon_policy?: [...{
				value!: string
				ref:    string
			}]
			home_page_url?: string
			idcs_endpoint!: string
			app_signon_policy?: [...{
				value!: string
				ref:    string
			}]
			based_on_template!: [...{
				value!:         string
				well_known_id?: string
				last_modified:  string
				ref:            string
			}]
			is_form_fill?: bool
			certificates?: [...{
				kid:                   string
				sha1thumbprint:        string
				x509base64certificate: string
				x5t:                   string
				cert_alias!:           string
			}]
			is_web_tier_policy?: bool
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_app?: [...{
				configuration?:    string
				form_type?:        string
				form_cred_method?: string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				sync_from_template:                bool
				form_credential_sharing_group_id?: string
				user_name_form_template?:          string
				reveal_password_on_form?:          bool
				user_name_form_expression?:        string
			}]
			client_secret: string
			urnietfparamsscimschemasoracleidcsextensionenterprise_app_app?: [...{
				allow_authz_decision_ttl?: int
				allow_authz_policy?: [...{
					value!: string
					ref:    string
				}]
				app_resources?: [...{
					ref:    string
					value!: string
				}]
				deny_authz_decision_ttl?: int
				deny_authz_policy?: [...{
					value!: string
					ref:    string
				}]
			}]
			product_logo_url?: string
			authorization?:    string
			alias_apps?: [...{
				ref:         string
				value!:      string
				description: string
				display:     string
			}]
			id:                   string
			hashed_client_secret: string
			access_token_expiry?: int
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template?: [...{
				form_cred_method?: string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				form_credential_sharing_group_id?: string
				reveal_password_on_form?:          bool
				user_name_form_template?:          string
				form_type?:                        string
				sync_from_template?:               bool
				user_name_form_expression?:        string
				configuration?:                    string
			}]
			is_opc_service: bool
			urnietfparamsscimschemasoracleidcsextensionrequestable_app?: [...{
				requestable?: bool
			}]
			is_alias_app?:        bool
			infrastructure:       bool
			callback_service_url: string
			urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app?: [...{
				max_ticket_life?: int
				realm_name?:      string
				supported_encryption_salt_types?: [...string]
				ticket_flags?:                 int
				default_encryption_salt_type?: string
				master_key?:                   string
				max_renewable_age?:            int
			}]
			error_page_url?: string
			urnietfparamsscimschemasoracleidcsextensionmanagedapp_app?: [...{
				identity_bridges: [...{
					ref:    string
					name?:  string
					value?: string
				}]
				is_authoritative?: bool
				connector_bundle: [...{
					well_known_id?: string
					ref:            string
					type!:          string
					value!:         string
					display?:       string
				}]
				object_classes: [...{
					type!:                    string
					value!:                   string
					display?:                 string
					is_account_object_class?: bool
					resource_type?:           string
					ref:                      string
				}]
				admin_consent_granted?:                  bool
				enable_auth_sync_new_user_notification?: bool
				sync_config_last_modified:               string
				is_on_premise_app:                       bool
				three_legged_oauth_credential?: [...{
					access_token?:        string
					access_token_expiry?: string
					refresh_token?:       string
				}]
				can_be_authoritative: bool
				flat_file_connector_bundle?: [...{
					well_known_id?: string
					ref:            string
					value!:         string
					display?:       string
				}]
				is_schema_discovery_supported:            bool
				is_three_legged_oauth_enabled:            bool
				is_schema_customization_supported:        bool
				enable_sync_summary_report_notification?: bool
				bundle_pool_configuration?: [...{
					min_idle?:                       int
					max_idle?:                       int
					max_objects?:                    int
					max_wait?:                       int
					min_evictable_idle_time_millis?: int
				}]
				bundle_configuration_properties?: [...{
					name!:         string
					required!:     bool
					confidential?: bool
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
					icf_type!: string
				}]
				flat_file_bundle_configuration_properties?: [...{
					icf_type!:     string
					name!:         string
					required!:     bool
					confidential?: bool
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
				}]
				account_form_visible:             bool
				is_directory:                     bool
				enable_sync?:                     bool
				is_two_legged_oauth_enabled:      bool
				three_legged_oauth_provider_name: string
				connected?:                       bool
			}]
			linking_callback_url?: string
			is_radius_app?:        bool
			user_roles: [...{
				value!:       string
				description?: string
				display?:     string
				ref:          string
			}]
			landing_page_url?: string
			saml_service_provider?: [...{
				value!: string
				ref:    string
			}]
			terms_of_service_url?: string
			service_type_urn?:     string
			attr_rendering_metadata?: [...{
				section?:    string
				visible?:    bool
				name!:       string
				label?:      string
				min_size?:   int
				widget?:     string
				read_only?:  bool
				order?:      int
				datatype?:   string
				helptext?:   string
				regexp?:     string
				max_length?: int
				max_size?:   int
				required?:   bool
				min_length?: int
			}]
			client_ip_checking?:           string
			idcs_last_upgraded_in_release: string
			allowed_tags?: [...{
				key!:      string
				value!:    string
				read_only: bool
			}]
			accounts: [...{
				active?:   bool
				name?:     string
				owner_id?: string
				value?:    string
				ref:       string
			}]
			description?: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			post_logout_redirect_uris?: [...string]
			allow_offline?: bool
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				tag_slug: string
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
			}]
			redirect_uris?: [...string]
			idcs_prevented_operations: [...string]
			grants: [...{
				value?:           string
				ref:              string
				grant_mechanism?: string
				grantee_id?:      string
				grantee_type?:    string
			}]
			service_params?: [...{
				name!:  string
				value?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionradius_app_app?: [...{
				port!:                               string
				response_format_delimiter?:          string
				radius_vendor_specific_id?:          string
				password_and_otp_together?:          bool
				end_user_ip_attribute?:              string
				client_ip!:                          string
				group_name_format?:                  string
				response_format?:                    string
				country_code_response_attribute_id?: string
				capture_client_ip?:                  bool
				secret_key!:                         string
				group_membership_radius_attribute?:  string
				type_of_radius_app?:                 string
				group_membership_to_return?: [...{
					display: string
					ref:     string
					value!:  string
				}]
				include_group_in_response!: bool
			}]
			is_kerberos_realm?:       bool
			app_icon?:                string
			all_url_schemes_allowed?: bool
			meter_as_opc_service:     bool
			login_mechanism?:         string
			is_oauth_resource?:       bool
			contact_email_address?:   string
			active?:                  bool
			icon?:                    string
			is_managed_app:           bool
			trust_policies?: [...{
				value!: string
				ref:    string
			}]
			login_page_url?:       string
			allow_access_control?: bool
			logout_page_url?:      string
			ready_to_upgrade:      bool
			migrated:              bool
			refresh_token_expiry?: int
			scopes?: [...{
				read_only:         bool
				value!:            string
				description?:      string
				display_name?:     string
				requires_consent?: bool
				fqs:               string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app?: [...{
				encryption_algorithm?:              string
				logout_binding?:                    string
				logout_response_url?:               string
				assertion_consumer_url?:            string
				succinct_id?:                       string
				signature_hash_algorithm?:          string
				include_signing_cert_in_signature?: bool
				tenant_provider_id:                 string
				federation_protocol?:               string
				hok_acs_url?:                       string
				partner_provider_pattern?:          string
				outbound_assertion_attributes: [...{
					direction?: string
					ref:        string
					value!:     string
				}]
				sign_response_or_assertion?: string
				logout_enabled?:             bool
				name_id_format?:             string
				user_assertion_attributes?: [...{
					name!:                      string
					user_store_attribute_name!: string
					format?:                    string
				}]
				encrypt_assertion?:           bool
				name_id_userstore_attribute?: string
				signing_certificate?:         string
				partner_provider_id?:         string
				logout_request_url?:          string
				group_assertion_attributes?: [...{
					format?:     string
					group_name?: string
					name!:       string
					condition?:  string
				}]
				hok_required?:               bool
				key_encryption_algorithm?:   string
				encryption_certificate?:     string
				last_notification_sent_time: string
				metadata?:                   string
			}]
			domain_ocid:   string
			product_name?: string
			editable_attributes: [...{
				name!: string
			}]
			delegated_service_names?: [...string]
			urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app?: [...{
				multicloud_service_type!: string
				multicloud_platform_url?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionopc_service_app?: [...{
				service_instance_identifier?: string
				current_federation_mode:      string
				current_synchronization_mode: string
				enabling_next_fed_sync_modes: bool
				next_federation_mode:         string
				next_synchronization_mode:    string
				region:                       string
			}]
			is_mobile_target?: bool
			protectable_secondary_audiences?: [...{
				value!:    string
				read_only: bool
			}]
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			app_thumbnail?:   string
			is_oauth_client?: bool
			terms_of_use?: [...{
				value!: string
				name:   string
				ref:    string
			}]
			audience?:             string
			ocid?:                 string
			service_type_version?: string
		}
		approval_workflow: {
			name!: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			resource_type_schema_version?: string
			tenancy_ocid:                  string
			ocid?:                         string
			id:                            string
			idcs_endpoint!:                string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			schemas!: [...string]
			compartment_ocid: string
			max_duration!: [...{
				unit!:  string
				value!: int
			}]
			approval_workflow_steps?: [...{
				type!:  string
				value!: string
				ocid?:  string
				order:  int
				ref:    string
			}]
			authorization?:     string
			description?:       string
			delete_in_progress: bool
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			idcs_prevented_operations: [...string]
			attribute_sets?: [...string]
			attributes?:                   string
			idcs_last_upgraded_in_release: string
			domain_ocid:                   string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
		}
		cloud_gate: {
			domain_ocid:        string
			attributes?:        string
			idcs_endpoint!:     string
			delete_in_progress: bool
			upstream_servers: [...{
				display_name?:   string
				group_id?:       string
				host_name?:      string
				nginx_settings?: string
				port?:           int
				ref:             string
				value!:          string
			}]
			idcs_last_upgraded_in_release: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			tenancy_ocid: string
			oauth_client: [...{
				ref:        string
				client_id?: string
				value?:     string
			}]
			is_opc_service: bool
			mappings: [...{
				upstream_server_group_id?: string
				server_id!:                string
				name?:                     string
				ref:                       string
				nginx_settings?:           string
				policy_name?:              string
				mapping_id?:               string
				proxy_pass?:               string
				resource_prefix!:          string
				app_id?:                   string
				value?:                    string
			}]
			id:           string
			description?: string
			active?:      bool
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_prevented_operations: [...string]
			display_name!:                 string
			resource_type_schema_version?: string
			upstream_server_groups: [...{
				ref:             string
				display_name!:   string
				value!:          string
				nginx_settings?: string
				ssl?:            bool
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			type?:            string
			compartment_ocid: string
			ocid?:            string
			authorization?:   string
			schemas!: [...string]
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			last_modified_time?: string
			servers: [...{
				nginx_settings?: string
				server_id?:      string
				host_name!:      string
				port!:           int
				ssl!:            bool
			}]
			attribute_sets?: [...string]
		}
		dynamic_resource_group: {
			authorization?: string
			description?:   string
			dynamic_group_app_roles: [...{
				app_name?:          string
				display?:           string
				legacy_group_name?: string
				ref:                string
				value!:             string
				admin_role?:        bool
				app_id?:            string
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			attribute_sets?: [...string]
			attributes?: string
			idcs_prevented_operations: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			domain_ocid: string
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				tag_slug: string
			}]
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_last_upgraded_in_release: string
			idcs_endpoint!:                string
			matching_rule!:                string
			tenancy_ocid:                  string
			ocid?:                         string
			grants: [...{
				app_id?:          string
				grant_mechanism?: string
				value?:           string
				ref:              string
			}]
			id:                            string
			resource_type_schema_version?: string
			display_name!:                 string
			delete_in_progress:            bool
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			compartment_ocid: string
			schemas!: [...string]
		}
		network_perimeter: {
			tenancy_ocid: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			attribute_sets?: [...string]
			id:           string
			external_id?: string
			schemas!: [...string]
			attributes?:                   string
			ocid?:                         string
			resource_type_schema_version?: string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			ip_addresses!: [...{
				value!:   string
				type?:    string
				version?: string
			}]
			compartment_ocid:   string
			domain_ocid:        string
			authorization?:     string
			delete_in_progress: bool
			name!:              string
			description?:       string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			idcs_endpoint!: string
			idcs_prevented_operations: [...string]
			idcs_last_upgraded_in_release: string
		}
		oauth_client_certificate: {
			authorization?:     string
			certificate_alias!: string
			idcs_endpoint!:     string
			compartment_ocid:   string
			id:                 string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			x509base64certificate!: string
			key_store_id?:          string
			tags?: [...{
				key!:   string
				value!: string
			}]
			tenancy_ocid: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			map?:                          string
			cert_end_date:                 string
			key_store_name?:               string
			resource_type_schema_version?: string
			domain_ocid:                   string
			schemas!: [...string]
			sha1thumbprint:      string
			ocid?:               string
			key_store_password?: string
			idcs_prevented_operations: [...string]
			sha256thumbprint:              string
			external_id?:                  string
			cert_start_date:               string
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
		}
		self_registration_profile: {
			footer_text?: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			email_template!: [...{
				display: string
				ref:     string
				value!:  string
			}]
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
			authorization?:                string
			consent_text_present!:         bool
			idcs_prevented_operations: [...string]
			activation_email_required!: bool
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			number_of_days_redirect_url_is_valid!: int
			attributes?:                           string
			external_id?:                          string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			after_submit_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			allowed_email_domains?: [...string]
			schemas!: [...string]
			display_name!: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			delete_in_progress: bool
			name!:              string
			disallowed_email_domains?: [...string]
			id:                  string
			ocid?:               string
			idcs_endpoint!:      string
			footer_logo?:        string
			show_on_login_page!: bool
			default_groups?: [...{
				display: string
				ref:     string
				value!:  string
			}]
			domain_ocid: string
			active?:     bool
			header_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			consent_text?: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			user_attributes?: [...{
				value!:                          string
				fully_qualified_attribute_name?: string
				deletable:                       bool
				metadata:                        string
				seq_number!:                     int
			}]
			redirect_url!: string
			attribute_sets?: [...string]
			compartment_ocid:              string
			resource_type_schema_version?: string
			header_logo?:                  string
		}
		account_recovery_setting: {
			external_id?: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			max_incorrect_attempts!: int
			schemas!: [...string]
			authorization?:    string
			lockout_duration!: int
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_upgraded_in_release: string
			account_recovery_setting_id!:  string
			domain_ocid:                   string
			idcs_endpoint!:                string
			delete_in_progress:            bool
			id:                            string
			compartment_ocid:              string
			factors!: [...string]
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			attributes?: string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			attribute_sets?: [...string]
			idcs_prevented_operations: [...string]
			resource_type_schema_version?: string
			ocid?:                         string
			tenancy_ocid:                  string
		}
		customer_secret_key: {
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			delete_in_progress: bool
			idcs_endpoint!:     string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_prevented_operations: [...string]
			authorization?: string
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			id:          string
			status?:     string
			domain_ocid: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			attribute_sets?: [...string]
			display_name?:                 string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			access_key:       string
			compartment_ocid: string
			schemas!: [...string]
			description?:                  string
			tenancy_ocid:                  string
			secret_key:                    string
			attributes?:                   string
			idcs_last_upgraded_in_release: string
			expires_on?:                   string
			ocid?:                         string
		}
		grant: {
			authorization?: string
			app?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			attributes?: string
			grantee!: [...{
				display: string
				ref:     string
				type!:   string
				value!:  string
			}]
			idcs_prevented_operations: [...string]
			entitlement?: [...{
				attribute_name!:  string
				attribute_value!: string
			}]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			is_fulfilled:                   bool
			domain_ocid:                    string
			idcs_endpoint!:                 string
			id:                             string
			idcs_last_upgraded_in_release:  string
			composite_key:                  string
			granted_attribute_values_json?: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			compartment_ocid: string
			app_entitlement_collection?: [...{
				value!: string
				ref:    string
			}]
			grantor: [...{
				display: string
				ref:     string
				type:    string
				value:   string
			}]
			tenancy_ocid:                  string
			delete_in_progress:            bool
			resource_type_schema_version?: string
			ocid?:                         string
			attribute_sets?: [...string]
			grant_mechanism!: string
			schemas!: [...string]
		}
		group: {
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			external_id?: string
			members?: [...{
				ref:             string
				type!:           string
				value!:          string
				ocid?:           string
				date_added:      string
				display:         string
				membership_ocid: string
				name:            string
			}]
			attribute_sets?: [...string]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			urnietfparamsscimschemasoracleidcsextensiondynamic_group?: [...{
				membership_type?: string
				membership_rule?: string
			}]
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			ocid?:                         string
			attributes?:                   string
			resource_type_schema_version?: string
			id:                            string
			urnietfparamsscimschemasoracleidcsextensiondbcs_group: [...{
				instance_level_schema?: string
				instance_level_schema_names?: [...{
					db_instance_id!: string
					schema_name!:    string
				}]
				domain_level_schema?: string
				domain_level_schema_names?: [...{
					domain_name!: string
					schema_name!: string
				}]
			}]
			authorization?:                string
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
			urnietfparamsscimschemasoracleidcsextensionposix_group?: [...{
				gid_number?: int
			}]
			idcs_prevented_operations: [...string]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				tag_slug: string
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
			}]
			delete_in_progress:       bool
			compartment_ocid:         string
			non_unique_display_name?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionrequestable_group?: [...{
				requestable?: bool
			}]
			schemas!: [...string]
			force_delete?:  bool
			display_name!:  string
			idcs_endpoint!: string
			urnietfparamsscimschemasoracleidcsextensiongroup_group?: [...{
				grants: [...{
					app_id?:          string
					grant_mechanism?: string
					value?:           string
					ref:              string
				}]
				password_policy: [...{
					value!:    string
					name?:     string
					priority?: int
					ref:       string
				}]
				synced_from_app: [...{
					display?: string
					ref:      string
					type!:    string
					value!:   string
				}]
				creation_mechanism?: string
				description?:        string
				owners?: [...{
					value!:  string
					display: string
					ref:     string
					type!:   string
				}]
				app_roles: [...{
					ref:                string
					value!:             string
					admin_role?:        bool
					app_id?:            string
					app_name?:          string
					display?:           string
					legacy_group_name?: string
					type?:              string
				}]
			}]
			domain_ocid: string
		}
		identity_setting: {
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release: string
			posix_uid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			remove_invalid_emails: bool
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			schemas!: [...string]
			return_inactive_over_locked_message?: bool
			posix_gid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			attributes?:                   string
			resource_type_schema_version?: string
			tenancy_ocid:                  string
			authorization?:                string
			external_id?:                  string
			id:                            string
			delete_in_progress:            bool
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			idcs_endpoint!: string
			domain_ocid:    string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			compartment_ocid: string
			my_profile?: [...{
				allow_end_users_to_manage_their_capabilities?:      bool
				allow_end_users_to_update_their_security_settings?: bool
				allow_end_users_to_change_their_password?:          bool
				allow_end_users_to_link_their_support_account?:     bool
			}]
			emit_locked_message_when_user_is_locked?: bool
			tokens?: [...{
				type!:          string
				expires_after?: int
			}]
			idcs_prevented_operations: [...string]
			ocid?:                               string
			primary_email_required?:             bool
			user_allowed_to_set_recovery_email?: bool
			identity_setting_id!:                string
			tags?: [...{
				value!: string
				key!:   string
			}]
		}
		kmsi_setting: {
			last_enabled_on?: string
			external_id?:     string
			domain_ocid:      string
			schemas!: [...string]
			tou_prompt_disabled?: bool
			tenancy_ocid:         string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			resource_type_schema_version?: string
			id:                            string
			ocid?:                         string
			idcs_endpoint!:                string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			kmsi_feature_enabled?: bool
			max_allowed_sessions?: int
			kmsi_prompt_enabled?:  bool
			idcs_prevented_operations: [...string]
			authorization?:              string
			compartment_ocid:            string
			delete_in_progress:          bool
			last_used_validity_in_days?: int
			tags?: [...{
				key!:   string
				value!: string
			}]
			token_validity_in_days?: int
			kmsi_setting_id!:        string
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release: string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			attributes?: string
		}
		my_oauth2client_credential: {
			idcs_last_upgraded_in_release: string
			compartment_ocid:              string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			user?: [...{
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
				display: string
			}]
			status?: string
			scopes!: [...{
				audience!: string
				scope!:    string
			}]
			domain_ocid:      string
			id:               string
			idcs_endpoint!:   string
			ocid?:            string
			name!:            string
			is_reset_secret?: bool
			schemas!: [...string]
			authorization?: string
			tenancy_ocid:   string
			description?:   string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			expires_on?:                   string
			delete_in_progress:            bool
			resource_type_schema_version?: string
			idcs_prevented_operations: [...string]
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
		}
		my_request: {
			approval_details?: [...{
				approval_type:         string
				approver_display_name: string
				approver_id:           string
				justification:         string
				order:                 int
				status:                string
				time_updated:          string
			}]
			status:             string
			action?:            string
			attributes?:        string
			delete_in_progress: bool
			idcs_created_by: [...{
				ocid:     string
				ref:      string
				value!:   string
				display?: string
				type?:    string
			}]
			id:                            string
			justification!:                string
			compartment_ocid:              string
			expires:                       string
			idcs_last_upgraded_in_release: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			authorization?: string
			requestor?: [...{
				value!:  string
				display: string
				ref:     string
			}]
			schemas!: [...string]
			idcs_prevented_operations: [...string]
			requesting!: [...{
				type!:       string
				value!:      string
				description: string
				display:     string
				ref:         string
			}]
			tenancy_ocid: string
			attribute_sets?: [...string]
			ocid?:                         string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				type?:    string
				ocid:     string
			}]
			domain_ocid: string
		}
		cloud_gate_mapping: {
			attributes?: string
			upstream_server_group?: [...{
				ssl?:   bool
				value?: string
				ref:    string
			}]
			ocid?:           string
			policy_name!:    string
			nginx_settings?: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			cloud_gate!: [...{
				ref:    string
				value!: string
			}]
			idcs_prevented_operations: [...string]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			attribute_sets?: [...string]
			id: string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			server!: [...{
				ref:    string
				value!: string
			}]
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?: string
			domain_ocid:    string
			gateway_app!: [...{
				name!:  string
				value!: string
				ref:    string
			}]
			resource_type_schema_version?: string
			schemas!: [...string]
			tenancy_ocid:                  string
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			resource_prefix!:              string
			proxy_pass?:                   string
			compartment_ocid:              string
			is_opc_service:                bool
			idcs_endpoint!:                string
		}
		password_policy: {
			user_name_disallowed?: bool
			dictionary_location?:  string
			external_id?:          string
			ocid?:                 string
			groups?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			password_strength?:            string
			idcs_last_upgraded_in_release: string
			min_password_age?:             int
			max_repeated_chars?:           int
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			min_upper_case?:   int
			domain_ocid:       string
			name!:             string
			disallowed_chars?: string
			description?:      string
			disallowed_substrings?: [...string]
			compartment_ocid:              string
			min_numerals?:                 int
			delete_in_progress:            bool
			resource_type_schema_version?: string
			starts_with_alphabet?:         bool
			distinct_characters?:          int
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			dictionary_word_disallowed?: bool
			min_unique_chars?:           int
			min_lower_case?:             int
			priority?:                   int
			schemas!: [...string]
			force_password_reset?: bool
			attributes?:           string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			min_length?:             int
			password_expires_after?: int
			dictionary_delimiter?:   string
			tenancy_ocid:            string
			max_special_chars?:      int
			max_incorrect_attempts?: int
			last_name_disallowed?:   bool
			max_length?:             int
			min_alphas?:             int
			configured_password_policy_rules: [...{
				value!: string
				key!:   string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_endpoint!:         string
			min_special_chars?:     int
			first_name_disallowed?: bool
			min_alpha_numerals?:    int
			required_chars?:        string
			lockout_duration?:      int
			attribute_sets?: [...string]
			authorization?: string
			disallowed_user_attribute_values?: [...string]
			password_expire_warning?: int
			allowed_chars?:           string
			idcs_prevented_operations: [...string]
			id:                        string
			num_passwords_in_history?: int
		}
		security_question_setting: {
			id: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			attribute_sets?: [...string]
			tenancy_ocid:            string
			compartment_ocid:        string
			min_answer_length!:      int
			idcs_endpoint!:          string
			num_questions_to_setup!: int
			authorization?:          string
			ocid?:                   string
			attributes?:             string
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_prevented_operations: [...string]
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			max_field_length!:             int
			domain_ocid:                   string
			security_question_setting_id!: string
			external_id?:                  string
			resource_type_schema_version?: string
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			num_questions_to_ans!: int
		}
		my_smtp_credential: {
			status?:                       string
			idcs_last_upgraded_in_release: string
			expires_on?:                   string
			tenancy_ocid:                  string
			ocid?:                         string
			resource_type_schema_version?: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_prevented_operations: [...string]
			authorization?:     string
			delete_in_progress: bool
			user_name:          string
			compartment_ocid:   string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			schemas!: [...string]
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			user?: [...{
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
				display: string
			}]
			id:             string
			domain_ocid:    string
			idcs_endpoint!: string
		}
	}
	arguments: {
		cloud_gate_server: {
			host_name!:     string
			description?:   string
			display_name!:  string
			idcs_endpoint!: string
			authorization?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			port!: int
			attribute_sets?: [...string]
			attributes?: string
			schemas!: [...string]
			nginx_settings?:               string
			ocid?:                         string
			resource_type_schema_version?: string
			cloud_gate!: [...{
				value!: string
			}]
			ssl!: bool
		}
		setting: {
			purge_configs?: [...{
				resource_name!:    string
				retention_period!: int
			}]
			audit_event_retention_period?: int
			attributes?:                   string
			timezone?:                     string
			diagnostic_level?:             int
			privacy_policy_url?:           string
			custom_html_location?:         string
			attribute_sets?: [...string]
			cloud_migration_custom_url?: string
			sub_mapping_attr?:           string
			idcs_endpoint!:              string
			login_texts?: [...{
				value!:  string
				locale!: string
			}]
			iam_upst_session_expiry?: int
			issuer?:                  string
			custom_translation?:      string
			images?: [...{
				display?: string
				type!:    string
				value!:   string
			}]
			cloud_gate_cors_settings?: [...{
				cloud_gate_cors_allowed_origins?: [...string]
				cloud_gate_cors_enabled?: bool
				cloud_gate_cors_exposed_headers?: [...string]
				cloud_gate_cors_max_age?:           int
				cloud_gate_cors_allow_null_origin?: bool
			}]
			preferred_language?:                              string
			custom_css_location?:                             string
			is_hosted_page?:                                  bool
			cloud_migration_url_enabled?:                     bool
			re_auth_when_changing_my_authentication_factors?: bool
			prev_issuer?:                                     string
			certificate_validation?: [...{
				ocsp_unknown_response_status_allowed?:  bool
				ocsp_responder_url?:                    string
				ocsp_signing_certificate_alias?:        string
				crl_location?:                          string
				ocsp_enabled?:                          bool
				crl_check_on_ocsp_failure_enabled?:     bool
				crl_refresh_interval?:                  int
				ocsp_timeout_duration?:                 int
				crl_enabled?:                           bool
				ocsp_settings_responder_url_preferred?: bool
			}]
			csr_access!: string
			schemas!: [...string]
			terms_of_use_url?: string
			allowed_domains?: [...string]
			authorization?:                         string
			locale?:                                string
			service_admin_cannot_list_other_users?: bool
			custom_branding?:                       bool
			tenant_custom_claims?: [...{
				all_scopes!: bool
				expression!: bool
				mode!:       string
				name!:       string
				token_type!: string
				value!:      string
				scopes?: [...string]
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			enable_terms_of_use?:        bool
			account_always_trust_scope?: bool
			allowed_notification_redirect_urls?: [...string]
			company_names?: [...{
				locale!: string
				value!:  string
			}]
			contact_emails?: [...string]
			max_no_of_app_role_members_to_return?: int
			default_trust_scope?:                  string
			allowed_forgot_password_flow_return_urls?: [...string]
			setting_id!:                                                 string
			external_id?:                                                string
			resource_type_schema_version?:                               string
			ocid?:                                                       string
			diagnostic_record_for_search_identifies_returned_resources?: bool
			max_no_of_app_cmva_to_return?:                               int
			signing_cert_public_access?:                                 bool
			id?:                                                         string
			re_auth_factor?: [...string]
		}
		smtp_credential: {
			attributes?: string
			ocid?:       string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			attribute_sets?: [...string]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			idcs_endpoint!: string
			authorization?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			resource_type_schema_version?: string
			expires_on?:                   string
			schemas!: [...string]
			description?: string
			status?:      string
		}
		auth_token: {
			idcs_endpoint!: string
			status?:        string
			attributes?:    string
			schemas!: [...string]
			ocid?: string
			attribute_sets?: [...string]
			description?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			user?: [...{
				value?: string
				ocid?:  string
			}]
			authorization?:                string
			expires_on?:                   string
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
		}
		my_user_db_credential: {
			expires_on?:  string
			db_password!: string
			ocid?:        string
			user?: [...{
				ocid?:  string
				value!: string
			}]
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?: string
			idcs_endpoint!: string
			description?:   string
			schemas!: [...string]
			status?: string
		}
		notification_setting: {
			authorization?: string
			external_id?:   string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_endpoint!: string
			attribute_sets?: [...string]
			notification_enabled!: bool
			schemas!: [...string]
			attributes?: string
			test_recipients?: [...string]
			send_notifications_to_secondary_email?:                                            bool
			test_mode_enabled?:                                                                bool
			send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email?: bool
			notification_setting_id!:                                                          string
			event_settings!: [...{
				event_id!: string
				enabled?:  bool
			}]
			ocid?: string
			from_email_address!: [...{
				validate!:     string
				value!:        string
				display_name?: string
			}]
			resource_type_schema_version?: string
		}
		authentication_factor_setting: {
			auto_enroll_email_factor_disabled?: bool
			identity_store_settings?: [...{
				mobile_number_enabled?:        bool
				mobile_number_update_enabled?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings?: [...{
				attestation!:                                  string
				authenticator_selection_user_verification!:    string
				domain_validation_level?:                      int
				authenticator_selection_resident_key!:         string
				exclude_credentials!:                          bool
				timeout!:                                      int
				authenticator_selection_attachment!:           string
				authenticator_selection_require_resident_key!: bool
				public_key_types!: [...string]
			}]
			client_app_settings!: [...{
				max_lockout_interval_in_secs!:        int
				device_protection_policy!:            string
				max_failures_before_warning!:         int
				min_pin_length!:                      int
				lockout_escalation_pattern!:          string
				shared_secret_encoding!:              string
				unlock_app_for_each_request_enabled!: bool
				unlock_on_app_start_enabled!:         bool
				initial_lockout_period_in_secs!:      int
				policy_update_freq_in_days!:          int
				unlock_app_interval_in_secs!:         int
				key_pair_length!:                     int
				max_failures_before_lockout!:         int
				request_signing_algo!:                string
				unlock_on_app_foreground_enabled!:    bool
			}]
			idcs_endpoint!:                    string
			authentication_factor_setting_id!: string
			authorization?:                    string
			compliance_policy!: [...{
				name!:   string
				value!:  string
				action!: string
			}]
			ocid?:          string
			email_enabled?: bool
			urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings?: [...{
				duo_security_settings?: [...{
					attestation_key?: string, api_hostname!: string, integration_key!: string, secret_key!: string, user_mapping_attribute!: string
				}]
			}]
			hide_backup_factor_enabled?: bool
			user_enrollment_disabled_factors?: [...string]
			bypass_code_enabled!: bool
			totp_settings!: [...{
				email_otp_validity_duration_in_mins!: int
				jwt_validity_duration_in_secs!:       int
				passcode_length!:                     int
				time_step_tolerance!:                 int
				key_refresh_interval_in_days!:        int
				sms_passcode_length!:                 int
				time_step_in_secs!:                   int
				email_passcode_length!:               int
				hashing_algorithm!:                   string
				sms_otp_validity_duration_in_mins!:   int
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			endpoint_restrictions!: [...{
				max_endpoint_trust_duration_in_days!: int
				max_enrolled_devices!:                int
				max_incorrect_attempts!:              int
				max_trusted_endpoints!:               int
				trusted_endpoints_enabled!:           bool
			}]
			mfa_enrollment_type!:        string
			fido_authenticator_enabled?: bool
			schemas!: [...string]
			attribute_sets?: [...string]
			email_settings?: [...{
				email_link_enabled!:    bool
				email_link_custom_url?: string
			}]
			totp_enabled!:               bool
			attributes?:                 string
			security_questions_enabled!: bool
			yubico_otp_enabled?:         bool
			sms_enabled!:                bool
			phone_call_enabled?:         bool
			third_party_factor?: [...{
				duo_security!: bool
			}]
			notification_settings!: [...{
				pull_enabled!: bool
			}]
			bypass_code_settings!: [...{
				help_desk_generation_enabled!:    bool
				help_desk_max_usage!:             int
				length!:                          int
				max_active!:                      int
				self_service_generation_enabled!: bool
				help_desk_code_expiry_in_mins!:   int
			}]
			resource_type_schema_version?: string
			push_enabled!:                 bool
		}
		approval_workflow_assignment: {
			schemas!: [...string]
			assignment_type!: string
			idcs_endpoint!:   string
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
			ocid?: string
			approval_workflow!: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			resource_type_schema_version?: string
			authorization?:                string
			attributes?:                   string
			assigned_to!: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
		}
		approval_workflow_step: {
			approvers?: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			approvers_expressions?: [...string]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			order!:                        int
			authorization?:                string
			type!:                         string
			attribute_sets?: [...string]
			ocid?:              string
			minimum_approvals?: int
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
			attributes?: string
		}
		my_support_account: {
			schemas!: [...string]
			token!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?: string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			ocid?:                         string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
		}
		oauth2client_credential: {
			scopes!: [...{
				audience!: string
				scope!:    string
			}]
			status?:        string
			idcs_endpoint!: string
			name!:          string
			attribute_sets?: [...string]
			schemas!: [...string]
			is_reset_secret?: bool
			user?: [...{
				ocid?:  string
				value?: string
			}]
			description?: string
			expires_on?:  string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			authorization?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			resource_type_schema_version?: string
			attributes?:                   string
			ocid?:                         string
		}
		oauth_partner_certificate: {
			external_id?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			certificate_alias!:            string
			key_store_password?:           string
			key_store_id?:                 string
			resource_type_schema_version?: string
			map?:                          string
			authorization?:                string
			schemas!: [...string]
			idcs_endpoint!:         string
			key_store_name?:        string
			x509base64certificate?: string
		}
		rule: {
			authorization?: string
			rule_groovy?:   string
			name!:          string
			tags?: [...{
				key!:   string
				value!: string
			}]
			active?:        bool
			ocid?:          string
			idcs_endpoint!: string
			description?:   string
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			schemas!: [...string]
			external_id?: string
			condition!:   string
			policy_type!: [...{
				value!: string
			}]
			condition_group?: [...{
				value?: string
				type!:  string
			}]
			attributes?: string
			locked?:     bool
			return!: [...{
				name!:          string
				value!:         string
				return_groovy?: string
			}]
		}
		user_db_credential: {
			authorization?:                string
			ocid?:                         string
			resource_type_schema_version?: string
			user?: [...{
				value!: string
				ocid?:  string
			}]
			status?: string
			schemas!: [...string]
			attribute_sets?: [...string]
			expires_on?:    string
			attributes?:    string
			idcs_endpoint!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			db_password!: string
			description?: string
		}
		app_role: {
			schemas!: [...string]
			available_to_users?:   bool
			authorization?:        string
			legacy_group_name?:    string
			available_to_clients?: bool
			app!: [...{
				value!: string
			}]
			admin_role?: bool
			public?:     bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?:                  string
			idcs_endpoint!:                string
			attributes?:                   string
			display_name!:                 string
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			ocid?:                string
			available_to_groups?: bool
		}
		identity_provider: {
			jit_user_prov_group_assignment_method?: string
			jit_user_prov_group_mapping_mode?:      string
			idp_sso_url?:                           string
			urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider?: [...{
				consumer_key!:                       string
				jit_prov_group_static_list_enabled?: bool
				jit_prov_assigned_groups?: [...{
					value!:   string
					display?: string
				}]
				client_credential_in_payload?: bool
				service_provider_name!:        string
				auto_redirect_enabled?:        bool
				admin_scope?: [...string]
				access_token_url?:                string
				authz_url?:                       string
				clock_skew_in_seconds?:           int
				redirect_url?:                    string
				id_attribute?:                    string
				profile_url?:                     string
				social_jit_provisioning_enabled?: bool
				discovery_url?:                   string
				registration_enabled!:            bool
				scope?: [...string]
				status?:                  string
				consumer_secret!:         string
				account_linking_enabled!: bool
			}]
			external_id?:                                     string
			jit_user_prov_group_assertion_attribute_enabled?: bool
			partner_provider_id?:                             string
			succinct_id?:                                     string
			correlation_policy?: [...{
				value!:   string
				display?: string
				type!:    string
			}]
			logout_enabled?:               bool
			resource_type_schema_version?: string
			assertion_attribute?:          string
			ocid?:                         string
			metadata?:                     string
			tags?: [...{
				value!: string
				key!:   string
			}]
			jit_user_prov_create_user_enabled?:       bool
			jit_user_prov_group_saml_attribute_name?: string
			enabled!:                                 bool
			logout_binding?:                          string
			schemas!: [...string]
			jit_user_prov_ignore_error_on_absent_groups?: bool
			icon_url?:                                    string
			jit_user_prov_assigned_groups?: [...{
				value!: string
			}]
			include_signing_cert_in_signature?: bool
			requested_authentication_context?: [...string]
			authorization?:       string
			name_id_format?:      string
			shown_on_login_page?: bool
			idcs_endpoint!:       string
			signing_certificate?: string
			urnietfparamsscimschemasoracleidcsextensionx509identity_provider?: [...{
				crl_location?: string
				ocsp_trust_cert_chain?: [...string]
				eku_values?: [...string]
				cert_match_attribute!:              string
				crl_check_on_ocsp_failure_enabled?: bool
				user_match_attribute!:              string
				ocsp_revalidate_time?:              int
				ocsp_enable_signed_response?:       bool
				eku_validation_enabled?:            bool
				crl_reload_duration?:               int
				other_cert_match_attribute?:        string
				signing_certificate_chain!: [...string]
				ocsp_enabled?:                       bool
				ocsp_responder_url?:                 string
				ocsp_server_name?:                   string
				ocsp_allow_unknown_response_status?: bool
				crl_enabled?:                        bool
			}]
			type?:                                    string
			service_instance_identifier?:             string
			encryption_certificate?:                  string
			partner_name!:                            string
			logout_response_url?:                     string
			jit_user_prov_group_static_list_enabled?: bool
			jit_user_prov_attribute_update_enabled?:  bool
			jit_user_prov_group_mappings?: [...{
				idp_group!: string
				value!:     string
			}]
			authn_request_binding?:        string
			logout_request_url?:           string
			description?:                  string
			user_mapping_store_attribute?: string
			requires_encrypted_assertion?: bool
			user_mapping_method?:          string
			signature_hash_algorithm?:     string
			attributes?:                   string
			jit_user_prov_attributes?: [...{
				value!: string
			}]
			jit_user_prov_enabled?: bool
			attribute_sets?: [...string]
			saml_ho_krequired?:   bool
			require_force_authn?: bool
		}
		my_api_key: {
			ocid?:                         string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?:   string
			idcs_endpoint!: string
			key!:           string
			schemas!: [...string]
			authorization?: string
			user?: [...{
				ocid?:  string
				value?: string
			}]
		}
		my_auth_token: {
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			status?:                       string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			schemas!: [...string]
			tags?: [...{
				value!: string
				key!:   string
			}]
			ocid?:          string
			description?:   string
			expires_on?:    string
			authorization?: string
		}
		my_customer_secret_key: {
			user?: [...{
				ocid?:  string
				value?: string
			}]
			authorization?: string
			idcs_endpoint!: string
			ocid?:          string
			schemas!: [...string]
			status?:       string
			display_name?: string
			expires_on?:   string
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?:                  string
			resource_type_schema_version?: string
		}
		policy: {
			tags?: [...{
				key!:   string
				value!: string
			}]
			name!: string
			policy_type!: [...{
				value!: string
			}]
			description?: string
			ocid?:        string
			attribute_sets?: [...string]
			attributes?:                   string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			authorization?:                string
			rules?: [...{
				value!:    string
				sequence!: int
			}]
			policy_groovy?: string
			active?:        bool
			external_id?:   string
			schemas!: [...string]
		}
		social_identity_provider: {
			show_on_login!:         bool
			idcs_endpoint!:         string
			auto_redirect_enabled?: bool
			status?:                string
			schemas!: [...string]
			social_jit_provisioning_enabled?: bool
			enabled!:                         bool
			clock_skew_in_seconds?:           int
			scope?: [...string]
			resource_type_schema_version?:       string
			discovery_url?:                      string
			icon_url?:                           string
			profile_url?:                        string
			jit_prov_group_static_list_enabled?: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			registration_enabled!: bool
			description?:          string
			authz_url?:            string
			refresh_token_url?:    string
			jit_prov_assigned_groups?: [...{
				value!: string
			}]
			authorization?:         string
			id_attribute?:          string
			consumer_key!:          string
			service_provider_name!: string
			name!:                  string
			relay_idp_param_mappings?: [...{
				relay_param_key!:   string
				relay_param_value?: string
			}]
			access_token_url?:             string
			consumer_secret!:              string
			ocid?:                         string
			account_linking_enabled!:      bool
			client_credential_in_payload?: bool
			redirect_url?:                 string
			admin_scope?: [...string]
		}
		condition: {
			external_id?:           string
			name!:                  string
			idcs_endpoint!:         string
			evaluate_condition_if?: string
			ocid?:                  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
			description?:                  string
			resource_type_schema_version?: string
			attributes?:                   string
			attribute_name!:               string
			attribute_sets?: [...string]
			authorization?:   string
			operator!:        string
			attribute_value!: string
		}
		identity_propagation_trust: {
			subject_mapping_attribute?: string
			client_claim_name?:         string
			name!:                      string
			public_key_endpoint?:       string
			impersonation_service_users?: [...{
				rule!:  string
				value!: string
				ocid?:  string
			}]
			public_certificate?: string
			authorization?:      string
			attributes?:         string
			clock_skew_seconds?: int
			tags?: [...{
				key!:   string
				value!: string
			}]
			account_id?: string
			schemas!: [...string]
			oauth_clients?: [...string]
			active?: bool
			attribute_sets?: [...string]
			subject_type?:                 string
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			description?:                  string
			subject_claim_name?:           string
			ocid?:                         string
			type!:                         string
			allow_impersonation?:          bool
			keytab?: [...{
				secret_ocid!:    string
				secret_version?: int
			}]
			issuer!: string
			client_claim_values?: [...string]
		}
		api_key: {
			tags?: [...{
				value!: string
				key!:   string
			}]
			description?:   string
			idcs_endpoint!: string
			schemas!: [...string]
			attributes?: string
			ocid?:       string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			authorization?: string
			key!:           string
			attribute_sets?: [...string]
		}
		user: {
			name?: [...{
				honorific_suffix?: string
				middle_name?:      string
				family_name?:      string
				formatted?:        string
				given_name?:       string
				honorific_prefix?: string
			}]
			phone_numbers?: [...{
				primary?: bool
				type!:    string
				value!:   string
			}]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				defined_tags?: [...{
					value!:     string
					key!:       string
					namespace!: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_user?: [...{
				synced_from_app?: [...{
					type!:    string
					value!:   string
					display?: string
				}]
				is_group_membership_synced_to_users_groups?: bool
				bypass_notification?:                        bool
				do_not_show_getting_started?:                bool
				is_federated_user?:                          bool
				user_flow_controlled_by_external_client?:    bool
				creation_mechanism?:                         string
				is_group_membership_normalized?:             bool
				preferred_ui_landing_page?:                  string
				account_recovery_required?:                  bool
				delegated_authentication_target_app?: [...{
					display?: string
					type!:    string
					value!:   string
				}]
				notification_email_template_id?: string
				is_authentication_delegated?:    bool
				user_provider?:                  string
				service_user?:                   bool
			}]
			urnietfparamsscimschemasoracleidcsextensionsocial_account_user?: [...{
				social_accounts?: [...{
					value!: string, display?: string
				}]
			}]
			ims?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensiondb_credentials_user?: [...{
				db_user_name?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionterms_of_use_user?: [...{
				terms_of_use_consents?: [...{
					value!: string
				}]
			}]
			password?: string
			urnietfparamsscimschemasoracleidcsextensionsff_user?: [...{
				sff_auth_keys?: string
			}]
			description?: string
			ocid?:        string
			urnietfparamsscimschemasoracleidcsextensioncapabilities_user?: [...{
				can_use_customer_secret_keys?:     bool
				can_use_db_credentials?:           bool
				can_use_oauth2client_credentials?: bool
				can_use_smtp_credentials?:         bool
				can_use_api_keys?:                 bool
				can_use_auth_tokens?:              bool
				can_use_console?:                  bool
				can_use_console_password?:         bool
			}]
			display_name?:                 string
			attributes?:                   string
			resource_type_schema_version?: string
			nick_name?:                    string
			entitlements?: [...{
				value!:   string
				display?: string
				primary?: bool
				type!:    string
			}]
			locale?:        string
			title?:         string
			authorization?: string
			roles?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			urnietfparamsscimschemasextensionenterprise20user?: [...{
				cost_center?:     string
				department?:      string
				division?:        string
				employee_number?: string
				manager?: [...{
					value?: string
				}]
				organization?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionadaptive_user?: [...{
				risk_level?: string
				risk_scores?: [...{
					status?:                string
					last_update_timestamp!: string
					risk_level!:            string
					score!:                 int
					value!:                 string
					source?:                string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_state_user?: [...{
				locked?: [...{
					expired?:   bool
					lock_date?: string
					on?:        bool
					reason?:    int
				}]
				max_concurrent_sessions?: int
				recovery_locked?: [...{
					on?:        bool
					lock_date?: string
				}]
			}]
			preferred_language?: string
			user_type?:          string
			urnietfparamsscimschemasoracleidcsextensionposix_user?: [...{
				login_shell?:    string
				uid_number?:     int
				gecos?:          string
				gid_number?:     int
				home_directory?: string
			}]
			addresses?: [...{
				postal_code?:    string
				primary?:        bool
				region?:         string
				street_address?: string
				type!:           string
				country?:        string
				formatted?:      string
				locality?:       string
			}]
			idcs_endpoint!: string
			user_name!:     string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			force_delete?: bool
			attribute_sets?: [...string]
			x509certificates?: [...{
				primary?: bool
				type?:    string
				value!:   string
				display?: string
			}]
			active?:   bool
			timezone?: string
			photos?: [...{
				display?: string
				primary?: bool
				type!:    string
				value!:   string
			}]
			urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user?: [...{
				sec_questions?: [...{
					value!: string, hint_text?: string, answer!: string
				}]
			}]
			profile_url?: string
			emails?: [...{
				value!:     string
				primary?:   bool
				secondary?: bool
				verified?:  bool
				type!:      string
			}]
			external_id?: string
			schemas!: [...string]
			urnietfparamsscimschemasoracleidcsextensionkerberos_user_user?: [...{
				realm_users?: [...{
					value!: string, principal_name?: string, realm_name?: string
				}]
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionmfa_user?: [...{
				preferred_authentication_method?: string
				preferred_device?: [...{
					value!:   string
					display?: string
				}]
				login_attempts?:               int
				preferred_third_party_vendor?: string
				trusted_user_agents?: [...{
					value!:   string
					display?: string
				}]
				devices?: [...{
					last_sync_time?:          string
					value!:                   string
					display?:                 string
					status?:                  string
					third_party_vendor_name?: string
					authentication_method?:   string
					factor_type?:             string
					factor_status?:           string
				}]
				mfa_enabled_on?: string
				mfa_status?:     string
				bypass_codes?: [...{
					value!: string
				}]
				mfa_ignored_apps?: [...string]
				preferred_authentication_factor?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_registration_user?: [...{
				self_registration_profile!: [...{
					display?: string
					value!:   string
				}]
				consent_granted?: bool
				user_token?:      string
			}]
			urnietfparamsscimschemasoracleidcsextensionpasswordless_user?: [...{
				factor_identifier?: [...{
					value!:   string
					display?: string
				}]
				factor_method?: string
				factor_type?:   string
			}]
		}
		security_question: {
			ocid?:          string
			idcs_endpoint!: string
			attributes?:    string
			schemas!: [...string]
			type!:   string
			active!: bool
			question_text!: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			authorization?:                string
			external_id?:                  string
			tags?: [...{
				key!:   string
				value!: string
			}]
		}
		app: {
			allowed_operations?: [...string]
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_app?: [...{
				user_name_form_template?:          string
				configuration?:                    string
				form_credential_sharing_group_id?: string
				reveal_password_on_form?:          bool
				user_name_form_expression?:        string
				form_cred_method?:                 string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				form_type?: string
			}]
			linking_callback_url?: string
			landing_page_url?:     string
			terms_of_use?: [...{
				value!: string
			}]
			login_page_url?: string
			urnietfparamsscimschemasoracleidcsextensionradius_app_app?: [...{
				country_code_response_attribute_id?: string
				radius_vendor_specific_id?:          string
				response_format?:                    string
				port!:                               string
				response_format_delimiter?:          string
				group_membership_to_return?: [...{
					value!: string
				}]
				end_user_ip_attribute?:             string
				capture_client_ip?:                 bool
				password_and_otp_together?:         bool
				group_membership_radius_attribute?: string
				client_ip!:                         string
				include_group_in_response!:         bool
				type_of_radius_app?:                string
				group_name_format?:                 string
				secret_key!:                        string
			}]
			client_ip_checking?: string
			urnietfparamsscimschemasoracleidcsextensiondbcs_app?: [...{
				domain_name?: string
				domain_app?: [...{
					value!: string
				}]
			}]
			client_type?: string
			urnietfparamsscimschemasoracleidcsextensionopc_service_app?: [...{
				service_instance_identifier?: string
			}]
			idp_policy?: [...{
				value!: string
			}]
			based_on_template!: [...{
				well_known_id?: string
				value!:         string
			}]
			attribute_sets?: [...string]
			allow_offline?:        bool
			is_oauth_resource?:    bool
			active?:               bool
			service_type_version?: string
			trust_policies?: [...{
				value!: string
			}]
			is_alias_app?: bool
			urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app?: [...{
				multicloud_service_type!: string
				multicloud_platform_url?: string
			}]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
				freeform_tags?: [...{
					value!: string
					key!:   string
				}]
			}]
			identity_providers?: [...{
				value!: string
			}]
			logout_page_url?:       string
			is_obligation_capable?: bool
			product_logo_url?:      string
			icon?:                  string
			privacy_policy_url?:    string
			error_page_url?:        string
			urnietfparamsscimschemasoracleidcsextensionrequestable_app?: [...{
				requestable?: bool
			}]
			is_login_target?: bool
			app_thumbnail?:   string
			scopes?: [...{
				value!:            string
				description?:      string
				display_name?:     string
				requires_consent?: bool
			}]
			as_opc_service?: [...{
				value!: string
			}]
			login_mechanism?:    string
			is_web_tier_policy?: bool
			is_radius_app?:      bool
			urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app?: [...{
				max_renewable_age?: int
				max_ticket_life?:   int
				realm_name?:        string
				supported_encryption_salt_types?: [...string]
				ticket_flags?:                 int
				default_encryption_salt_type?: string
				master_key?:                   string
			}]
			terms_of_service_url?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			is_form_fill?:              bool
			is_multicloud_service_app?: bool
			is_saml_service_provider?:  bool
			alias_apps?: [...{
				value!: string
			}]
			attr_rendering_metadata?: [...{
				required?:   bool
				max_size?:   int
				section?:    string
				name!:       string
				label?:      string
				regexp?:     string
				visible?:    bool
				widget?:     string
				helptext?:   string
				min_length?: int
				order?:      int
				datatype?:   string
				min_size?:   int
				read_only?:  bool
				max_length?: int
			}]
			urnietfparamsscimschemasoracleidcsextensionenterprise_app_app?: [...{
				allow_authz_decision_ttl?: int
				allow_authz_policy?: [...{
					value!: string
				}]
				app_resources?: [...{
					value!: string
				}]
				deny_authz_decision_ttl?: int
				deny_authz_policy?: [...{
					value!: string
				}]
			}]
			home_page_url?:     string
			is_kerberos_realm?: bool
			urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app?: [...{
				logout_response_url?:         string
				hok_required?:                bool
				name_id_userstore_attribute?: string
				encrypt_assertion?:           bool
				group_assertion_attributes?: [...{
					condition?:  string
					format?:     string
					group_name?: string
					name!:       string
				}]
				encryption_certificate?:            string
				hok_acs_url?:                       string
				signing_certificate?:               string
				encryption_algorithm?:              string
				key_encryption_algorithm?:          string
				federation_protocol?:               string
				sign_response_or_assertion?:        string
				logout_request_url?:                string
				logout_enabled?:                    bool
				succinct_id?:                       string
				signature_hash_algorithm?:          string
				partner_provider_pattern?:          string
				include_signing_cert_in_signature?: bool
				name_id_format?:                    string
				partner_provider_id?:               string
				metadata?:                          string
				assertion_consumer_url?:            string
				logout_binding?:                    string
				user_assertion_attributes?: [...{
					format?:                    string
					name!:                      string
					user_store_attribute_name!: string
				}]
			}]
			id_token_enc_algo?: string
			app_icon?:          string
			service_params?: [...{
				value?: string
				name!:  string
			}]
			disable_kmsi_token_authentication?: bool
			show_in_my_apps?:                   bool
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template?: [...{
				user_name_form_template?:          string
				user_name_form_expression?:        string
				form_cred_method?:                 string
				sync_from_template?:               bool
				reveal_password_on_form?:          bool
				form_credential_sharing_group_id?: string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				form_type?:     string
				configuration?: string
			}]
			radius_policy?: [...{
				value!: string
			}]
			post_logout_redirect_uris?: [...string]
			protectable_secondary_audiences?: [...{
				value!: string
			}]
			contact_email_address?: string
			attributes?:            string
			signon_policy?: [...{
				value!: string
			}]
			idcs_endpoint!:           string
			is_enterprise_app?:       bool
			all_url_schemes_allowed?: bool
			trust_scope?:             string
			certificates?: [...{
				cert_alias!: string
			}]
			service_type_urn?:     string
			audience?:             string
			allow_access_control?: bool
			app_signon_policy?: [...{
				value!: string
			}]
			refresh_token_expiry?: int
			is_oauth_client?:      bool
			name?:                 string
			allowed_scopes?: [...{
				fqs!: string
			}]
			is_mobile_target?: bool
			is_unmanaged_app?: bool
			redirect_uris?: [...string]
			urnietfparamsscimschemasoracleidcsextensionmanagedapp_app?: [...{
				flat_file_bundle_configuration_properties?: [...{
					required!:     bool
					confidential?: bool
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
					icf_type!: string
					name!:     string
				}]
				admin_consent_granted?: bool
				enable_sync?:           bool
				bundle_pool_configuration?: [...{
					max_idle?:                       int
					max_objects?:                    int
					max_wait?:                       int
					min_evictable_idle_time_millis?: int
					min_idle?:                       int
				}]
				enable_auth_sync_new_user_notification?:  bool
				enable_sync_summary_report_notification?: bool
				bundle_configuration_properties?: [...{
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
					icf_type!:     string
					name!:         string
					required!:     bool
					confidential?: bool
				}]
				flat_file_connector_bundle?: [...{
					display?:       string
					well_known_id?: string
					value!:         string
				}]
				three_legged_oauth_credential?: [...{
					access_token?:        string
					access_token_expiry?: string
					refresh_token?:       string
				}]
				is_authoritative?: bool
				connected?:        bool
			}]
			display_name!:   string
			bypass_consent?: bool
			ocid?:           string
			urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app?: [...{
				web_tier_policy_json?:       string
				resource_ref?:               bool
				web_tier_policy_az_control?: string
			}]
			apps_network_perimeters?: [...{
				value!: string
			}]
			delegated_service_names?: [...string]
			description?:   string
			authorization?: string
			secondary_audiences?: [...string]
			allowed_grants?: [...string]
			resource_type_schema_version?: string
			access_token_expiry?:          int
			saml_service_provider?: [...{
				value!: string
			}]
			product_name?: string
			schemas!: [...string]
			allowed_tags?: [...{
				key!:   string
				value!: string
			}]
			logout_uri?: string
		}
		approval_workflow: {
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			schemas!: [...string]
			authorization?: string
			max_duration!: [...{
				value!: int
				unit!:  string
			}]
			approval_workflow_steps?: [...{
				ocid?:  string
				type!:  string
				value!: string
			}]
			attributes?:  string
			description?: string
			ocid?:        string
			name!:        string
			tags?: [...{
				value!: string
				key!:   string
			}]
		}
		cloud_gate: {
			ocid?:          string
			idcs_endpoint!: string
			attribute_sets?: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			type?:                         string
			active?:                       bool
			display_name!:                 string
			attributes?:                   string
			resource_type_schema_version?: string
			authorization?:                string
			description?:                  string
			last_modified_time?:           string
			schemas!: [...string]
		}
		dynamic_resource_group: {
			schemas!: [...string]
			display_name!:  string
			authorization?: string
			attribute_sets?: [...string]
			idcs_endpoint!: string
			matching_rule!: string
			description?:   string
			ocid?:          string
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				defined_tags?: [...{
					value!:     string
					key!:       string
					namespace!: string
				}]
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
			}]
			attributes?:                   string
			resource_type_schema_version?: string
		}
		network_perimeter: {
			resource_type_schema_version?: string
			name!:                         string
			ip_addresses!: [...{
				value!:   string
				type?:    string
				version?: string
			}]
			idcs_endpoint!: string
			attribute_sets?: [...string]
			authorization?: string
			ocid?:          string
			schemas!: [...string]
			attributes?:  string
			external_id?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?: string
		}
		oauth_client_certificate: {
			map?:                   string
			ocid?:                  string
			external_id?:           string
			certificate_alias!:     string
			x509base64certificate!: string
			key_store_name?:        string
			key_store_password?:    string
			tags?: [...{
				value!: string
				key!:   string
			}]
			resource_type_schema_version?: string
			schemas!: [...string]
			authorization?: string
			idcs_endpoint!: string
			key_store_id?:  string
		}
		self_registration_profile: {
			authorization?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			resource_type_schema_version?: string
			redirect_url!:                 string
			active?:                       bool
			consent_text_present!:         bool
			name!:                         string
			after_submit_text?: [...{
				default?: bool
				locale!:  string
				value!:   string
			}]
			footer_logo?: string
			email_template!: [...{
				value!: string
			}]
			header_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			user_attributes?: [...{
				value!:                          string
				fully_qualified_attribute_name?: string
				seq_number!:                     int
			}]
			number_of_days_redirect_url_is_valid!: int
			attributes?:                           string
			attribute_sets?: [...string]
			external_id?: string
			footer_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			header_logo?: string
			disallowed_email_domains?: [...string]
			allowed_email_domains?: [...string]
			activation_email_required!: bool
			display_name!: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			idcs_endpoint!: string
			schemas!: [...string]
			show_on_login_page!: bool
			consent_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			default_groups?: [...{
				value!: string
			}]
		}
		account_recovery_setting: {
			account_recovery_setting_id!: string
			factors!: [...string]
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_endpoint!: string
			ocid?:          string
			schemas!: [...string]
			lockout_duration!:       int
			authorization?:          string
			max_incorrect_attempts!: int
			attribute_sets?: [...string]
			attributes?:  string
			external_id?: string
		}
		customer_secret_key: {
			schemas!: [...string]
			description?:   string
			authorization?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			idcs_endpoint!:                string
			attributes?:                   string
			display_name?:                 string
			resource_type_schema_version?: string
			user?: [...{
				value?: string
				ocid?:  string
			}]
			expires_on?: string
			attribute_sets?: [...string]
			status?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
		}
		grant: {
			entitlement?: [...{
				attribute_name!:  string
				attribute_value!: string
			}]
			authorization?: string
			ocid?:          string
			app?: [...{
				value!: string
			}]
			app_entitlement_collection?: [...{
				value!: string
			}]
			idcs_endpoint!: string
			grantee!: [...{
				type!:  string
				value!: string
			}]
			grant_mechanism!: string
			attributes?:      string
			schemas!: [...string]
			attribute_sets?: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			granted_attribute_values_json?: string
			resource_type_schema_version?:  string
		}
		group: {
			ocid?: string
			urnietfparamsscimschemasoracleidcsextensiongroup_group?: [...{
				owners?: [...{
					type!:  string
					value!: string
				}]
				creation_mechanism?: string
				description?:        string
			}]
			external_id?: string
			members?: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				defined_tags?: [...{
					key!:       string
					namespace!: string
					value!:     string
				}]
			}]
			idcs_endpoint!:           string
			attributes?:              string
			non_unique_display_name?: string
			urnietfparamsscimschemasoracleidcsextensionposix_group?: [...{
				gid_number?: int
			}]
			resource_type_schema_version?: string
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionrequestable_group?: [...{
				requestable?: bool
			}]
			force_delete?: bool
			display_name!: string
			attribute_sets?: [...string]
			urnietfparamsscimschemasoracleidcsextensiondynamic_group?: [...{
				membership_rule?: string
				membership_type?: string
			}]
			authorization?: string
		}
		identity_setting: {
			posix_gid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
			ocid?: string
			tokens?: [...{
				type!:          string
				expires_after?: int
			}]
			identity_setting_id!:                     string
			external_id?:                             string
			idcs_endpoint!:                           string
			attributes?:                              string
			emit_locked_message_when_user_is_locked?: bool
			posix_uid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			user_allowed_to_set_recovery_email?: bool
			primary_email_required?:             bool
			my_profile?: [...{
				allow_end_users_to_change_their_password?:          bool
				allow_end_users_to_link_their_support_account?:     bool
				allow_end_users_to_manage_their_capabilities?:      bool
				allow_end_users_to_update_their_security_settings?: bool
			}]
			resource_type_schema_version?:        string
			authorization?:                       string
			return_inactive_over_locked_message?: bool
		}
		kmsi_setting: {
			kmsi_setting_id!: string
			authorization?:   string
			external_id?:     string
			schemas!: [...string]
			kmsi_feature_enabled?:       bool
			tou_prompt_disabled?:        bool
			idcs_endpoint!:              string
			ocid?:                       string
			kmsi_prompt_enabled?:        bool
			last_enabled_on?:            string
			last_used_validity_in_days?: int
			token_validity_in_days?:     int
			attributes?:                 string
			attribute_sets?: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			max_allowed_sessions?:         int
			resource_type_schema_version?: string
		}
		my_oauth2client_credential: {
			user?: [...{
				ocid?:  string
				value?: string
			}]
			scopes!: [...{
				scope!:    string
				audience!: string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			expires_on?:                   string
			authorization?:                string
			resource_type_schema_version?: string
			is_reset_secret?:              bool
			status?:                       string
			idcs_endpoint!:                string
			name!:                         string
			ocid?:                         string
			schemas!: [...string]
			description?: string
		}
		my_request: {
			resource_type_schema_version?: string
			justification!:                string
			requesting!: [...{
				type!:  string
				value!: string
			}]
			approval_details?: [...{}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			attributes?: string
			schemas!: [...string]
			attribute_sets?: [...string]
			action?:        string
			ocid?:          string
			authorization?: string
			idcs_endpoint!: string
			requestor?: [...{
				value!: string
			}]
		}
		cloud_gate_mapping: {
			description?: string
			proxy_pass?:  string
			schemas!: [...string]
			attribute_sets?: [...string]
			gateway_app!: [...{
				name!:  string
				value!: string
			}]
			resource_prefix!: string
			attributes?:      string
			authorization?:   string
			nginx_settings?:  string
			policy_name!:     string
			ocid?:            string
			cloud_gate!: [...{
				value!: string
			}]
			idcs_endpoint!: string
			server!: [...{
				value!: string
			}]
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			upstream_server_group?: [...{
				ssl?:   bool
				value?: string
			}]
		}
		password_policy: {
			min_special_chars?:    int
			external_id?:          string
			starts_with_alphabet?: bool
			attributes?:           string
			min_unique_chars?:     int
			authorization?:        string
			disallowed_substrings?: [...string]
			disallowed_chars?:             string
			min_alphas?:                   int
			resource_type_schema_version?: string
			password_expires_after?:       int
			last_name_disallowed?:         bool
			priority?:                     int
			max_incorrect_attempts?:       int
			min_numerals?:                 int
			distinct_characters?:          int
			groups?: [...{
				value!: string
			}]
			user_name_disallowed?: bool
			disallowed_user_attribute_values?: [...string]
			name!:                       string
			min_upper_case?:             int
			dictionary_delimiter?:       string
			dictionary_location?:        string
			max_repeated_chars?:         int
			dictionary_word_disallowed?: bool
			allowed_chars?:              string
			description?:                string
			ocid?:                       string
			idcs_endpoint!:              string
			max_length?:                 int
			max_special_chars?:          int
			min_password_age?:           int
			tags?: [...{
				value!: string
				key!:   string
			}]
			num_passwords_in_history?: int
			schemas!: [...string]
			min_length?:            int
			first_name_disallowed?: bool
			password_strength?:     string
			required_chars?:        string
			min_lower_case?:        int
			lockout_duration?:      int
			force_password_reset?:  bool
			attribute_sets?: [...string]
			password_expire_warning?: int
			min_alpha_numerals?:      int
		}
		security_question_setting: {
			security_question_setting_id!: string
			num_questions_to_ans!:         int
			attributes?:                   string
			resource_type_schema_version?: string
			max_field_length!:             int
			external_id?:                  string
			authorization?:                string
			ocid?:                         string
			schemas!: [...string]
			min_answer_length!:      int
			num_questions_to_setup!: int
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
			idcs_endpoint!: string
		}
		my_smtp_credential: {
			tags?: [...{
				value!: string
				key!:   string
			}]
			expires_on?:                   string
			ocid?:                         string
			resource_type_schema_version?: string
			authorization?:                string
			description?:                  string
			idcs_endpoint!:                string
			user?: [...{
				value?: string
				ocid?:  string
			}]
			schemas!: [...string]
			status?: string
		}
	}
}
#data: {
	oauth_partner_certificates: {
		sort_order?:                       string
		oauth_partner_certificate_filter?: string
		resource_type_schema_version?:     string
		sort_by?:                          string
		start_index?:                      int
		oauth_partner_certificate_count?:  int
		authorization?:                    string
		idcs_endpoint!:                    string
		compartment_id?:                   string
	}
	rules: {
		sort_order?:                   string
		idcs_endpoint!:                string
		compartment_id?:               string
		rule_filter?:                  string
		attributes?:                   string
		start_index?:                  int
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?: string
		sort_by?:       string
		rule_count?:    int
	}
	api_keys: {
		attributes?:     string
		sort_by?:        string
		authorization?:  string
		start_index?:    int
		compartment_id?: string
		api_key_count?:  int
		idcs_endpoint!:  string
		api_key_filter?: string
		attribute_sets?: [...string]
		sort_order?:                   string
		resource_type_schema_version?: string
	}
	my_requestable_groups: {
		start_index?:                  int
		sort_order?:                   string
		idcs_endpoint!:                string
		compartment_id?:               string
		my_requestable_group_count?:   int
		authorization?:                string
		resource_type_schema_version?: string
		my_requestable_group_filter?:  string
		sort_by?:                      string
	}
	cloud_gate_mapping: {
		attributes?: string
		attribute_sets?: [...string]
		cloud_gate_mapping_id!:        string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
	}
	my_devices: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		my_device_filter?:             string
		my_device_count?:              int
		authorization?:                string
		attribute_sets?: [...string]
		sort_by?:     string
		attributes?:  string
		start_index?: int
		sort_order?:  string
	}
	notification_setting: {
		idcs_endpoint!:                string
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		notification_setting_id!: string
	}
	account_recovery_settings: {
		idcs_endpoint!:  string
		compartment_id?: string
		attributes?:     string
		authorization?:  string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
	}
	app_roles: {
		start_index?:                  int
		sort_order?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		app_role_count?:               int
		sort_by?:                      string
		app_role_filter?:              string
		attributes?:                   string
		authorization?:                string
		compartment_id?:               string
		attribute_sets?: [...string]
	}
	network_perimeters: {
		start_index?:                  int
		sort_order?:                   string
		compartment_id?:               string
		attributes?:                   string
		network_perimeter_count?:      int
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		network_perimeter_filter?:     string
		authorization?:                string
		sort_by?:                      string
		attribute_sets?: [...string]
	}
	setting: {
		setting_id!: string
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		authorization?:                string
		attributes?:                   string
	}
	apps: {
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		start_index?:                  int
		sort_order?:                   string
		compartment_id?:               string
		attributes?:                   string
		authorization?:                string
		app_filter?:                   string
		sort_by?:                      string
		app_count?:                    int
		attribute_sets?: [...string]
	}
	customer_secret_keys: {
		customer_secret_key_filter?:   string
		authorization?:                string
		resource_type_schema_version?: string
		customer_secret_key_count?:    int
		attributes?:                   string
		sort_by?:                      string
		start_index?:                  int
		sort_order?:                   string
		compartment_id?:               string
		attribute_sets?: [...string]
		idcs_endpoint!: string
	}
	identity_propagation_trusts: {
		sort_order?:                        string
		identity_propagation_trust_count?:  int
		start_index?:                       int
		compartment_id?:                    string
		idcs_endpoint!:                     string
		identity_propagation_trust_filter?: string
		attribute_sets?: [...string]
		authorization?:                string
		attributes?:                   string
		resource_type_schema_version?: string
		sort_by?:                      string
	}
	identity_provider: {
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		authorization?:                string
		attributes?:                   string
		attribute_sets?: [...string]
		identity_provider_id!: string
	}
	my_completed_approvals: {
		authorization?:                string
		start_index?:                  int
		sort_order?:                   string
		my_completed_approval_count?:  int
		resource_type_schema_version?: string
		sort_by?:                      string
		idcs_endpoint!:                string
		compartment_id?:               string
		my_completed_approval_filter?: string
	}
	policies: {
		attributes?:    string
		policy_filter?: string
		idcs_endpoint!: string
		policy_count?:  int
		attribute_sets?: [...string]
		sort_order?:                   string
		resource_type_schema_version?: string
		compartment_id?:               string
		sort_by?:                      string
		authorization?:                string
		start_index?:                  int
	}
	dynamic_resource_group: {
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		dynamic_resource_group_id!:    string
		attributes?:                   string
		attribute_sets?: [...string]
		authorization?: string
	}
	kmsi_settings: {
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		attributes?:                   string
		attribute_sets?: [...string]
	}
	my_oauth2client_credential: {
		resource_type_schema_version?:  string
		authorization?:                 string
		my_oauth2client_credential_id!: string
		idcs_endpoint!:                 string
	}
	account_mgmt_info: {
		account_mgmt_info_id!:         string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		attributes?:                   string
		authorization?:                string
		attribute_sets?: [...string]
	}
	app_role: {
		resource_type_schema_version?: string
		authorization?:                string
		attribute_sets?: [...string]
		idcs_endpoint!: string
		attributes?:    string
		app_role_id!:   string
	}
	group: {
		group_id!:                     string
		attributes?:                   string
		authorization?:                string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
	}
	account_mgmt_infos: {
		account_mgmt_info_filter?: string
		attribute_sets?: [...string]
		start_index?:                  int
		idcs_endpoint!:                string
		compartment_id?:               string
		resource_type_schema_version?: string
		sort_order?:                   string
		authorization?:                string
		sort_by?:                      string
		attributes?:                   string
		account_mgmt_info_count?:      int
	}
	my_auth_tokens: {
		compartment_id?:               string
		my_auth_token_filter?:         string
		sort_by?:                      string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		sort_order?:                   string
		authorization?:                string
		start_index?:                  int
		my_auth_token_count?:          int
	}
	my_trusted_user_agents: {
		attribute_sets?: [...string]
		start_index?:                  int
		compartment_id?:               string
		sort_order?:                   string
		idcs_endpoint!:                string
		sort_by?:                      string
		my_trusted_user_agent_count?:  int
		authorization?:                string
		attributes?:                   string
		resource_type_schema_version?: string
		my_trusted_user_agent_filter?: string
	}
	self_registration_profile: {
		attributes?:    string
		idcs_endpoint!: string
		attribute_sets?: [...string]
		self_registration_profile_id!: string
		authorization?:                string
		resource_type_schema_version?: string
	}
	cloud_gate_servers: {
		attributes?:               string
		cloud_gate_server_filter?: string
		authorization?:            string
		sort_order?:               string
		sort_by?:                  string
		idcs_endpoint!:            string
		attribute_sets?: [...string]
		start_index?:                  int
		resource_type_schema_version?: string
		compartment_id?:               string
		cloud_gate_server_count?:      int
	}
	my_device: {
		idcs_endpoint!: string
		authorization?: string
		my_device_id!:  string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		attributes?:                   string
	}
	security_question_settings: {
		attributes?:                   string
		idcs_endpoint!:                string
		compartment_id?:               string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?: string
	}
	authentication_factor_settings: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		attribute_sets?: [...string]
		attributes?:    string
		authorization?: string
	}
	my_oauth2client_credentials: {
		sort_by?:                           string
		start_index?:                       int
		authorization?:                     string
		sort_order?:                        string
		idcs_endpoint!:                     string
		compartment_id?:                    string
		my_oauth2client_credential_count?:  int
		resource_type_schema_version?:      string
		my_oauth2client_credential_filter?: string
	}
	cloud_gates: {
		cloud_gate_count?: int
		attribute_sets?: [...string]
		sort_order?:                   string
		compartment_id?:               string
		start_index?:                  int
		cloud_gate_filter?:            string
		sort_by?:                      string
		idcs_endpoint!:                string
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	security_question_setting: {
		security_question_setting_id!: string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		authorization?: string
		attributes?:    string
	}
	oauth2client_credential: {
		attributes?:                  string
		o_auth2client_credential_id!: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
	}
	security_questions: {
		sort_by?:                      string
		idcs_endpoint!:                string
		sort_order?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		attributes?:                   string
		start_index?:                  int
		security_question_count?:      int
		attribute_sets?: [...string]
		compartment_id?:           string
		security_question_filter?: string
	}
	my_completed_approval: {
		authorization?:                string
		idcs_endpoint!:                string
		my_completed_approval_id!:     string
		resource_type_schema_version?: string
	}
	oauth_client_certificates: {
		sort_order?:                      string
		authorization?:                   string
		oauth_client_certificate_filter?: string
		idcs_endpoint!:                   string
		resource_type_schema_version?:    string
		sort_by?:                         string
		start_index?:                     int
		compartment_id?:                  string
		oauth_client_certificate_count?:  int
	}
	approval_workflow: {
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		approval_workflow_id!:         string
		attribute_sets?: [...string]
		idcs_endpoint!: string
	}
	my_api_keys: {
		authorization?:                string
		compartment_id?:               string
		resource_type_schema_version?: string
		sort_by?:                      string
		my_api_key_count?:             int
		my_api_key_filter?:            string
		sort_order?:                   string
		idcs_endpoint!:                string
		start_index?:                  int
	}
	settings: {
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		attribute_sets?: [...string]
	}
	social_identity_providers: {
		idcs_endpoint!:                   string
		compartment_id?:                  string
		social_identity_provider_count?:  int
		social_identity_provider_filter?: string
		authorization?:                   string
		start_index?:                     int
		sort_order?:                      string
		resource_type_schema_version?:    string
		sort_by?:                         string
	}
	user: {
		attributes?: string
		attribute_sets?: [...string]
		authorization?:                string
		user_id!:                      string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	conditions: {
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		authorization?:                string
		attributes?:                   string
		sort_by?:                      string
		resource_type_schema_version?: string
		compartment_id?:               string
		condition_count?:              int
		sort_order?:                   string
		condition_filter?:             string
		start_index?:                  int
	}
	my_apps: {
		authorization?:                string
		my_app_filter?:                string
		resource_type_schema_version?: string
		start_index?:                  int
		sort_by?:                      string
		my_app_count?:                 int
		idcs_endpoint!:                string
		sort_order?:                   string
		compartment_id?:               string
	}
	my_trusted_user_agent: {
		authorization?:                string
		resource_type_schema_version?: string
		my_trusted_user_agent_id!:     string
		attribute_sets?: [...string]
		attributes?:    string
		idcs_endpoint!: string
	}
	self_registration_profiles: {
		compartment_id?:                  string
		attributes?:                      string
		sort_order?:                      string
		self_registration_profile_count?: int
		attribute_sets?: [...string]
		idcs_endpoint!:                    string
		self_registration_profile_filter?: string
		resource_type_schema_version?:     string
		authorization?:                    string
		start_index?:                      int
		sort_by?:                          string
	}
	cloud_gate_mappings: {
		cloud_gate_mapping_count?: int
		idcs_endpoint!:            string
		authorization?:            string
		sort_order?:               string
		attribute_sets?: [...string]
		attributes?:                   string
		start_index?:                  int
		resource_type_schema_version?: string
		sort_by?:                      string
		cloud_gate_mapping_filter?:    string
		compartment_id?:               string
	}
	condition: {
		condition_id!:  string
		authorization?: string
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		attributes?:                   string
		resource_type_schema_version?: string
	}
	my_pending_approval: {
		my_pending_approval_id!:       string
		resource_type_schema_version?: string
		authorization?:                string
		idcs_endpoint!:                string
	}
	user_db_credential: {
		user_db_credential_id!: string
		idcs_endpoint!:         string
		authorization?:         string
		attributes?:            string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
	}
	app: {
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		attributes?: string
		app_id!:     string
	}
	dynamic_resource_groups: {
		compartment_id?:                string
		sort_by?:                       string
		idcs_endpoint!:                 string
		attributes?:                    string
		dynamic_resource_group_filter?: string
		resource_type_schema_version?:  string
		sort_order?:                    string
		attribute_sets?: [...string]
		authorization?:                string
		dynamic_resource_group_count?: int
		start_index?:                  int
	}
	branding_setting: {
		attributes?:                   string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		idcs_endpoint!:       string
		authorization?:       string
		branding_setting_id!: string
	}
	user_db_credentials: {
		sort_by?:                      string
		compartment_id?:               string
		authorization?:                string
		sort_order?:                   string
		resource_type_schema_version?: string
		user_db_credential_count?:     int
		start_index?:                  int
		attribute_sets?: [...string]
		idcs_endpoint!:             string
		user_db_credential_filter?: string
		attributes?:                string
	}
	my_pending_approvals: {
		idcs_endpoint!:                string
		compartment_id?:               string
		sort_by?:                      string
		my_pending_approval_filter?:   string
		authorization?:                string
		resource_type_schema_version?: string
		sort_order?:                   string
		start_index?:                  int
		my_pending_approval_count?:    int
	}
	social_identity_provider: {
		idcs_endpoint!:                string
		social_identity_provider_id!:  string
		authorization?:                string
		resource_type_schema_version?: string
	}
	identity_providers: {
		identity_provider_filter?:     string
		compartment_id?:               string
		resource_type_schema_version?: string
		sort_order?:                   string
		start_index?:                  int
		sort_by?:                      string
		attributes?:                   string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		authorization?:           string
		identity_provider_count?: int
	}
	identity_settings: {
		idcs_endpoint!:  string
		compartment_id?: string
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	password_policy: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		attributes?:         string
		password_policy_id!: string
		authorization?:      string
		idcs_endpoint!:      string
	}
	auth_tokens: {
		resource_type_schema_version?: string
		attributes?:                   string
		sort_by?:                      string
		idcs_endpoint!:                string
		authorization?:                string
		auth_token_filter?:            string
		auth_token_count?:             int
		attribute_sets?: [...string]
		sort_order?:     string
		start_index?:    int
		compartment_id?: string
	}
	grants: {
		start_index?:    int
		idcs_endpoint!:  string
		compartment_id?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		sort_order?:                   string
		grant_filter?:                 string
		attributes?:                   string
		authorization?:                string
		grant_count?:                  int
		sort_by?:                      string
	}
	approval_workflows: {
		approval_workflow_count?:  int
		approval_workflow_filter?: string
		authorization?:            string
		start_index?:              int
		idcs_endpoint!:            string
		compartment_id?:           string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
	}
	identity_setting: {
		authorization?: string
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		identity_setting_id!:          string
		attributes?:                   string
	}
	notification_settings: {
		idcs_endpoint!:  string
		authorization?:  string
		compartment_id?: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
	}
	oauth2client_credentials: {
		oauth2client_credential_filter?: string
		attributes?:                     string
		authorization?:                  string
		compartment_id?:                 string
		attribute_sets?: [...string]
		sort_order?:                    string
		oauth2client_credential_count?: int
		sort_by?:                       string
		idcs_endpoint!:                 string
		resource_type_schema_version?:  string
		start_index?:                   int
	}
	rule: {
		attribute_sets?: [...string]
		attributes?:                   string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		authorization?:                string
		rule_id!:                      string
	}
	customer_secret_key: {
		authorization?:          string
		idcs_endpoint!:          string
		customer_secret_key_id!: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
	}
	auth_token: {
		idcs_endpoint!: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
		auth_token_id!:                string
		authorization?:                string
	}
	identity_propagation_trust: {
		idcs_endpoint!:                 string
		attributes?:                    string
		identity_propagation_trust_id!: string
		authorization?:                 string
		resource_type_schema_version?:  string
		attribute_sets?: [...string]
	}
	branding_settings: {
		attribute_sets?: [...string]
		attributes?:                   string
		compartment_id?:               string
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	users: {
		attribute_sets?: [...string]
		user_count?:                   int
		start_index?:                  int
		authorization?:                string
		resource_type_schema_version?: string
		sort_by?:                      string
		attributes?:                   string
		idcs_endpoint!:                string
		sort_order?:                   string
		compartment_id?:               string
		user_filter?:                  string
	}
	resource_type_schema_attributes: {
		compartment_id?:                        string
		sort_order?:                            string
		resource_type_schema_version?:          string
		idcs_endpoint!:                         string
		sort_by?:                               string
		start_index?:                           int
		resource_type_schema_attribute_count?:  int
		attributes?:                            string
		resource_type_schema_attribute_filter?: string
		attribute_sets?: [...string]
		authorization?: string
	}
	kmsi_setting: {
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		kmsi_setting_id!:              string
		idcs_endpoint!:                string
	}
	my_user_db_credential: {
		my_user_db_credential_id!:     string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
	}
	my_smtp_credential: {
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		my_smtp_credential_id!:        string
	}
	my_smtp_credentials: {
		sort_by?:                      string
		compartment_id?:               string
		my_smtp_credential_count?:     int
		resource_type_schema_version?: string
		my_smtp_credential_filter?:    string
		idcs_endpoint!:                string
		sort_order?:                   string
		authorization?:                string
		start_index?:                  int
	}
	password_policies: {
		password_policy_filter?: string
		attribute_sets?: [...string]
		authorization?:                string
		password_policy_count?:        int
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		start_index?:                  int
		sort_order?:                   string
		sort_by?:                      string
		compartment_id?:               string
	}
	user_attributes_settings: {
		compartment_id?: string
		attributes?:     string
		attribute_sets?: [...string]
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	my_api_key: {
		idcs_endpoint!:                string
		authorization?:                string
		my_api_key_id!:                string
		resource_type_schema_version?: string
	}
	my_customer_secret_key: {
		idcs_endpoint!:                string
		my_customer_secret_key_id!:    string
		authorization?:                string
		resource_type_schema_version?: string
	}
	oauth_partner_certificate: {
		authorization?:                 string
		resource_type_schema_version?:  string
		idcs_endpoint!:                 string
		o_auth_partner_certificate_id!: string
	}
	smtp_credentials: {
		authorization?:                string
		resource_type_schema_version?: string
		sort_order?:                   string
		smtp_credential_filter?:       string
		idcs_endpoint!:                string
		attributes?:                   string
		smtp_credential_count?:        int
		attribute_sets?: [...string]
		sort_by?:        string
		start_index?:    int
		compartment_id?: string
	}
	api_key: {
		api_key_id!:    string
		attributes?:    string
		authorization?: string
		idcs_endpoint!: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
	}
	my_customer_secret_keys: {
		start_index?:                   int
		sort_order?:                    string
		my_customer_secret_key_count?:  int
		authorization?:                 string
		sort_by?:                       string
		compartment_id?:                string
		resource_type_schema_version?:  string
		idcs_endpoint!:                 string
		my_customer_secret_key_filter?: string
	}
	network_perimeter: {
		idcs_endpoint!:        string
		network_perimeter_id!: string
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	oci_console_sign_on_policy_consents: {
		idcs_endpoint!:                            string
		oci_console_sign_on_policy_consent_count?: int
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		authorization?:                string
		start_index?:                  int
		attributes?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		oci_console_sign_on_policy_consent_filter?: string
	}
	smtp_credential: {
		smtp_credential_id!: string
		attributes?:         string
		idcs_endpoint!:      string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		authorization?:                string
	}
	user_attributes_setting: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?:              string
		user_attributes_setting_id!: string
		idcs_endpoint!:              string
		attributes?:                 string
	}
	cloud_gate: {
		attribute_sets?: [...string]
		attributes?:                   string
		cloud_gate_id!:                string
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	my_support_account: {
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		my_support_account_id!:        string
		authorization?:                string
	}
	groups: {
		attributes?:     string
		idcs_endpoint!:  string
		authorization?:  string
		sort_by?:        string
		sort_order?:     string
		compartment_id?: string
		attribute_sets?: [...string]
		group_count?:                  int
		start_index?:                  int
		group_filter?:                 string
		resource_type_schema_version?: string
	}
	security_question: {
		resource_type_schema_version?: string
		security_question_id?:         string
		authorization?:                string
		attribute_sets?: [...string]
		attributes?:    string
		idcs_endpoint!: string
	}
	approval_workflow_assignments: {
		start_index?:                         int
		approval_workflow_assignment_filter?: string
		idcs_endpoint!:                       string
		sort_order?:                          string
		attributes?:                          string
		authorization?:                       string
		attribute_sets?: [...string]
		approval_workflow_assignment_count?: int
		resource_type_schema_version?:       string
		compartment_id?:                     string
		sort_by?:                            string
	}
	grant: {
		attribute_sets?: [...string]
		authorization?:                string
		resource_type_schema_version?: string
		grant_id!:                     string
		attributes?:                   string
		idcs_endpoint!:                string
	}
	my_groups: {
		resource_type_schema_version?: string
		sort_order?:                   string
		idcs_endpoint!:                string
		my_group_count?:               int
		start_index?:                  int
		authorization?:                string
		attribute_sets?: [...string]
		compartment_id?:  string
		sort_by?:         string
		attributes?:      string
		my_group_filter?: string
	}
	account_recovery_setting: {
		idcs_endpoint!:                string
		attributes?:                   string
		resource_type_schema_version?: string
		account_recovery_setting_id!:  string
		attribute_sets?: [...string]
		authorization?: string
	}
	cloud_gate_server: {
		resource_type_schema_version?: string
		authorization?:                string
		attribute_sets?: [...string]
		attributes?:           string
		idcs_endpoint!:        string
		cloud_gate_server_id!: string
	}
	authentication_factor_setting: {
		resource_type_schema_version?: string
		attributes?:                   string
		attribute_sets?: [...string]
		authentication_factor_setting_id?: string
		idcs_endpoint!:                    string
		authorization?:                    string
	}
	my_auth_token: {
		my_auth_token_id!:             string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
	}
	my_requests: {
		sort_order?:                   string
		sort_by?:                      string
		resource_type_schema_version?: string
		my_request_count?:             int
		authorization?:                string
		idcs_endpoint!:                string
		attributes?:                   string
		compartment_id?:               string
		attribute_sets?: [...string]
		start_index?:       int
		my_request_filter?: string
	}
	my_user_db_credentials: {
		my_user_db_credential_count?:  int
		sort_order?:                   string
		compartment_id?:               string
		authorization?:                string
		resource_type_schema_version?: string
		start_index?:                  int
		my_user_db_credential_filter?: string
		sort_by?:                      string
		idcs_endpoint!:                string
	}
	oauth_client_certificate: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		o_auth_client_certificate_id!: string
	}
	approval_workflow_assignment: {
		approval_workflow_assignment_id!: string
		resource_type_schema_version?:    string
		attributes?:                      string
		authorization?:                   string
		attribute_sets?: [...string]
		idcs_endpoint!: string
	}
	approval_workflow_step: {
		approval_workflow_step_id!: string
		idcs_endpoint!:             string
		attribute_sets?: [...string]
		authorization?:                string
		resource_type_schema_version?: string
		attributes?:                   string
	}
	oci_console_sign_on_policy_consent: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		attributes?:                            string
		authorization?:                         string
		oci_console_sign_on_policy_consent_id!: string
	}
	policy: {
		policy_id!:                    string
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		authorization?: string
	}
	approval_workflow_steps: {
		authorization?:                 string
		start_index?:                   int
		sort_by?:                       string
		approval_workflow_step_filter?: string
		attributes?:                    string
		sort_order?:                    string
		approval_workflow_step_count?:  int
		idcs_endpoint!:                 string
		compartment_id?:                string
		resource_type_schema_version?:  string
		attribute_sets?: [...string]
	}
	my_support_accounts: {
		authorization?:                string
		resource_type_schema_version?: string
		my_support_account_filter?:    string
		my_support_account_count?:     int
		sort_order?:                   string
		sort_by?:                      string
		idcs_endpoint!:                string
		compartment_id?:               string
		start_index?:                  int
	}
}

