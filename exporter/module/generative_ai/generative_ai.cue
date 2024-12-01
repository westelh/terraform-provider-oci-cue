package generative_ai

#resource: {
	attributes: {
		dedicated_ai_cluster: {
			unit_count!:     int
			compartment_id!: string
			system_tags: [_]: string
			description?: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			display_name?:     string
			capacity: [...{
				capacity_type:           string
				total_endpoint_capacity: int
				used_endpoint_capacity:  int
			}]
			unit_shape!: string
			defined_tags?: [_]: string
			state:        string
			time_updated: string
			type!:        string
			time_created: string
		}
		endpoint: {
			lifecycle_details: string
			time_created:      string
			compartment_id!:   string
			display_name?:     string
			content_moderation_config?: [...{
				is_enabled!: bool
			}]
			dedicated_ai_cluster_id!: string
			model_id!:                string
			system_tags: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			state: string
		}
		model: {
			time_created: string
			fine_tune_details!: [...{
				dedicated_ai_cluster_id!: string
				training_dataset!: [...{
					bucket!:       string
					dataset_type!: string
					namespace!:    string
					object!:       string
				}]
				training_config?: [...{
					early_stopping_threshold?:            float
					log_model_metrics_interval_in_steps?: int
					lora_r?:                              int
					num_of_last_layers?:                  int
					lora_dropout?:                        float
					early_stopping_patience?:             int
					total_training_epochs?:               int
					training_batch_size?:                 int
					training_config_type!:                string
					learning_rate?:                       float
					lora_alpha?:                          int
				}]
			}]
			defined_tags?: [_]: string
			time_deprecated: string
			description?:    string
			vendor?:         string
			display_name?:   string
			model_metrics: [...{
				final_accuracy:     float
				final_loss:         float
				model_metrics_type: string
			}]
			compartment_id!:        string
			is_long_term_supported: bool
			system_tags: [_]: string
			type: string
			freeform_tags?: [_]: string
			time_updated: string
			state:        string
			capabilities: [...string]
			version?:          string
			base_model_id!:    string
			lifecycle_details: string
		}
	}
	arguments: {
		dedicated_ai_cluster: {
			unit_count!: int
			unit_shape!: string
			defined_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			description?:    string
			freeform_tags?: [_]: string
			type!: string
		}
		endpoint: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			description?:             string
			dedicated_ai_cluster_id!: string
			model_id!:                string
			content_moderation_config?: [...{
				is_enabled!: bool
			}]
		}
		model: {
			compartment_id!: string
			base_model_id!:  string
			description?:    string
			vendor?:         string
			fine_tune_details!: [...{
				dedicated_ai_cluster_id!: string
				training_dataset!: [...{
					object!:       string
					bucket!:       string
					dataset_type!: string
					namespace!:    string
				}]
				training_config?: [...{
					num_of_last_layers?:                  int
					total_training_epochs?:               int
					training_config_type!:                string
					learning_rate?:                       float
					early_stopping_threshold?:            float
					log_model_metrics_interval_in_steps?: int
					lora_r?:                              int
					lora_alpha?:                          int
					lora_dropout?:                        float
					early_stopping_patience?:             int
					training_batch_size?:                 int
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			version?:      string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	dedicated_ai_cluster: dedicated_ai_cluster_id!: string
	dedicated_ai_clusters: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	endpoint: endpoint_id!: string
	endpoints: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	model: model_id!: string
	models: {
		state?:  string
		vendor?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		capability?: [...string]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
}

