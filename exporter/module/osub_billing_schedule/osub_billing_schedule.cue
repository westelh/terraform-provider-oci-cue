package osub_billing_schedule

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	billing_schedules: {
		subscription_id!: string, x_one_origin_region?: string, filter?: [...{
					regex?:                       *false | bool, name!: string, values!: [...string]
		}]
		compartment_id!: string, subscribed_service_id?: string
	}
}

