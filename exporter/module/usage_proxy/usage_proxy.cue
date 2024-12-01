package usage_proxy

#resource: {
	attributes: subscription_redeemable_user: {
		subscription_id!: string
		tenancy_id!:      string
		items!: [...{
			email_id!:   string
			first_name?: string
			last_name?:  string
		}]
		user_id?: string
	}
	arguments: subscription_redeemable_user: {
		subscription_id!: string
		tenancy_id!:      string
		items!: [...{
			last_name?:  string
			email_id!:   string
			first_name?: string
		}]
		user_id?: string
	}
}
#data: {
	subscription_redeemable_user: {
		subscription_id!: string
		tenancy_id!:      string
	}
	subscription_rewards: {
		tenancy_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		subscription_id!: string
	}
	resources: {
		entitlement_id?: string
		service_name!:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	subscription_product: {
		producttype?:      string
		subscription_id!:  string
		tenancy_id!:       string
		usage_period_key!: string
	}
	subscription_products: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		producttype?:      string
		subscription_id!:  string
		tenancy_id!:       string
		usage_period_key!: string
	}
	subscription_redeemable_users: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		subscription_id!: string
		tenancy_id!:      string
	}
	subscription_redemption: {
		tenancy_id!:                             string
		time_redeemed_greater_than_or_equal_to?: string
		time_redeemed_less_than?:                string
		subscription_id!:                        string
	}
	subscription_redemptions: {
		tenancy_id!:                             string
		time_redeemed_greater_than_or_equal_to?: string
		time_redeemed_less_than?:                string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		subscription_id!: string
	}
	subscription_reward: {
		tenancy_id!:      string
		subscription_id!: string
	}
	usagelimits: {
		service_type?:    string
		subscription_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		limit_type?:     string
		resource_type?:  string
	}
	resource_quotas: {
		service_entitlement?: string
		service_name!:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

