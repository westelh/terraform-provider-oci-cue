package osub_billing_schedule

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	billing_schedules: {
		filter?: [...{
			name!: string, values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string, subscribed_service_id?: string, subscription_id!: string, x_one_origin_region?: string
	}
}

