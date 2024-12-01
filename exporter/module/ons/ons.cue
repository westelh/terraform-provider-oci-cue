package ons

#resource: {
	attributes: {
		notification_topic: {
			name!: string
			etag:  string
			freeform_tags?: [_]: string
			short_topic_id: string
			topic_id:       string
			defined_tags?: [_]: string
			api_endpoint:    string
			compartment_id!: string
			description?:    string
			state:           string
			time_created:    string
		}
		subscription: {
			compartment_id!:  string
			delivery_policy?: string
			freeform_tags?: [_]: string
			state: string
			defined_tags?: [_]: string
			created_time: string
			etag:         string
			topic_id!:    string
			endpoint!:    string
			protocol!:    string
		}
	}
	arguments: {
		notification_topic: {
			defined_tags?: [_]: string
			name!:        string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		subscription: {
			compartment_id!: string
			endpoint!:       string
			topic_id!:       string
			defined_tags?: [_]: string
			protocol!:        string
			delivery_policy?: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	notification_topic: topic_id!: string
	notification_topics: {
		id?:    string
		name?:  string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	subscription: subscription_id!: string
	subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		topic_id?:       string
	}
}

