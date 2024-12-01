package ai_language

#resource: {
	attributes: {
		project: {
			time_updated:      string
			description?:      string
			display_name?:     string
			state:             string
			lifecycle_details: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			system_tags: [_]: string
		}
		endpoint: {
			system_tags: [_]: string
			description?:    string
			compartment_id!: string
			model_id!:       string
			display_name?:   string
			freeform_tags?: [_]: string
			inference_units?: int
			time_updated:     string
			defined_tags?: [_]: string
			lifecycle_details: string
			project_id:        string
			state:             string
			time_created:      string
		}
		model: {
			version:       string
			display_name?: string
			training_dataset!: [...{
				dataset_type!: string
				dataset_id?:   string
				location_details?: [...{
					object_names!: [...string]
					bucket!:        string
					location_type!: string
					namespace!:     string
				}]
			}]
			lifecycle_details: string
			compartment_id!:   string
			state:             string
			time_created:      string
			freeform_tags?: [_]: string
			evaluation_results: [...{
				metrics: [...{
					macro_f1:           float
					micro_recall:       float
					accuracy:           float
					macro_precision:    float
					micro_f1:           float
					weighted_f1:        float
					micro_precision:    float
					macro_recall:       float
					weighted_precision: float
					weighted_recall:    float
				}]
				model_type: string
				class_metrics: [...{
					f1:        float
					label:     string
					precision: float
					recall:    float
					support:   float
				}]
				confusion_matrix: string
				labels: [...string]
				entity_metrics: [...{
					precision: float
					recall:    float
					f1:        float
					label:     string
				}]
			}]
			defined_tags?: [_]: string
			test_strategy?: [...{
				strategy_type!: string
				testing_dataset!: [...{
					dataset_type!: string
					dataset_id?:   string
					location_details?: [...{
						object_names!: [...string]
						bucket!:        string
						location_type!: string
						namespace!:     string
					}]
				}]
				validation_dataset?: [...{
					location_details?: [...{
						namespace!: string
						object_names!: [...string]
						bucket!:        string
						location_type!: string
					}]
					dataset_type!: string
					dataset_id?:   string
				}]
			}]
			time_updated: string
			model_details!: [...{
				model_type!: string
				classification_mode?: [...{
					classification_mode!: string
					version?:             string
				}]
				language_code?: string
				version?:       string
			}]
			system_tags: [_]: string
			project_id!:  string
			description?: string
		}
	}
	arguments: {
		project: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
		}
		endpoint: {
			model_id!:     string
			display_name?: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			inference_units?: int
			compartment_id!:  string
		}
		model: {
			compartment_id!: string
			training_dataset!: [...{
				dataset_type!: string
				dataset_id?:   string
				location_details?: [...{
					location_type!: string
					namespace!:     string
					object_names!: [...string]
					bucket!: string
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			model_details!: [...{
				model_type!: string
				classification_mode?: [...{
					classification_mode!: string
					version?:             string
				}]
				language_code?: string
				version?:       string
			}]
			project_id!: string
			freeform_tags?: [_]: string
			test_strategy?: [...{
				validation_dataset?: [...{
					dataset_type!: string
					dataset_id?:   string
					location_details?: [...{
						bucket!:        string
						location_type!: string
						namespace!:     string
						object_names!: [...string]
					}]
				}]
				strategy_type!: string
				testing_dataset!: [...{
					dataset_type!: string
					dataset_id?:   string
					location_details?: [...{
						location_type!: string
						namespace!:     string
						object_names!: [...string]
						bucket!: string
					}]
				}]
			}]
			description?: string
		}
	}
}
#data: {
	project: id!: string
	projects: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	endpoint: id!: string
	endpoints: {
		id?:         string
		model_id?:   string
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
	model: id!: string
	model_evaluation_results: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		model_id!: string
	}
	model_type: model_type!: string
	models: {
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
}

