package zpr

#resource: {
	attributes: {
		configuration: {
			time_updated: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			zpr_status?:       string
			state:             string
			compartment_id!:   string
			lifecycle_details: string
			system_tags: [_]: string
			time_created: string
		}
		zpr_policy: {
			system_tags: [_]: string
			time_updated: string
			name!:        string
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			time_created:      string
			statements!: [...string]
			compartment_id!: string
			description!:    string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		configuration: {
			defined_tags?: [_]: string
			compartment_id!: string
			zpr_status?:     string
			freeform_tags?: [_]: string
		}
		zpr_policy: {
			description!: string
			name!:        string
			defined_tags?: [_]: string
			statements!: [...string]
			freeform_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	configuration: compartment_id!: string
	zpr_policies: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		name?:           string
		state?:          string
	}
	zpr_policy: zpr_policy_id!: string
}

