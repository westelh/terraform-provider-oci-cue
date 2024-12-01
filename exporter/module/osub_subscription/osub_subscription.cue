package osub_subscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	commitment: {
		commitment_id!:                 string
		x_one_gateway_subscription_id?: string
		x_one_origin_region?:           string
	}
	commitments: {
		subscribed_service_id!:         string
		x_one_gateway_subscription_id?: string
		x_one_origin_region?:           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ratecards: {
		compartment_id!:      string
		part_number?:         string
		subscription_id!:     string
		time_from?:           string
		time_to?:             string
		x_one_origin_region?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                string
		is_commit_info_required?:       bool
		x_one_gateway_subscription_id?: string
		buyer_email?:                   string
		plan_number?:                   string
		subscription_id?:               string
		x_one_origin_region?:           string
	}
}

