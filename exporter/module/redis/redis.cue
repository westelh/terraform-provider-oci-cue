package redis

#resource: {
	attributes: redis_cluster: {
		cluster_mode?: string
		state:         string
		defined_tags?: [_]: string
		primary_fqdn: string
		system_tags: [_]: string
		node_memory_in_gbs!: float
		time_updated:        string
		nsg_ids?: [...string]
		replicas_endpoint_ip_address: string
		software_version!:            string
		subnet_id!:                   string
		node_count!:                  int
		freeform_tags?: [_]: string
		shard_count?:                int
		display_name!:               string
		primary_endpoint_ip_address: string
		replicas_fqdn:               string
		compartment_id!:             string
		time_created:                string
		lifecycle_details:           string
		node_collection: [...{
			items: [...{
				display_name: string, private_endpoint_fqdn: string, private_endpoint_ip_address: string
			}]
		}]
	}
	arguments: redis_cluster: {
		node_memory_in_gbs!: float
		nsg_ids?: [...string]
		display_name!: string
		subnet_id!:    string
		cluster_mode?: string
		freeform_tags?: [_]: string
		shard_count?: int
		node_count!:  int
		defined_tags?: [_]: string
		compartment_id!:   string
		software_version!: string
	}
}
#data: {
	redis_cluster: redis_cluster_id!: string
	redis_cluster_nodes: {
		redis_cluster_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	redis_clusters: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
}

