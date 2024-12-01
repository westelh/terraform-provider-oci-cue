package events

#resource: {
	attributes: rule: {
		freeform_tags?: [_]: string
		is_enabled!: bool
		defined_tags?: [_]: string
		description?:      string
		lifecycle_message: string
		time_created:      string
		compartment_id!:   string
		display_name!:     string
		actions!: [...{
			actions!: [...{
				action_type!: string, id: string, is_enabled!: bool, description?: string, state: string, function_id?: string, lifecycle_message: string, stream_id?: string, topic_id?: string
			}]
		}]
		condition!: string
		state:      string
	}
	arguments: rule: {
		defined_tags?: [_]: string
		description?:    string
		compartment_id!: string
		display_name!:   string
		freeform_tags?: [_]: string
		actions!: [...{
			actions!: [...{
				stream_id?: string, action_type!: string, function_id?: string, topic_id?: string, is_enabled!: bool, description?: string
			}]
		}]
		condition!:  string
		is_enabled!: bool
	}
}
#data: {
	rule: rule_id!: string
	rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
}

