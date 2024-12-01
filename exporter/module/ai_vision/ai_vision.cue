package ai_vision

#resource: {
	attributes: {
		model: {
			model_version?: string
			validation_dataset?: [...{
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
			}]
			time_updated: string
			project_id!:  string
			precision:    float
			system_tags: [_]: string
			training_dataset!: [...{
				dataset_type!:   string
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
			}]
			description?: string
			freeform_tags?: [_]: string
			max_training_duration_in_hours?: float
			average_precision:               float
			lifecycle_details:               string
			metrics:                         string
			confidence_threshold:            float
			state:                           string
			compartment_id!:                 string
			trained_duration_in_hours:       float
			is_quick_mode?:                  bool
			recall:                          float
			time_created:                    string
			testing_dataset?: [...{
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
			}]
			total_image_count: int
			model_type!:       string
			defined_tags?: [_]: string
			test_image_count: int
			display_name?:    string
		}
		project: {
			defined_tags?: [_]: string
			display_name?: string
			system_tags: [_]: string
			compartment_id!: string
			description?:    string
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			time_created:      string
			time_updated:      string
		}
	}
	arguments: {
		model: {
			display_name?: string
			testing_dataset?: [...{
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
			}]
			max_training_duration_in_hours?: float
			model_type!:                     string
			is_quick_mode?:                  bool
			model_version?:                  string
			validation_dataset?: [...{
				dataset_type!:   string
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
			}]
			defined_tags?: [_]: string
			project_id!:  string
			description?: string
			freeform_tags?: [_]: string
			training_dataset!: [...{
				object?:         string
				dataset_type!:   string
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
			}]
			compartment_id!: string
		}
		project: {
			compartment_id!: string
			display_name?:   string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?: string
		}
	}
}
#data: {
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
	project: project_id!: string
	projects: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

