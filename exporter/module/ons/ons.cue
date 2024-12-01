package ons

#resource: {
	attributes: {
		notification_topic: {
			state:        string
			time_created: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			short_topic_id:  string
			compartment_id!: string
			name!:           string
			api_endpoint:    string
			etag:            string
			topic_id:        string
			description?:    string
		}
		subscription: {
			delivery_policy?: string
			state:            string
			protocol!:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			endpoint!:       string
			topic_id!:       string
			created_time:    string
			etag:            string
			compartment_id!: string
		}
	}
	arguments: {
		notification_topic: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
		}
		subscription: {
			freeform_tags?: [_]: string
			protocol!:        string
			endpoint!:        string
			delivery_policy?: string
			compartment_id!:  string
			topic_id!:        string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	notification_topics: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
	subscription: subscription_id!: string
	subscriptions: {
		topic_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	notification_topic: topic_id!: string
}

