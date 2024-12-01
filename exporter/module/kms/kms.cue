package kms

#resource: {
	attributes: {
		sign: {
			key_version_id?:    string
			message_type?:      string
			signature:          string
			crypto_endpoint!:   string
			key_id!:            string
			message!:           string
			signing_algorithm!: string
		}
		ekms_private_endpoint: {
			ca_bundle!:               string
			external_key_manager_ip!: string
			defined_tags?: [_]: string
			time_updated:    string
			compartment_id!: string
			time_created:    string
			freeform_tags?: [_]: string
			port?:               int
			lifecycle_details:   string
			private_endpoint_ip: string
			state:               string
			display_name!:       string
			subnet_id!:          string
		}
		generated_key: {
			ciphertext:             string
			include_plaintext_key!: bool
			key_shape!: [...{
				length!:    int
				curve_id?:  string
				algorithm!: string
			}]
			associated_data?: [_]: string
			crypto_endpoint!: string
			key_id!:          string
			logging_context?: [_]: string
			plaintext:          string
			plaintext_checksum: string
		}
		key: {
			restore_from_file?: [...{
				content_length!:                string
				content_md5?:                   string
				restore_key_from_file_details!: string
			}]
			is_primary:       bool
			restore_trigger?: bool
			replica_details: [...{
				replication_id: string
			}]
			restore_from_object_store?: [...{
				namespace?:   string
				object?:      string
				uri?:         string
				destination!: string
				bucket?:      string
			}]
			management_endpoint!:      string
			time_of_deletion?:         string
			is_auto_rotation_enabled?: bool
			external_key_reference_details: [...{
				external_key_id:         string
				external_key_version_id: string
			}]
			defined_tags?: [_]: string
			external_key_reference?: [...{
				external_key_id!: string
			}]
			time_created:        string
			vault_id:            string
			protection_mode?:    string
			current_key_version: string
			state:               string
			compartment_id!:     string
			display_name!:       string
			key_shape!: [...{
				curve_id?:  string
				algorithm!: string
				length!:    int
			}]
			restored_from_key_id: string
			auto_key_rotation_details?: [...{
				time_of_next_rotation?:     string
				time_of_schedule_start?:    string
				last_rotation_message?:     string
				last_rotation_status?:      string
				rotation_interval_in_days?: int
				time_of_last_rotation?:     string
			}]
			freeform_tags?: [_]: string
			desired_state?: string
		}
		key_version: {
			external_key_reference_details: [...{
				external_key_id:         string
				external_key_version_id: string
			}]
			time_of_deletion?: string
			is_primary:        bool
			public_key:        string
			compartment_id:    string
			replica_details: [...{
				replication_id: string
			}]
			time_created:                 string
			restored_from_key_id:         string
			management_endpoint!:         string
			is_auto_rotated:              bool
			external_key_version_id?:     string
			state:                        string
			key_id!:                      string
			key_version_id:               string
			vault_id:                     string
			restored_from_key_version_id: string
		}
		encrypted_data: {
			logging_context?: [_]: string
			ciphertext:       string
			crypto_endpoint!: string
			key_id!:          string
			plaintext!:       string
			associated_data?: [_]: string
			encryption_algorithm?: string
			key_version_id?:       string
		}
		vault: {
			restore_from_file?: [...{
				restore_vault_from_file_details!: string
				content_length!:                  string
				content_md5?:                     string
			}]
			is_vault_replicable: bool
			time_created:        string
			vault_type!:         string
			freeform_tags?: [_]: string
			restore_trigger?: bool
			restore_from_object_store?: [...{
				uri?:         string
				destination!: string
				bucket?:      string
				namespace?:   string
				object?:      string
			}]
			compartment_id!: string
			replica_details: [...{
				replication_id: string
			}]
			management_endpoint: string
			defined_tags?: [_]: string
			external_key_manager_metadata_summary: [...{
				oauth_metadata_summary: [...{
					client_app_id:         string
					idcs_account_name_url: string
				}]
				private_endpoint_id:         string
				vendor:                      string
				external_vault_endpoint_url: string
			}]
			crypto_endpoint:   string
			is_primary:        bool
			display_name!:     string
			time_of_deletion?: string
			state:             string
			external_key_manager_metadata?: [...{
				oauth_metadata!: [...{
					client_app_id!:         string
					client_app_secret!:     string
					idcs_account_name_url!: string
				}]
				private_endpoint_id!:         string
				external_vault_endpoint_url!: string
			}]
			restored_from_vault_id: string
		}
		verify: {
			key_version_id!:    string
			message!:           string
			signature!:         string
			signing_algorithm!: string
			message_type?:      string
			is_signature_valid: bool
			crypto_endpoint!:   string
			key_id!:            string
		}
		vault_replication: {
			replica_region!: string
			vault_id!:       string
		}
	}
	arguments: {
		sign: {
			key_version_id?:    string
			message_type?:      string
			crypto_endpoint!:   string
			key_id!:            string
			message!:           string
			signing_algorithm!: string
		}
		ekms_private_endpoint: {
			port?:                    int
			ca_bundle!:               string
			external_key_manager_ip!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			subnet_id!:      string
		}
		generated_key: {
			crypto_endpoint!: string
			logging_context?: [_]: string
			include_plaintext_key!: bool
			key_id!:                string
			key_shape!: [...{
				curve_id?:  string
				algorithm!: string
				length!:    int
			}]
			associated_data?: [_]: string
		}
		key: {
			compartment_id!: string
			key_shape!: [...{
				algorithm!: string
				length!:    int
				curve_id?:  string
			}]
			management_endpoint!: string
			freeform_tags?: [_]: string
			display_name!: string
			auto_key_rotation_details?: [...{
				last_rotation_status?:      string
				rotation_interval_in_days?: int
				time_of_last_rotation?:     string
				time_of_next_rotation?:     string
				time_of_schedule_start?:    string
				last_rotation_message?:     string
			}]
			external_key_reference?: [...{
				external_key_id!: string
			}]
			restore_from_object_store?: [...{
				destination!: string
				bucket?:      string
				namespace?:   string
				object?:      string
				uri?:         string
			}]
			protection_mode?:          string
			desired_state?:            string
			is_auto_rotation_enabled?: bool
			restore_from_file?: [...{
				restore_key_from_file_details!: string
				content_length!:                string
				content_md5?:                   string
			}]
			restore_trigger?: bool
			defined_tags?: [_]: string
			time_of_deletion?: string
		}
		key_version: {
			external_key_version_id?: string
			key_id!:                  string
			management_endpoint!:     string
			time_of_deletion?:        string
		}
		encrypted_data: {
			key_version_id?: string
			logging_context?: [_]: string
			crypto_endpoint!: string
			key_id!:          string
			plaintext!:       string
			associated_data?: [_]: string
			encryption_algorithm?: string
		}
		vault: {
			defined_tags?: [_]: string
			restore_trigger?: bool
			vault_type!:      string
			external_key_manager_metadata?: [...{
				oauth_metadata!: [...{
					client_app_id!:         string
					client_app_secret!:     string
					idcs_account_name_url!: string
				}]
				private_endpoint_id!:         string
				external_vault_endpoint_url!: string
			}]
			display_name!:     string
			time_of_deletion?: string
			compartment_id!:   string
			restore_from_object_store?: [...{
				namespace?:   string
				object?:      string
				uri?:         string
				destination!: string
				bucket?:      string
			}]
			restore_from_file?: [...{
				content_length!:                  string
				content_md5?:                     string
				restore_vault_from_file_details!: string
			}]
			freeform_tags?: [_]: string
		}
		verify: {
			signature!:         string
			signing_algorithm!: string
			message_type?:      string
			crypto_endpoint!:   string
			key_id!:            string
			key_version_id!:    string
			message!:           string
		}
		vault_replication: {
			vault_id!:       string
			replica_region!: string
		}
	}
}
#data: {
	vault_usage: vault_id!: string
	ekms_private_endpoint: ekms_private_endpoint_id!: string
	key_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		key_id!:              string
		management_endpoint!: string
	}
	keys: {
		management_endpoint!: string
		protection_mode?:     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		algorithm?:      string
		compartment_id!: string
		curve_id?:       string
		length?:         int
	}
	replication_status: {
		replication_id!:      string
		management_endpoint!: string
	}
	vault_replicas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		vault_id!: string
	}
	decrypted_data: {
		associated_data?: [_]: string
		ciphertext!:      string
		crypto_endpoint!: string
		key_id!:          string
	}
	encrypted_data: {
		associated_data?: [_]: string
		crypto_endpoint!: string
		key_id!:          string
		plaintext!:       string
	}
	ekms_private_endpoints: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	key: {
		key_id!:              string
		management_endpoint!: string
	}
	key_version: {
		management_endpoint!: string
		key_version_id!:      string
		key_id!:              string
	}
	vault: vault_id!: string
	vaults: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
}

