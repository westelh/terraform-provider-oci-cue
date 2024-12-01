package ai_language

#resource: {
	attributes: {
		endpoint: {
			display_name?:     string
			lifecycle_details: string
			state:             string
			defined_tags?: [_]: string
			inference_units?: int
			system_tags: [_]: string
			compartment_id!: string
			model_id!:       string
			time_created:    string
			time_updated:    string
			freeform_tags?: [_]: string
			description?: string
			project_id:   string
		}
		model: {
			training_dataset!: [...{
				location_details?: [...{
					object_names!: [...string]
					bucket!:        string
					location_type!: string
					namespace!:     string
				}]
				dataset_type!: string
				dataset_id?:   string
			}]
			display_name?: string
			state:         string
			model_details!: [...{
				classification_mode?: [...{
					classification_mode!: string
					version?:             string
				}]
				language_code?: string
				version?:       string
				model_type!:    string
			}]
			lifecycle_details: string
			evaluation_results: [...{
				labels: [...string]
				entity_metrics: [...{
					label:     string
					precision: float
					recall:    float
					f1:        float
				}]
				metrics: [...{
					accuracy:           float
					micro_f1:           float
					micro_recall:       float
					weighted_recall:    float
					micro_precision:    float
					weighted_f1:        float
					macro_f1:           float
					macro_recall:       float
					weighted_precision: float
					macro_precision:    float
				}]
				model_type: string
				class_metrics: [...{
					recall:    float
					support:   float
					f1:        float
					label:     string
					precision: float
				}]
				confusion_matrix: string
			}]
			compartment_id!: string
			version:         string
			time_updated:    string
			project_id!:     string
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
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
					dataset_id?: string
					location_details?: [...{
						namespace!: string
						object_names!: [...string]
						bucket!:        string
						location_type!: string
					}]
					dataset_type!: string
				}]
			}]
			description?: string
			freeform_tags?: [_]: string
		}
		project: {
			freeform_tags?: [_]: string
			lifecycle_details: string
			defined_tags?: [_]: string
			display_name?: string
			state:         string
			system_tags: [_]: string
			compartment_id!: string
			description?:    string
			time_created:    string
			time_updated:    string
		}
	}
	arguments: {
		endpoint: {
			model_id!:     string
			description?:  string
			display_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			inference_units?: int
			compartment_id!:  string
		}
		model: {
			project_id!: string
			model_details!: [...{
				model_type!: string
				classification_mode?: [...{
					classification_mode!: string
					version?:             string
				}]
				language_code?: string
				version?:       string
			}]
			description?: string
			defined_tags?: [_]: string
			test_strategy?: [...{
				testing_dataset!: [...{
					dataset_id?: string
					location_details?: [...{
						location_type!: string
						namespace!:     string
						object_names!: [...string]
						bucket!: string
					}]
					dataset_type!: string
				}]
				validation_dataset?: [...{
					dataset_type!: string
					dataset_id?:   string
					location_details?: [...{
						namespace!: string
						object_names!: [...string]
						bucket!:        string
						location_type!: string
					}]
				}]
				strategy_type!: string
			}]
			training_dataset!: [...{
				dataset_type!: string
				dataset_id?:   string
				location_details?: [...{
					namespace!: string
					object_names!: [...string]
					bucket!:        string
					location_type!: string
				}]
			}]
			display_name?:   string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		project: {
			compartment_id!: string
			description?:    string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name?: string
		}
	}
}
#data: {
	endpoints: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		model_id?:       string
		project_id?:     string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	model: id!: string
	model_evaluation_results: {
		model_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	model_type: model_type!: string
	models: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		project_id?:     string
		state?:          string
	}
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
}

