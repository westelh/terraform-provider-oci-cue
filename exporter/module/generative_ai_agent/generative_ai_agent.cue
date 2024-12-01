package generative_ai_agent

#resource: {
	attributes: {
		agent: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			state:         string
			display_name?: string
			time_updated:  string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			knowledge_base_ids?: [...string]
			welcome_message?:  string
			lifecycle_details: string
		}
		agent_endpoint: {
			should_enable_citation?: bool
			should_enable_session?:  bool
			state:                   string
			lifecycle_details:       string
			compartment_id!:         string
			session_config?: [...{
				idle_timeout_in_seconds?: int
			}]
			description?:         string
			should_enable_trace?: bool
			content_moderation_config?: [...{
				should_enable_on_input?:  bool
				should_enable_on_output?: bool
			}]
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:  string
			display_name?: string
			agent_id!:     string
			defined_tags?: [_]: string
			time_created: string
		}
		data_ingestion_job: {
			lifecycle_details: string
			data_source_id!:   string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_created: string
			data_ingestion_job_statistics: [...{
				number_of_failed_files:   int
				number_of_ingested_files: int
				duration_in_seconds:      int
			}]
			state:           string
			time_updated:    string
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
		}
		data_source: {
			knowledge_base_id!: string
			display_name?:      string
			time_created:       string
			time_updated:       string
			system_tags: [_]: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			data_source_config!: [...{
				object_storage_prefixes!: [...{
					namespace!: string
					prefix?:    string
					bucket!:    string
				}]
				data_source_config_type!: string
			}]
			description?:    string
			compartment_id!: string
		}
		knowledge_base: {
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
			compartment_id!: string
			state:           string
			time_updated:    string
			index_config!: [...{
				should_enable_hybrid_search?: bool
				index_config_type!:           string
				cluster_id?:                  string
				database_connection?: [...{
					connection_type!: string
					connection_id!:   string
				}]
				database_functions?: [...{
					name?: string
				}]
				indexes?: [...{
					name?: string
					schema?: [...{
						url_key?:            string
						body_key?:           string
						embedding_body_key?: string
						title_key?:          string
					}]
				}]
				secret_detail?: [...{
					type!:            string
					vault_secret_id!: string
					client_id?:       string
					idcs_url?:        string
					scope_url?:       string
				}]
			}]
			display_name?: string
			freeform_tags?: [_]: string
			description?:      string
			lifecycle_details: string
		}
	}
	arguments: {
		agent: {
			defined_tags?: [_]: string
			knowledge_base_ids?: [...string]
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			welcome_message?: string
			compartment_id!:  string
		}
		agent_endpoint: {
			should_enable_session?: bool
			defined_tags?: [_]: string
			session_config?: [...{
				idle_timeout_in_seconds?: int
			}]
			content_moderation_config?: [...{
				should_enable_on_input?:  bool
				should_enable_on_output?: bool
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			should_enable_citation?: bool
			should_enable_trace?:    bool
			description?:            string
			display_name?:           string
			agent_id!:               string
		}
		data_ingestion_job: {
			description?:    string
			data_source_id!: string
			display_name?:   string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		data_source: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			data_source_config!: [...{
				data_source_config_type!: string
				object_storage_prefixes!: [...{
					namespace!: string
					prefix?:    string
					bucket!:    string
				}]
			}]
			knowledge_base_id!: string
			description?:       string
			display_name?:      string
		}
		knowledge_base: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			index_config!: [...{
				database_functions?: [...{
					name?: string
				}]
				indexes?: [...{
					name?: string
					schema?: [...{
						embedding_body_key?: string
						title_key?:          string
						url_key?:            string
						body_key?:           string
					}]
				}]
				secret_detail?: [...{
					vault_secret_id!: string
					client_id?:       string
					idcs_url?:        string
					scope_url?:       string
					type!:            string
				}]
				should_enable_hybrid_search?: bool
				index_config_type!:           string
				cluster_id?:                  string
				database_connection?: [...{
					connection_type!: string
					connection_id!:   string
				}]
			}]
			display_name?: string
		}
	}
}
#data: {
	agent_endpoints: {
		compartment_id?: string
		display_name?:   string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		agent_id?: string
	}
	agents: {
		compartment_id?: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	data_ingestion_job: data_ingestion_job_id!: string
	data_ingestion_job_log_content: data_ingestion_job_id!: string
	data_source: data_source_id!: string
	knowledge_bases: {
		compartment_id?: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	agent: agent_id!: string
	agent_endpoint: agent_endpoint_id!: string
	data_ingestion_jobs: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		data_source_id?: string
		display_name?:   string
	}
	data_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:    string
		display_name?:      string
		knowledge_base_id?: string
		state?:             string
	}
	knowledge_base: knowledge_base_id!: string
}

