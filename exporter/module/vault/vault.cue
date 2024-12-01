package vault

#resource: {
	attributes: secret: {
		time_created: string
		secret_content?: [...{
			content_type!: string
			content?:      string
			name?:         string
			stage?:        string
		}]
		rotation_config?: [...{
			rotation_interval?: string
			target_system_details!: [...{
				target_system_type!: string
				adb_id?:             string
				function_id?:        string
			}]
			is_scheduled_rotation_enabled?: bool
		}]
		defined_tags?: [_]: string
		secret_rules?: [...{
			secret_version_expiry_interval?:                string
			time_of_absolute_expiry?:                       string
			rule_type!:                                     string
			is_enforced_on_deleted_secret_versions?:        bool
			is_secret_content_retrieval_blocked_on_expiry?: bool
		}]
		lifecycle_details:  string
		next_rotation_time: string
		last_rotation_time: string
		compartment_id!:    string
		description?:       string
		metadata?: [_]: string
		secret_name!:                   string
		current_version_number:         string
		time_of_current_version_expiry: string
		time_of_deletion:               string
		rotation_status:                string
		vault_id!:                      string
		key_id!:                        string
		freeform_tags?: [_]: string
		state: string
	}
	arguments: secret: {
		rotation_config?: [...{
			rotation_interval?: string
			target_system_details!: [...{
				target_system_type!: string
				adb_id?:             string
				function_id?:        string
			}]
			is_scheduled_rotation_enabled?: bool
		}]
		vault_id!: string
		key_id!:   string
		secret_rules?: [...{
			secret_version_expiry_interval?:                string
			time_of_absolute_expiry?:                       string
			rule_type!:                                     string
			is_enforced_on_deleted_secret_versions?:        bool
			is_secret_content_retrieval_blocked_on_expiry?: bool
		}]
		freeform_tags?: [_]: string
		secret_content?: [...{
			content?:      string
			name?:         string
			stage?:        string
			content_type!: string
		}]
		compartment_id!: string
		secret_name!:    string
		defined_tags?: [_]: string
		description?: string
		metadata?: [_]: string
	}
}
#data: {
	secret: secret_id!: string
	secret_version: {
		secret_id!:             string
		secret_version_number!: string
	}
	secrets: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		name?:           string
		state?:          string
		vault_id?:       string
	}
}

