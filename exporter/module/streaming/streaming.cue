package streaming

#resource: {
	attributes: {
		connect_harness: {
			freeform_tags?: [_]: string
			lifecycle_state_details: string
			state:                   string
			time_created:            string
			compartment_id!:         string
			name!:                   string
			defined_tags?: [_]: string
		}
		stream: {
			partitions!: int
			defined_tags?: [_]: string
			name!:               string
			compartment_id?:     string
			state:               string
			retention_in_hours?: int
			stream_pool_id?:     string
			messages_endpoint:   string
			time_created:        string
			freeform_tags?: [_]: string
			lifecycle_state_details: string
		}
		stream_pool: {
			state: string
			kafka_settings?: [...{
				auto_create_topics_enable?: bool
				bootstrap_servers:          string
				log_retention_hours?:       int
				num_partitions?:            int
			}]
			private_endpoint_settings?: [...{
				subnet_id?: string
				nsg_ids?: [...string]
				private_endpoint_ip?: string
			}]
			time_created:    string
			compartment_id!: string
			custom_encryption_key?: [...{
				kms_key_id!: string
				key_state:   string
			}]
			defined_tags?: [_]: string
			lifecycle_state_details: string
			name!:                   string
			endpoint_fqdn:           string
			is_private:              bool
			freeform_tags?: [_]: string
		}
	}
	arguments: {
		connect_harness: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
		}
		stream: {
			compartment_id?: string
			freeform_tags?: [_]: string
			retention_in_hours?: int
			stream_pool_id?:     string
			name!:               string
			defined_tags?: [_]: string
			partitions!: int
		}
		stream_pool: {
			freeform_tags?: [_]: string
			kafka_settings?: [...{
				log_retention_hours?:       int
				num_partitions?:            int
				auto_create_topics_enable?: bool
			}]
			private_endpoint_settings?: [...{
				subnet_id?: string
				nsg_ids?: [...string]
				private_endpoint_ip?: string
			}]
			name!:           string
			compartment_id!: string
			custom_encryption_key?: [...{
				kms_key_id!: string
			}]
			defined_tags?: [_]: string
		}
	}
}
#data: {
	stream_pools: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
	streams: {
		name?:           string
		state?:          string
		stream_pool_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		id?:             string
	}
	connect_harness: connect_harness_id!: string
	connect_harnesses: {
		id?:    string
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	stream: stream_id!: string
	stream_pool: stream_pool_id!: string
}

