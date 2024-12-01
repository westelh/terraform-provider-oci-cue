package generative_ai

#resource: {
	attributes: {
		dedicated_ai_cluster: {
			capacity: [...{
				used_endpoint_capacity:  int
				capacity_type:           string
				total_endpoint_capacity: int
			}]
			compartment_id!: string
			state:           string
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
			lifecycle_details: string
			unit_count!:       int
			display_name?:     string
			unit_shape!:       string
			description?:      string
			time_updated:      string
			type!:             string
			freeform_tags?: [_]: string
		}
		endpoint: {
			freeform_tags?: [_]: string
			lifecycle_details:        string
			time_created:             string
			dedicated_ai_cluster_id!: string
			content_moderation_config?: [...{
				is_enabled!: bool
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			model_id!:     string
			state:         string
			system_tags: [_]: string
			time_updated: string
			description?: string
		}
		model: {
			vendor?:        string
			base_model_id!: string
			system_tags: [_]: string
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			version?:        string
			type:            string
			time_deprecated: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			model_metrics: [...{
				final_accuracy:     float
				final_loss:         float
				model_metrics_type: string
			}]
			description?: string
			capabilities: [...string]
			fine_tune_details!: [...{
				dedicated_ai_cluster_id!: string
				training_dataset!: [...{
					namespace!:    string
					object!:       string
					bucket!:       string
					dataset_type!: string
				}]
				training_config?: [...{
					training_batch_size?:                 int
					log_model_metrics_interval_in_steps?: int
					lora_dropout?:                        float
					num_of_last_layers?:                  int
					total_training_epochs?:               int
					lora_r?:                              int
					early_stopping_patience?:             int
					early_stopping_threshold?:            float
					training_config_type!:                string
					learning_rate?:                       float
					lora_alpha?:                          int
				}]
			}]
			state:                  string
			is_long_term_supported: bool
			time_created:           string
			display_name?:          string
		}
	}
	arguments: {
		dedicated_ai_cluster: {
			display_name?: string
			type!:         string
			freeform_tags?: [_]: string
			unit_count!: int
			defined_tags?: [_]: string
			compartment_id!: string
			unit_shape!:     string
			description?:    string
		}
		endpoint: {
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:          string
			dedicated_ai_cluster_id!: string
			content_moderation_config?: [...{
				is_enabled!: bool
			}]
			model_id!: string
		}
		model: {
			base_model_id!: string
			defined_tags?: [_]: string
			version?:     string
			description?: string
			freeform_tags?: [_]: string
			vendor?:         string
			compartment_id!: string
			fine_tune_details!: [...{
				dedicated_ai_cluster_id!: string
				training_dataset!: [...{
					bucket!:       string
					dataset_type!: string
					namespace!:    string
					object!:       string
				}]
				training_config?: [...{
					early_stopping_patience?:             int
					early_stopping_threshold?:            float
					lora_dropout?:                        float
					num_of_last_layers?:                  int
					training_batch_size?:                 int
					lora_alpha?:                          int
					lora_r?:                              int
					log_model_metrics_interval_in_steps?: int
					total_training_epochs?:               int
					training_config_type!:                string
					learning_rate?:                       float
				}]
			}]
			display_name?: string
		}
	}
}
#data: {
	dedicated_ai_cluster: dedicated_ai_cluster_id!: string
	dedicated_ai_clusters: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	endpoint: endpoint_id!: string
	endpoints: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	model: model_id!: string
	models: {
		id?:     string
		state?:  string
		vendor?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		capability?: [...string]
		compartment_id!: string
		display_name?:   string
	}
}

