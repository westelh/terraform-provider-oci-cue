package ai_vision

#resource: {
	attributes: {
		model: {
			description?:     string
			metrics:          string
			test_image_count: int
			model_version?:   string
			system_tags: [_]: string
			trained_duration_in_hours: float
			freeform_tags?: [_]: string
			project_id!:                     string
			is_quick_mode?:                  bool
			compartment_id!:                 string
			display_name?:                   string
			precision:                       float
			max_training_duration_in_hours?: float
			lifecycle_details:               string
			state:                           string
			recall:                          float
			defined_tags?: [_]: string
			testing_dataset?: [...{
				dataset_type!:   string
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
			}]
			confidence_threshold: float
			average_precision:    float
			total_image_count:    int
			model_type!:          string
			time_created:         string
			time_updated:         string
			training_dataset!: [...{
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
				bucket?:         string
			}]
			validation_dataset?: [...{
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
				bucket?:         string
			}]
		}
		project: {
			compartment_id!:   string
			description?:      string
			time_created:      string
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			time_updated: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		model: {
			testing_dataset?: [...{
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
				bucket?:         string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			validation_dataset?: [...{
				dataset_id?:     string
				namespace_name?: string
				object?:         string
				dataset_type!:   string
				bucket?:         string
			}]
			project_id!:                     string
			model_version?:                  string
			max_training_duration_in_hours?: float
			training_dataset!: [...{
				dataset_type!:   string
				bucket?:         string
				dataset_id?:     string
				namespace_name?: string
				object?:         string
			}]
			is_quick_mode?: bool
			model_type!:    string
			description?:   string
			display_name?:  string
		}
		project: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			description?:    string
			display_name?:   string
		}
	}
}
#data: {
	model: model_id!: string
	models: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
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

