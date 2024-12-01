package kms

#resource: {
	attributes: {
		key: {
			compartment_id!:      string
			state:                string
			management_endpoint!: string
			desired_state?:       string
			vault_id:             string
			restore_trigger?:     bool
			is_primary:           bool
			display_name!:        string
			defined_tags?: [_]: string
			auto_key_rotation_details?: [...{
				rotation_interval_in_days?: int
				time_of_last_rotation?:     string
				time_of_next_rotation?:     string
				time_of_schedule_start?:    string
				last_rotation_message?:     string
				last_rotation_status?:      string
			}]
			protection_mode?:     string
			restored_from_key_id: string
			restore_from_file?: [...{
				content_length!:                string
				content_md5?:                   string
				restore_key_from_file_details!: string
			}]
			replica_details: [...{
				replication_id: string
			}]
			time_created: string
			freeform_tags?: [_]: string
			current_key_version: string
			time_of_deletion?:   string
			restore_from_object_store?: [...{
				destination!: string
				bucket?:      string
				namespace?:   string
				object?:      string
				uri?:         string
			}]
			external_key_reference?: [...{
				external_key_id!: string
			}]
			external_key_reference_details: [...{
				external_key_version_id: string
				external_key_id:         string
			}]
			is_auto_rotation_enabled?: bool
			key_shape!: [...{
				algorithm!: string
				length!:    int
				curve_id?:  string
			}]
		}
		key_version: {
			key_id!:                      string
			management_endpoint!:         string
			is_auto_rotated:              bool
			restored_from_key_id:         string
			restored_from_key_version_id: string
			external_key_version_id?:     string
			time_of_deletion?:            string
			compartment_id:               string
			replica_details: [...{
				replication_id: string
			}]
			time_created:   string
			key_version_id: string
			is_primary:     bool
			state:          string
			external_key_reference_details: [...{
				external_key_id:         string
				external_key_version_id: string
			}]
			vault_id:   string
			public_key: string
		}
		generated_key: {
			associated_data?: [_]: string
			plaintext:              string
			include_plaintext_key!: bool
			key_id!:                string
			ciphertext:             string
			key_shape!: [...{
				algorithm!: string
				length!:    int
				curve_id?:  string
			}]
			logging_context?: [_]: string
			plaintext_checksum: string
			crypto_endpoint!:   string
		}
		sign: {
			message!:           string
			signing_algorithm!: string
			key_version_id?:    string
			message_type?:      string
			signature:          string
			crypto_endpoint!:   string
			key_id!:            string
		}
		vault: {
			replica_details: [...{
				replication_id: string
			}]
			management_endpoint: string
			defined_tags?: [_]: string
			restore_trigger?: bool
			time_created:     string
			freeform_tags?: [_]: string
			restore_from_object_store?: [...{
				uri?:         string
				destination!: string
				bucket?:      string
				namespace?:   string
				object?:      string
			}]
			is_vault_replicable: bool
			external_key_manager_metadata_summary: [...{
				vendor:                      string
				external_vault_endpoint_url: string
				oauth_metadata_summary: [...{
					client_app_id:         string
					idcs_account_name_url: string
				}]
				private_endpoint_id: string
			}]
			time_of_deletion?:      string
			compartment_id!:        string
			display_name!:          string
			restored_from_vault_id: string
			state:                  string
			vault_type!:            string
			external_key_manager_metadata?: [...{
				external_vault_endpoint_url!: string
				oauth_metadata!: [...{
					client_app_id!:         string
					client_app_secret!:     string
					idcs_account_name_url!: string
				}]
				private_endpoint_id!: string
			}]
			restore_from_file?: [...{
				restore_vault_from_file_details!: string
				content_length!:                  string
				content_md5?:                     string
			}]
			crypto_endpoint: string
			is_primary:      bool
		}
		verify: {
			message_type?:      string
			is_signature_valid: bool
			crypto_endpoint!:   string
			key_id!:            string
			key_version_id!:    string
			message!:           string
			signature!:         string
			signing_algorithm!: string
		}
		vault_replication: {
			replica_region!: string
			vault_id!:       string
		}
		ekms_private_endpoint: {
			time_updated:             string
			external_key_manager_ip!: string
			subnet_id!:               string
			port?:                    int
			time_created:             string
			compartment_id!:          string
			display_name!:            string
			ca_bundle!:               string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			private_endpoint_ip: string
			state:               string
			lifecycle_details:   string
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
	}
	arguments: {
		key: {
			freeform_tags?: [_]: string
			is_auto_rotation_enabled?: bool
			display_name!:             string
			restore_from_file?: [...{
				content_length!:                string
				content_md5?:                   string
				restore_key_from_file_details!: string
			}]
			protection_mode?: string
			restore_from_object_store?: [...{
				uri?:         string
				destination!: string
				bucket?:      string
				namespace?:   string
				object?:      string
			}]
			external_key_reference?: [...{
				external_key_id!: string
			}]
			time_of_deletion?: string
			defined_tags?: [_]: string
			desired_state?: string
			key_shape!: [...{
				curve_id?:  string
				algorithm!: string
				length!:    int
			}]
			compartment_id!:      string
			restore_trigger?:     bool
			management_endpoint!: string
			auto_key_rotation_details?: [...{
				time_of_last_rotation?:     string
				time_of_next_rotation?:     string
				time_of_schedule_start?:    string
				last_rotation_message?:     string
				last_rotation_status?:      string
				rotation_interval_in_days?: int
			}]
		}
		key_version: {
			external_key_version_id?: string
			time_of_deletion?:        string
			key_id!:                  string
			management_endpoint!:     string
		}
		generated_key: {
			logging_context?: [_]: string
			include_plaintext_key!: bool
			key_id!:                string
			crypto_endpoint!:       string
			key_shape!: [...{
				length!:    int
				curve_id?:  string
				algorithm!: string
			}]
			associated_data?: [_]: string
		}
		sign: {
			signing_algorithm!: string
			key_version_id?:    string
			message_type?:      string
			crypto_endpoint!:   string
			key_id!:            string
			message!:           string
		}
		vault: {
			external_key_manager_metadata?: [...{
				private_endpoint_id!:         string
				external_vault_endpoint_url!: string
				oauth_metadata!: [...{
					idcs_account_name_url!: string
					client_app_id!:         string
					client_app_secret!:     string
				}]
			}]
			freeform_tags?: [_]: string
			time_of_deletion?: string
			compartment_id!:   string
			display_name!:     string
			vault_type!:       string
			restore_trigger?:  bool
			restore_from_file?: [...{
				content_length!:                  string
				content_md5?:                     string
				restore_vault_from_file_details!: string
			}]
			defined_tags?: [_]: string
			restore_from_object_store?: [...{
				object?:      string
				uri?:         string
				destination!: string
				bucket?:      string
				namespace?:   string
			}]
		}
		verify: {
			key_version_id!:    string
			message!:           string
			signature!:         string
			signing_algorithm!: string
			message_type?:      string
			crypto_endpoint!:   string
			key_id!:            string
		}
		vault_replication: {
			replica_region!: string
			vault_id!:       string
		}
		ekms_private_endpoint: {
			ca_bundle!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			subnet_id!:               string
			port?:                    int
			compartment_id!:          string
			display_name!:            string
			external_key_manager_ip!: string
		}
		encrypted_data: {
			plaintext!: string
			associated_data?: [_]: string
			encryption_algorithm?: string
			key_version_id?:       string
			logging_context?: [_]: string
			crypto_endpoint!: string
			key_id!:          string
		}
	}
}
#data: {
	ekms_private_endpoint: ekms_private_endpoint_id!: string
	keys: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		algorithm?:           string
		compartment_id!:      string
		curve_id?:            string
		length?:              int
		management_endpoint!: string
		protection_mode?:     string
	}
	replication_status: {
		management_endpoint!: string
		replication_id!:      string
	}
	vault_replicas: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		vault_id!: string
	}
	vault_usage: vault_id!: string
	decrypted_data: {
		crypto_endpoint!: string
		key_id!:          string
		associated_data?: [_]: string
		ciphertext!: string
	}
	encrypted_data: {
		key_id!:    string
		plaintext!: string
		associated_data?: [_]: string
		crypto_endpoint!: string
	}
	ekms_private_endpoints: {
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	key: {
		management_endpoint!: string
		key_id!:              string
	}
	key_version: {
		key_version_id!:      string
		key_id!:              string
		management_endpoint!: string
	}
	key_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		key_id!:              string
		management_endpoint!: string
	}
	vault: vault_id!: string
	vaults: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

