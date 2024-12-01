package identity_domains

#resource: {
	attributes: {
		my_auth_token: {
			id:           string
			description?: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			status?:     string
			domain_ocid: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			resource_type_schema_version?: string
			expires_on?:                   string
			schemas!: [...string]
			ocid?: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			tenancy_ocid:   string
			authorization?: string
			user?: [...{
				display: string
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
			}]
			delete_in_progress: bool
			idcs_endpoint!:     string
			compartment_ocid:   string
		}
		account_recovery_setting: {
			factors!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			lockout_duration!:             int
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
			schemas!: [...string]
			delete_in_progress:           bool
			account_recovery_setting_id!: string
			compartment_ocid:             string
			attributes?:                  string
			attribute_sets?: [...string]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			external_id?: string
			id:           string
			idcs_prevented_operations: [...string]
			ocid?: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			idcs_endpoint!:                string
			max_incorrect_attempts!:       int
			authorization?:                string
			resource_type_schema_version?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			domain_ocid: string
		}
		cloud_gate: {
			authorization?: string
			upstream_servers: [...{
				port?:           int
				ref:             string
				value!:          string
				display_name?:   string
				group_id?:       string
				host_name?:      string
				nginx_settings?: string
			}]
			last_modified_time?: string
			idcs_endpoint!:      string
			type?:               string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			attribute_sets?: [...string]
			attributes?:   string
			display_name!: string
			schemas!: [...string]
			upstream_server_groups: [...{
				nginx_settings?: string
				ssl?:            bool
				ref:             string
				display_name!:   string
				value!:          string
			}]
			resource_type_schema_version?: string
			delete_in_progress:            bool
			oauth_client: [...{
				client_id?: string
				value?:     string
				ref:        string
			}]
			mappings: [...{
				proxy_pass?:               string
				upstream_server_group_id?: string
				value?:                    string
				nginx_settings?:           string
				name?:                     string
				ref:                       string
				resource_prefix!:          string
				mapping_id?:               string
				policy_name?:              string
				server_id!:                string
				app_id?:                   string
			}]
			idcs_prevented_operations: [...string]
			compartment_ocid: string
			id:               string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			servers: [...{
				port!:           int
				ssl!:            bool
				nginx_settings?: string
				server_id?:      string
				host_name!:      string
			}]
			tenancy_ocid:                  string
			description?:                  string
			idcs_last_upgraded_in_release: string
			domain_ocid:                   string
			ocid?:                         string
			is_opc_service:                bool
			active?:                       bool
		}
		cloud_gate_mapping: {
			attributes?: string
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			proxy_pass?: string
			cloud_gate!: [...{
				value!: string
				ref:    string
			}]
			ocid?:            string
			compartment_ocid: string
			gateway_app!: [...{
				ref:    string
				name!:  string
				value!: string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			resource_prefix!: string
			attribute_sets?: [...string]
			idcs_prevented_operations: [...string]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			domain_ocid:                   string
			idcs_last_upgraded_in_release: string
			authorization?:                string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			description?:       string
			tenancy_ocid:       string
			delete_in_progress: bool
			id:                 string
			policy_name!:       string
			server!: [...{
				value!: string
				ref:    string
			}]
			schemas!: [...string]
			nginx_settings?:               string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			upstream_server_group?: [...{
				value?: string
				ref:    string
				ssl?:   bool
			}]
			is_opc_service: bool
		}
		grant: {
			is_fulfilled:   bool
			idcs_endpoint!: string
			composite_key:  string
			attributes?:    string
			schemas!: [...string]
			resource_type_schema_version?: string
			compartment_ocid:              string
			id:                            string
			grantee!: [...{
				type!:   string
				value!:  string
				display: string
				ref:     string
			}]
			granted_attribute_values_json?: string
			app?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			domain_ocid: string
			entitlement?: [...{
				attribute_name!:  string
				attribute_value!: string
			}]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			authorization?: string
			grantor: [...{
				display: string
				ref:     string
				type:    string
				value:   string
			}]
			ocid?:              string
			delete_in_progress: bool
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			grant_mechanism!: string
			app_entitlement_collection?: [...{
				value!: string
				ref:    string
			}]
			idcs_prevented_operations: [...string]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			tenancy_ocid: string
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release: string
		}
		policy: {
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			compartment_ocid:              string
			attributes?:                   string
			idcs_last_upgraded_in_release: string
			policy_groovy?:                string
			external_id?:                  string
			domain_ocid:                   string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			name!:        string
			description?: string
			attribute_sets?: [...string]
			tenancy_ocid: string
			rules?: [...{
				sequence!: int
				value!:    string
				name:      string
				ref:       string
			}]
			policy_type!: [...{
				value!: string
				ref:    string
			}]
			idcs_endpoint!: string
			ocid?:          string
			active?:        bool
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			schemas!: [...string]
			authorization?:                string
			resource_type_schema_version?: string
			id:                            string
			delete_in_progress:            bool
			idcs_prevented_operations: [...string]
			tags?: [...{
				value!: string
				key!:   string
			}]
		}
		user: {
			urnietfparamsscimschemasoracleidcsextensionmfa_user?: [...{
				mfa_enabled_on?: string
				trusted_user_agents?: [...{
					display?: string
					ref:      string
					value!:   string
				}]
				preferred_authentication_factor?: string
				preferred_authentication_method?: string
				preferred_third_party_vendor?:    string
				bypass_codes?: [...{
					value!: string
					ref:    string
				}]
				mfa_status?: string
				preferred_device?: [...{
					value!:   string
					display?: string
					ref:      string
				}]
				login_attempts?: int
				devices?: [...{
					last_sync_time?:          string
					status?:                  string
					value!:                   string
					authentication_method?:   string
					factor_type?:             string
					ref:                      string
					display?:                 string
					factor_status?:           string
					third_party_vendor_name?: string
				}]
				mfa_ignored_apps?: [...string]
			}]
			delete_in_progress: bool
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			ims?: [...{
				value!:   string
				display?: string
				primary?: bool
				type!:    string
			}]
			timezone?: string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
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
			urnietfparamsscimschemasoracleidcsextensionsocial_account_user?: [...{
				social_accounts?: [...{
					value!: string, display?: string, ref: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionkerberos_user_user?: [...{
				realm_users?: [...{
					value!: string, principal_name?: string, realm_name?: string, ref: string
				}]
			}]
			title?:        string
			locale?:       string
			display_name?: string
			user_type?:    string
			name?: [...{
				honorific_suffix?: string
				middle_name?:      string
				family_name?:      string
				formatted?:        string
				given_name?:       string
				honorific_prefix?: string
			}]
			roles?: [...{
				display?: string
				primary?: bool
				type!:    string
				value!:   string
			}]
			idcs_prevented_operations: [...string]
			password?:           string
			authorization?:      string
			preferred_language?: string
			force_delete?:       bool
			urnietfparamsscimschemasoracleidcsextensionpassword_state_user: [...{
				applicable_password_policy?: [...{
					priority?: int
					ref:       string
					value!:    string
					display?:  string
				}]
				cant_change?:                     bool
				cant_expire?:                     bool
				expired?:                         bool
				last_failed_validation_date?:     string
				last_successful_set_date?:        string
				last_successful_validation_date?: string
				must_change?:                     bool
			}]
			nick_name?:   string
			description?: string
			emails?: [...{
				primary?:                  bool
				secondary?:                bool
				verified?:                 bool
				pending_verification_data: string
				type!:                     string
				value!:                    string
			}]
			tenancy_ocid: string
			x509certificates?: [...{
				type?:    string
				value!:   string
				display?: string
				primary?: bool
			}]
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
			addresses?: [...{
				street_address?: string
				type!:           string
				country?:        string
				formatted?:      string
				locality?:       string
				postal_code?:    string
				primary?:        bool
				region?:         string
			}]
			attributes?: string
			urnietfparamsscimschemasextensionenterprise20user?: [...{
				cost_center?:     string
				department?:      string
				division?:        string
				employee_number?: string
				manager?: [...{
					value?:       string
					display_name: string
					ref:          string
				}]
				organization?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_credentials_user: [...{
				auth_tokens?: [...{
					ocid?:  string
					value?: string
					ref:    string
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
					value?: string
					ref:    string
					ocid?:  string
				}]
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
			}]
			user_name!: string
			urnietfparamsscimschemasoracleidcsextensioncapabilities_user?: [...{
				can_use_console?:                  bool
				can_use_console_password?:         bool
				can_use_customer_secret_keys?:     bool
				can_use_db_credentials?:           bool
				can_use_oauth2client_credentials?: bool
				can_use_smtp_credentials?:         bool
				can_use_api_keys?:                 bool
				can_use_auth_tokens?:              bool
			}]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_endpoint!: string
			profile_url?:   string
			urnietfparamsscimschemasoracleidcsextensionuser_user?: [...{
				is_group_membership_normalized?: bool
				is_authentication_delegated?:    bool
				group_membership_last_modified:  string
				synced_from_app?: [...{
					type!:    string
					value!:   string
					display?: string
					ref:      string
				}]
				user_provider?:               string
				is_federated_user?:           bool
				is_account_recovery_enrolled: bool
				bypass_notification?:         bool
				preferred_ui_landing_page?:   string
				service_user?:                bool
				account_recovery_required?:   bool
				app_roles: [...{
					display?:           string
					legacy_group_name?: string
					type?:              string
					ref:                string
					value!:             string
					admin_role?:        bool
					app_id?:            string
					app_name?:          string
				}]
				do_not_show_getting_started?:             bool
				user_flow_controlled_by_external_client?: bool
				accounts: [...{
					value?:  string
					ref:     string
					active?: bool
					app_id?: string
					name?:   string
				}]
				support_accounts: [...{
					user_provider?: string
					ocid?:          string
					user_id?:       string
					value?:         string
					ref:            string
				}]
				idcs_app_roles_limited_to_groups: [...{
					ocid?:             string
					ref:               string
					idcs_app_role_id!: string
					value!:            string
					display?:          string
				}]
				applicable_authentication_target_app: [...{
					display?:                string
					target_request_timeout?: int
					value?:                  string
					ref:                     string
					type!:                   string
				}]
				delegated_authentication_target_app?: [...{
					type!:    string
					value!:   string
					display?: string
					ref:      string
				}]
				notification_email_template_id?: string
				user_token: [...{
					value?: string
					ref:    string
				}]
				is_group_membership_synced_to_users_groups?: bool
				grants: [...{
					grantor_id?:      string
					value?:           string
					ref:              string
					app_id?:          string
					grant_mechanism?: string
				}]
				status:              string
				creation_mechanism?: string
			}]
			compartment_ocid: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensionadaptive_user?: [...{
				risk_level?: string
				risk_scores?: [...{
					ref:                    string
					last_update_timestamp!: string
					risk_level!:            string
					score!:                 int
					value!:                 string
					source?:                string
					status?:                string
				}]
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			phone_numbers?: [...{
				value!:   string
				primary?: bool
				display:  string
				verified: bool
				type!:    string
			}]
			urnietfparamsscimschemasoracleidcsextensionpasswordless_user?: [...{
				factor_identifier?: [...{
					ref:      string
					value!:   string
					display?: string
				}]
				factor_method?: string
				factor_type?:   string
			}]
			urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user?: [...{
				sec_questions?: [...{
					value!: string, hint_text?: string, ref: string, answer!: string
				}]
			}]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionterms_of_use_user?: [...{
				terms_of_use_consents?: [...{
					value!: string, ref: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_state_user?: [...{
				locked?: [...{
					expired?:   bool
					lock_date?: string
					on?:        bool
					reason?:    int
				}]
				max_concurrent_sessions?:       int
				previous_successful_login_date: string
				recovery_enroll_attempts:       int
				last_failed_login_date:         string
				last_successful_login_date:     string
				login_attempts:                 int
				recovery_attempts:              int
				recovery_locked?: [...{
					lock_date?: string
					on?:        bool
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionposix_user?: [...{
				gecos?:          string
				gid_number?:     int
				home_directory?: string
				login_shell?:    string
				uid_number?:     int
			}]
			id:          string
			ocid?:       string
			domain_ocid: string
			photos?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			external_id?: string
			urnietfparamsscimschemasoracleidcsextensiondb_credentials_user?: [...{
				db_user_name?:     string
				db_login_attempts: int
			}]
			active?: bool
			urnietfparamsscimschemasoracleidcsextensionsff_user?: [...{
				sff_auth_keys?: string
			}]
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_registration_user?: [...{
				self_registration_profile!: [...{
					display?: string
					ref:      string
					value!:   string
				}]
				consent_granted?: bool
				user_token?:      string
			}]
			groups: [...{
				value!:              string
				display?:            string
				membership_ocid?:    string
				ref:                 string
				date_added?:         string
				non_unique_display?: string
				ocid?:               string
				type?:               string
				external_id?:        string
			}]
			entitlements?: [...{
				display?: string
				primary?: bool
				type!:    string
				value!:   string
			}]
			attribute_sets?: [...string]
		}
		api_key: {
			attribute_sets?: [...string]
			key!:           string
			attributes?:    string
			idcs_endpoint!: string
			idcs_prevented_operations: [...string]
			schemas!: [...string]
			domain_ocid:      string
			id:               string
			compartment_ocid: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			idcs_last_upgraded_in_release: string
			resource_type_schema_version?: string
			delete_in_progress:            bool
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			authorization?: string
			ocid?:          string
			fingerprint:    string
			tenancy_ocid:   string
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
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			description?: string
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
		}
		approval_workflow_assignment: {
			idcs_endpoint!:                string
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			assignment_type!:              string
			assigned_to!: [...{
				ocid?:       string
				description: string
				display:     string
				type!:       string
				value!:      string
			}]
			ocid?: string
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
			attributes?:      string
			id:               string
			compartment_ocid: string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			domain_ocid: string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			tenancy_ocid: string
			schemas!: [...string]
			authorization?: string
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			idcs_prevented_operations: [...string]
			approval_workflow!: [...{
				ocid?:   string
				display: string
				ref:     string
				type!:   string
				value!:  string
			}]
		}
		condition: {
			attribute_name!:    string
			idcs_endpoint!:     string
			description?:       string
			operator!:          string
			id:                 string
			delete_in_progress: bool
			authorization?:     string
			attribute_sets?: [...string]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			schemas!: [...string]
			ocid?:       string
			domain_ocid: string
			idcs_prevented_operations: [...string]
			compartment_ocid: string
			name!:            string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			resource_type_schema_version?: string
			external_id?:                  string
			attribute_value!:              string
			attributes?:                   string
			evaluate_condition_if?:        string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
		}
		my_support_account: {
			delete_in_progress: bool
			tenancy_ocid:       string
			token!:             string
			idcs_prevented_operations: [...string]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			ocid?: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_endpoint!:                string
			my_support_account_provider:   string
			idcs_last_upgraded_in_release: string
			resource_type_schema_version?: string
			id:                            string
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
			user_id:          string
			authorization?:   string
			compartment_ocid: string
			domain_ocid:      string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
		}
		security_question_setting: {
			ocid?:        string
			tenancy_ocid: string
			schemas!: [...string]
			max_field_length!:             int
			num_questions_to_setup!:       int
			idcs_last_upgraded_in_release: string
			idcs_endpoint!:                string
			external_id?:                  string
			num_questions_to_ans!:         int
			idcs_prevented_operations: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			id:          string
			domain_ocid: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			security_question_setting_id!: string
			attribute_sets?: [...string]
			attributes?: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			compartment_ocid:   string
			delete_in_progress: bool
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			authorization?:                string
			min_answer_length!:            int
			resource_type_schema_version?: string
		}
		self_registration_profile: {
			delete_in_progress:                    bool
			activation_email_required!:            bool
			number_of_days_redirect_url_is_valid!: int
			show_on_login_page!:                   bool
			default_groups?: [...{
				ref:     string
				value!:  string
				display: string
			}]
			footer_logo?:   string
			authorization?: string
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			domain_ocid: string
			name!:       string
			display_name!: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			tenancy_ocid: string
			email_template!: [...{
				ref:     string
				value!:  string
				display: string
			}]
			schemas!: [...string]
			active?:      bool
			external_id?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			consent_text_present!: bool
			idcs_endpoint!:        string
			header_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			attributes?: string
			attribute_sets?: [...string]
			disallowed_email_domains?: [...string]
			compartment_ocid: string
			user_attributes?: [...{
				deletable:                       bool
				metadata:                        string
				seq_number!:                     int
				value!:                          string
				fully_qualified_attribute_name?: string
			}]
			id:                            string
			header_logo?:                  string
			resource_type_schema_version?: string
			consent_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			footer_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			after_submit_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			ocid?:         string
			redirect_url!: string
			allowed_email_domains?: [...string]
		}
		my_api_key: {
			user?: [...{
				ocid?:   string
				value?:  string
				display: string
				name:    string
				ref:     string
			}]
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			tenancy_ocid:       string
			authorization?:     string
			description?:       string
			delete_in_progress: bool
			ocid?:              string
			compartment_ocid:   string
			id:                 string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			key!:                          string
			schemas!: [...string]
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_prevented_operations: [...string]
			domain_ocid:                   string
			idcs_last_upgraded_in_release: string
			fingerprint:                   string
		}
		network_perimeter: {
			name!: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			idcs_prevented_operations: [...string]
			authorization?:   string
			id:               string
			compartment_ocid: string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			ip_addresses!: [...{
				type?:    string
				version?: string
				value!:   string
			}]
			description?:                  string
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			delete_in_progress: bool
			tenancy_ocid:       string
			schemas!: [...string]
			external_id?:   string
			domain_ocid:    string
			idcs_endpoint!: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			attributes?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			idcs_last_upgraded_in_release: string
		}
		oauth_partner_certificate: {
			cert_end_date:    string
			compartment_ocid: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			id:                            string
			idcs_last_upgraded_in_release: string
			tenancy_ocid:                  string
			cert_start_date:               string
			key_store_password?:           string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			schemas!: [...string]
			certificate_alias!: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_prevented_operations: [...string]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			domain_ocid:                   string
			delete_in_progress:            bool
			map?:                          string
			key_store_name?:               string
			external_id?:                  string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			ocid?:                  string
			authorization?:         string
			key_store_id?:          string
			sha1thumbprint:         string
			sha256thumbprint:       string
			x509base64certificate?: string
		}
		rule: {
			domain_ocid:                   string
			idcs_last_upgraded_in_release: string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			condition!:                    string
			name!:                         string
			resource_type_schema_version?: string
			condition_group?: [...{
				name:   string
				type!:  string
				value?: string
				ref:    string
			}]
			delete_in_progress: bool
			tenancy_ocid:       string
			external_id?:       string
			attributes?:        string
			return!: [...{
				name!:          string
				value!:         string
				return_groovy?: string
			}]
			ocid?: string
			id:    string
			attribute_sets?: [...string]
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
			idcs_endpoint!:   string
			active?:          bool
			authorization?:   string
			locked?:          bool
			compartment_ocid: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			schemas!: [...string]
			policy_type!: [...{
				value!: string
				ref:    string
			}]
			idcs_prevented_operations: [...string]
			description?: string
			rule_groovy?: string
		}
		approval_workflow_step: {
			order!:                        int
			resource_type_schema_version?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			approvers?: [...{
				type!:   string
				value!:  string
				ocid?:   string
				display: string
				ref:     string
			}]
			idcs_prevented_operations: [...string]
			attributes?:      string
			idcs_endpoint!:   string
			compartment_ocid: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			idcs_last_upgraded_in_release: string
			domain_ocid:                   string
			tags?: [...{
				key!:   string
				value!: string
			}]
			delete_in_progress: bool
			minimum_approvals?: int
			tenancy_ocid:       string
			schemas!: [...string]
			ocid?: string
			id:    string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			type!: string
			approvers_expressions?: [...string]
			authorization?: string
			attribute_sets?: [...string]
		}
		customer_secret_key: {
			status?:      string
			tenancy_ocid: string
			user?: [...{
				ocid?:   string
				value?:  string
				display: string
				name:    string
				ref:     string
			}]
			display_name?: string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_prevented_operations: [...string]
			secret_key: string
			ocid?:      string
			schemas!: [...string]
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			access_key:                    string
			expires_on?:                   string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?:   string
			description?:     string
			compartment_ocid: string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			id:                 string
			idcs_endpoint!:     string
			attributes?:        string
			delete_in_progress: bool
			domain_ocid:        string
		}
		my_request: {
			approval_details?: [...{
				time_updated:          string
				approval_type:         string
				approver_display_name: string
				approver_id:           string
				justification:         string
				order:                 int
				status:                string
			}]
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			expires:                       string
			requestor?: [...{
				display: string
				ref:     string
				value!:  string
			}]
			authorization?: string
			domain_ocid:    string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				type?:    string
				ocid:     string
			}]
			idcs_prevented_operations: [...string]
			compartment_ocid:              string
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			justification!:                string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			id: string
			requesting!: [...{
				type!:       string
				value!:      string
				description: string
				display:     string
				ref:         string
			}]
			schemas!: [...string]
			tenancy_ocid:   string
			idcs_endpoint!: string
			action?:        string
			attributes?:    string
			ocid?:          string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				type?:    string
				ocid:     string
				ref:      string
			}]
			status: string
		}
		password_policy: {
			idcs_endpoint!:                string
			authorization?:                string
			min_length?:                   int
			resource_type_schema_version?: string
			first_name_disallowed?:        bool
			schemas!: [...string]
			max_length?: int
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			min_password_age?: int
			disallowed_substrings?: [...string]
			dictionary_word_disallowed?: bool
			attribute_sets?: [...string]
			name!:                 string
			force_password_reset?: bool
			required_chars?:       string
			min_upper_case?:       int
			min_alpha_numerals?:   int
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			disallowed_user_attribute_values?: [...string]
			domain_ocid:             string
			max_incorrect_attempts?: int
			delete_in_progress:      bool
			compartment_ocid:        string
			priority?:               int
			external_id?:            string
			configured_password_policy_rules: [...{
				key!:   string
				value!: string
			}]
			password_expire_warning?: int
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			min_unique_chars?:     int
			min_alphas?:           int
			min_special_chars?:    int
			password_strength?:    string
			last_name_disallowed?: bool
			ocid?:                 string
			idcs_prevented_operations: [...string]
			disallowed_chars?:     string
			min_lower_case?:       int
			dictionary_delimiter?: string
			groups?: [...{
				value!:  string
				display: string
				ref:     string
			}]
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_upgraded_in_release: string
			dictionary_location?:          string
			distinct_characters?:          int
			starts_with_alphabet?:         bool
			id:                            string
			tenancy_ocid:                  string
			allowed_chars?:                string
			password_expires_after?:       int
			user_name_disallowed?:         bool
			attributes?:                   string
			lockout_duration?:             int
			max_repeated_chars?:           int
			num_passwords_in_history?:     int
			max_special_chars?:            int
			min_numerals?:                 int
		}
		approval_workflow: {
			tenancy_ocid: string
			attributes?:  string
			schemas!: [...string]
			attribute_sets?: [...string]
			authorization?: string
			idcs_endpoint!: string
			name!:          string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_prevented_operations: [...string]
			compartment_ocid:              string
			domain_ocid:                   string
			ocid?:                         string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			delete_in_progress: bool
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			approval_workflow_steps?: [...{
				ocid?:  string
				order:  int
				ref:    string
				type!:  string
				value!: string
			}]
			description?:                  string
			id:                            string
			idcs_last_upgraded_in_release: string
			max_duration!: [...{
				value!: int
				unit!:  string
			}]
		}
		group: {
			attributes?: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			domain_ocid:                   string
			authorization?:                string
			delete_in_progress:            bool
			ocid?:                         string
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensiongroup_group?: [...{
				synced_from_app: [...{
					value!:   string
					display?: string
					ref:      string
					type!:    string
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
					legacy_group_name?: string
					type?:              string
					ref:                string
					value!:             string
					admin_role?:        bool
					app_id?:            string
					app_name?:          string
					display?:           string
				}]
				grants: [...{
					grant_mechanism?: string
					value?:           string
					ref:              string
					app_id?:          string
				}]
				password_policy: [...{
					priority?: int
					ref:       string
					value!:    string
					name?:     string
				}]
			}]
			tenancy_ocid:   string
			idcs_endpoint!: string
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				tag_slug: string
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
			force_delete?: bool
			members?: [...{
				date_added:      string
				display:         string
				membership_ocid: string
				name:            string
				ref:             string
				type!:           string
				value!:          string
				ocid?:           string
			}]
			idcs_prevented_operations: [...string]
			tags?: [...{
				value!: string
				key!:   string
			}]
			attribute_sets?: [...string]
			display_name!:    string
			compartment_ocid: string
			id:               string
			urnietfparamsscimschemasoracleidcsextensionrequestable_group?: [...{
				requestable?: bool
			}]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			urnietfparamsscimschemasoracleidcsextensiondynamic_group?: [...{
				membership_rule?: string
				membership_type?: string
			}]
			non_unique_display_name?: string
			schemas!: [...string]
			urnietfparamsscimschemasoracleidcsextensiondbcs_group: [...{
				domain_level_schema?: string
				domain_level_schema_names?: [...{
					domain_name!: string
					schema_name!: string
				}]
				instance_level_schema?: string
				instance_level_schema_names?: [...{
					schema_name!:    string
					db_instance_id!: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionposix_group?: [...{
				gid_number?: int
			}]
			external_id?:                  string
			idcs_last_upgraded_in_release: string
		}
		identity_setting: {
			ocid?: string
			schemas!: [...string]
			compartment_ocid: string
			authorization?:   string
			id:               string
			idcs_prevented_operations: [...string]
			posix_uid?: [...{
				manual_assignment_starts_from?: int
				manual_assignment_ends_at?:     int
			}]
			primary_email_required?: bool
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			attributes?:                          string
			return_inactive_over_locked_message?: bool
			posix_gid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			idcs_last_upgraded_in_release: string
			identity_setting_id!:          string
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			tenancy_ocid: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			remove_invalid_emails:                    bool
			emit_locked_message_when_user_is_locked?: bool
			idcs_endpoint!:                           string
			tokens?: [...{
				expires_after?: int
				type!:          string
			}]
			delete_in_progress: bool
			my_profile?: [...{
				allow_end_users_to_change_their_password?:          bool
				allow_end_users_to_link_their_support_account?:     bool
				allow_end_users_to_manage_their_capabilities?:      bool
				allow_end_users_to_update_their_security_settings?: bool
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			user_allowed_to_set_recovery_email?: bool
			domain_ocid:                         string
			external_id?:                        string
		}
		smtp_credential: {
			expires_on?:                   string
			user_name:                     string
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			status?:                       string
			idcs_last_upgraded_in_release: string
			ocid?:                         string
			attribute_sets?: [...string]
			id:             string
			idcs_endpoint!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			delete_in_progress: bool
			attributes?:        string
			tenancy_ocid:       string
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			description?:     string
			domain_ocid:      string
			password:         string
			compartment_ocid: string
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			schemas!: [...string]
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			authorization?: string
			idcs_prevented_operations: [...string]
		}
		app_role: {
			description?:   string
			idcs_endpoint!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			admin_role?:                   bool
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			unique_name:                   string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			schemas!: [...string]
			attributes?:         string
			available_to_users?: bool
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			idcs_prevented_operations: [...string]
			app!: [...{
				ref:                         string
				service_instance_identifier: string
				value!:                      string
				display:                     string
				name:                        string
			}]
			members: [...{
				value!:   string
				display?: string
				ref:      string
				type!:    string
			}]
			domain_ocid: string
			public?:     bool
			attribute_sets?: [...string]
			ocid?:                         string
			id:                            string
			display_name!:                 string
			limited_to_one_or_more_groups: bool
			localized_display_name:        string
			authorization?:                string
			available_to_clients?:         bool
			resource_type_schema_version?: string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			compartment_ocid:     string
			available_to_groups?: bool
			tenancy_ocid:         string
			legacy_group_name?:   string
		}
		identity_provider: {
			idp_sso_url?:           string
			require_force_authn?:   bool
			authn_request_binding?: string
			idcs_prevented_operations: [...string]
			ocid?:           string
			logout_binding?: string
			jit_user_prov_group_mappings?: [...{
				value!:     string
				ref:        string
				idp_group!: string
			}]
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			idcs_endpoint!:                    string
			tenant_provider_id:                string
			succinct_id?:                      string
			jit_user_prov_group_mapping_mode?: string
			authorization?:                    string
			id:                                string
			partner_provider_id?:              string
			logout_request_url?:               string
			urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider?: [...{
				access_token_url?:                string
				social_jit_provisioning_enabled?: bool
				service_provider_name!:           string
				redirect_url?:                    string
				consumer_secret!:                 string
				admin_scope?: [...string]
				auto_redirect_enabled?: bool
				clock_skew_in_seconds?: int
				discovery_url?:         string
				scope?: [...string]
				profile_url?:                  string
				authz_url?:                    string
				client_credential_in_payload?: bool
				jit_prov_assigned_groups?: [...{
					value!:   string
					display?: string
					ref:      string
				}]
				registration_enabled!:               bool
				id_attribute?:                       string
				account_linking_enabled!:            bool
				consumer_key!:                       string
				status?:                             string
				jit_prov_group_static_list_enabled?: bool
			}]
			include_signing_cert_in_signature?: bool
			jit_user_prov_create_user_enabled?: bool
			jit_user_prov_attributes?: [...{
				ref:    string
				value!: string
			}]
			metadata?:                                        string
			jit_user_prov_group_assertion_attribute_enabled?: bool
			user_mapping_method?:                             string
			jit_user_prov_group_static_list_enabled?:         bool
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release:           string
			jit_user_prov_attribute_update_enabled?: bool
			requested_authentication_context?: [...string]
			domain_ocid:                   string
			saml_ho_krequired?:            bool
			resource_type_schema_version?: string
			service_instance_identifier?:  string
			type?:                         string
			signing_certificate?:          string
			urnietfparamsscimschemasoracleidcsextensionx509identity_provider?: [...{
				crl_location?:                      string
				ocsp_enabled?:                      bool
				user_match_attribute!:              string
				ocsp_server_name?:                  string
				crl_check_on_ocsp_failure_enabled?: bool
				crl_enabled?:                       bool
				other_cert_match_attribute?:        string
				ocsp_revalidate_time?:              int
				signing_certificate_chain!: [...string]
				ocsp_enable_signed_response?: bool
				cert_match_attribute!:        string
				eku_validation_enabled?:      bool
				eku_values?: [...string]
				ocsp_allow_unknown_response_status?: bool
				ocsp_responder_url?:                 string
				crl_reload_duration?:                int
				ocsp_trust_cert_chain?: [...string]
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			enabled!:                                     bool
			icon_url?:                                    string
			jit_user_prov_ignore_error_on_absent_groups?: bool
			assertion_attribute?:                         string
			logout_enabled?:                              bool
			partner_name!:                                string
			delete_in_progress:                           bool
			last_notification_sent_time:                  string
			tenancy_ocid:                                 string
			signature_hash_algorithm?:                    string
			shown_on_login_page?:                         bool
			requires_encrypted_assertion?:                bool
			correlation_policy?: [...{
				display?: string
				ref:      string
				type!:    string
				value!:   string
			}]
			encryption_certificate?:                  string
			logout_response_url?:                     string
			jit_user_prov_enabled?:                   bool
			jit_user_prov_group_saml_attribute_name?: string
			jit_user_prov_assigned_groups?: [...{
				value!:  string
				display: string
				ref:     string
			}]
			user_mapping_store_attribute?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			compartment_ocid: string
			schemas!: [...string]
			external_id?: string
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			attributes?:                            string
			name_id_format?:                        string
			jit_user_prov_group_assignment_method?: string
		}
		setting: {
			attributes?:                                      string
			re_auth_when_changing_my_authentication_factors?: bool
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			company_names?: [...{
				locale!: string
				value!:  string
			}]
			cloud_account_name:                     string
			service_admin_cannot_list_other_users?: bool
			attribute_sets?: [...string]
			default_login_texts: [...{
				locale!: string
				value!:  string
			}]
			enable_terms_of_use?: bool
			compartment_ocid:     string
			certificate_validation?: [...{
				ocsp_unknown_response_status_allowed?:  bool
				ocsp_timeout_duration?:                 int
				ocsp_signing_certificate_alias?:        string
				crl_refresh_interval?:                  int
				ocsp_responder_url?:                    string
				ocsp_enabled?:                          bool
				ocsp_settings_responder_url_preferred?: bool
				crl_check_on_ocsp_failure_enabled?:     bool
				crl_enabled?:                           bool
				crl_location?:                          string
			}]
			cloud_gate_cors_settings?: [...{
				cloud_gate_cors_exposed_headers?: [...string]
				cloud_gate_cors_max_age?:           int
				cloud_gate_cors_allow_null_origin?: bool
				cloud_gate_cors_allowed_origins?: [...string]
				cloud_gate_cors_enabled?: bool
			}]
			idcs_prevented_operations: [...string]
			signing_cert_public_access?: bool
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			external_id?:                 string
			custom_html_location?:        string
			cloud_migration_url_enabled?: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			custom_css_location?: string
			schemas!: [...string]
			re_auth_factor?: [...string]
			login_texts?: [...{
				value!:  string
				locale!: string
			}]
			delete_in_progress:            bool
			ocid?:                         string
			max_no_of_app_cmva_to_return?: int
			images?: [...{
				display?: string
				type!:    string
				value!:   string
			}]
			diagnostic_record_for_search_identifies_returned_resources?: bool
			domain_ocid:                                                 string
			migration_status:                                            string
			csr_access!:                                                 string
			cloud_migration_custom_url?:                                 string
			authorization?:                                              string
			idcs_endpoint!:                                              string
			resource_type_schema_version?:                               string
			default_images: [...{
				type!:    string
				value!:   string
				display?: string
			}]
			timezone?:           string
			tenancy_ocid:        string
			custom_translation?: string
			allowed_domains?: [...string]
			max_no_of_app_role_members_to_return?: int
			issuer?:                               string
			is_hosted_page?:                       bool
			id?:                                   string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_last_upgraded_in_release: string
			prev_issuer?:                  string
			default_trust_scope?:          string
			allowed_notification_redirect_urls?: [...string]
			purge_configs?: [...{
				retention_period!: int
				resource_name!:    string
			}]
			locale?:           string
			diagnostic_level?: int
			contact_emails?: [...string]
			tenant_custom_claims?: [...{
				token_type!: string
				value!:      string
				scopes?: [...string]
				all_scopes!: bool
				expression!: bool
				mode!:       string
				name!:       string
			}]
			terms_of_use_url?:        string
			on_premises_provisioning: bool
			allowed_forgot_password_flow_return_urls?: [...string]
			preferred_language?: string
			custom_branding?:    bool
			sub_mapping_attr?:   string
			default_company_names: [...{
				value!:  string
				locale!: string
			}]
			privacy_policy_url?:           string
			audit_event_retention_period?: int
			diagnostic_tracing_upto:       string
			account_always_trust_scope?:   bool
			iam_upst_session_expiry?:      int
			setting_id!:                   string
		}
		my_oauth2client_credential: {
			idcs_prevented_operations: [...string]
			authorization?: string
			description?:   string
			scopes!: [...{
				audience!: string
				scope!:    string
			}]
			compartment_ocid: string
			id:               string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			delete_in_progress:            bool
			idcs_last_upgraded_in_release: string
			name!:                         string
			domain_ocid:                   string
			is_reset_secret?:              bool
			schemas!: [...string]
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			status?:     string
			expires_on?: string
			ocid?:       string
			tags?: [...{
				key!:   string
				value!: string
			}]
			resource_type_schema_version?: string
			tenancy_ocid:                  string
			idcs_endpoint!:                string
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
		}
		my_user_db_credential: {
			ocid?:                         string
			status?:                       string
			resource_type_schema_version?: string
			last_set_date:                 string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			id:             string
			authorization?: string
			idcs_endpoint!: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			user?: [...{
				ocid?:   string
				display: string
				name:    string
				ref:     string
				value!:  string
			}]
			mixed_db_password:             string
			idcs_last_upgraded_in_release: string
			mixed_salt:                    string
			description?:                  string
			expires_on?:                   string
			delete_in_progress:            bool
			domain_ocid:                   string
			db_password!:                  string
			compartment_ocid:              string
			salt:                          string
			idcs_prevented_operations: [...string]
			tenancy_ocid: string
			schemas!: [...string]
			name: string
			idcs_last_modified_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			expired: bool
		}
		notification_setting: {
			idcs_endpoint!:     string
			test_mode_enabled?: bool
			from_email_address!: [...{
				validate!:         string
				value!:            string
				display_name?:     string
				validation_status: string
			}]
			tenancy_ocid:          string
			ocid?:                 string
			notification_enabled!: bool
			attributes?:           string
			idcs_prevented_operations: [...string]
			send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email?: bool
			delete_in_progress:                                                                bool
			resource_type_schema_version?:                                                     string
			domain_ocid:                                                                       string
			event_settings!: [...{
				event_id!: string
				enabled?:  bool
			}]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			attribute_sets?: [...string]
			compartment_ocid:                       string
			send_notifications_to_secondary_email?: bool
			authorization?:                         string
			notification_setting_id!:               string
			test_recipients?: [...string]
			idcs_last_upgraded_in_release: string
			schemas!: [...string]
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			id:           string
			external_id?: string
			idcs_last_modified_by: [...{
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
		}
		oauth2client_credential: {
			status?:            string
			attributes?:        string
			delete_in_progress: bool
			domain_ocid:        string
			secret:             string
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			compartment_ocid:              string
			authorization?:                string
			name!:                         string
			idcs_last_upgraded_in_release: string
			id:                            string
			is_reset_secret?:              bool
			resource_type_schema_version?: string
			ocid?:                         string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			description?: string
			idcs_prevented_operations: [...string]
			tenancy_ocid:   string
			idcs_endpoint!: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			attribute_sets?: [...string]
			expires_on?: string
			user?: [...{
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
				display: string
			}]
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			scopes!: [...{
				scope!:    string
				audience!: string
			}]
		}
		auth_token: {
			delete_in_progress: bool
			domain_ocid:        string
			schemas!: [...string]
			authorization?: string
			idcs_endpoint!: string
			user?: [...{
				ocid?:   string
				value?:  string
				display: string
				name:    string
				ref:     string
			}]
			status?:                       string
			resource_type_schema_version?: string
			id:                            string
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			idcs_last_upgraded_in_release: string
			expires_on?:                   string
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			attributes?:  string
			token:        string
			description?: string
			idcs_prevented_operations: [...string]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			ocid?:            string
			tenancy_ocid:     string
			compartment_ocid: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			attribute_sets?: [...string]
		}
		authentication_factor_setting: {
			push_enabled!:       bool
			attributes?:         string
			phone_call_enabled?: bool
			bypass_code_settings!: [...{
				help_desk_max_usage!:             int
				length!:                          int
				max_active!:                      int
				self_service_generation_enabled!: bool
				help_desk_code_expiry_in_mins!:   int
				help_desk_generation_enabled!:    bool
			}]
			id:             string
			authorization?: string
			urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings?: [...{
				timeout!: int
				public_key_types!: [...string]
				exclude_credentials!:                          bool
				domain_validation_level?:                      int
				attestation!:                                  string
				authenticator_selection_user_verification!:    string
				authenticator_selection_attachment!:           string
				authenticator_selection_resident_key!:         string
				authenticator_selection_require_resident_key!: bool
			}]
			security_questions_enabled!: bool
			bypass_code_enabled!:        bool
			urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings?: [...{
				duo_security_settings?: [...{
					integration_key!: string, secret_key!: string, user_mapping_attribute!: string, attestation_key?: string, api_hostname!: string
				}]
			}]
			resource_type_schema_version?: string
			ocid?:                         string
			domain_ocid:                   string
			hide_backup_factor_enabled?:   bool
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			mfa_enabled_category: string
			notification_settings!: [...{
				pull_enabled!: bool
			}]
			client_app_settings!: [...{
				max_lockout_interval_in_secs!:        int
				shared_secret_encoding!:              string
				max_failures_before_warning!:         int
				request_signing_algo!:                string
				lockout_escalation_pattern!:          string
				min_pin_length!:                      int
				unlock_app_interval_in_secs!:         int
				policy_update_freq_in_days!:          int
				initial_lockout_period_in_secs!:      int
				max_failures_before_lockout!:         int
				device_protection_policy!:            string
				unlock_on_app_foreground_enabled!:    bool
				unlock_on_app_start_enabled!:         bool
				unlock_app_for_each_request_enabled!: bool
				key_pair_length!:                     int
			}]
			tenancy_ocid:                       string
			auto_enroll_email_factor_disabled?: bool
			fido_authenticator_enabled?:        bool
			yubico_otp_enabled?:                bool
			sms_enabled!:                       bool
			delete_in_progress:                 bool
			compartment_ocid:                   string
			authentication_factor_setting_id!:  string
			compliance_policy!: [...{
				action!: string
				name!:   string
				value!:  string
			}]
			idcs_endpoint!: string
			totp_settings!: [...{
				jwt_validity_duration_in_secs!:       int
				time_step_in_secs!:                   int
				email_otp_validity_duration_in_mins!: int
				email_passcode_length!:               int
				passcode_length!:                     int
				sms_otp_validity_duration_in_mins!:   int
				sms_passcode_length!:                 int
				hashing_algorithm!:                   string
				time_step_tolerance!:                 int
				key_refresh_interval_in_days!:        int
			}]
			email_settings?: [...{
				email_link_enabled!:    bool
				email_link_custom_url?: string
			}]
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			third_party_factor?: [...{
				duo_security!: bool
			}]
			schemas!: [...string]
			attribute_sets?: [...string]
			email_enabled?: bool
			idcs_prevented_operations: [...string]
			totp_enabled!: bool
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
			identity_store_settings?: [...{
				mobile_number_enabled?:        bool
				mobile_number_update_enabled?: bool
			}]
			endpoint_restrictions!: [...{
				max_incorrect_attempts!:              int
				max_trusted_endpoints!:               int
				trusted_endpoints_enabled!:           bool
				max_endpoint_trust_duration_in_days!: int
				max_enrolled_devices!:                int
			}]
			mfa_enrollment_type!: string
			user_enrollment_disabled_factors?: [...string]
		}
		cloud_gate_server: {
			host_name!:                    string
			tenancy_ocid:                  string
			ocid?:                         string
			attributes?:                   string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_endpoint!: string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			domain_ocid:     string
			id:              string
			nginx_settings?: string
			cloud_gate!: [...{
				value!: string
				ref:    string
			}]
			authorization?: string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			is_opc_service:     bool
			display_name!:      string
			description?:       string
			compartment_ocid:   string
			delete_in_progress: bool
			idcs_last_modified_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			port!: int
			attribute_sets?: [...string]
			ssl!: bool
		}
		identity_propagation_trust: {
			subject_type?: string
			domain_ocid:   string
			impersonation_service_users?: [...{
				rule!:  string
				value!: string
				ocid?:  string
				ref:    string
			}]
			allow_impersonation?: bool
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			public_certificate?: string
			issuer!:             string
			oauth_clients?: [...string]
			schemas!: [...string]
			resource_type_schema_version?: string
			idcs_prevented_operations: [...string]
			active?: bool
			client_claim_values?: [...string]
			subject_mapping_attribute?: string
			name!:                      string
			account_id?:                string
			description?:               string
			ocid?:                      string
			compartment_ocid:           string
			authorization?:             string
			tags?: [...{
				key!:   string
				value!: string
			}]
			type!:                string
			clock_skew_seconds?:  int
			subject_claim_name?:  string
			attributes?:          string
			public_key_endpoint?: string
			meta: [...{
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
			}]
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			delete_in_progress: bool
			attribute_sets?: [...string]
			idcs_last_upgraded_in_release: string
			id:                            string
			keytab?: [...{
				secret_ocid!:    string
				secret_version?: int
			}]
			idcs_endpoint!:     string
			tenancy_ocid:       string
			client_claim_name?: string
		}
		my_smtp_credential: {
			ocid?:            string
			compartment_ocid: string
			id:               string
			schemas!: [...string]
			status?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			delete_in_progress: bool
			domain_ocid:        string
			description?:       string
			idcs_created_by: [...{
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
			}]
			authorization?: string
			user?: [...{
				name:    string
				ref:     string
				ocid?:   string
				value?:  string
				display: string
			}]
			idcs_last_upgraded_in_release: string
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_prevented_operations: [...string]
			idcs_endpoint!:                string
			tenancy_ocid:                  string
			resource_type_schema_version?: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			expires_on?: string
			user_name:   string
		}
		oauth_client_certificate: {
			delete_in_progress:            bool
			ocid?:                         string
			x509base64certificate!:        string
			domain_ocid:                   string
			authorization?:                string
			id:                            string
			compartment_ocid:              string
			map?:                          string
			sha1thumbprint:                string
			tenancy_ocid:                  string
			key_store_name?:               string
			key_store_id?:                 string
			idcs_last_upgraded_in_release: string
			idcs_prevented_operations: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			idcs_last_modified_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			resource_type_schema_version?: string
			cert_end_date:                 string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			idcs_endpoint!:      string
			certificate_alias!:  string
			external_id?:        string
			key_store_password?: string
			cert_start_date:     string
			sha256thumbprint:    string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			schemas!: [...string]
		}
		security_question: {
			question_text!: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
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
			attribute_sets?: [...string]
			attributes?:      string
			ocid?:            string
			compartment_ocid: string
			id:               string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			external_id?:                  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			active!:                       bool
			idcs_last_upgraded_in_release: string
			delete_in_progress:            bool
			schemas!: [...string]
			authorization?: string
			tenancy_ocid:   string
			idcs_prevented_operations: [...string]
			domain_ocid: string
			type!:       string
		}
		social_identity_provider: {
			idcs_last_upgraded_in_release: string
			idcs_created_by: [...{
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
			}]
			show_on_login!: bool
			schemas!: [...string]
			jit_prov_group_static_list_enabled?: bool
			ocid?:                               string
			profile_url?:                        string
			scope?: [...string]
			status?:       string
			redirect_url?: string
			enabled!:      bool
			tenancy_ocid:  string
			admin_scope?: [...string]
			client_credential_in_payload?: bool
			relay_idp_param_mappings?: [...{
				relay_param_key!:   string
				relay_param_value?: string
			}]
			clock_skew_in_seconds?:   int
			account_linking_enabled!: bool
			auto_redirect_enabled?:   bool
			idcs_endpoint!:           string
			delete_in_progress:       bool
			access_token_url?:        string
			jit_prov_assigned_groups?: [...{
				value!:  string
				ref:     string
				display: string
			}]
			consumer_key!: string
			name!:         string
			authz_url?:    string
			meta: [...{
				location?:      string
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
			}]
			id_attribute?: string
			idcs_prevented_operations: [...string]
			refresh_token_url?: string
			consumer_secret!:   string
			discovery_url?:     string
			tags?: [...{
				key!:   string
				value!: string
			}]
			resource_type_schema_version?:    string
			service_provider_name!:           string
			domain_ocid:                      string
			icon_url?:                        string
			authorization?:                   string
			social_jit_provisioning_enabled?: bool
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			registration_enabled!: bool
			description?:          string
			compartment_ocid:      string
		}
		app: {
			signon_policy?: [...{
				value!: string
				ref:    string
			}]
			linking_callback_url?: string
			protectable_secondary_audiences?: [...{
				value!:    string
				read_only: bool
			}]
			client_ip_checking?: string
			delegated_service_names?: [...string]
			urnietfparamsscimschemasoracleidcsextensionopc_service_app?: [...{
				service_instance_identifier?: string
				current_federation_mode:      string
				current_synchronization_mode: string
				enabling_next_fed_sync_modes: bool
				next_federation_mode:         string
				next_synchronization_mode:    string
				region:                       string
			}]
			id:                        string
			error_page_url?:           string
			is_form_fill?:             bool
			is_saml_service_provider?: bool
			callback_service_url:      string
			allowed_scopes?: [...{
				fqs!:               string
				id_of_defining_app: string
				read_only:          bool
			}]
			editable_attributes: [...{
				name!: string
			}]
			disable_kmsi_token_authentication?: bool
			service_type_version?:              string
			domain_ocid:                        string
			attribute_sets?: [...string]
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			app_signon_policy?: [...{
				ref:    string
				value!: string
			}]
			is_database_service:   bool
			allow_access_control?: bool
			alias_apps?: [...{
				value!:      string
				description: string
				display:     string
				ref:         string
			}]
			allowed_operations?: [...string]
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template?: [...{
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				sync_from_template?:               bool
				form_credential_sharing_group_id?: string
				form_type?:                        string
				reveal_password_on_form?:          bool
				configuration?:                    string
				user_name_form_expression?:        string
				user_name_form_template?:          string
				form_cred_method?:                 string
			}]
			urnietfparamsscimschemasoracleidcsextensionradius_app_app?: [...{
				password_and_otp_together?:          bool
				response_format_delimiter?:          string
				secret_key!:                         string
				end_user_ip_attribute?:              string
				response_format?:                    string
				country_code_response_attribute_id?: string
				group_membership_radius_attribute?:  string
				group_name_format?:                  string
				radius_vendor_specific_id?:          string
				port!:                               string
				group_membership_to_return?: [...{
					ref:     string
					value!:  string
					display: string
				}]
				client_ip!:                 string
				include_group_in_response!: bool
				capture_client_ip?:         bool
				type_of_radius_app?:        string
			}]
			terms_of_service_url?:         string
			all_url_schemes_allowed?:      bool
			is_login_target?:              bool
			resource_type_schema_version?: string
			app_icon?:                     string
			refresh_token_expiry?:         int
			authorization?:                string
			grants: [...{
				ref:              string
				grant_mechanism?: string
				grantee_id?:      string
				grantee_type?:    string
				value?:           string
			}]
			ready_to_upgrade: bool
			tenancy_ocid:     string
			home_page_url?:   string
			service_params?: [...{
				name!:  string
				value?: string
			}]
			client_type?: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app?: [...{
				max_ticket_life?: int
				realm_name?:      string
				supported_encryption_salt_types?: [...string]
				ticket_flags?:                 int
				default_encryption_salt_type?: string
				master_key?:                   string
				max_renewable_age?:            int
			}]
			schemas!: [...string]
			certificates?: [...{
				cert_alias!:           string
				kid:                   string
				sha1thumbprint:        string
				x509base64certificate: string
				x5t:                   string
			}]
			attributes?: string
			apps_network_perimeters?: [...{
				value!: string
				ref:    string
			}]
			urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app?: [...{
				multicloud_service_type!: string
				multicloud_platform_url?: string
			}]
			is_radius_app?:         bool
			is_obligation_capable?: bool
			active?:                bool
			show_in_my_apps?:       bool
			admin_roles: [...{
				value!:       string
				description?: string
				display?:     string
				ref:          string
			}]
			display_name!:        string
			logout_uri?:          string
			description?:         string
			meter_as_opc_service: bool
			is_alias_app?:        bool
			hashed_client_secret: string
			attr_rendering_metadata?: [...{
				required?:   bool
				name!:       string
				datatype?:   string
				label?:      string
				max_size?:   int
				min_length?: int
				widget?:     string
				helptext?:   string
				section?:    string
				read_only?:  bool
				order?:      int
				max_length?: int
				regexp?:     string
				min_size?:   int
				visible?:    bool
			}]
			bypass_consent?:  bool
			compartment_ocid: string
			saml_service_provider?: [...{
				value!: string
				ref:    string
			}]
			urnietfparamsscimschemasoracleidcsextensionrequestable_app?: [...{
				requestable?: bool
			}]
			app_thumbnail?: string
			urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app?: [...{
				group_assertion_attributes?: [...{
					group_name?: string
					name!:       string
					condition?:  string
					format?:     string
				}]
				sign_response_or_assertion?:  string
				hok_required?:                bool
				name_id_userstore_attribute?: string
				signing_certificate?:         string
				encryption_certificate?:      string
				key_encryption_algorithm?:    string
				logout_request_url?:          string
				partner_provider_pattern?:    string
				user_assertion_attributes?: [...{
					name!:                      string
					user_store_attribute_name!: string
					format?:                    string
				}]
				logout_response_url?:               string
				partner_provider_id?:               string
				encryption_algorithm?:              string
				encrypt_assertion?:                 bool
				tenant_provider_id:                 string
				include_signing_cert_in_signature?: bool
				logout_binding?:                    string
				federation_protocol?:               string
				hok_acs_url?:                       string
				logout_enabled?:                    bool
				signature_hash_algorithm?:          string
				outbound_assertion_attributes: [...{
					value!:     string
					direction?: string
					ref:        string
				}]
				name_id_format?:             string
				last_notification_sent_time: string
				metadata?:                   string
				succinct_id?:                string
				assertion_consumer_url?:     string
			}]
			login_mechanism?: string
			urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app?: [...{
				resource_ref?:               bool
				web_tier_policy_az_control?: string
				web_tier_policy_json?:       string
			}]
			is_managed_app: bool
			identity_providers?: [...{
				value!:  string
				display: string
				ref:     string
			}]
			urnietfparamsscimschemasoracleidcsextensionenterprise_app_app?: [...{
				allow_authz_policy?: [...{
					value!: string
					ref:    string
				}]
				app_resources?: [...{
					value!: string
					ref:    string
				}]
				deny_authz_decision_ttl?: int
				deny_authz_policy?: [...{
					value!: string
					ref:    string
				}]
				allow_authz_decision_ttl?: int
			}]
			service_type_urn?: string
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_app?: [...{
				sync_from_template:                bool
				form_credential_sharing_group_id?: string
				form_fill_url_match?: [...{
					form_url_match_type?: string
					form_url!:            string
				}]
				reveal_password_on_form?:   bool
				user_name_form_template?:   string
				form_cred_method?:          string
				configuration?:             string
				form_type?:                 string
				user_name_form_expression?: string
			}]
			allow_offline?:    bool
			is_mobile_target?: bool
			product_name?:     string
			secondary_audiences?: [...string]
			client_secret:   string
			login_page_url?: string
			idcs_created_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			is_multicloud_service_app?: bool
			ocid?:                      string
			scopes?: [...{
				display_name?:     string
				requires_consent?: bool
				fqs:               string
				read_only:         bool
				value!:            string
				description?:      string
			}]
			is_opc_service:      bool
			privacy_policy_url?: string
			allowed_grants?: [...string]
			accounts: [...{
				name?:     string
				owner_id?: string
				value?:    string
				ref:       string
				active?:   bool
			}]
			icon?:     string
			audience?: string
			user_roles: [...{
				ref:          string
				value!:       string
				description?: string
				display?:     string
			}]
			id_token_enc_algo?: string
			urnietfparamsscimschemasoracleidcsextensionmanagedapp_app?: [...{
				admin_consent_granted?:        bool
				is_three_legged_oauth_enabled: bool
				is_on_premise_app:             bool
				bundle_configuration_properties?: [...{
					confidential?: bool
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
					icf_type!: string
					name!:     string
					required!: bool
				}]
				flat_file_connector_bundle?: [...{
					ref:            string
					value!:         string
					display?:       string
					well_known_id?: string
				}]
				account_form_visible: bool
				is_authoritative?:    bool
				can_be_authoritative: bool
				connected?:           bool
				three_legged_oauth_credential?: [...{
					access_token?:        string
					access_token_expiry?: string
					refresh_token?:       string
				}]
				connector_bundle: [...{
					type!:          string
					value!:         string
					display?:       string
					well_known_id?: string
					ref:            string
				}]
				object_classes: [...{
					resource_type?:           string
					ref:                      string
					type!:                    string
					value!:                   string
					display?:                 string
					is_account_object_class?: bool
				}]
				is_directory:                  bool
				is_schema_discovery_supported: bool
				is_two_legged_oauth_enabled:   bool
				enable_sync?:                  bool
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
				enable_sync_summary_report_notification?: bool
				three_legged_oauth_provider_name:         string
				is_schema_customization_supported:        bool
				identity_bridges: [...{
					name?:  string
					value?: string
					ref:    string
				}]
				bundle_pool_configuration?: [...{
					max_idle?:                       int
					max_objects?:                    int
					max_wait?:                       int
					min_evictable_idle_time_millis?: int
					min_idle?:                       int
				}]
				enable_auth_sync_new_user_notification?: bool
				sync_config_last_modified:               string
			}]
			idcs_endpoint!:     string
			product_logo_url?:  string
			delete_in_progress: bool
			idp_policy?: [...{
				value!: string
				ref:    string
			}]
			post_logout_redirect_uris?: [...string]
			contact_email_address?: string
			is_unmanaged_app?:      bool
			name?:                  string
			idcs_prevented_operations: [...string]
			is_oauth_client?: bool
			as_opc_service?: [...{
				value!: string
				ref:    string
			}]
			granted_app_roles: [...{
				display?:           string
				admin_role?:        bool
				legacy_group_name?: string
				type?:              string
				value!:             string
				app_name?:          string
				ref:                string
				app_id?:            string
				read_only?:         bool
			}]
			migrated:           bool
			is_enterprise_app?: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			cloud_control_properties: [...{
				values!: [...string]
				name!: string
			}]
			allowed_tags?: [...{
				key!:      string
				value!:    string
				read_only: bool
			}]
			infrastructure: bool
			urnietfparamsscimschemasoracleidcsextensiondbcs_app?: [...{
				domain_app?: [...{
					display: string
					ref:     string
					value!:  string
				}]
				domain_name?: string
			}]
			idcs_last_upgraded_in_release: string
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				tag_slug: string
				defined_tags?: [...{
					value!:     string
					key!:       string
					namespace!: string
				}]
			}]
			logout_page_url?: string
			based_on_template!: [...{
				last_modified:  string
				ref:            string
				value!:         string
				well_known_id?: string
			}]
			is_oauth_resource?: bool
			radius_policy?: [...{
				ref:    string
				value!: string
			}]
			is_web_tier_policy?:  bool
			is_kerberos_realm?:   bool
			access_token_expiry?: int
			redirect_uris?: [...string]
			trust_policies?: [...{
				ref:    string
				value!: string
			}]
			terms_of_use?: [...{
				value!: string
				name:   string
				ref:    string
			}]
			landing_page_url?: string
			trust_scope?:      string
		}
		dynamic_resource_group: {
			ocid?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			compartment_ocid: string
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
			delete_in_progress: bool
			idcs_prevented_operations: [...string]
			display_name!: string
			tenancy_ocid:  string
			domain_ocid:   string
			schemas!: [...string]
			attributes?:                   string
			authorization?:                string
			idcs_last_upgraded_in_release: string
			description?:                  string
			matching_rule!:                string
			attribute_sets?: [...string]
			idcs_last_modified_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			dynamic_group_app_roles: [...{
				ref:                string
				value!:             string
				admin_role?:        bool
				app_id?:            string
				app_name?:          string
				display?:           string
				legacy_group_name?: string
			}]
			grants: [...{
				app_id?:          string
				grant_mechanism?: string
				value?:           string
				ref:              string
			}]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			id:                            string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
		}
		kmsi_setting: {
			resource_type_schema_version?: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_prevented_operations: [...string]
			kmsi_feature_enabled?: bool
			external_id?:          string
			schemas!: [...string]
			idcs_last_upgraded_in_release: string
			attributes?:                   string
			last_enabled_on?:              string
			tou_prompt_disabled?:          bool
			compartment_ocid:              string
			attribute_sets?: [...string]
			tenancy_ocid: string
			id:           string
			ocid?:        string
			meta: [...{
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
				version?:       string
			}]
			delete_in_progress:    bool
			max_allowed_sessions?: int
			idcs_endpoint!:        string
			kmsi_setting_id!:      string
			authorization?:        string
			kmsi_prompt_enabled?:  bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			token_validity_in_days?:     int
			last_used_validity_in_days?: int
			domain_ocid:                 string
			idcs_created_by: [...{
				ocid?:    string
				type?:    string
				ref:      string
				value!:   string
				display?: string
			}]
		}
		my_customer_secret_key: {
			delete_in_progress: bool
			authorization?:     string
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			meta: [...{
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
				resource_type?: string
			}]
			domain_ocid:                   string
			idcs_last_upgraded_in_release: string
			status?:                       string
			tags?: [...{
				key!:   string
				value!: string
			}]
			compartment_ocid: string
			user?: [...{
				ref:     string
				ocid?:   string
				value?:  string
				display: string
				name:    string
			}]
			id: string
			schemas!: [...string]
			description?: string
			expires_on?:  string
			tenancy_ocid: string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			idcs_prevented_operations: [...string]
			ocid?:                         string
			access_key:                    string
			display_name?:                 string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
		}
		user_db_credential: {
			resource_type_schema_version?: string
			compartment_ocid:              string
			status?:                       string
			idcs_last_modified_by: [...{
				value!:   string
				display?: string
				ocid?:    string
				type?:    string
				ref:      string
			}]
			attribute_sets?: [...string]
			delete_in_progress: bool
			idcs_created_by: [...{
				type?:    string
				ref:      string
				value!:   string
				display?: string
				ocid?:    string
			}]
			idcs_prevented_operations: [...string]
			id: string
			meta: [...{
				resource_type?: string
				version?:       string
				created?:       string
				last_modified?: string
				location?:      string
			}]
			last_set_date: string
			db_password!:  string
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			attributes?:       string
			mixed_db_password: string
			authorization?:    string
			expires_on?:       string
			domain_ocid:       string
			description?:      string
			tenancy_ocid:      string
			user?: [...{
				ref:     string
				value!:  string
				ocid?:   string
				display: string
				name:    string
			}]
			idcs_last_upgraded_in_release: string
			salt:                          string
			ocid?:                         string
			name:                          string
			expired:                       bool
			mixed_salt:                    string
			idcs_endpoint!:                string
		}
	}
	arguments: {
		my_auth_token: {
			expires_on?:                   string
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			status?:        string
			authorization?: string
			description?:   string
			ocid?:          string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			schemas!: [...string]
		}
		account_recovery_setting: {
			authorization?:                string
			external_id?:                  string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			factors!: [...string]
			ocid?:                        string
			account_recovery_setting_id!: string
			schemas!: [...string]
			attributes?:             string
			idcs_endpoint!:          string
			max_incorrect_attempts!: int
			attribute_sets?: [...string]
			lockout_duration!: int
		}
		cloud_gate: {
			active?:                       bool
			resource_type_schema_version?: string
			authorization?:                string
			ocid?:                         string
			schemas!: [...string]
			type?: string
			attribute_sets?: [...string]
			description?: string
			attributes?:  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			display_name!:       string
			last_modified_time?: string
			idcs_endpoint!:      string
		}
		cloud_gate_mapping: {
			attributes?: string
			server!: [...{
				value!: string
			}]
			description?:   string
			idcs_endpoint!: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			policy_name!: string
			cloud_gate!: [...{
				value!: string
			}]
			resource_prefix!:              string
			proxy_pass?:                   string
			nginx_settings?:               string
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			authorization?: string
			schemas!: [...string]
			ocid?: string
			gateway_app!: [...{
				name!:  string
				value!: string
			}]
			upstream_server_group?: [...{
				ssl?:   bool
				value?: string
			}]
		}
		grant: {
			authorization?:   string
			grant_mechanism!: string
			idcs_endpoint!:   string
			entitlement?: [...{
				attribute_name!:  string
				attribute_value!: string
			}]
			grantee!: [...{
				type!:  string
				value!: string
			}]
			attributes?: string
			ocid?:       string
			app?: [...{
				value!: string
			}]
			resource_type_schema_version?: string
			app_entitlement_collection?: [...{
				value!: string
			}]
			attribute_sets?: [...string]
			granted_attribute_values_json?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
		}
		policy: {
			authorization?:                string
			attributes?:                   string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			name!: string
			attribute_sets?: [...string]
			ocid?:        string
			description?: string
			policy_type!: [...{
				value!: string
			}]
			idcs_endpoint!: string
			schemas!: [...string]
			external_id?:   string
			active?:        bool
			policy_groovy?: string
			rules?: [...{
				sequence!: int
				value!:    string
			}]
		}
		user: {
			preferred_language?: string
			urnietfparamsscimschemasoracleidcsextensionterms_of_use_user?: [...{
				terms_of_use_consents?: [...{
					value!: string
				}]
			}]
			external_id?: string
			schemas!: [...string]
			urnietfparamsscimschemasoracleidcsextensionpasswordless_user?: [...{
				factor_identifier?: [...{
					value!:   string
					display?: string
				}]
				factor_method?: string
				factor_type?:   string
			}]
			x509certificates?: [...{
				value!:   string
				display?: string
				primary?: bool
				type?:    string
			}]
			idcs_endpoint!: string
			active?:        bool
			title?:         string
			description?:   string
			password?:      string
			urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user?: [...{
				sec_questions?: [...{
					value!: string, hint_text?: string, answer!: string
				}]
			}]
			user_name!: string
			nick_name?: string
			entitlements?: [...{
				value!:   string
				display?: string
				primary?: bool
				type!:    string
			}]
			ocid?:                         string
			locale?:                       string
			profile_url?:                  string
			resource_type_schema_version?: string
			urnietfparamsscimschemasoracleidcsextensionsff_user?: [...{
				sff_auth_keys?: string
			}]
			user_type?: string
			attribute_sets?: [...string]
			urnietfparamsscimschemasoracleidcsextensionsocial_account_user?: [...{
				social_accounts?: [...{
					value!: string, display?: string
				}]
			}]
			attributes?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			phone_numbers?: [...{
				type!:    string
				value!:   string
				primary?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_user?: [...{
				is_group_membership_synced_to_users_groups?: bool
				account_recovery_required?:                  bool
				creation_mechanism?:                         string
				preferred_ui_landing_page?:                  string
				user_provider?:                              string
				is_authentication_delegated?:                bool
				do_not_show_getting_started?:                bool
				is_group_membership_normalized?:             bool
				user_flow_controlled_by_external_client?:    bool
				is_federated_user?:                          bool
				synced_from_app?: [...{
					type!:    string
					value!:   string
					display?: string
				}]
				delegated_authentication_target_app?: [...{
					type!:    string
					value!:   string
					display?: string
				}]
				service_user?:                   bool
				notification_email_template_id?: string
				bypass_notification?:            bool
			}]
			urnietfparamsscimschemasextensionenterprise20user?: [...{
				division?:        string
				employee_number?: string
				manager?: [...{
					value?: string
				}]
				organization?: string
				cost_center?:  string
				department?:   string
			}]
			urnietfparamsscimschemasoracleidcsextensionuser_state_user?: [...{
				recovery_locked?: [...{
					on?:        bool
					lock_date?: string
				}]
				locked?: [...{
					reason?:    int
					expired?:   bool
					lock_date?: string
					on?:        bool
				}]
				max_concurrent_sessions?: int
			}]
			urnietfparamsscimschemasoracleidcsextensionposix_user?: [...{
				gid_number?:     int
				home_directory?: string
				login_shell?:    string
				uid_number?:     int
				gecos?:          string
			}]
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					key!:   string
					value!: string
				}]
				defined_tags?: [...{
					namespace!: string
					value!:     string
					key!:       string
				}]
			}]
			roles?: [...{
				primary?: bool
				type!:    string
				value!:   string
				display?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_registration_user?: [...{
				self_registration_profile!: [...{
					value!:   string
					display?: string
				}]
				consent_granted?: bool
				user_token?:      string
			}]
			photos?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			name?: [...{
				honorific_suffix?: string
				middle_name?:      string
				family_name?:      string
				formatted?:        string
				given_name?:       string
				honorific_prefix?: string
			}]
			urnietfparamsscimschemasoracleidcsextensiondb_credentials_user?: [...{
				db_user_name?: string
			}]
			timezone?:      string
			authorization?: string
			display_name?:  string
			ims?: [...{
				type!:    string
				value!:   string
				display?: string
				primary?: bool
			}]
			urnietfparamsscimschemasoracleidcsextensionkerberos_user_user?: [...{
				realm_users?: [...{
					value!: string, principal_name?: string, realm_name?: string
				}]
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			addresses?: [...{
				primary?:        bool
				region?:         string
				street_address?: string
				type!:           string
				country?:        string
				formatted?:      string
				locality?:       string
				postal_code?:    string
			}]
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
			emails?: [...{
				type!:      string
				value!:     string
				primary?:   bool
				secondary?: bool
				verified?:  bool
			}]
			urnietfparamsscimschemasoracleidcsextensionadaptive_user?: [...{
				risk_level?: string
				risk_scores?: [...{
					risk_level!:            string
					score!:                 int
					value!:                 string
					source?:                string
					status?:                string
					last_update_timestamp!: string
				}]
			}]
			force_delete?: bool
			urnietfparamsscimschemasoracleidcsextensionmfa_user?: [...{
				preferred_third_party_vendor?: string
				bypass_codes?: [...{
					value!: string
				}]
				login_attempts?: int
				mfa_status?:     string
				preferred_device?: [...{
					value!:   string
					display?: string
				}]
				trusted_user_agents?: [...{
					value!:   string
					display?: string
				}]
				mfa_enabled_on?:                  string
				preferred_authentication_factor?: string
				preferred_authentication_method?: string
				devices?: [...{
					factor_type?:             string
					third_party_vendor_name?: string
					value!:                   string
					authentication_method?:   string
					display?:                 string
					last_sync_time?:          string
					status?:                  string
					factor_status?:           string
				}]
				mfa_ignored_apps?: [...string]
			}]
		}
		api_key: {
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			description?:                  string
			user?: [...{
				value?: string
				ocid?:  string
			}]
			schemas!: [...string]
			attributes?:    string
			authorization?: string
			ocid?:          string
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
			key!: string
		}
		approval_workflow_assignment: {
			idcs_endpoint!: string
			ocid?:          string
			attributes?:    string
			schemas!: [...string]
			resource_type_schema_version?: string
			assigned_to!: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			assignment_type!: string
			authorization?:   string
			approval_workflow!: [...{
				ocid?:  string
				type!:  string
				value!: string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
		}
		condition: {
			ocid?:                  string
			attribute_name!:        string
			idcs_endpoint!:         string
			name!:                  string
			evaluate_condition_if?: string
			attributes?:            string
			description?:           string
			schemas!: [...string]
			external_id?:     string
			operator!:        string
			attribute_value!: string
			attribute_sets?: [...string]
			tags?: [...{
				value!: string
				key!:   string
			}]
			resource_type_schema_version?: string
			authorization?:                string
		}
		my_support_account: {
			authorization?: string
			idcs_endpoint!: string
			ocid?:          string
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			user?: [...{
				ocid?:  string
				value?: string
			}]
			resource_type_schema_version?: string
			token!:                        string
		}
		security_question_setting: {
			schemas!: [...string]
			attribute_sets?: [...string]
			external_id?:                  string
			min_answer_length!:            int
			ocid?:                         string
			attributes?:                   string
			authorization?:                string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			num_questions_to_ans!:         int
			idcs_endpoint!:                string
			max_field_length!:             int
			num_questions_to_setup!:       int
			security_question_setting_id!: string
		}
		self_registration_profile: {
			display_name!: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			show_on_login_page!:           bool
			resource_type_schema_version?: string
			consent_text_present!:         bool
			header_text?: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			attributes?: string
			schemas!: [...string]
			redirect_url!: string
			email_template!: [...{
				value!: string
			}]
			active?:        bool
			ocid?:          string
			authorization?: string
			idcs_endpoint!: string
			external_id?:   string
			user_attributes?: [...{
				seq_number!:                     int
				value!:                          string
				fully_qualified_attribute_name?: string
			}]
			allowed_email_domains?: [...string]
			disallowed_email_domains?: [...string]
			consent_text?: [...{
				value!:   string
				default?: bool
				locale!:  string
			}]
			default_groups?: [...{
				value!: string
			}]
			activation_email_required!: bool
			footer_logo?:               string
			attribute_sets?: [...string]
			footer_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			number_of_days_redirect_url_is_valid!: int
			name!:                                 string
			header_logo?:                          string
			after_submit_text?: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
		}
		my_api_key: {
			idcs_endpoint!: string
			key!:           string
			schemas!: [...string]
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:                         string
			authorization?:                string
			resource_type_schema_version?: string
			user?: [...{
				ocid?:  string
				value?: string
			}]
		}
		network_perimeter: {
			schemas!: [...string]
			ocid?:                         string
			authorization?:                string
			idcs_endpoint!:                string
			name!:                         string
			attributes?:                   string
			description?:                  string
			resource_type_schema_version?: string
			external_id?:                  string
			attribute_sets?: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			ip_addresses!: [...{
				value!:   string
				type?:    string
				version?: string
			}]
		}
		oauth_partner_certificate: {
			certificate_alias!: string
			schemas!: [...string]
			external_id?:                  string
			map?:                          string
			resource_type_schema_version?: string
			ocid?:                         string
			authorization?:                string
			idcs_endpoint!:                string
			tags?: [...{
				key!:   string
				value!: string
			}]
			key_store_password?:    string
			x509base64certificate?: string
			key_store_name?:        string
			key_store_id?:          string
		}
		rule: {
			name!:          string
			idcs_endpoint!: string
			active?:        bool
			locked?:        bool
			external_id?:   string
			attributes?:    string
			description?:   string
			condition!:     string
			schemas!: [...string]
			return!: [...{
				name!:          string
				value!:         string
				return_groovy?: string
			}]
			condition_group?: [...{
				value?: string
				type!:  string
			}]
			ocid?: string
			policy_type!: [...{
				value!: string
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			authorization?:                string
			resource_type_schema_version?: string
			rule_groovy?:                  string
			attribute_sets?: [...string]
		}
		approval_workflow_step: {
			approvers?: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			approvers_expressions?: [...string]
			attributes?:    string
			authorization?: string
			attribute_sets?: [...string]
			order!: int
			schemas!: [...string]
			minimum_approvals?:            int
			type!:                         string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			ocid?:          string
			idcs_endpoint!: string
		}
		customer_secret_key: {
			ocid?:   string
			status?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?:  string
			display_name?: string
			expires_on?:   string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			schemas!: [...string]
			attributes?:    string
			idcs_endpoint!: string
			attribute_sets?: [...string]
			authorization?:                string
			resource_type_schema_version?: string
			user?: [...{
				value?: string
				ocid?:  string
			}]
		}
		my_request: {
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			requesting!: [...{
				type!:  string
				value!: string
			}]
			approval_details?: [...{}]
			requestor?: [...{
				value!: string
			}]
			justification!: string
			ocid?:          string
			attribute_sets?: [...string]
			schemas!: [...string]
			idcs_endpoint!: string
			action?:        string
			attributes?:    string
			authorization?: string
		}
		password_policy: {
			tags?: [...{
				key!:   string
				value!: string
			}]
			dictionary_word_disallowed?: bool
			min_lower_case?:             int
			idcs_endpoint!:              string
			ocid?:                       string
			lockout_duration?:           int
			max_repeated_chars?:         int
			last_name_disallowed?:       bool
			min_upper_case?:             int
			password_expires_after?:     int
			disallowed_substrings?: [...string]
			min_numerals?:             int
			user_name_disallowed?:     bool
			first_name_disallowed?:    bool
			max_length?:               int
			disallowed_chars?:         string
			dictionary_delimiter?:     string
			min_password_age?:         int
			num_passwords_in_history?: int
			attribute_sets?: [...string]
			required_chars?: string
			schemas!: [...string]
			distinct_characters?:          int
			starts_with_alphabet?:         bool
			max_special_chars?:            int
			attributes?:                   string
			priority?:                     int
			min_length?:                   int
			dictionary_location?:          string
			password_strength?:            string
			resource_type_schema_version?: string
			groups?: [...{
				value!: string
			}]
			min_special_chars?:       int
			authorization?:           string
			force_password_reset?:    bool
			external_id?:             string
			min_alphas?:              int
			allowed_chars?:           string
			password_expire_warning?: int
			min_alpha_numerals?:      int
			name!:                    string
			disallowed_user_attribute_values?: [...string]
			description?:            string
			min_unique_chars?:       int
			max_incorrect_attempts?: int
		}
		approval_workflow: {
			idcs_endpoint!: string
			name!:          string
			max_duration!: [...{
				unit!:  string
				value!: int
			}]
			attributes?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
			approval_workflow_steps?: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			description?: string
			attribute_sets?: [...string]
			ocid?:                         string
			resource_type_schema_version?: string
			authorization?:                string
		}
		group: {
			attributes?: string
			urnietfparamsscimschemasoracleidcsextensionposix_group?: [...{
				gid_number?: int
			}]
			display_name!: string
			urnietfparamsscimschemasoracleidcsextensiondynamic_group?: [...{
				membership_rule?: string
				membership_type?: string
			}]
			resource_type_schema_version?: string
			force_delete?:                 bool
			ocid?:                         string
			schemas!: [...string]
			non_unique_display_name?: string
			idcs_endpoint!:           string
			members?: [...{
				type!:  string
				value!: string
				ocid?:  string
			}]
			urnietfparamsscimschemasoracleidcsextensionrequestable_group?: [...{
				requestable?: bool
			}]
			external_id?:   string
			authorization?: string
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
			urnietfparamsscimschemasoracleidcsextensiongroup_group?: [...{
				creation_mechanism?: string
				description?:        string
				owners?: [...{
					type!:  string
					value!: string
				}]
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			attribute_sets?: [...string]
		}
		identity_setting: {
			idcs_endpoint!: string
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			tokens?: [...{
				expires_after?: int
				type!:          string
			}]
			posix_gid?: [...{
				manual_assignment_starts_from?: int
				manual_assignment_ends_at?:     int
			}]
			identity_setting_id!: string
			schemas!: [...string]
			authorization?: string
			posix_uid?: [...{
				manual_assignment_ends_at?:     int
				manual_assignment_starts_from?: int
			}]
			my_profile?: [...{
				allow_end_users_to_change_their_password?:          bool
				allow_end_users_to_link_their_support_account?:     bool
				allow_end_users_to_manage_their_capabilities?:      bool
				allow_end_users_to_update_their_security_settings?: bool
			}]
			primary_email_required?:                  bool
			ocid?:                                    string
			emit_locked_message_when_user_is_locked?: bool
			external_id?:                             string
			user_allowed_to_set_recovery_email?:      bool
			return_inactive_over_locked_message?:     bool
			attributes?:                              string
		}
		smtp_credential: {
			user?: [...{
				ocid?:  string
				value?: string
			}]
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			schemas!: [...string]
			authorization?: string
			ocid?:          string
			status?:        string
			attributes?:    string
			expires_on?:    string
			attribute_sets?: [...string]
			description?: string
		}
		app_role: {
			admin_role?:                   bool
			available_to_users?:           bool
			resource_type_schema_version?: string
			available_to_groups?:          bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			app!: [...{
				value!: string
			}]
			attributes?:        string
			legacy_group_name?: string
			attribute_sets?: [...string]
			available_to_clients?: bool
			ocid?:                 string
			display_name!:         string
			idcs_endpoint!:        string
			authorization?:        string
			public?:               bool
			schemas!: [...string]
			description?: string
		}
		identity_provider: {
			authn_request_binding?: string
			correlation_policy?: [...{
				display?: string
				type!:    string
				value!:   string
			}]
			jit_user_prov_enabled?:                           bool
			description?:                                     string
			logout_binding?:                                  string
			include_signing_cert_in_signature?:               bool
			succinct_id?:                                     string
			signing_certificate?:                             string
			metadata?:                                        string
			logout_request_url?:                              string
			resource_type_schema_version?:                    string
			jit_user_prov_ignore_error_on_absent_groups?:     bool
			user_mapping_store_attribute?:                    string
			requires_encrypted_assertion?:                    bool
			jit_user_prov_group_assertion_attribute_enabled?: bool
			external_id?:                                     string
			saml_ho_krequired?:                               bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?:                           string
			jit_user_prov_group_static_list_enabled?: bool
			jit_user_prov_create_user_enabled?:       bool
			jit_user_prov_group_assignment_method?:   string
			jit_user_prov_attributes?: [...{
				value!: string
			}]
			jit_user_prov_group_mappings?: [...{
				idp_group!: string
				value!:     string
			}]
			require_force_authn?:    bool
			encryption_certificate?: string
			schemas!: [...string]
			service_instance_identifier?: string
			idp_sso_url?:                 string
			icon_url?:                    string
			requested_authentication_context?: [...string]
			enabled!:                  bool
			attributes?:               string
			signature_hash_algorithm?: string
			urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider?: [...{
				jit_prov_assigned_groups?: [...{
					display?: string
					value!:   string
				}]
				registration_enabled!:            bool
				access_token_url?:                string
				service_provider_name!:           string
				consumer_key!:                    string
				status?:                          string
				id_attribute?:                    string
				social_jit_provisioning_enabled?: bool
				discovery_url?:                   string
				authz_url?:                       string
				profile_url?:                     string
				client_credential_in_payload?:    bool
				admin_scope?: [...string]
				auto_redirect_enabled?:              bool
				clock_skew_in_seconds?:              int
				account_linking_enabled!:            bool
				jit_prov_group_static_list_enabled?: bool
				consumer_secret!:                    string
				scope?: [...string]
				redirect_url?: string
			}]
			idcs_endpoint!:                           string
			jit_user_prov_group_saml_attribute_name?: string
			jit_user_prov_assigned_groups?: [...{
				value!: string
			}]
			partner_provider_id?: string
			logout_enabled?:      bool
			urnietfparamsscimschemasoracleidcsextensionx509identity_provider?: [...{
				ocsp_server_name?: string
				eku_values?: [...string]
				crl_check_on_ocsp_failure_enabled?: bool
				crl_reload_duration?:               int
				user_match_attribute!:              string
				ocsp_trust_cert_chain?: [...string]
				crl_location?:                       string
				ocsp_revalidate_time?:               int
				other_cert_match_attribute?:         string
				ocsp_responder_url?:                 string
				ocsp_enable_signed_response?:        bool
				ocsp_allow_unknown_response_status?: bool
				cert_match_attribute!:               string
				eku_validation_enabled?:             bool
				signing_certificate_chain!: [...string]
				crl_enabled?:  bool
				ocsp_enabled?: bool
			}]
			ocid?:                                   string
			type?:                                   string
			assertion_attribute?:                    string
			logout_response_url?:                    string
			user_mapping_method?:                    string
			jit_user_prov_attribute_update_enabled?: bool
			name_id_format?:                         string
			attribute_sets?: [...string]
			shown_on_login_page?:              bool
			partner_name!:                     string
			jit_user_prov_group_mapping_mode?: string
		}
		setting: {
			csr_access!: string
			allowed_domains?: [...string]
			re_auth_when_changing_my_authentication_factors?: bool
			schemas!: [...string]
			allowed_forgot_password_flow_return_urls?: [...string]
			locale?:                       string
			max_no_of_app_cmva_to_return?: int
			certificate_validation?: [...{
				ocsp_unknown_response_status_allowed?:  bool
				ocsp_timeout_duration?:                 int
				crl_check_on_ocsp_failure_enabled?:     bool
				crl_enabled?:                           bool
				crl_location?:                          string
				ocsp_settings_responder_url_preferred?: bool
				ocsp_responder_url?:                    string
				ocsp_signing_certificate_alias?:        string
				crl_refresh_interval?:                  int
				ocsp_enabled?:                          bool
			}]
			signing_cert_public_access?: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
			allowed_notification_redirect_urls?: [...string]
			default_trust_scope?:                   string
			setting_id!:                            string
			is_hosted_page?:                        bool
			service_admin_cannot_list_other_users?: bool
			external_id?:                           string
			idcs_endpoint!:                         string
			purge_configs?: [...{
				retention_period!: int
				resource_name!:    string
			}]
			custom_branding?: bool
			timezone?:        string
			attribute_sets?: [...string]
			id?:                   string
			custom_html_location?: string
			privacy_policy_url?:   string
			images?: [...{
				display?: string
				type!:    string
				value!:   string
			}]
			diagnostic_record_for_search_identifies_returned_resources?: bool
			re_auth_factor?: [...string]
			custom_css_location?:                  string
			terms_of_use_url?:                     string
			attributes?:                           string
			preferred_language?:                   string
			iam_upst_session_expiry?:              int
			sub_mapping_attr?:                     string
			issuer?:                               string
			max_no_of_app_role_members_to_return?: int
			tenant_custom_claims?: [...{
				token_type!: string
				value!:      string
				scopes?: [...string]
				all_scopes!: bool
				expression!: bool
				mode!:       string
				name!:       string
			}]
			company_names?: [...{
				locale!: string
				value!:  string
			}]
			authorization?:               string
			account_always_trust_scope?:  bool
			cloud_migration_url_enabled?: bool
			cloud_migration_custom_url?:  string
			login_texts?: [...{
				locale!: string
				value!:  string
			}]
			custom_translation?:           string
			prev_issuer?:                  string
			audit_event_retention_period?: int
			contact_emails?: [...string]
			resource_type_schema_version?: string
			cloud_gate_cors_settings?: [...{
				cloud_gate_cors_max_age?:           int
				cloud_gate_cors_allow_null_origin?: bool
				cloud_gate_cors_allowed_origins?: [...string]
				cloud_gate_cors_enabled?: bool
				cloud_gate_cors_exposed_headers?: [...string]
			}]
			ocid?:                string
			diagnostic_level?:    int
			enable_terms_of_use?: bool
		}
		my_oauth2client_credential: {
			authorization?:                string
			resource_type_schema_version?: string
			name!:                         string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			schemas!: [...string]
			tags?: [...{
				key!:   string
				value!: string
			}]
			description?: string
			scopes!: [...{
				audience!: string
				scope!:    string
			}]
			idcs_endpoint!:   string
			is_reset_secret?: bool
			status?:          string
			expires_on?:      string
			ocid?:            string
		}
		my_user_db_credential: {
			db_password!:   string
			ocid?:          string
			idcs_endpoint!: string
			schemas!: [...string]
			expires_on?: string
			status?:     string
			tags?: [...{
				key!:   string
				value!: string
			}]
			resource_type_schema_version?: string
			user?: [...{
				ocid?:  string
				value!: string
			}]
			authorization?: string
			description?:   string
		}
		notification_setting: {
			idcs_endpoint!: string
			attribute_sets?: [...string]
			from_email_address!: [...{
				validate!:     string
				value!:        string
				display_name?: string
			}]
			event_settings!: [...{
				event_id!: string
				enabled?:  bool
			}]
			schemas!: [...string]
			test_recipients?: [...string]
			send_notifications_to_secondary_email?:                                            bool
			authorization?:                                                                    string
			ocid?:                                                                             string
			notification_enabled!:                                                             bool
			notification_setting_id!:                                                          string
			test_mode_enabled?:                                                                bool
			resource_type_schema_version?:                                                     string
			external_id?:                                                                      string
			attributes?:                                                                       string
			send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email?: bool
			tags?: [...{
				key!:   string
				value!: string
			}]
		}
		oauth2client_credential: {
			authorization?: string
			expires_on?:    string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			is_reset_secret?: bool
			status?:          string
			schemas!: [...string]
			attributes?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			idcs_endpoint!: string
			description?:   string
			scopes!: [...{
				audience!: string
				scope!:    string
			}]
			attribute_sets?: [...string]
			name!: string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			resource_type_schema_version?: string
			ocid?:                         string
		}
		auth_token: {
			schemas!: [...string]
			ocid?: string
			attribute_sets?: [...string]
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			authorization?:                string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			expires_on?: string
			status?:     string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			tags?: [...{
				value!: string
				key!:   string
			}]
			description?: string
			attributes?:  string
		}
		authentication_factor_setting: {
			attributes?:  string
			sms_enabled!: bool
			bypass_code_settings!: [...{
				help_desk_code_expiry_in_mins!:   int
				help_desk_generation_enabled!:    bool
				help_desk_max_usage!:             int
				length!:                          int
				max_active!:                      int
				self_service_generation_enabled!: bool
			}]
			phone_call_enabled?: bool
			ocid?:               string
			endpoint_restrictions!: [...{
				max_enrolled_devices!:                int
				max_incorrect_attempts!:              int
				max_trusted_endpoints!:               int
				trusted_endpoints_enabled!:           bool
				max_endpoint_trust_duration_in_days!: int
			}]
			hide_backup_factor_enabled?:       bool
			security_questions_enabled!:       bool
			authentication_factor_setting_id!: string
			email_enabled?:                    bool
			totp_enabled!:                     bool
			urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings?: [...{
				timeout!:                                      int
				authenticator_selection_user_verification!:    string
				exclude_credentials!:                          bool
				domain_validation_level?:                      int
				attestation!:                                  string
				authenticator_selection_attachment!:           string
				authenticator_selection_require_resident_key!: bool
				public_key_types!: [...string]
				authenticator_selection_resident_key!: string
			}]
			fido_authenticator_enabled?: bool
			third_party_factor?: [...{
				duo_security!: bool
			}]
			user_enrollment_disabled_factors?: [...string]
			bypass_code_enabled!: bool
			totp_settings!: [...{
				time_step_tolerance!:                 int
				jwt_validity_duration_in_secs!:       int
				email_passcode_length!:               int
				passcode_length!:                     int
				sms_otp_validity_duration_in_mins!:   int
				hashing_algorithm!:                   string
				key_refresh_interval_in_days!:        int
				time_step_in_secs!:                   int
				sms_passcode_length!:                 int
				email_otp_validity_duration_in_mins!: int
			}]
			push_enabled!: bool
			urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings?: [...{
				duo_security_settings?: [...{
					integration_key!: string, secret_key!: string, user_mapping_attribute!: string, attestation_key?: string, api_hostname!: string
				}]
			}]
			schemas!: [...string]
			attribute_sets?: [...string]
			auto_enroll_email_factor_disabled?: bool
			mfa_enrollment_type!:               string
			notification_settings!: [...{
				pull_enabled!: bool
			}]
			idcs_endpoint!: string
			identity_store_settings?: [...{
				mobile_number_update_enabled?: bool
				mobile_number_enabled?:        bool
			}]
			resource_type_schema_version?: string
			client_app_settings!: [...{
				unlock_app_interval_in_secs!:         int
				max_failures_before_lockout!:         int
				device_protection_policy!:            string
				initial_lockout_period_in_secs!:      int
				request_signing_algo!:                string
				unlock_on_app_foreground_enabled!:    bool
				shared_secret_encoding!:              string
				max_failures_before_warning!:         int
				key_pair_length!:                     int
				max_lockout_interval_in_secs!:        int
				unlock_on_app_start_enabled!:         bool
				min_pin_length!:                      int
				policy_update_freq_in_days!:          int
				lockout_escalation_pattern!:          string
				unlock_app_for_each_request_enabled!: bool
			}]
			email_settings?: [...{
				email_link_enabled!:    bool
				email_link_custom_url?: string
			}]
			authorization?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			yubico_otp_enabled?: bool
			compliance_policy!: [...{
				action!: string
				name!:   string
				value!:  string
			}]
		}
		cloud_gate_server: {
			nginx_settings?: string
			description?:    string
			port!:           int
			authorization?:  string
			host_name!:      string
			schemas!: [...string]
			cloud_gate!: [...{
				value!: string
			}]
			attribute_sets?: [...string]
			ssl!:                          bool
			ocid?:                         string
			attributes?:                   string
			display_name!:                 string
			idcs_endpoint!:                string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
		}
		identity_propagation_trust: {
			authorization?:             string
			allow_impersonation?:       bool
			subject_mapping_attribute?: string
			attribute_sets?: [...string]
			account_id?: string
			oauth_clients?: [...string]
			client_claim_name?: string
			impersonation_service_users?: [...{
				ocid?:  string
				rule!:  string
				value!: string
			}]
			schemas!: [...string]
			issuer!:                       string
			type!:                         string
			resource_type_schema_version?: string
			subject_claim_name?:           string
			subject_type?:                 string
			client_claim_values?: [...string]
			public_certificate?: string
			keytab?: [...{
				secret_ocid!:    string
				secret_version?: int
			}]
			description?: string
			ocid?:        string
			active?:      bool
			attributes?:  string
			tags?: [...{
				key!:   string
				value!: string
			}]
			name!:                string
			clock_skew_seconds?:  int
			idcs_endpoint!:       string
			public_key_endpoint?: string
		}
		my_smtp_credential: {
			authorization?: string
			expires_on?:    string
			idcs_endpoint!: string
			ocid?:          string
			user?: [...{
				ocid?:  string
				value?: string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			schemas!: [...string]
			description?:                  string
			resource_type_schema_version?: string
			status?:                       string
		}
		oauth_client_certificate: {
			x509base64certificate!:        string
			key_store_password?:           string
			idcs_endpoint!:                string
			authorization?:                string
			resource_type_schema_version?: string
			external_id?:                  string
			tags?: [...{
				value!: string
				key!:   string
			}]
			ocid?:              string
			certificate_alias!: string
			map?:               string
			key_store_name?:    string
			schemas!: [...string]
			key_store_id?: string
		}
		security_question: {
			active!: bool
			question_text!: [...{
				locale!:  string
				value!:   string
				default?: bool
			}]
			type!:                         string
			resource_type_schema_version?: string
			idcs_endpoint!:                string
			schemas!: [...string]
			external_id?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			attributes?: string
			ocid?:       string
			attribute_sets?: [...string]
			authorization?: string
		}
		social_identity_provider: {
			ocid?:     string
			icon_url?: string
			enabled!:  bool
			schemas!: [...string]
			refresh_token_url?:            string
			client_credential_in_payload?: bool
			id_attribute?:                 string
			consumer_key!:                 string
			auto_redirect_enabled?:        bool
			scope?: [...string]
			access_token_url?: string
			redirect_url?:     string
			authorization?:    string
			jit_prov_assigned_groups?: [...{
				value!: string
			}]
			name!:                            string
			social_jit_provisioning_enabled?: bool
			idcs_endpoint!:                   string
			resource_type_schema_version?:    string
			service_provider_name!:           string
			profile_url?:                     string
			consumer_secret!:                 string
			tags?: [...{
				key!:   string
				value!: string
			}]
			account_linking_enabled!:            bool
			jit_prov_group_static_list_enabled?: bool
			status?:                             string
			authz_url?:                          string
			relay_idp_param_mappings?: [...{
				relay_param_key!:   string
				relay_param_value?: string
			}]
			show_on_login!:         bool
			registration_enabled!:  bool
			description?:           string
			clock_skew_in_seconds?: int
			admin_scope?: [...string]
			discovery_url?: string
		}
		app: {
			show_in_my_apps?:           bool
			bypass_consent?:            bool
			is_multicloud_service_app?: bool
			app_icon?:                  string
			terms_of_use?: [...{
				value!: string
			}]
			is_obligation_capable?: bool
			urnietfparamsscimschemasoracleidcsextensionmanagedapp_app?: [...{
				connected?: bool
				three_legged_oauth_credential?: [...{
					access_token?:        string
					access_token_expiry?: string
					refresh_token?:       string
				}]
				enable_sync?: bool
				bundle_pool_configuration?: [...{
					max_wait?:                       int
					min_evictable_idle_time_millis?: int
					min_idle?:                       int
					max_idle?:                       int
					max_objects?:                    int
				}]
				enable_sync_summary_report_notification?: bool
				flat_file_bundle_configuration_properties?: [...{
					name!:         string
					required!:     bool
					confidential?: bool
					display_name?: string
					help_message?: string
					order?:        int
					value?: [...string]
					icf_type!: string
				}]
				flat_file_connector_bundle?: [...{
					value!:         string
					display?:       string
					well_known_id?: string
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
				enable_auth_sync_new_user_notification?: bool
				is_authoritative?:                       bool
				admin_consent_granted?:                  bool
			}]
			trust_scope?:                       string
			active?:                            bool
			error_page_url?:                    string
			is_login_target?:                   bool
			disable_kmsi_token_authentication?: bool
			is_enterprise_app?:                 bool
			delegated_service_names?: [...string]
			authorization?:        string
			linking_callback_url?: string
			schemas!: [...string]
			service_params?: [...{
				name!:  string
				value?: string
			}]
			allowed_operations?: [...string]
			all_url_schemes_allowed?: bool
			attr_rendering_metadata?: [...{
				regexp?:     string
				datatype?:   string
				required?:   bool
				order?:      int
				read_only?:  bool
				widget?:     string
				label?:      string
				visible?:    bool
				helptext?:   string
				max_length?: int
				min_length?: int
				min_size?:   int
				section?:    string
				name!:       string
				max_size?:   int
			}]
			client_ip_checking?: string
			urnietfparamsscimschemasoracleidcsextension_oci_tags?: [...{
				freeform_tags?: [...{
					value!: string
					key!:   string
				}]
				defined_tags?: [...{
					value!:     string
					key!:       string
					namespace!: string
				}]
			}]
			ocid?:              string
			is_oauth_resource?: bool
			service_type_urn?:  string
			as_opc_service?: [...{
				value!: string
			}]
			is_form_fill?: bool
			allowed_scopes?: [...{
				fqs!: string
			}]
			logout_uri?: string
			signon_policy?: [...{
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionradius_app_app?: [...{
				response_format?:           string
				password_and_otp_together?: bool
				radius_vendor_specific_id?: string
				capture_client_ip?:         bool
				group_membership_to_return?: [...{
					value!: string
				}]
				secret_key!:                         string
				response_format_delimiter?:          string
				end_user_ip_attribute?:              string
				type_of_radius_app?:                 string
				client_ip!:                          string
				group_membership_radius_attribute?:  string
				include_group_in_response!:          bool
				port!:                               string
				country_code_response_attribute_id?: string
				group_name_format?:                  string
			}]
			id_token_enc_algo?:     string
			app_thumbnail?:         string
			contact_email_address?: string
			logout_page_url?:       string
			trust_policies?: [...{
				value!: string
			}]
			alias_apps?: [...{
				value!: string
			}]
			is_saml_service_provider?: bool
			apps_network_perimeters?: [...{
				value!: string
			}]
			service_type_version?: string
			allowed_tags?: [...{
				key!:   string
				value!: string
			}]
			name?:             string
			landing_page_url?: string
			login_page_url?:   string
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template?: [...{
				user_name_form_template?:          string
				form_cred_method?:                 string
				form_credential_sharing_group_id?: string
				configuration?:                    string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				form_type?:                 string
				reveal_password_on_form?:   bool
				sync_from_template?:        bool
				user_name_form_expression?: string
			}]
			secondary_audiences?: [...string]
			display_name!: string
			urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app?: [...{
				master_key?:        string
				max_renewable_age?: int
				max_ticket_life?:   int
				realm_name?:        string
				supported_encryption_salt_types?: [...string]
				ticket_flags?:                 int
				default_encryption_salt_type?: string
			}]
			based_on_template!: [...{
				value!:         string
				well_known_id?: string
			}]
			privacy_policy_url?:  string
			access_token_expiry?: int
			app_signon_policy?: [...{
				value!: string
			}]
			protectable_secondary_audiences?: [...{
				value!: string
			}]
			idcs_endpoint!: string
			urnietfparamsscimschemasoracleidcsextensionopc_service_app?: [...{
				service_instance_identifier?: string
			}]
			saml_service_provider?: [...{
				value!: string
			}]
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			refresh_token_expiry?: int
			is_web_tier_policy?:   bool
			is_kerberos_realm?:    bool
			icon?:                 string
			urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app?: [...{
				resource_ref?:               bool
				web_tier_policy_az_control?: string
				web_tier_policy_json?:       string
			}]
			urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app?: [...{
				logout_enabled?:           bool
				partner_provider_pattern?: string
				encrypt_assertion?:        bool
				logout_response_url?:      string
				metadata?:                 string
				logout_request_url?:       string
				federation_protocol?:      string
				user_assertion_attributes?: [...{
					name!:                      string
					user_store_attribute_name!: string
					format?:                    string
				}]
				name_id_userstore_attribute?:       string
				encryption_certificate?:            string
				succinct_id?:                       string
				hok_required?:                      bool
				signing_certificate?:               string
				name_id_format?:                    string
				include_signing_cert_in_signature?: bool
				partner_provider_id?:               string
				encryption_algorithm?:              string
				assertion_consumer_url?:            string
				hok_acs_url?:                       string
				signature_hash_algorithm?:          string
				key_encryption_algorithm?:          string
				sign_response_or_assertion?:        string
				group_assertion_attributes?: [...{
					format?:     string
					group_name?: string
					name!:       string
					condition?:  string
				}]
				logout_binding?: string
			}]
			urnietfparamsscimschemasoracleidcsextensionenterprise_app_app?: [...{
				deny_authz_decision_ttl?: int
				deny_authz_policy?: [...{
					value!: string
				}]
				allow_authz_decision_ttl?: int
				allow_authz_policy?: [...{
					value!: string
				}]
				app_resources?: [...{
					value!: string
				}]
			}]
			product_name?: string
			idp_policy?: [...{
				value!: string
			}]
			certificates?: [...{
				cert_alias!: string
			}]
			description?: string
			urnietfparamsscimschemasoracleidcsextensionrequestable_app?: [...{
				requestable?: bool
			}]
			is_oauth_client?: bool
			urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app?: [...{
				multicloud_platform_url?: string
				multicloud_service_type!: string
			}]
			is_radius_app?:        bool
			allow_access_control?: bool
			is_mobile_target?:     bool
			product_logo_url?:     string
			login_mechanism?:      string
			client_type?:          string
			redirect_uris?: [...string]
			allowed_grants?: [...string]
			allow_offline?: bool
			scopes?: [...{
				value!:            string
				description?:      string
				display_name?:     string
				requires_consent?: bool
			}]
			radius_policy?: [...{
				value!: string
			}]
			audience?:         string
			is_unmanaged_app?: bool
			identity_providers?: [...{
				value!: string
			}]
			urnietfparamsscimschemasoracleidcsextensionform_fill_app_app?: [...{
				user_name_form_expression?:        string
				form_cred_method?:                 string
				form_credential_sharing_group_id?: string
				form_fill_url_match?: [...{
					form_url!:            string
					form_url_match_type?: string
				}]
				reveal_password_on_form?: bool
				user_name_form_template?: string
				configuration?:           string
				form_type?:               string
			}]
			terms_of_service_url?: string
			urnietfparamsscimschemasoracleidcsextensiondbcs_app?: [...{
				domain_app?: [...{
					value!: string
				}]
				domain_name?: string
			}]
			post_logout_redirect_uris?: [...string]
			attributes?:    string
			home_page_url?: string
			is_alias_app?:  bool
			tags?: [...{
				key!:   string
				value!: string
			}]
		}
		dynamic_resource_group: {
			idcs_endpoint!: string
			schemas!: [...string]
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
			display_name!:                 string
			ocid?:                         string
			resource_type_schema_version?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			matching_rule!: string
			authorization?: string
			description?:   string
			attribute_sets?: [...string]
			attributes?: string
		}
		kmsi_setting: {
			ocid?:                       string
			tou_prompt_disabled?:        bool
			last_used_validity_in_days?: int
			authorization?:              string
			idcs_endpoint!:              string
			kmsi_prompt_enabled?:        bool
			attribute_sets?: [...string]
			max_allowed_sessions?:   int
			kmsi_setting_id!:        string
			last_enabled_on?:        string
			kmsi_feature_enabled?:   bool
			token_validity_in_days?: int
			schemas!: [...string]
			attributes?: string
			tags?: [...{
				value!: string
				key!:   string
			}]
			resource_type_schema_version?: string
			external_id?:                  string
		}
		my_customer_secret_key: {
			user?: [...{
				ocid?:  string
				value?: string
			}]
			idcs_endpoint!: string
			schemas!: [...string]
			description?: string
			tags?: [...{
				key!:   string
				value!: string
			}]
			status?:                       string
			expires_on?:                   string
			display_name?:                 string
			resource_type_schema_version?: string
			ocid?:                         string
			authorization?:                string
		}
		user_db_credential: {
			status?: string
			schemas!: [...string]
			ocid?:                         string
			idcs_endpoint!:                string
			expires_on?:                   string
			resource_type_schema_version?: string
			attribute_sets?: [...string]
			description?: string
			urnietfparamsscimschemasoracleidcsextensionself_change_user?: [...{
				allow_self_change?: bool
			}]
			attributes?:  string
			db_password!: string
			user?: [...{
				value!: string
				ocid?:  string
			}]
			tags?: [...{
				key!:   string
				value!: string
			}]
			authorization?: string
		}
	}
}
#data: {
	conditions: {
		sort_by?:          string
		start_index?:      int
		condition_filter?: string
		compartment_id?:   string
		attributes?:       string
		authorization?:    string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		sort_order?:                   string
		condition_count?:              int
	}
	oauth2client_credentials: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		compartment_id?:                 string
		attributes?:                     string
		start_index?:                    int
		sort_order?:                     string
		sort_by?:                        string
		oauth2client_credential_count?:  int
		authorization?:                  string
		oauth2client_credential_filter?: string
	}
	self_registration_profile: {
		authorization?:                string
		attributes?:                   string
		resource_type_schema_version?: string
		self_registration_profile_id!: string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
	}
	branding_settings: {
		idcs_endpoint!: string
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		compartment_id?:               string
		resource_type_schema_version?: string
	}
	identity_settings: {
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		compartment_id?:               string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	oci_console_sign_on_policy_consents: {
		start_index?:                              int
		oci_console_sign_on_policy_consent_count?: int
		attributes?:                               string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		oci_console_sign_on_policy_consent_filter?: string
		idcs_endpoint!:                             string
		authorization?:                             string
	}
	social_identity_provider: {
		social_identity_provider_id!:  string
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	api_keys: {
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		api_key_count?:                int
		api_key_filter?:               string
		compartment_id?:               string
		attributes?:                   string
		start_index?:                  int
		attribute_sets?: [...string]
		sort_order?: string
		sort_by?:    string
	}
	dynamic_resource_groups: {
		dynamic_resource_group_filter?: string
		attributes?:                    string
		sort_by?:                       string
		attribute_sets?: [...string]
		dynamic_resource_group_count?: int
		authorization?:                string
		start_index?:                  int
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		sort_order?:                   string
	}
	grant: {
		resource_type_schema_version?: string
		authorization?:                string
		attributes?:                   string
		attribute_sets?: [...string]
		idcs_endpoint!: string
		grant_id!:      string
	}
	my_oauth2client_credentials: {
		sort_by?:                           string
		idcs_endpoint!:                     string
		start_index?:                       int
		resource_type_schema_version?:      string
		sort_order?:                        string
		compartment_id?:                    string
		my_oauth2client_credential_filter?: string
		authorization?:                     string
		my_oauth2client_credential_count?:  int
	}
	my_user_db_credential: {
		my_user_db_credential_id!:     string
		idcs_endpoint!:                string
		authorization?:                string
		resource_type_schema_version?: string
	}
	self_registration_profiles: {
		resource_type_schema_version?:     string
		idcs_endpoint!:                    string
		authorization?:                    string
		self_registration_profile_filter?: string
		attribute_sets?: [...string]
		self_registration_profile_count?: int
		sort_order?:                      string
		sort_by?:                         string
		start_index?:                     int
		attributes?:                      string
		compartment_id?:                  string
	}
	app_role: {
		resource_type_schema_version?: string
		attributes?:                   string
		authorization?:                string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		app_role_id!: string
	}
	identity_propagation_trust: {
		authorization?:                 string
		resource_type_schema_version?:  string
		identity_propagation_trust_id!: string
		attribute_sets?: [...string]
		attributes?:    string
		idcs_endpoint!: string
	}
	identity_propagation_trusts: {
		identity_propagation_trust_count?:  int
		attributes?:                        string
		resource_type_schema_version?:      string
		identity_propagation_trust_filter?: string
		idcs_endpoint!:                     string
		authorization?:                     string
		compartment_id?:                    string
		sort_order?:                        string
		sort_by?:                           string
		attribute_sets?: [...string]
		start_index?: int
	}
	my_auth_token: {
		authorization?:                string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		my_auth_token_id!:             string
	}
	my_trusted_user_agent: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		attributes?:               string
		my_trusted_user_agent_id!: string
		authorization?:            string
		idcs_endpoint!:            string
	}
	security_questions: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		start_index?:                  int
		attributes?:                   string
		sort_by?:                      string
		sort_order?:                   string
		security_question_count?:      int
		security_question_filter?:     string
		attribute_sets?: [...string]
		compartment_id?: string
	}
	security_question_settings: {
		attributes?:                   string
		resource_type_schema_version?: string
		compartment_id?:               string
		attribute_sets?: [...string]
		authorization?: string
		idcs_endpoint!: string
	}
	settings: {
		idcs_endpoint!:  string
		compartment_id?: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
		authorization?:                string
	}
	account_mgmt_infos: {
		resource_type_schema_version?: string
		sort_order?:                   string
		sort_by?:                      string
		attribute_sets?: [...string]
		account_mgmt_info_count?:  int
		compartment_id?:           string
		attributes?:               string
		idcs_endpoint!:            string
		authorization?:            string
		start_index?:              int
		account_mgmt_info_filter?: string
	}
	account_recovery_setting: {
		attributes?:                   string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		idcs_endpoint!:               string
		authorization?:               string
		account_recovery_setting_id!: string
	}
	cloud_gate_mapping: {
		idcs_endpoint!: string
		attribute_sets?: [...string]
		cloud_gate_mapping_id!:        string
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	dynamic_resource_group: {
		resource_type_schema_version?: string
		authorization?:                string
		idcs_endpoint!:                string
		attributes?:                   string
		dynamic_resource_group_id!:    string
		attribute_sets?: [...string]
	}
	my_pending_approval: {
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		my_pending_approval_id!:       string
	}
	oauth_client_certificate: {
		idcs_endpoint!:                string
		o_auth_client_certificate_id!: string
		resource_type_schema_version?: string
		authorization?:                string
	}
	user_attributes_settings: {
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		authorization?:                string
	}
	network_perimeters: {
		start_index?:              int
		compartment_id?:           string
		attributes?:               string
		network_perimeter_filter?: string
		attribute_sets?: [...string]
		authorization?:                string
		resource_type_schema_version?: string
		sort_order?:                   string
		idcs_endpoint!:                string
		network_perimeter_count?:      int
		sort_by?:                      string
	}
	account_mgmt_info: {
		idcs_endpoint!:                string
		account_mgmt_info_id!:         string
		attributes?:                   string
		resource_type_schema_version?: string
		authorization?:                string
		attribute_sets?: [...string]
	}
	my_smtp_credential: {
		resource_type_schema_version?: string
		authorization?:                string
		my_smtp_credential_id!:        string
		idcs_endpoint!:                string
	}
	security_question: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		attributes?:           string
		authorization?:        string
		idcs_endpoint!:        string
		security_question_id?: string
	}
	user_db_credential: {
		attributes?:                   string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?:         string
		idcs_endpoint!:         string
		user_db_credential_id!: string
	}
	approval_workflow_assignment: {
		attribute_sets?: [...string]
		authorization?:                   string
		approval_workflow_assignment_id!: string
		idcs_endpoint!:                   string
		attributes?:                      string
		resource_type_schema_version?:    string
	}
	my_device: {
		resource_type_schema_version?: string
		attributes?:                   string
		authorization?:                string
		attribute_sets?: [...string]
		idcs_endpoint!: string
		my_device_id!:  string
	}
	my_requests: {
		compartment_id?: string
		sort_by?:        string
		start_index?:    int
		idcs_endpoint!:  string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		my_request_count?:             int
		sort_order?:                   string
		my_request_filter?:            string
		attributes?:                   string
		authorization?:                string
	}
	policies: {
		attributes?:                   string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		sort_order?:     string
		policy_filter?:  string
		policy_count?:   int
		start_index?:    int
		authorization?:  string
		idcs_endpoint!:  string
		compartment_id?: string
		sort_by?:        string
	}
	app: {
		idcs_endpoint!:                string
		authorization?:                string
		attributes?:                   string
		resource_type_schema_version?: string
		app_id!:                       string
		attribute_sets?: [...string]
	}
	approval_workflows: {
		authorization?:                string
		resource_type_schema_version?: string
		start_index?:                  int
		approval_workflow_filter?:     string
		attribute_sets?: [...string]
		idcs_endpoint!:           string
		attributes?:              string
		compartment_id?:          string
		approval_workflow_count?: int
	}
	auth_token: {
		attributes?:    string
		authorization?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		auth_token_id!:                string
		idcs_endpoint!:                string
	}
	customer_secret_key: {
		authorization?:          string
		customer_secret_key_id!: string
		attributes?:             string
		idcs_endpoint!:          string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
	}
	identity_providers: {
		compartment_id?:               string
		identity_provider_count?:      int
		authorization?:                string
		resource_type_schema_version?: string
		start_index?:                  int
		sort_by?:                      string
		sort_order?:                   string
		attributes?:                   string
		attribute_sets?: [...string]
		identity_provider_filter?: string
		idcs_endpoint!:            string
	}
	security_question_setting: {
		authorization?: string
		attribute_sets?: [...string]
		attributes?:                   string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		security_question_setting_id!: string
	}
	authentication_factor_settings: {
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
		attribute_sets?: [...string]
	}
	authentication_factor_setting: {
		idcs_endpoint!: string
		authorization?: string
		attribute_sets?: [...string]
		attributes?:                       string
		authentication_factor_setting_id?: string
		resource_type_schema_version?:     string
	}
	notification_setting: {
		notification_setting_id!: string
		authorization?:           string
		attributes?:              string
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		resource_type_schema_version?: string
	}
	my_completed_approvals: {
		start_index?:                  int
		sort_order?:                   string
		resource_type_schema_version?: string
		sort_by?:                      string
		idcs_endpoint!:                string
		my_completed_approval_filter?: string
		authorization?:                string
		compartment_id?:               string
		my_completed_approval_count?:  int
	}
	my_support_accounts: {
		compartment_id?:               string
		authorization?:                string
		sort_order?:                   string
		sort_by?:                      string
		idcs_endpoint!:                string
		my_support_account_filter?:    string
		resource_type_schema_version?: string
		start_index?:                  int
		my_support_account_count?:     int
	}
	oci_console_sign_on_policy_consent: {
		attribute_sets?: [...string]
		authorization?:                         string
		idcs_endpoint!:                         string
		oci_console_sign_on_policy_consent_id!: string
		attributes?:                            string
		resource_type_schema_version?:          string
	}
	smtp_credential: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?:      string
		smtp_credential_id!: string
		attributes?:         string
		idcs_endpoint!:      string
	}
	approval_workflow: {
		idcs_endpoint!:                string
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		approval_workflow_id!: string
	}
	grants: {
		authorization?: string
		attribute_sets?: [...string]
		attributes?:                   string
		sort_by?:                      string
		grant_count?:                  int
		resource_type_schema_version?: string
		sort_order?:                   string
		idcs_endpoint!:                string
		grant_filter?:                 string
		start_index?:                  int
		compartment_id?:               string
	}
	group: {
		attributes?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		authorization?:                string
		group_id!:                     string
		idcs_endpoint!:                string
	}
	branding_setting: {
		attributes?:                   string
		idcs_endpoint!:                string
		branding_setting_id!:          string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		authorization?: string
	}
	cloud_gates: {
		attributes?: string
		attribute_sets?: [...string]
		sort_by?:                      string
		cloud_gate_count?:             int
		cloud_gate_filter?:            string
		authorization?:                string
		start_index?:                  int
		resource_type_schema_version?: string
		sort_order?:                   string
		idcs_endpoint!:                string
		compartment_id?:               string
	}
	my_requestable_groups: {
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		sort_by?:                      string
		compartment_id?:               string
		my_requestable_group_filter?:  string
		start_index?:                  int
		my_requestable_group_count?:   int
		sort_order?:                   string
	}
	setting: {
		attribute_sets?: [...string]
		attributes?:                   string
		setting_id!:                   string
		authorization?:                string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
	}
	my_api_keys: {
		idcs_endpoint!:                string
		start_index?:                  int
		compartment_id?:               string
		sort_by?:                      string
		my_api_key_count?:             int
		my_api_key_filter?:            string
		authorization?:                string
		resource_type_schema_version?: string
		sort_order?:                   string
	}
	apps: {
		app_count?: int
		attribute_sets?: [...string]
		compartment_id?:               string
		start_index?:                  int
		idcs_endpoint!:                string
		authorization?:                string
		resource_type_schema_version?: string
		attributes?:                   string
		sort_by?:                      string
		sort_order?:                   string
		app_filter?:                   string
	}
	cloud_gate_mappings: {
		attributes?: string
		sort_order?: string
		attribute_sets?: [...string]
		start_index?:                  int
		resource_type_schema_version?: string
		sort_by?:                      string
		authorization?:                string
		idcs_endpoint!:                string
		cloud_gate_mapping_count?:     int
		compartment_id?:               string
		cloud_gate_mapping_filter?:    string
	}
	password_policies: {
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		attributes?:             string
		compartment_id?:         string
		idcs_endpoint!:          string
		authorization?:          string
		sort_order?:             string
		password_policy_count?:  int
		start_index?:            int
		password_policy_filter?: string
		sort_by?:                string
	}
	my_auth_tokens: {
		my_auth_token_count?:          int
		resource_type_schema_version?: string
		start_index?:                  int
		sort_order?:                   string
		idcs_endpoint!:                string
		sort_by?:                      string
		compartment_id?:               string
		my_auth_token_filter?:         string
		authorization?:                string
	}
	my_groups: {
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		my_group_filter?:              string
		sort_order?:                   string
		resource_type_schema_version?: string
		sort_by?:                      string
		my_group_count?:               int
		authorization?:                string
		start_index?:                  int
		attributes?:                   string
		compartment_id?:               string
	}
	my_support_account: {
		resource_type_schema_version?: string
		my_support_account_id!:        string
		idcs_endpoint!:                string
		authorization?:                string
	}
	notification_settings: {
		attributes?:    string
		authorization?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		compartment_id?:               string
	}
	user_db_credentials: {
		compartment_id?:               string
		attributes?:                   string
		authorization?:                string
		sort_by?:                      string
		user_db_credential_filter?:    string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		sort_order?:                   string
		start_index?:                  int
		user_db_credential_count?:     int
		attribute_sets?: [...string]
	}
	user_attributes_setting: {
		authorization?: string
		attribute_sets?: [...string]
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		user_attributes_setting_id!:   string
		attributes?:                   string
	}
	account_recovery_settings: {
		idcs_endpoint!:  string
		compartment_id?: string
		attribute_sets?: [...string]
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	auth_tokens: {
		attributes?:    string
		idcs_endpoint!: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		sort_by?:                      string
		auth_token_filter?:            string
		auth_token_count?:             int
		start_index?:                  int
		sort_order?:                   string
		compartment_id?:               string
		authorization?:                string
	}
	condition: {
		attribute_sets?: [...string]
		authorization?:                string
		condition_id!:                 string
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	my_oauth2client_credential: {
		idcs_endpoint!:                 string
		resource_type_schema_version?:  string
		authorization?:                 string
		my_oauth2client_credential_id!: string
	}
	my_smtp_credentials: {
		start_index?:                  int
		sort_by?:                      string
		compartment_id?:               string
		resource_type_schema_version?: string
		sort_order?:                   string
		idcs_endpoint!:                string
		authorization?:                string
		my_smtp_credential_filter?:    string
		my_smtp_credential_count?:     int
	}
	my_user_db_credentials: {
		my_user_db_credential_filter?: string
		sort_by?:                      string
		resource_type_schema_version?: string
		start_index?:                  int
		authorization?:                string
		sort_order?:                   string
		idcs_endpoint!:                string
		compartment_id?:               string
		my_user_db_credential_count?:  int
	}
	approval_workflow_step: {
		authorization?:             string
		idcs_endpoint!:             string
		approval_workflow_step_id!: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
	}
	groups: {
		sort_order?:   string
		group_count?:  int
		group_filter?: string
		attribute_sets?: [...string]
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		start_index?:                  int
		sort_by?:                      string
		authorization?:                string
		compartment_id?:               string
	}
	approval_workflow_assignments: {
		authorization?:                string
		resource_type_schema_version?: string
		compartment_id?:               string
		idcs_endpoint!:                string
		attribute_sets?: [...string]
		approval_workflow_assignment_count?:  int
		approval_workflow_assignment_filter?: string
		sort_by?:                             string
		start_index?:                         int
		attributes?:                          string
		sort_order?:                          string
	}
	identity_provider: {
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		attributes?:                   string
		identity_provider_id!:         string
	}
	oauth2client_credential: {
		attributes?:                   string
		resource_type_schema_version?: string
		authorization?:                string
		o_auth2client_credential_id!:  string
		attribute_sets?: [...string]
		idcs_endpoint!: string
	}
	oauth_partner_certificate: {
		o_auth_partner_certificate_id!: string
		resource_type_schema_version?:  string
		idcs_endpoint!:                 string
		authorization?:                 string
	}
	policy: {
		attributes?:                   string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		attribute_sets?: [...string]
		policy_id!: string
	}
	cloud_gate_servers: {
		sort_order?: string
		attribute_sets?: [...string]
		sort_by?:                      string
		cloud_gate_server_filter?:     string
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		attributes?:                   string
		start_index?:                  int
		compartment_id?:               string
		cloud_gate_server_count?:      int
		authorization?:                string
	}
	my_trusted_user_agents: {
		my_trusted_user_agent_count?: int
		attribute_sets?: [...string]
		authorization?:                string
		idcs_endpoint!:                string
		start_index?:                  int
		attributes?:                   string
		compartment_id?:               string
		sort_order?:                   string
		sort_by?:                      string
		my_trusted_user_agent_filter?: string
		resource_type_schema_version?: string
	}
	rule: {
		authorization?:                string
		rule_id!:                      string
		attributes?:                   string
		resource_type_schema_version?: string
		attribute_sets?: [...string]
		idcs_endpoint!: string
	}
	my_apps: {
		compartment_id?:               string
		my_app_filter?:                string
		authorization?:                string
		start_index?:                  int
		sort_by?:                      string
		idcs_endpoint!:                string
		my_app_count?:                 int
		resource_type_schema_version?: string
		sort_order?:                   string
	}
	network_perimeter: {
		attribute_sets?: [...string]
		network_perimeter_id!:         string
		idcs_endpoint!:                string
		attributes?:                   string
		authorization?:                string
		resource_type_schema_version?: string
	}
	customer_secret_keys: {
		attribute_sets?: [...string]
		customer_secret_key_count?:    int
		sort_order?:                   string
		start_index?:                  int
		idcs_endpoint!:                string
		authorization?:                string
		sort_by?:                      string
		customer_secret_key_filter?:   string
		compartment_id?:               string
		attributes?:                   string
		resource_type_schema_version?: string
	}
	password_policy: {
		password_policy_id!: string
		attributes?:         string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
	}
	app_roles: {
		attributes?:                   string
		start_index?:                  int
		sort_order?:                   string
		idcs_endpoint!:                string
		app_role_count?:               int
		resource_type_schema_version?: string
		sort_by?:                      string
		authorization?:                string
		app_role_filter?:              string
		attribute_sets?: [...string]
		compartment_id?: string
	}
	identity_setting: {
		idcs_endpoint!: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		authorization?:                string
		attributes?:                   string
		identity_setting_id!:          string
	}
	kmsi_setting: {
		kmsi_setting_id!: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		attributes?:                   string
		idcs_endpoint!:                string
		authorization?:                string
	}
	kmsi_settings: {
		idcs_endpoint!:                string
		authorization?:                string
		resource_type_schema_version?: string
		compartment_id?:               string
		attribute_sets?: [...string]
		attributes?: string
	}
	my_completed_approval: {
		idcs_endpoint!:                string
		authorization?:                string
		my_completed_approval_id!:     string
		resource_type_schema_version?: string
	}
	my_customer_secret_key: {
		authorization?:                string
		idcs_endpoint!:                string
		resource_type_schema_version?: string
		my_customer_secret_key_id!:    string
	}
	rules: {
		resource_type_schema_version?: string
		sort_by?:                      string
		idcs_endpoint!:                string
		compartment_id?:               string
		rule_filter?:                  string
		rule_count?:                   int
		attributes?:                   string
		authorization?:                string
		sort_order?:                   string
		start_index?:                  int
		attribute_sets?: [...string]
	}
	cloud_gate: {
		attributes?:    string
		cloud_gate_id!: string
		authorization?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
	}
	oauth_client_certificates: {
		sort_by?:                         string
		idcs_endpoint!:                   string
		resource_type_schema_version?:    string
		sort_order?:                      string
		oauth_client_certificate_count?:  int
		authorization?:                   string
		start_index?:                     int
		compartment_id?:                  string
		oauth_client_certificate_filter?: string
	}
	smtp_credentials: {
		resource_type_schema_version?: string
		attributes?:                   string
		start_index?:                  int
		sort_by?:                      string
		smtp_credential_filter?:       string
		attribute_sets?: [...string]
		authorization?:         string
		sort_order?:            string
		smtp_credential_count?: int
		idcs_endpoint!:         string
		compartment_id?:        string
	}
	my_pending_approvals: {
		resource_type_schema_version?: string
		start_index?:                  int
		sort_by?:                      string
		compartment_id?:               string
		my_pending_approval_count?:    int
		authorization?:                string
		sort_order?:                   string
		idcs_endpoint!:                string
		my_pending_approval_filter?:   string
	}
	resource_type_schema_attributes: {
		sort_by?:                              string
		authorization?:                        string
		resource_type_schema_attribute_count?: int
		attribute_sets?: [...string]
		compartment_id?:                        string
		resource_type_schema_attribute_filter?: string
		attributes?:                            string
		resource_type_schema_version?:          string
		idcs_endpoint!:                         string
		sort_order?:                            string
		start_index?:                           int
	}
	user: {
		user_id!:       string
		attributes?:    string
		idcs_endpoint!: string
		authorization?: string
		attribute_sets?: [...string]
		resource_type_schema_version?: string
	}
	approval_workflow_steps: {
		compartment_id?:                string
		start_index?:                   int
		sort_order?:                    string
		approval_workflow_step_count?:  int
		authorization?:                 string
		attributes?:                    string
		resource_type_schema_version?:  string
		idcs_endpoint!:                 string
		approval_workflow_step_filter?: string
		attribute_sets?: [...string]
		sort_by?: string
	}
	cloud_gate_server: {
		attribute_sets?: [...string]
		attributes?:                   string
		cloud_gate_server_id!:         string
		resource_type_schema_version?: string
		authorization?:                string
		idcs_endpoint!:                string
	}
	my_api_key: {
		my_api_key_id!:                string
		idcs_endpoint!:                string
		authorization?:                string
		resource_type_schema_version?: string
	}
	my_devices: {
		my_device_count?:              int
		idcs_endpoint!:                string
		my_device_filter?:             string
		authorization?:                string
		start_index?:                  int
		attributes?:                   string
		sort_order?:                   string
		resource_type_schema_version?: string
		compartment_id?:               string
		sort_by?:                      string
		attribute_sets?: [...string]
	}
	social_identity_providers: {
		idcs_endpoint!:                   string
		resource_type_schema_version?:    string
		start_index?:                     int
		compartment_id?:                  string
		authorization?:                   string
		social_identity_provider_count?:  int
		social_identity_provider_filter?: string
		sort_order?:                      string
		sort_by?:                         string
	}
	api_key: {
		attribute_sets?: [...string]
		resource_type_schema_version?: string
		idcs_endpoint!:                string
		authorization?:                string
		api_key_id!:                   string
		attributes?:                   string
	}
	my_customer_secret_keys: {
		authorization?:                 string
		resource_type_schema_version?:  string
		start_index?:                   int
		sort_order?:                    string
		my_customer_secret_key_count?:  int
		my_customer_secret_key_filter?: string
		sort_by?:                       string
		compartment_id?:                string
		idcs_endpoint!:                 string
	}
	oauth_partner_certificates: {
		idcs_endpoint!:                    string
		start_index?:                      int
		oauth_partner_certificate_filter?: string
		resource_type_schema_version?:     string
		oauth_partner_certificate_count?:  int
		sort_order?:                       string
		compartment_id?:                   string
		authorization?:                    string
		sort_by?:                          string
	}
	users: {
		attribute_sets?: [...string]
		sort_order?:                   string
		authorization?:                string
		resource_type_schema_version?: string
		user_filter?:                  string
		sort_by?:                      string
		compartment_id?:               string
		user_count?:                   int
		start_index?:                  int
		attributes?:                   string
		idcs_endpoint!:                string
	}
}

