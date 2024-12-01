package cluster_placement_groups

#resource: {
	attributes: cluster_placement_group: {
		defined_tags?: [_]: string
		compartment_id!: string
		freeform_tags?: [_]: string
		availability_domain!: string
		description!:         string
		placement_instruction?: [...{
			type!:  string
			value!: string
		}]
		cluster_placement_group_type!: string
		time_updated:                  string
		time_created:                  string
		state?:                        string
		lifecycle_details:             string
		name!:                         string
		capabilities?: [...{
			items!: [...{
				name!: string, service!: string
			}]
		}]
		system_tags: [_]: string
		opc_dry_run?: bool
	}
	arguments: cluster_placement_group: {
		availability_domain!:          string
		cluster_placement_group_type!: string
		freeform_tags?: [_]: string
		placement_instruction?: [...{
			type!:  string
			value!: string
		}]
		state?:          string
		compartment_id!: string
		defined_tags?: [_]: string
		name!:        string
		description!: string
		opc_dry_run?: bool
		capabilities?: [...{
			items!: [...{
				name!: string, service!: string
			}]
		}]
	}
}
#data: {
	cluster_placement_group: cluster_placement_group_id!: string
	cluster_placement_groups: {
		compartment_id_in_subtree?: bool
		id?:                        string
		name?:                      string
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ad?:             string
		compartment_id?: string
	}
}

