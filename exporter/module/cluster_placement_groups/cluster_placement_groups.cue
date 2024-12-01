package cluster_placement_groups

#resource: {
	attributes: cluster_placement_group: {
		placement_instruction?: [...{
			type!:  string
			value!: string
		}]
		capabilities?: [...{
			items!: [...{
				service!: string, name!: string
			}]
		}]
		time_created: string
		defined_tags?: [_]: string
		state?:                        string
		availability_domain!:          string
		cluster_placement_group_type!: string
		opc_dry_run?:                  bool
		compartment_id!:               string
		description!:                  string
		lifecycle_details:             string
		time_updated:                  string
		name!:                         string
		freeform_tags?: [_]: string
		system_tags: [_]: string
	}
	arguments: cluster_placement_group: {
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		state?:                        string
		description!:                  string
		availability_domain!:          string
		cluster_placement_group_type!: string
		compartment_id!:               string
		name!:                         string
		placement_instruction?: [...{
			type!:  string
			value!: string
		}]
		capabilities?: [...{
			items!: [...{
				name!: string, service!: string
			}]
		}]
		opc_dry_run?: bool
	}
}
#data: {
	cluster_placement_group: cluster_placement_group_id!: string
	cluster_placement_groups: {
		ad?:                        string
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		id?:                        string
		name?:                      string
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

