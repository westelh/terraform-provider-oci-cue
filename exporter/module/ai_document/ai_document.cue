package ai_document

#resource: {
	attributes: {
		model: {
			testing_dataset?: [...{
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
				dataset_type!: string
			}]
			is_quick_mode?: bool
			model_version?: string
			time_updated:   string
			freeform_tags?: [_]: string
			display_name?:               string
			max_training_time_in_hours?: float
			component_models?: [...{
				model_id?: string
			}]
			model_id?: string
			state:     string
			validation_dataset?: [...{
				object?:       string
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
			}]
			lifecycle_details: string
			project_id!:       string
			is_composed_model: bool
			training_dataset?: [...{
				namespace?:    string
				object?:       string
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
			}]
			metrics: [...{
				label_metrics_report: [...{
					mean_average_precision: float
					confidence_entries: [...{
						recall:    float
						threshold: float
						accuracy:  float
						f1score:   float
						precision: float
					}]
					document_count: int
					label:          string
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
			compartment_id!: string
			system_tags: [_]: string
			description?: string
			tenancy_id:   string
			labels: [...string]
			time_created: string
			model_type!:  string
			defined_tags?: [_]: string
			trained_time_in_hours: float
		}
		processor_job: {
			time_started:     string
			percent_complete: float
			time_finished:    string
			processor_config!: [...{
				features!: [...{
					feature_type!:            string
					generate_searchable_pdf?: bool
					max_results?:             int
					model_id?:                string
					tenancy_id?:              string
				}]
				processor_type!:        string
				document_type?:         string
				is_zip_output_enabled?: bool
				language?:              string
			}]
			lifecycle_details: string
			time_accepted:     string
			input_location!: [...{
				source_type!: string
				data?:        string
				object_locations?: [...{
					bucket?:    string
					namespace?: string
					object?:    string
				}]
			}]
			output_location!: [...{
				prefix!:    string
				bucket!:    string
				namespace!: string
			}]
			compartment_id!: string
			display_name?:   string
			state:           string
		}
		project: {
			time_created:    string
			display_name?:   string
			compartment_id!: string
			system_tags: [_]: string
			state:             string
			lifecycle_details: string
			time_updated:      string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
		}
	}
	arguments: {
		model: {
			model_type!: string
			freeform_tags?: [_]: string
			validation_dataset?: [...{
				namespace?:    string
				object?:       string
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
			}]
			testing_dataset?: [...{
				namespace?:    string
				object?:       string
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
			}]
			is_quick_mode?:  bool
			model_id?:       string
			compartment_id!: string
			component_models?: [...{
				model_id?: string
			}]
			model_version?: string
			defined_tags?: [_]: string
			training_dataset?: [...{
				dataset_type!: string
				bucket?:       string
				dataset_id?:   string
				namespace?:    string
				object?:       string
			}]
			description?:                string
			display_name?:               string
			project_id!:                 string
			max_training_time_in_hours?: float
		}
		processor_job: {
			input_location!: [...{
				source_type!: string
				data?:        string
				object_locations?: [...{
					namespace?: string
					object?:    string
					bucket?:    string
				}]
			}]
			output_location!: [...{
				bucket!:    string
				namespace!: string
				prefix!:    string
			}]
			display_name?:   string
			compartment_id!: string
			processor_config!: [...{
				document_type?:         string
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
			}]
		}
		project: {
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
		}
	}
}
#data: {
	processor_job: processor_job_id!: string
	project: project_id!: string
	projects: {
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
	model: model_id!: string
	models: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		project_id?:     string
		state?:          string
	}
}

