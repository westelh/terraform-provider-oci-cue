package data_labeling_service

#resource: {
	attributes: dataset: {
		state: string
		label_set!: [...{
			items!: [...{
				name!: string
			}]
		}]
		display_name?:          string
		time_updated:           string
		labeling_instructions?: string
		time_created:           string
		initial_record_generation_configuration?: [...{}]
		defined_tags?: [_]: string
		initial_import_dataset_configuration?: [...{
			import_format!: [...{
				name!:    string
				version?: string
			}]
			import_metadata_path!: [...{
				source_type!: string
				bucket!:      string
				namespace!:   string
				path!:        string
			}]
		}]
		freeform_tags?: [_]: string
		additional_properties: [_]: string
		dataset_format_details!: [...{
			format_type!: string
			text_file_type_metadata?: [...{
				format_type!:      string
				column_delimiter?: string
				column_name?:      string
				escape_character?: string
				line_delimiter?:   string
				column_index!:     int
			}]
		}]
		compartment_id!:    string
		description?:       string
		lifecycle_details:  string
		annotation_format!: string
		dataset_source_details!: [...{
			prefix?:      string
			bucket!:      string
			namespace!:   string
			source_type!: string
		}]
		lifecycle_substate: string
	}
	arguments: dataset: {
		display_name?: string
		description?:  string
		initial_import_dataset_configuration?: [...{
			import_format!: [...{
				version?: string
				name!:    string
			}]
			import_metadata_path!: [...{
				path!:        string
				source_type!: string
				bucket!:      string
				namespace!:   string
			}]
		}]
		annotation_format!: string
		dataset_format_details!: [...{
			format_type!: string
			text_file_type_metadata?: [...{
				column_delimiter?: string
				column_name?:      string
				escape_character?: string
				line_delimiter?:   string
				column_index!:     int
				format_type!:      string
			}]
		}]
		dataset_source_details!: [...{
			bucket!:      string
			namespace!:   string
			source_type!: string
			prefix?:      string
		}]
		freeform_tags?: [_]: string
		defined_tags?: [_]: string
		label_set!: [...{
			items!: [...{
				name!: string
			}]
		}]
		compartment_id!: string
		initial_record_generation_configuration?: [...{}]
		labeling_instructions?: string
	}
}
#data: {
	annotation_format: compartment_id!: string
	annotation_formats: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	dataset: dataset_id!: string
	datasets: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		annotation_format?: string
		compartment_id!:    string
		display_name?:      string
		id?:                string
		state?:             string
	}
}

