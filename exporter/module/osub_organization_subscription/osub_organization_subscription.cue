package osub_organization_subscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	organization_subscriptions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool, name!: string
		}]
		compartment_id!: string, subscription_ids!: string, x_one_origin_region?: string
	}
}

