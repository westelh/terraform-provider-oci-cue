package usage_proxy

#resource: {
	attributes: subscription_redeemable_user: {
		user_id?:         string
		subscription_id!: string
		tenancy_id!:      string
		items!: [...{
			last_name?:  string
			email_id!:   string
			first_name?: string
		}]
	}
	arguments: subscription_redeemable_user: {
		items!: [...{
			email_id!:   string
			first_name?: string
			last_name?:  string
		}]
		user_id?:         string
		subscription_id!: string
		tenancy_id!:      string
	}
}
#data: {
	resources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		entitlement_id?: string
		service_name!:   string
	}
	subscription_product: {
		producttype?:      string
		subscription_id!:  string
		tenancy_id!:       string
		usage_period_key!: string
	}
	subscription_products: {
		subscription_id!:  string
		tenancy_id!:       string
		usage_period_key!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		producttype?: string
	}
	subscription_redeemable_users: {
		subscription_id!: string
		tenancy_id!:      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	subscription_redemptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		subscription_id!:                        string
		tenancy_id!:                             string
		time_redeemed_greater_than_or_equal_to?: string
		time_redeemed_less_than?:                string
	}
	subscription_reward: {
		subscription_id!: string
		tenancy_id!:      string
	}
	subscription_rewards: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		subscription_id!: string
		tenancy_id!:      string
	}
	resource_quotas: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:      string
		service_entitlement?: string
		service_name!:        string
	}
	usagelimits: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:  string
		limit_type?:      string
		resource_type?:   string
		service_type?:    string
		subscription_id!: string
	}
	subscription_redemption: {
		tenancy_id!:                             string
		time_redeemed_greater_than_or_equal_to?: string
		time_redeemed_less_than?:                string
		subscription_id!:                        string
	}
	subscription_redeemable_user: {
		subscription_id!: string
		tenancy_id!:      string
	}
}

