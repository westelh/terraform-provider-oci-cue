package ai_anomaly_detection

#resource: {
	attributes: {
		ai_private_endpoint: {
			state:           string
			compartment_id!: string
			time_created:    string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			attached_data_assets: [...string]
			lifecycle_details: string
			dns_zones!: [...string]
			subnet_id!:   string
			time_updated: string
			defined_tags?: [_]: string
			display_name?: string
		}
		data_asset: {
			time_created:  string
			display_name?: string
			freeform_tags?: [_]: string
			private_endpoint_id?: string
			state:                string
			compartment_id!:      string
			data_source_details!: [...{
				atp_user_name?:             string
				namespace?:                 string
				table_name?:                string
				user_name?:                 string
				wallet_password_secret_id?: string
				database_name?:             string
				url?:                       string
				cwallet_file_secret_id?:    string
				password_secret_id?:        string
				object?:                    string
				ewallet_file_secret_id?:    string
				atp_password_secret_id?:    string
				bucket?:                    string
				tnsnames_file_secret_id?:   string
				truststore_file_secret_id?: string
				data_source_type!:          string
				ojdbc_file_secret_id?:      string
				version_specific_details?: [...{
					bucket?:                string
					database_name?:         string
					organization_name?:     string
					retention_policy_name?: string
					influx_version!:        string
				}]
				key_store_file_secret_id?: string
				measurement_name?:         string
			}]
			time_updated: string
			project_id!:  string
			defined_tags?: [_]: string
			description?: string
			system_tags: [_]: string
		}
		detect_anomaly_job: {
			output_details!: [...{
				bucket!:      string
				namespace!:   string
				output_type!: string
				prefix?:      string
			}]
			time_accepted: string
			freeform_tags: [_]: string
			time_started:    string
			model_id!:       string
			compartment_id!: string
			project_id:      string
			input_details!: [...{
				content?:      string
				content_type?: string
				data?: [...{
					timestamp?: string
					values?: [...float]
				}]
				object_locations?: [...{
					bucket?:    string
					namespace?: string
					object?:    string
				}]
				signal_names?: [...string]
				message:     string
				input_type!: string
			}]
			lifecycle_state_details: string
			defined_tags: [_]: string
			state: string
			system_tags: [_]: string
			time_finished: string
			sensitivity?:  float
			description?:  string
			display_name?: string
		}
		model: {
			time_created:  string
			display_name?: string
			model_training_results: [...{
				max_inference_sync_rows: int
				rmse:                    float
				row_reduction_details: [...{
					reduction_method:     string
					reduction_percentage: float
					is_reduction_enabled: bool
				}]
				window_size:               int
				is_training_goal_achieved: bool
				warning:                   string
				fap:                       float
				mae:                       float
				multivariate_fap:          float
				signal_details: [...{
					is_quantized: bool
					mvi_ratio:    float
					fap:          float
					max:          float
					min:          float
					status:       string
					details:      string
					std:          float
					signal_name:  string
				}]
			}]
			time_updated: string
			model_training_details!: [...{
				data_asset_ids!: [...string]
				algorithm_hint?:    string
				target_fap?:        float
				training_fraction?: float
				window_size?:       int
			}]
			project_id!: string
			defined_tags?: [_]: string
			compartment_id!:   string
			lifecycle_details: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			state:        string
			description?: string
		}
		project: {
			display_name?: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_created: string
			time_updated: string
			defined_tags?: [_]: string
			state:           string
			compartment_id!: string
			description?:    string
		}
	}
	arguments: {
		ai_private_endpoint: {
			dns_zones!: [...string]
			subnet_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name?:   string
			compartment_id!: string
		}
		data_asset: {
			display_name?: string
			freeform_tags?: [_]: string
			private_endpoint_id?: string
			compartment_id!:      string
			data_source_details!: [...{
				version_specific_details?: [...{
					influx_version!:        string
					bucket?:                string
					database_name?:         string
					organization_name?:     string
					retention_policy_name?: string
				}]
				bucket?:                    string
				cwallet_file_secret_id?:    string
				table_name?:                string
				user_name?:                 string
				ewallet_file_secret_id?:    string
				atp_password_secret_id?:    string
				key_store_file_secret_id?:  string
				data_source_type!:          string
				object?:                    string
				namespace?:                 string
				measurement_name?:          string
				password_secret_id?:        string
				wallet_password_secret_id?: string
				atp_user_name?:             string
				database_name?:             string
				tnsnames_file_secret_id?:   string
				truststore_file_secret_id?: string
				ojdbc_file_secret_id?:      string
				url?:                       string
			}]
			defined_tags?: [_]: string
			description?: string
			project_id!:  string
		}
		detect_anomaly_job: {
			output_details!: [...{
				bucket!:      string
				namespace!:   string
				output_type!: string
				prefix?:      string
			}]
			compartment_id!: string
			description?:    string
			input_details!: [...{
				input_type!:   string
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
			}]
			model_id!:     string
			display_name?: string
			sensitivity?:  float
		}
		model: {
			compartment_id!: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			model_training_details!: [...{
				window_size?: int
				data_asset_ids!: [...string]
				algorithm_hint?:    string
				target_fap?:        float
				training_fraction?: float
			}]
			project_id!: string
		}
		project: {
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	data_asset: data_asset_id!: string
	detect_anomaly_job: detect_anomaly_job_id!: string
	projects: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	ai_private_endpoint: ai_private_endpoint_id!: string
	ai_private_endpoints: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
	data_assets: {
		project_id?: string
		state?:      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	detect_anomaly_jobs: {
		project_id?: string
		state?:      string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:        string
		detect_anomaly_job_id?: string
		display_name?:          string
		model_id?:              string
	}
	model: model_id!: string
	models: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		project_id?:     string
		state?:          string
	}
	project: project_id!: string
}

