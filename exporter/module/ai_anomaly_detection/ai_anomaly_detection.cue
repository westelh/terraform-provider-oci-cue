package ai_anomaly_detection

#resource: {
	attributes: {
		ai_private_endpoint: {
			defined_tags?: [_]: string
			attached_data_assets: [...string]
			state:             string
			compartment_id!:   string
			lifecycle_details: string
			time_updated:      string
			dns_zones!: [...string]
			subnet_id!: string
			system_tags: [_]: string
			time_created:  string
			display_name?: string
			freeform_tags?: [_]: string
		}
		data_asset: {
			project_id!: string
			system_tags: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			data_source_details!: [...{
				truststore_file_secret_id?: string
				ojdbc_file_secret_id?:      string
				password_secret_id?:        string
				atp_password_secret_id?:    string
				atp_user_name?:             string
				bucket?:                    string
				object?:                    string
				table_name?:                string
				namespace?:                 string
				data_source_type!:          string
				measurement_name?:          string
				key_store_file_secret_id?:  string
				url?:                       string
				wallet_password_secret_id?: string
				version_specific_details?: [...{
					influx_version!:        string
					bucket?:                string
					database_name?:         string
					organization_name?:     string
					retention_policy_name?: string
				}]
				tnsnames_file_secret_id?: string
				cwallet_file_secret_id?:  string
				database_name?:           string
				user_name?:               string
				ewallet_file_secret_id?:  string
			}]
			private_endpoint_id?: string
			state:                string
			description?:         string
		}
		detect_anomaly_job: {
			project_id:      string
			state:           string
			compartment_id!: string
			freeform_tags: [_]: string
			lifecycle_state_details: string
			time_finished:           string
			time_started:            string
			input_details!: [...{
				content?:      string
				content_type?: string
				data?: [...{
					values?: [...float]
					timestamp?: string
				}]
				object_locations?: [...{
					object?:    string
					bucket?:    string
					namespace?: string
				}]
				signal_names?: [...string]
				message:     string
				input_type!: string
			}]
			display_name?: string
			time_accepted: string
			defined_tags: [_]: string
			system_tags: [_]: string
			model_id!:    string
			description?: string
			sensitivity?: float
			output_details!: [...{
				bucket!:      string
				namespace!:   string
				output_type!: string
				prefix?:      string
			}]
		}
		model: {
			compartment_id!:   string
			lifecycle_details: string
			time_created:      string
			model_training_results: [...{
				warning: string
				mae:     float
				row_reduction_details: [...{
					is_reduction_enabled: bool
					reduction_method:     string
					reduction_percentage: float
				}]
				signal_details: [...{
					max:          float
					status:       string
					std:          float
					details:      string
					min:          float
					is_quantized: bool
					signal_name:  string
					fap:          float
					mvi_ratio:    float
				}]
				fap:                       float
				window_size:               int
				rmse:                      float
				is_training_goal_achieved: bool
				max_inference_sync_rows:   int
				multivariate_fap:          float
			}]
			state: string
			system_tags: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			project_id!: string
			defined_tags?: [_]: string
			time_updated: string
			model_training_details!: [...{
				algorithm_hint?:    string
				target_fap?:        float
				training_fraction?: float
				window_size?:       int
				data_asset_ids!: [...string]
			}]
		}
		project: {
			state: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:    string
			display_name?:   string
			time_created:    string
			compartment_id!: string
			description?:    string
		}
	}
	arguments: {
		ai_private_endpoint: {
			freeform_tags?: [_]: string
			compartment_id!: string
			subnet_id!:      string
			defined_tags?: [_]: string
			dns_zones!: [...string]
			display_name?: string
		}
		data_asset: {
			data_source_details!: [...{
				version_specific_details?: [...{
					retention_policy_name?: string
					influx_version!:        string
					bucket?:                string
					database_name?:         string
					organization_name?:     string
				}]
				ewallet_file_secret_id?:    string
				namespace?:                 string
				table_name?:                string
				wallet_password_secret_id?: string
				data_source_type!:          string
				object?:                    string
				cwallet_file_secret_id?:    string
				password_secret_id?:        string
				atp_user_name?:             string
				truststore_file_secret_id?: string
				database_name?:             string
				measurement_name?:          string
				key_store_file_secret_id?:  string
				bucket?:                    string
				url?:                       string
				ojdbc_file_secret_id?:      string
				tnsnames_file_secret_id?:   string
				user_name?:                 string
				atp_password_secret_id?:    string
			}]
			description?: string
			freeform_tags?: [_]: string
			project_id!: string
			defined_tags?: [_]: string
			display_name?:        string
			private_endpoint_id?: string
			compartment_id!:      string
		}
		detect_anomaly_job: {
			model_id!:       string
			display_name?:   string
			description?:    string
			sensitivity?:    float
			compartment_id!: string
			output_details!: [...{
				bucket!:      string
				namespace!:   string
				output_type!: string
				prefix?:      string
			}]
			input_details!: [...{
				data?: [...{
					values?: [...float]
					timestamp?: string
				}]
				object_locations?: [...{
					bucket?:    string
					namespace?: string
					object?:    string
				}]
				signal_names?: [...string]
				input_type!:   string
				content?:      string
				content_type?: string
			}]
		}
		model: {
			freeform_tags?: [_]: string
			compartment_id!: string
			project_id!:     string
			defined_tags?: [_]: string
			model_training_details!: [...{
				data_asset_ids!: [...string]
				algorithm_hint?:    string
				target_fap?:        float
				training_fraction?: float
				window_size?:       int
			}]
			description?:  string
			display_name?: string
		}
		project: {
			compartment_id!: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	ai_private_endpoints: {
		id?:    string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	data_asset: data_asset_id!: string
	detect_anomaly_job: detect_anomaly_job_id!: string
	detect_anomaly_jobs: {
		display_name?: string
		model_id?:     string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:        string
		detect_anomaly_job_id?: string
	}
	model: model_id!: string
	models: {
		display_name?: string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	project: project_id!: string
	projects: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ai_private_endpoint: ai_private_endpoint_id!: string
	data_assets: {
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

