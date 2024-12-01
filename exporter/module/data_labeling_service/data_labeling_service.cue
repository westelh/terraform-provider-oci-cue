package data_labeling_service

#resource: {
	attributes: dataset: {
		defined_tags?: [_]: string
		label_set!: [...{
			items!: [...{
				name!: string
			}]
		}]
		labeling_instructions?: string
		additional_properties: [_]: string
		lifecycle_substate: string
		time_updated:       string
		initial_record_generation_configuration?: [...{}]
		state:        string
		time_created: string
		dataset_source_details!: [...{
			bucket!:      string
			namespace!:   string
			source_type!: string
			prefix?:      string
		}]
		annotation_format!: string
		dataset_format_details!: [...{
			format_type!: string
			text_file_type_metadata?: [...{
				column_name?:      string
				escape_character?: string
				line_delimiter?:   string
				column_index!:     int
				format_type!:      string
				column_delimiter?: string
			}]
		}]
		lifecycle_details: string
		display_name?:     string
		freeform_tags?: [_]: string
		description?: string
		initial_import_dataset_configuration?: [...{
			import_metadata_path!: [...{
				bucket!:      string
				namespace!:   string
				path!:        string
				source_type!: string
			}]
			import_format!: [...{
				version?: string
				name!:    string
			}]
		}]
		compartment_id!: string
	}
	arguments: dataset: {
		dataset_source_details!: [...{
			namespace!:   string
			source_type!: string
			prefix?:      string
			bucket!:      string
		}]
		annotation_format!: string
		compartment_id!:    string
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
		display_name?: string
		freeform_tags?: [_]: string
		initial_record_generation_configuration?: [...{}]
		defined_tags?: [_]: string
		description?: string
		initial_import_dataset_configuration?: [...{
			import_format!: [...{
				name!:    string
				version?: string
			}]
			import_metadata_path!: [...{
				namespace!:   string
				path!:        string
				source_type!: string
				bucket!:      string
			}]
		}]
		labeling_instructions?: string
		label_set!: [...{
			items!: [...{
				name!: string
			}]
		}]
	}
}
#data: {
	annotation_format: compartment_id!: string
	annotation_formats: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	dataset: dataset_id!: string
	datasets: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		annotation_format?: string
	}
}

