package vault

#resource: {
	attributes: secret: {
		lifecycle_details: string
		freeform_tags?: [_]: string
		state:                          string
		rotation_status:                string
		time_of_current_version_expiry: string
		vault_id!:                      string
		next_rotation_time:             string
		metadata?: [_]: string
		description?:     string
		key_id!:          string
		time_of_deletion: string
		secret_content?: [...{
			name?:         string
			stage?:        string
			content_type!: string
			content?:      string
		}]
		secret_name!: string
		defined_tags?: [_]: string
		rotation_config?: [...{
			target_system_details!: [...{
				target_system_type!: string
				adb_id?:             string
				function_id?:        string
			}]
			is_scheduled_rotation_enabled?: bool
			rotation_interval?:             string
		}]
		last_rotation_time: string
		compartment_id!:    string
		secret_rules?: [...{
			secret_version_expiry_interval?:                string
			time_of_absolute_expiry?:                       string
			rule_type!:                                     string
			is_enforced_on_deleted_secret_versions?:        bool
			is_secret_content_retrieval_blocked_on_expiry?: bool
		}]
		time_created:           string
		current_version_number: string
	}
	arguments: secret: {
		compartment_id!: string
		secret_content?: [...{
			content_type!: string
			content?:      string
			name?:         string
			stage?:        string
		}]
		secret_name!: string
		freeform_tags?: [_]: string
		metadata?: [_]: string
		rotation_config?: [...{
			target_system_details!: [...{
				adb_id?:             string
				function_id?:        string
				target_system_type!: string
			}]
			is_scheduled_rotation_enabled?: bool
			rotation_interval?:             string
		}]
		key_id!: string
		secret_rules?: [...{
			is_secret_content_retrieval_blocked_on_expiry?: bool
			secret_version_expiry_interval?:                string
			time_of_absolute_expiry?:                       string
			rule_type!:                                     string
			is_enforced_on_deleted_secret_versions?:        bool
		}]
		vault_id!: string
		defined_tags?: [_]: string
		description?: string
	}
}
#data: {
	secret: secret_id!: string
	secret_version: {
		secret_id!:             string
		secret_version_number!: string
	}
	secrets: {
		name?:     string
		state?:    string
		vault_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
}

