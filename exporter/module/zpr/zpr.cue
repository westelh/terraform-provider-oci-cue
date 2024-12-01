package zpr

#resource: {
	attributes: {
		configuration: {
			defined_tags?: [_]: string
			lifecycle_details: string
			system_tags: [_]: string
			zpr_status?:     string
			time_updated:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			state:        string
			time_created: string
		}
		zpr_policy: {
			compartment_id!: string
			defined_tags?: [_]: string
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			time_updated: string
			freeform_tags?: [_]: string
			time_created: string
			description!: string
			statements!: [...string]
			name!: string
		}
	}
	arguments: {
		configuration: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			zpr_status?:     string
			compartment_id!: string
		}
		zpr_policy: {
			statements!: [...string]
			defined_tags?: [_]: string
			name!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			description!:    string
		}
	}
}
#data: {
	zpr_policies: {
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	zpr_policy: zpr_policy_id!: string
	configuration: compartment_id!: string
}

