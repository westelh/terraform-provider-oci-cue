package osub_organization_subscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	organization_subscriptions: {
		filter?: [...{
			name!: string, values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string, subscription_ids!: string, x_one_origin_region?: string
	}
}

