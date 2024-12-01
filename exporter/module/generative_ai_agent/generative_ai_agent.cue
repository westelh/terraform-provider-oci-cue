package generative_ai_agent

#resource: {
	attributes: {
		data_source: {
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			compartment_id!: string
			time_created:    string
			data_source_config!: [...{
				object_storage_prefixes!: [...{
					bucket!:    string
					namespace!: string
					prefix?:    string
				}]
				data_source_config_type!: string
			}]
			knowledge_base_id!: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			time_updated:  string
		}
		knowledge_base: {
			description?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			state:           string
			compartment_id!: string
			index_config!: [...{
				cluster_id?: string
				database_connection?: [...{
					connection_type!: string
					connection_id!:   string
				}]
				database_functions?: [...{
					name?: string
				}]
				indexes?: [...{
					schema?: [...{
						embedding_body_key?: string
						title_key?:          string
						url_key?:            string
						body_key?:           string
					}]
					name?: string
				}]
				secret_detail?: [...{
					scope_url?:       string
					type!:            string
					vault_secret_id!: string
					client_id?:       string
					idcs_url?:        string
				}]
				should_enable_hybrid_search?: bool
				index_config_type!:           string
			}]
			system_tags: [_]: string
			display_name?:     string
			lifecycle_details: string
			time_created:      string
			time_updated:      string
		}
		agent: {
			knowledge_base_ids?: [...string]
			time_updated:      string
			description?:      string
			display_name?:     string
			lifecycle_details: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			welcome_message?: string
			time_created:     string
			compartment_id!:  string
			state:            string
		}
		agent_endpoint: {
			description?:         string
			should_enable_trace?: bool
			agent_id!:            string
			freeform_tags?: [_]: string
			should_enable_citation?: bool
			time_updated:            string
			time_created:            string
			defined_tags?: [_]: string
			lifecycle_details: string
			state:             string
			display_name?:     string
			content_moderation_config?: [...{
				should_enable_on_input?:  bool
				should_enable_on_output?: bool
			}]
			should_enable_session?: bool
			compartment_id!:        string
			session_config?: [...{
				idle_timeout_in_seconds?: int
			}]
			system_tags: [_]: string
		}
		data_ingestion_job: {
			time_updated: string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:     string
			data_source_id!:   string
			description?:      string
			lifecycle_details: string
			state:             string
			data_ingestion_job_statistics: [...{
				duration_in_seconds:      int
				number_of_failed_files:   int
				number_of_ingested_files: int
			}]
			freeform_tags?: [_]: string
		}
	}
	arguments: {
		data_source: {
			description?:    string
			display_name?:   string
			compartment_id!: string
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
			defined_tags?: [_]: string
		}
		knowledge_base: {
			display_name?: string
			defined_tags?: [_]: string
			compartment_id!: string
			index_config!: [...{
				index_config_type!: string
				cluster_id?:        string
				database_connection?: [...{
					connection_id!:   string
					connection_type!: string
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
					vault_secret_id!: string
					client_id?:       string
					idcs_url?:        string
					scope_url?:       string
					type!:            string
				}]
				should_enable_hybrid_search?: bool
			}]
			freeform_tags?: [_]: string
			description?: string
		}
		agent: {
			knowledge_base_ids?: [...string]
			welcome_message?: string
			compartment_id!:  string
			description?:     string
			display_name?:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		agent_endpoint: {
			display_name?: string
			content_moderation_config?: [...{
				should_enable_on_input?:  bool
				should_enable_on_output?: bool
			}]
			defined_tags?: [_]: string
			agent_id!:            string
			compartment_id!:      string
			should_enable_trace?: bool
			session_config?: [...{
				idle_timeout_in_seconds?: int
			}]
			should_enable_session?: bool
			description?:           string
			freeform_tags?: [_]: string
			should_enable_citation?: bool
		}
		data_ingestion_job: {
			description?:    string
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			data_source_id!: string
		}
	}
}
#data: {
	agent: agent_id!: string
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
	data_ingestion_jobs: {
		compartment_id?: string
		data_source_id?: string
		display_name?:   string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	data_sources: {
		compartment_id?:    string
		display_name?:      string
		knowledge_base_id?: string
		state?:             string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	knowledge_bases: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	agent_endpoint: agent_endpoint_id!: string
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
	data_ingestion_job: data_ingestion_job_id!: string
	data_ingestion_job_log_content: data_ingestion_job_id!: string
	data_source: data_source_id!: string
	knowledge_base: knowledge_base_id!: string
}

