package redis

#resource: {
	attributes: redis_cluster: {
		shard_count?: int
		freeform_tags?: [_]: string
		replicas_endpoint_ip_address: string
		compartment_id!:              string
		nsg_ids?: [...string]
		replicas_fqdn:     string
		software_version!: string
		defined_tags?: [_]: string
		primary_endpoint_ip_address: string
		state:                       string
		subnet_id!:                  string
		cluster_mode?:               string
		display_name!:               string
		system_tags: [_]: string
		lifecycle_details: string
		node_collection: [...{
			items: [...{
				display_name: string, private_endpoint_fqdn: string, private_endpoint_ip_address: string
			}]
		}]
		time_updated:        string
		node_count!:         int
		primary_fqdn:        string
		time_created:        string
		node_memory_in_gbs!: float
	}
	arguments: redis_cluster: {
		cluster_mode?: string
		nsg_ids?: [...string]
		display_name!:     string
		software_version!: string
		freeform_tags?: [_]: string
		compartment_id!:     string
		node_count!:         int
		node_memory_in_gbs!: float
		defined_tags?: [_]: string
		subnet_id!:   string
		shard_count?: int
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

