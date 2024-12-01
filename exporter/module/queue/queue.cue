package queue

#resource: {
	attributes: queue: {
		time_updated: string
		defined_tags?: [_]: string
		time_created:               string
		display_name!:              string
		visibility_in_seconds?:     int
		channel_consumption_limit?: int
		timeout_in_seconds?:        int
		system_tags: [_]: string
		retention_in_seconds?:             int
		lifecycle_details:                 string
		dead_letter_queue_delivery_count?: int
		purge_type?:                       string
		custom_encryption_key_id?:         string
		state:                             string
		freeform_tags?: [_]: string
		compartment_id!:   string
		purge_trigger?:    int
		messages_endpoint: string
	}
	arguments: queue: {
		purge_type?:                       string
		custom_encryption_key_id?:         string
		dead_letter_queue_delivery_count?: int
		freeform_tags?: [_]: string
		channel_consumption_limit?: int
		purge_trigger?:             int
		display_name!:              string
		compartment_id!:            string
		retention_in_seconds?:      int
		timeout_in_seconds?:        int
		defined_tags?: [_]: string
		visibility_in_seconds?: int
	}
}
#data: {
	queue: queue_id!: string
	queues: {
		id?:    string
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
	}
}

