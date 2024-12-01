package ai_document

#resource: {
	attributes: {
		model: {
			is_quick_mode?: bool
			tenancy_id:     string
			display_name?:  string
			time_updated:   string
			labels: [...string]
			state:             string
			model_id?:         string
			model_type!:       string
			lifecycle_details: string
			system_tags: [_]: string
			description?: string
			validation_dataset?: [...{
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
			}]
			is_composed_model: bool
			time_created:      string
			model_version?:    string
			freeform_tags?: [_]: string
			max_training_time_in_hours?: float
			metrics: [...{
				label_metrics_report: [...{
					confidence_entries: [...{
						recall:    float
						threshold: float
						accuracy:  float
						f1score:   float
						precision: float
					}]
					document_count:         int
					label:                  string
					mean_average_precision: float
				}]
				model_type: string
				overall_metrics_report: [...{
					confidence_entries: [...{
						accuracy:  float
						f1score:   float
						precision: float
						recall:    float
						threshold: float
					}]
					document_count:         int
					mean_average_precision: float
				}]
				dataset_summary: [...{
					test_sample_count:       int
					training_sample_count:   int
					validation_sample_count: int
				}]
			}]
			training_dataset?: [...{
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			testing_dataset?: [...{
				dataset_id?:   string
				namespace?:    string
				object?:       string
				dataset_type!: string
				bucket?:       string
			}]
			project_id!:           string
			trained_time_in_hours: float
			component_models?: [...{
				model_id?: string
			}]
		}
		processor_job: {
			time_started:      string
			state:             string
			compartment_id!:   string
			lifecycle_details: string
			time_accepted:     string
			time_finished:     string
			processor_config!: [...{
				is_zip_output_enabled?: bool
				language?:              string
				features!: [...{
					generate_searchable_pdf?: bool
					max_results?:             int
					model_id?:                string
					tenancy_id?:              string
					feature_type!:            string
				}]
				processor_type!: string
				document_type?:  string
			}]
			percent_complete: float
			input_location!: [...{
				data?: string
				object_locations?: [...{
					bucket?:    string
					namespace?: string
					object?:    string
				}]
				source_type!: string
			}]
			output_location!: [...{
				prefix!:    string
				bucket!:    string
				namespace!: string
			}]
			display_name?: string
		}
		project: {
			lifecycle_details: string
			compartment_id!:   string
			description?:      string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			time_created: string
			time_updated: string
			defined_tags?: [_]: string
			display_name?: string
		}
	}
	arguments: {
		model: {
			defined_tags?: [_]: string
			model_version?: string
			model_type!:    string
			testing_dataset?: [...{
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
				dataset_type!: string
			}]
			validation_dataset?: [...{
				object?:       string
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
			}]
			model_id?: string
			component_models?: [...{
				model_id?: string
			}]
			freeform_tags?: [_]: string
			is_quick_mode?:              bool
			max_training_time_in_hours?: float
			project_id!:                 string
			training_dataset?: [...{
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
			}]
			compartment_id!: string
			display_name?:   string
			description?:    string
		}
		processor_job: {
			input_location!: [...{
				source_type!: string
				data?:        string
				object_locations?: [...{
					object?:    string
					bucket?:    string
					namespace?: string
				}]
			}]
			output_location!: [...{
				bucket!:    string
				namespace!: string
				prefix!:    string
			}]
			compartment_id!: string
			processor_config!: [...{
				processor_type!:        string
				document_type?:         string
				is_zip_output_enabled?: bool
				language?:              string
				features!: [...{
					model_id?:                string
					tenancy_id?:              string
					feature_type!:            string
					generate_searchable_pdf?: bool
					max_results?:             int
				}]
			}]
			display_name?: string
		}
		project: {
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	project: project_id!: string
	projects: {
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
	model: model_id!: string
	models: {
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
	processor_job: processor_job_id!: string
}

