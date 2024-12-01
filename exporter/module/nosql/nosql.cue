package nosql

#resource: {
	attributes: {
		index: {
			table_name:        string
			is_if_not_exists?: bool
			name!:             string
			lifecycle_details: string
			state:             string
			table_name_or_id!: string
			compartment_id?:   string
			table_id:          string
			keys!: [...{
				json_field_type?: string
				json_path?:       string
				column_name!:     string
			}]
		}
		table: {
			schema_state: string
			name!:        string
			table_limits?: [...{
				max_storage_in_gbs!: int
				max_write_units!:    int
				capacity_mode?:      string
				max_read_units!:     int
			}]
			state: string
			defined_tags?: [_]: string
			time_updated: string
			freeform_tags?: [_]: string
			time_of_expiration:                      string
			ddl_statement!:                          string
			is_auto_reclaimable?:                    bool
			is_multi_region:                         bool
			local_replica_initialization_in_percent: int
			system_tags: [_]: string
			time_created:      string
			compartment_id!:   string
			lifecycle_details: string
			schema: [...{
				columns: [...{
					name:          string
					type:          string
					default_value: string
					is_as_uuid:    bool
					is_generated:  bool
					is_nullable:   bool
				}]
				identity: [...{
					is_null:     bool
					column_name: string
					is_always:   bool
				}]
				primary_key: [...string]
				shard_key: [...string]
				ttl: int
			}]
			replicas: [...{
				capacity_mode:     string
				lifecycle_details: string
				max_write_units:   int
				region:            string
				state:             string
				table_id:          string
			}]
		}
		table_replica: {
			region!:           string
			table_name_or_id!: string
			compartment_id?:   string
			max_read_units?:   int
			max_write_units?:  int
		}
	}
	arguments: {
		index: {
			is_if_not_exists?: bool
			keys!: [...{
				json_path?:       string
				column_name!:     string
				json_field_type?: string
			}]
			name!:             string
			table_name_or_id!: string
			compartment_id?:   string
		}
		table: {
			ddl_statement!: string
			defined_tags?: [_]: string
			is_auto_reclaimable?: bool
			compartment_id!:      string
			name!:                string
			table_limits?: [...{
				max_write_units!:    int
				capacity_mode?:      string
				max_read_units!:     int
				max_storage_in_gbs!: int
			}]
			freeform_tags?: [_]: string
		}
		table_replica: {
			region!:           string
			table_name_or_id!: string
			compartment_id?:   string
			max_read_units?:   int
			max_write_units?:  int
		}
	}
}
#data: {
	index: {
		compartment_id!:   string
		table_name_or_id!: string
		index_name!:       string
	}
	indexes: {
		state?:            string
		table_name_or_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		name?:           string
	}
	table: {
		table_name_or_id!: string
		compartment_id!:   string
	}
	tables: {
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

