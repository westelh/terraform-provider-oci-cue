package media_services

#resource: {
	attributes: {
		media_asset: {
			segment_range_end_index?:       string
			source_media_workflow_version?: string
			master_media_asset_id?:         string
			object?:                        string
			time_created:                   string
			media_workflow_job_id?:         string
			is_lock_override?:              bool
			bucket?:                        string
			source_media_workflow_id?:      string
			time_updated:                   string
			segment_range_start_index?:     string
			system_tags: [_]: string
			namespace?:             string
			object_etag?:           string
			parent_media_asset_id?: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			metadata?: [...{
				metadata!: string
			}]
			state: string
			defined_tags?: [_]: string
			media_asset_tags?: [...{
				type?:  string
				value!: string
			}]
			type!:           string
			display_name?:   string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		media_workflow: {
			parameters?:       string
			is_lock_override?: bool
			version:           string
			tasks?: [...{
				enable_parameter_reference?: string
				enable_when_referenced_parameter_equals?: [_]: string
				prerequisites?: [...string]
				key!:        string
				parameters!: string
				type!:       string
				version!:    string
			}]
			state:           string
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			media_workflow_configuration_ids?: [...string]
			lifecyle_details: string
			time_created:     string
			time_updated:     string
			defined_tags?: [_]: string
			locks?: [...{
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			system_tags: [_]: string
		}
		media_workflow_configuration: {
			parameters!:   string
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:             string
			time_created:      string
			compartment_id!:   string
			time_updated:      string
			is_lock_override?: bool
			system_tags: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			lifecyle_details: string
		}
		media_workflow_job: {
			time_started: string
			media_workflow_configuration_ids?: [...string]
			time_created: string
			defined_tags?: [_]: string
			display_name?:      string
			media_workflow_id?: string
			task_lifecycle_state: [...{
				key:               string
				lifecycle_details: string
				state:             string
			}]
			is_lock_override?: bool
			system_tags: [_]: string
			compartment_id!: string
			state:           string
			freeform_tags?: [_]: string
			runnable:                  string
			workflow_identifier_type!: string
			parameters?:               string
			outputs: [...{
				id:         string
				namespace:  string
				object:     string
				asset_type: string
				bucket:     string
			}]
			time_ended:   string
			time_updated: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
			}]
			media_workflow_name?: string
			lifecycle_details:    string
		}
		stream_cdn_config: {
			config!: [...{
				type!:                           string
				edge_path_prefix?:               string
				origin_auth_secret_key_a?:       string
				origin_auth_secret_key_nonce_a?: string
				origin_auth_sign_type?:          string
				is_edge_token_auth?:             bool
				origin_auth_secret_key_b?:       string
				origin_auth_secret_key_nonce_b?: string
				edge_hostname?:                  string
				origin_auth_sign_encryption?:    string
				edge_token_key?:                 string
				edge_token_salt?:                string
			}]
			system_tags: [_]: string
			display_name!: string
			freeform_tags?: [_]: string
			time_updated: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
			}]
			compartment_id:           string
			is_enabled?:              bool
			state:                    string
			distribution_channel_id!: string
			lifecyle_details:         string
			is_lock_override?:        bool
			time_created:             string
			defined_tags?: [_]: string
		}
		stream_distribution_channel: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			compartment_id!: string
			time_updated:    string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			is_lock_override?: bool
			domain_name:       string
			state:             string
			time_created:      string
			display_name!:     string
		}
		stream_packaging_config: {
			is_lock_override?: bool
			system_tags: [_]: string
			distribution_channel_id!: string
			time_updated:             string
			stream_packaging_format!: string
			compartment_id:           string
			encryption?: [...{
				algorithm!:  string
				kms_key_id?: string
			}]
			state:                    string
			time_created:             string
			display_name!:            string
			segment_time_in_seconds!: int
			defined_tags?: [_]: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			freeform_tags?: [_]: string
		}
	}
	arguments: {
		media_asset: {
			source_media_workflow_id?: string
			type!:                     string
			freeform_tags?: [_]: string
			media_asset_tags?: [...{
				value!: string
				type?:  string
			}]
			segment_range_end_index?: string
			parent_media_asset_id?:   string
			metadata?: [...{
				metadata!: string
			}]
			object?:                string
			object_etag?:           string
			media_workflow_job_id?: string
			bucket?:                string
			master_media_asset_id?: string
			display_name?:          string
			is_lock_override?:      bool
			namespace?:             string
			compartment_id!:        string
			defined_tags?: [_]: string
			source_media_workflow_version?: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			segment_range_start_index?: string
		}
		media_workflow: {
			defined_tags?: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			display_name!:   string
			parameters?:     string
			compartment_id!: string
			tasks?: [...{
				prerequisites?: [...string]
				key!:                        string
				parameters!:                 string
				type!:                       string
				version!:                    string
				enable_parameter_reference?: string
				enable_when_referenced_parameter_equals?: [_]: string
			}]
			media_workflow_configuration_ids?: [...string]
			freeform_tags?: [_]: string
			is_lock_override?: bool
		}
		media_workflow_configuration: {
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_lock_override?: bool
			parameters!:       string
			locks?: [...{
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
		}
		media_workflow_job: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
			}]
			is_lock_override?:         bool
			workflow_identifier_type!: string
			media_workflow_configuration_ids?: [...string]
			media_workflow_id?: string
			parameters?:        string
			freeform_tags?: [_]: string
			media_workflow_name?: string
		}
		stream_cdn_config: {
			display_name!: string
			freeform_tags?: [_]: string
			config!: [...{
				edge_path_prefix?:               string
				origin_auth_secret_key_a?:       string
				origin_auth_secret_key_nonce_a?: string
				edge_hostname?:                  string
				origin_auth_secret_key_b?:       string
				edge_token_salt?:                string
				origin_auth_sign_encryption?:    string
				origin_auth_sign_type?:          string
				type!:                           string
				is_edge_token_auth?:             bool
				origin_auth_secret_key_nonce_b?: string
				edge_token_key?:                 string
			}]
			locks?: [...{
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			distribution_channel_id!: string
			defined_tags?: [_]: string
			is_enabled?:       bool
			is_lock_override?: bool
		}
		stream_distribution_channel: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_lock_override?: bool
			display_name!:     string
			locks?: [...{
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
		}
		stream_packaging_config: {
			distribution_channel_id!: string
			segment_time_in_seconds!: int
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			is_lock_override?: bool
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
			encryption?: [...{
				kms_key_id?: string
				algorithm!:  string
			}]
			stream_packaging_format!: string
		}
	}
}
#data: {
	media_workflow_job_fact: {
		media_workflow_job_id!: string
		key!:                   string
	}
	stream_packaging_config: stream_packaging_config_id!: string
	system_media_workflow: {
		compartment_id?: string
		name?:           string
	}
	media_workflow: media_workflow_id!: string
	media_workflow_job: media_workflow_job_id!: string
	stream_cdn_configs: {
		distribution_channel_id!: string
		id?:                      string
		state?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	stream_distribution_channels: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	media_workflow_jobs: {
		display_name?:      string
		id?:                string
		media_workflow_id?: string
		state?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	media_workflows: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
	media_workflow_configurations: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	media_workflow_job_facts: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		key?:                   string
		media_workflow_job_id!: string
		type?:                  string
	}
	media_workflow_task_declaration: {
		compartment_id?: string
		is_current?:     bool
		name?:           string
		version?:        int
	}
	stream_cdn_config: stream_cdn_config_id!: string
	stream_distribution_channel: stream_distribution_channel_id!: string
	stream_packaging_configs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:               string
		distribution_channel_id!:    string
		state?:                      string
		stream_packaging_config_id?: string
	}
	media_asset: media_asset_id!: string
	media_assets: {
		type?:                          string
		display_name?:                  string
		state?:                         string
		distribution_channel_id?:       string
		source_media_workflow_id?:      string
		master_media_asset_id?:         string
		media_workflow_job_id?:         string
		parent_media_asset_id?:         string
		bucket?:                        string
		compartment_id?:                string
		object?:                        string
		source_media_workflow_version?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	media_asset_distribution_channel_attachment: {
		media_asset_id!:          string
		is_lock_override?:        bool
		distribution_channel_id!: string
		locks?: [...{
			message?:             string
			related_resource_id?: string
			time_created?:        string
		}]
	}
	media_workflow_configuration: media_workflow_configuration_id!: string
}

