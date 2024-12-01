package osub_usage

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	computed_usage: {
		x_one_origin_region?: string
		computed_usage_id!:   string
		compartment_id!:      string
		fields?: [...string]
	}
	computed_usage_aggregateds: {
		subscription_id!:     string
		time_to!:             string
		x_one_origin_region?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		grouping?:       string
		parent_product?: string
		time_from!:      string
	}
	computed_usages: {
		computed_product?:    string
		subscription_id!:     string
		time_to!:             string
		compartment_id!:      string
		parent_product?:      string
		time_from!:           string
		x_one_origin_region?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

