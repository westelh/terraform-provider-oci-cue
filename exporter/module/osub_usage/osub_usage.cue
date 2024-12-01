package osub_usage

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	computed_usage: {
		x_one_origin_region?: string
		fields?: [...string]
		computed_usage_id!: string
		compartment_id!:    string
	}
	computed_usage_aggregateds: {
		time_from!:           string
		x_one_origin_region?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:  string
		grouping?:        string
		subscription_id!: string
		time_to!:         string
		parent_product?:  string
	}
	computed_usages: {
		x_one_origin_region?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		computed_product?: string
		subscription_id!:  string
		time_to!:          string
		compartment_id!:   string
		parent_product?:   string
		time_from!:        string
	}
}

