package resource_scheduler

#resource: {
	attributes: schedule: {
		recurrence_type!: string
		time_ends?:       string
		time_created:     string
		defined_tags?: [_]: string
		resource_filters?: [...{
			value?: [...{
				value?:     string
				namespace?: string
				tag_key?:   string
			}]
			attribute!:                         string
			condition?:                         string
			should_include_child_compartments?: bool
		}]
		action!: string
		system_tags: [_]: string
		description?:    string
		state?:          string
		time_starts?:    string
		time_next_run:   string
		compartment_id!: string
		display_name?:   string
		time_updated:    string
		resources?: [...{
			id!: string
			metadata?: [_]: string
		}]
		freeform_tags?: [_]: string
		time_last_run:       string
		recurrence_details!: string
	}
	arguments: schedule: {
		action!:          string
		compartment_id!:  string
		display_name?:    string
		time_starts?:     string
		recurrence_type!: string
		state?:           string
		time_ends?:       string
		resource_filters?: [...{
			condition?:                         string
			should_include_child_compartments?: bool
			value?: [...{
				namespace?: string
				tag_key?:   string
				value?:     string
			}]
			attribute!: string
		}]
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		description?: string
		resources?: [...{
			id!: string
			metadata?: [_]: string
		}]
		recurrence_details!: string
	}
}
#data: {
	schedule: schedule_id!: string
	schedules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		schedule_id?:    string
		state?:          string
	}
}

