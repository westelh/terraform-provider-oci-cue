package apm_config

#resource: {
	attributes: config: {
		freeform_tags?: [_]: string
		options?: string
		rules?: [...{
			tolerating_response_time?: int
			display_name?:             string
			filter_text?:              string
			is_apply_to_error_spans?:  bool
			is_enabled?:               bool
			priority?:                 int
			satisfied_response_time?:  int
		}]
		time_created: string
		config_type!: string
		created_by:   string
		updated_by:   string
		in_use_by?: [...{
			options_group: string
			config_type:   string
			display_name:  string
			id:            string
		}]
		display_name!:  string
		apm_domain_id!: string
		description?:   string
		filter_id?:     string
		namespace?:     string
		dimensions?: [...{
			name?:         string
			value_source?: string
		}]
		etag: string
		metrics?: [...{
			description?:  string
			name?:         string
			unit?:         string
			value_source?: string
		}]
		group?:       string
		time_updated: string
		filter_text?: string
		opc_dry_run?: string
		defined_tags?: [_]: string
	}
	arguments: config: {
		description?: string
		dimensions?: [...{
			name?:         string
			value_source?: string
		}]
		options?:   string
		group?:     string
		filter_id?: string
		freeform_tags?: [_]: string
		in_use_by?: [...{}]
		filter_text?:   string
		apm_domain_id!: string
		display_name!:  string
		metrics?: [...{
			description?:  string
			name?:         string
			unit?:         string
			value_source?: string
		}]
		config_type!: string
		rules?: [...{
			display_name?:             string
			filter_text?:              string
			is_apply_to_error_spans?:  bool
			is_enabled?:               bool
			priority?:                 int
			satisfied_response_time?:  int
			tolerating_response_time?: int
		}]
		namespace?: string
		defined_tags?: [_]: string
		opc_dry_run?: string
	}
}
#data: {
	config: {
		apm_domain_id!: string
		config_id!:     string
	}
	configs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		config_type?: string
		freeform_tag_exists?: [...string]
		apm_domain_id!: string
		display_name?:  string
		defined_tag_equals?: [...string]
		options_group?: string
		defined_tag_exists?: [...string]
		freeform_tag_equals?: [...string]
	}
}

