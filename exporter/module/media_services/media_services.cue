package media_services

#resource: {
	attributes: {
		stream_packaging_config: {
			distribution_channel_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			time_created:             string
			stream_packaging_format!: string
			state:                    string
			is_lock_override?:        bool
			encryption?: [...{
				algorithm!:  string
				kms_key_id?: string
			}]
			compartment_id: string
			time_updated:   string
			display_name!:  string
			system_tags: [_]: string
			segment_time_in_seconds!: int
		}
		media_asset: {
			namespace?:                     string
			object_etag?:                   string
			is_lock_override?:              bool
			state:                          string
			time_created:                   string
			segment_range_end_index?:       string
			segment_range_start_index?:     string
			display_name?:                  string
			parent_media_asset_id?:         string
			master_media_asset_id?:         string
			compartment_id!:                string
			source_media_workflow_version?: string
			media_workflow_job_id?:         string
			system_tags: [_]: string
			bucket?: string
			object?: string
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			media_asset_tags?: [...{
				value!: string
				type?:  string
			}]
			source_media_workflow_id?: string
			defined_tags?: [_]: string
			metadata?: [...{
				metadata!: string
			}]
			time_updated: string
			type!:        string
			freeform_tags?: [_]: string
		}
		media_workflow: {
			version: string
			defined_tags?: [_]: string
			lifecyle_details: string
			freeform_tags?: [_]: string
			is_lock_override?: bool
			time_created:      string
			display_name!:     string
			parameters?:       string
			state:             string
			compartment_id!:   string
			tasks?: [...{
				enable_when_referenced_parameter_equals?: [_]: string
				prerequisites?: [...string]
				key!:                        string
				parameters!:                 string
				type!:                       string
				version!:                    string
				enable_parameter_reference?: string
			}]
			time_updated: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			system_tags: [_]: string
			media_workflow_configuration_ids?: [...string]
		}
		media_workflow_configuration: {
			time_created: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			freeform_tags?: [_]: string
			lifecyle_details: string
			compartment_id!:  string
			defined_tags?: [_]: string
			state:             string
			parameters!:       string
			is_lock_override?: bool
			system_tags: [_]: string
			time_updated:  string
			display_name!: string
		}
		media_workflow_job: {
			time_created:      string
			time_started:      string
			time_updated:      string
			lifecycle_details: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			is_lock_override?:         bool
			parameters?:               string
			workflow_identifier_type!: string
			runnable:                  string
			media_workflow_configuration_ids?: [...string]
			media_workflow_name?: string
			freeform_tags?: [_]: string
			outputs: [...{
				id:         string
				namespace:  string
				object:     string
				asset_type: string
				bucket:     string
			}]
			compartment_id!:    string
			media_workflow_id?: string
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			state: string
			task_lifecycle_state: [...{
				key:               string
				lifecycle_details: string
				state:             string
			}]
			time_ended:    string
			display_name?: string
		}
		stream_cdn_config: {
			is_enabled?:              bool
			time_created:             string
			compartment_id:           string
			display_name!:            string
			distribution_channel_id!: string
			config!: [...{
				edge_token_key?:                 string
				edge_token_salt?:                string
				origin_auth_secret_key_a?:       string
				origin_auth_secret_key_nonce_a?: string
				origin_auth_sign_type?:          string
				edge_path_prefix?:               string
				origin_auth_secret_key_b?:       string
				origin_auth_sign_encryption?:    string
				edge_hostname?:                  string
				is_edge_token_auth?:             bool
				type!:                           string
				origin_auth_secret_key_nonce_b?: string
			}]
			state:            string
			lifecyle_details: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			is_lock_override?: bool
		}
		stream_distribution_channel: {
			domain_name:       string
			time_updated:      string
			compartment_id!:   string
			is_lock_override?: bool
			state:             string
			defined_tags?: [_]: string
			time_created:  string
			display_name!: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
		}
	}
	arguments: {
		stream_packaging_config: {
			stream_packaging_format!: string
			distribution_channel_id!: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			defined_tags?: [_]: string
			encryption?: [...{
				algorithm!:  string
				kms_key_id?: string
			}]
			display_name!: string
			freeform_tags?: [_]: string
			segment_time_in_seconds!: int
			is_lock_override?:        bool
		}
		media_asset: {
			compartment_id!:                string
			parent_media_asset_id?:         string
			segment_range_end_index?:       string
			bucket?:                        string
			source_media_workflow_version?: string
			type!:                          string
			freeform_tags?: [_]: string
			namespace?:   string
			object_etag?: string
			object?:      string
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			media_asset_tags?: [...{
				value!: string
				type?:  string
			}]
			source_media_workflow_id?: string
			defined_tags?: [_]: string
			is_lock_override?:          bool
			master_media_asset_id?:     string
			segment_range_start_index?: string
			display_name?:              string
			media_workflow_job_id?:     string
			metadata?: [...{
				metadata!: string
			}]
		}
		media_workflow: {
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			is_lock_override?: bool
			tasks?: [...{
				prerequisites?: [...string]
				key!:                        string
				parameters!:                 string
				type!:                       string
				version!:                    string
				enable_parameter_reference?: string
				enable_when_referenced_parameter_equals?: [_]: string
			}]
			display_name!: string
			locks?: [...{
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			media_workflow_configuration_ids?: [...string]
			parameters?: string
		}
		media_workflow_configuration: {
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			parameters!: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			is_lock_override?: bool
		}
		media_workflow_job: {
			media_workflow_id?:        string
			workflow_identifier_type!: string
			media_workflow_name?:      string
			parameters?:               string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
			}]
			is_lock_override?: bool
			media_workflow_configuration_ids?: [...string]
			display_name?: string
		}
		stream_cdn_config: {
			is_enabled?: bool
			locks?: [...{
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			is_lock_override?: bool
			freeform_tags?: [_]: string
			display_name!:            string
			distribution_channel_id!: string
			config!: [...{
				edge_token_key?:                 string
				edge_token_salt?:                string
				edge_path_prefix?:               string
				origin_auth_secret_key_b?:       string
				origin_auth_secret_key_nonce_b?: string
				origin_auth_secret_key_nonce_a?: string
				type!:                           string
				origin_auth_sign_encryption?:    string
				edge_hostname?:                  string
				origin_auth_secret_key_a?:       string
				origin_auth_sign_type?:          string
				is_edge_token_auth?:             bool
			}]
			defined_tags?: [_]: string
		}
		stream_distribution_channel: {
			defined_tags?: [_]: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				compartment_id!:      string
				type!:                string
				message?:             string
			}]
			freeform_tags?: [_]: string
			is_lock_override?: bool
			compartment_id!:   string
			display_name!:     string
		}
	}
}
#data: {
	media_asset: media_asset_id!: string
	media_asset_distribution_channel_attachment: {
		locks?: [...{
			message?:             string
			related_resource_id?: string
			time_created?:        string
		}]
		is_lock_override?:        bool
		media_asset_id!:          string
		distribution_channel_id!: string
	}
	stream_cdn_configs: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:            string
		distribution_channel_id!: string
		id?:                      string
	}
	stream_packaging_config: stream_packaging_config_id!: string
	media_workflow: media_workflow_id!: string
	media_workflow_job: media_workflow_job_id!: string
	media_workflow_job_fact: {
		media_workflow_job_id!: string
		key!:                   string
	}
	media_workflow_job_facts: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		key?:                   string
		media_workflow_job_id!: string
		type?:                  string
	}
	media_workflow_task_declaration: {
		name?:           string
		version?:        int
		compartment_id?: string
		is_current?:     bool
	}
	media_workflows: {
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
	stream_packaging_configs: {
		display_name?:               string
		distribution_channel_id!:    string
		state?:                      string
		stream_packaging_config_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	media_assets: {
		distribution_channel_id?: string
		compartment_id?:          string
		media_workflow_job_id?:   string
		parent_media_asset_id?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		object?:                        string
		source_media_workflow_version?: string
		state?:                         string
		master_media_asset_id?:         string
		type?:                          string
		bucket?:                        string
		source_media_workflow_id?:      string
		display_name?:                  string
	}
	media_workflow_jobs: {
		compartment_id?:    string
		display_name?:      string
		id?:                string
		media_workflow_id?: string
		state?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	stream_distribution_channels: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	media_workflow_configuration: media_workflow_configuration_id!: string
	media_workflow_configurations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	stream_cdn_config: stream_cdn_config_id!: string
	stream_distribution_channel: stream_distribution_channel_id!: string
	system_media_workflow: {
		compartment_id?: string
		name?:           string
	}
}

