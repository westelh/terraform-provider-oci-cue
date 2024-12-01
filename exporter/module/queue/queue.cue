package queue

#resource: {
	attributes: queue: {
		visibility_in_seconds?: int
		time_created:           string
		lifecycle_details:      string
		purge_type?:            string
		freeform_tags?: [_]: string
		retention_in_seconds?: int
		display_name!:         string
		system_tags: [_]: string
		purge_trigger?:            int
		messages_endpoint:         string
		time_updated:              string
		custom_encryption_key_id?: string
		timeout_in_seconds?:       int
		defined_tags?: [_]: string
		state:                             string
		compartment_id!:                   string
		dead_letter_queue_delivery_count?: int
		channel_consumption_limit?:        int
	}
	arguments: queue: {
		compartment_id!:                   string
		dead_letter_queue_delivery_count?: int
		freeform_tags?: [_]: string
		channel_consumption_limit?: int
		display_name!:              string
		defined_tags?: [_]: string
		purge_type?:               string
		retention_in_seconds?:     int
		custom_encryption_key_id?: string
		purge_trigger?:            int
		visibility_in_seconds?:    int
		timeout_in_seconds?:       int
	}
}
#data: {
	queue: queue_id!: string
	queues: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
}

