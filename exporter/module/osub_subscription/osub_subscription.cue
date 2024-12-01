package osub_subscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	commitment: {
		x_one_origin_region?:           string
		commitment_id!:                 string
		x_one_gateway_subscription_id?: string
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
		time_from?:           string
		time_to?:             string
		x_one_origin_region?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		part_number?:     string
		subscription_id!: string
	}
	subscriptions: {
		buyer_email?:                   string
		is_commit_info_required?:       bool
		x_one_origin_region?:           string
		compartment_id!:                string
		plan_number?:                   string
		subscription_id?:               string
		x_one_gateway_subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

