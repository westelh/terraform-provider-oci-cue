package apm_config

#resource: {
	attributes: config: {
		etag:          string
		config_type!:  string
		time_updated:  string
		display_name!: string
		rules?: [...{
			satisfied_response_time?:  int
			tolerating_response_time?: int
			display_name?:             string
			filter_text?:              string
			is_apply_to_error_spans?:  bool
			is_enabled?:               bool
			priority?:                 int
		}]
		description?: string
		group?:       string
		options?:     string
		created_by:   string
		filter_text?: string
		filter_id?:   string
		dimensions?: [...{
			value_source?: string
			name?:         string
		}]
		namespace?:   string
		opc_dry_run?: string
		in_use_by?: [...{
			config_type:   string
			display_name:  string
			id:            string
			options_group: string
		}]
		time_created: string
		metrics?: [...{
			unit?:         string
			value_source?: string
			description?:  string
			name?:         string
		}]
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		updated_by:     string
		apm_domain_id!: string
	}
	arguments: config: {
		defined_tags?: [_]: string
		description?: string
		group?:       string
		config_type!: string
		namespace?:   string
		options?:     string
		filter_text?: string
		rules?: [...{
			is_apply_to_error_spans?:  bool
			is_enabled?:               bool
			priority?:                 int
			satisfied_response_time?:  int
			tolerating_response_time?: int
			display_name?:             string
			filter_text?:              string
		}]
		apm_domain_id!: string
		freeform_tags?: [_]: string
		filter_id?:    string
		display_name!: string
		opc_dry_run?:  string
		metrics?: [...{
			name?:         string
			unit?:         string
			value_source?: string
			description?:  string
		}]
		dimensions?: [...{
			value_source?: string
			name?:         string
		}]
		in_use_by?: [...{}]
	}
}
#data: {
	config: {
		config_id!:     string
		apm_domain_id!: string
	}
	configs: {
		freeform_tag_exists?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		defined_tag_equals?: [...string]
		config_type?: string
		defined_tag_exists?: [...string]
		freeform_tag_equals?: [...string]
		apm_domain_id!: string
		display_name?:  string
		options_group?: string
	}
}

