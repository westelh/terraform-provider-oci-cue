package audit

#resource: {
	attributes: configuration: {
		compartment_id!:        string
		retention_period_days!: int
	}
	arguments: configuration: {
		compartment_id!:        string
		retention_period_days!: int
	}
}
#data: {
	events: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		end_time!:       string
		start_time!:     string
	}
	configuration: compartment_id!: string
}

