package streaming

#resource: {
	attributes: {
		stream: {
			defined_tags?: [_]: string
			stream_pool_id?:         string
			lifecycle_state_details: string
			partitions!:             int
			retention_in_hours?:     int
			state:                   string
			messages_endpoint:       string
			time_created:            string
			name!:                   string
			compartment_id?:         string
			freeform_tags?: [_]: string
		}
		stream_pool: {
			lifecycle_state_details: string
			compartment_id!:         string
			state:                   string
			time_created:            string
			name!:                   string
			custom_encryption_key?: [...{
				kms_key_id!: string
				key_state:   string
			}]
			defined_tags?: [_]: string
			kafka_settings?: [...{
				auto_create_topics_enable?: bool
				bootstrap_servers:          string
				log_retention_hours?:       int
				num_partitions?:            int
			}]
			private_endpoint_settings?: [...{
				private_endpoint_ip?: string
				subnet_id?:           string
				nsg_ids?: [...string]
			}]
			is_private: bool
			freeform_tags?: [_]: string
			endpoint_fqdn: string
		}
		connect_harness: {
			time_created:    string
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			lifecycle_state_details: string
			state:                   string
		}
	}
	arguments: {
		stream: {
			stream_pool_id?: string
			name!:           string
			partitions!:     int
			compartment_id?: string
			freeform_tags?: [_]: string
			retention_in_hours?: int
			defined_tags?: [_]: string
		}
		stream_pool: {
			private_endpoint_settings?: [...{
				nsg_ids?: [...string]
				private_endpoint_ip?: string
				subnet_id?:           string
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			name!: string
			custom_encryption_key?: [...{
				kms_key_id!: string
			}]
			defined_tags?: [_]: string
			kafka_settings?: [...{
				auto_create_topics_enable?: bool
				log_retention_hours?:       int
				num_partitions?:            int
			}]
		}
		connect_harness: {
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	stream_pool: stream_pool_id!: string
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
		compartment_id?: string
		id?:             string
		name?:           string
		state?:          string
		stream_pool_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	connect_harness: connect_harness_id!: string
	connect_harnesses: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
	}
	stream: stream_id!: string
}

