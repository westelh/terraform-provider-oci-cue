package onesubscription

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	billing_schedules: {
		compartment_id!:        string
		subscribed_service_id?: string
		subscription_id!:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	computed_usages: {
		time_to!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:   string
		computed_product?: string
		parent_product?:   string
		subscription_id!:  string
		time_from!:        string
	}
	invoice_line_computed_usages: {
		fields?: [...string]
		invoice_line_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	invoices: {
		time_from?: string
		time_to?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ar_customer_transaction_id!: string
		compartment_id!:             string
		fields?: [...string]
	}
	organization_subscriptions: {
		compartment_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	ratecards: {
		time_from?: string
		time_to?:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:  string
		part_number?:     string
		subscription_id!: string
	}
	subscribed_service: {
		subscribed_service_id!: string
		fields?: [...string]
	}
	aggregated_computed_usages: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		grouping?:        string
		parent_product?:  string
		subscription_id!: string
		time_from!:       string
		time_to!:         string
	}
	subscriptions: {
		subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		buyer_email?:             string
		compartment_id!:          string
		is_commit_info_required?: bool
		plan_number?:             string
	}
	commitments: {
		subscribed_service_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	computed_usage: {
		computed_usage_id!: string
		compartment_id!:    string
		fields?: [...string]
	}
	subscribed_services: {
		compartment_id!:  string
		order_line_id?:   string
		status?:          string
		subscription_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	commitment: commitment_id!: string
}

