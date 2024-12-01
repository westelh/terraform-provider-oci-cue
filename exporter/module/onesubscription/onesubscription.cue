package onesubscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	subscribed_service: {
		fields?: [...string]
		subscribed_service_id!: string
	}
	subscriptions: {
		plan_number?:     string
		subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		buyer_email?:             string
		compartment_id!:          string
		is_commit_info_required?: bool
	}
	aggregated_computed_usages: {
		time_to!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:  string
		grouping?:        string
		parent_product?:  string
		subscription_id!: string
		time_from!:       string
	}
	commitments: {
		compartment_id!:        string
		subscribed_service_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	computed_usages: {
		subscription_id!: string
		time_from!:       string
		time_to!:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:   string
		computed_product?: string
		parent_product?:   string
	}
	invoice_line_computed_usages: {
		fields?: [...string]
		invoice_line_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	invoices: {
		compartment_id!: string
		fields?: [...string]
		time_from?: string
		time_to?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ar_customer_transaction_id!: string
	}
	organization_subscriptions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ratecards: {
		time_from?: string
		time_to?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		part_number?:     string
		subscription_id!: string
	}
	subscribed_services: {
		order_line_id?:   string
		status?:          string
		subscription_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	billing_schedules: {
		subscription_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:        string
		subscribed_service_id?: string
	}
	commitment: commitment_id!: string
	computed_usage: {
		computed_usage_id!: string
		compartment_id!:    string
		fields?: [...string]
	}
}

