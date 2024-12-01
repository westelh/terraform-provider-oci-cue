package nosql

#resource: {
	attributes: {
		table: {
			schema_state:       string
			time_created:       string
			ddl_statement!:     string
			time_of_expiration: string
			name!:              string
			compartment_id!:    string
			system_tags: [_]: string
			is_auto_reclaimable?: bool
			is_multi_region:      bool
			schema: [...{
				primary_key: [...string]
				shard_key: [...string]
				ttl: int
				columns: [...{
					is_as_uuid:    bool
					is_generated:  bool
					is_nullable:   bool
					name:          string
					type:          string
					default_value: string
				}]
				identity: [...{
					column_name: string
					is_always:   bool
					is_null:     bool
				}]
			}]
			defined_tags?: [_]: string
			local_replica_initialization_in_percent: int
			freeform_tags?: [_]: string
			replicas: [...{
				region:            string
				state:             string
				table_id:          string
				capacity_mode:     string
				lifecycle_details: string
				max_write_units:   int
			}]
			table_limits?: [...{
				max_write_units!:    int
				capacity_mode?:      string
				max_read_units!:     int
				max_storage_in_gbs!: int
			}]
			time_updated:      string
			lifecycle_details: string
			state:             string
		}
		table_replica: {
			max_write_units?:  int
			region!:           string
			table_name_or_id!: string
			compartment_id?:   string
			max_read_units?:   int
		}
		index: {
			name!:             string
			is_if_not_exists?: bool
			table_name:        string
			lifecycle_details: string
			table_id:          string
			keys!: [...{
				column_name!:     string
				json_field_type?: string
				json_path?:       string
			}]
			compartment_id?:   string
			state:             string
			table_name_or_id!: string
		}
	}
	arguments: {
		table: {
			freeform_tags?: [_]: string
			compartment_id!: string
			table_limits?: [...{
				capacity_mode?:      string
				max_read_units!:     int
				max_storage_in_gbs!: int
				max_write_units!:    int
			}]
			is_auto_reclaimable?: bool
			name!:                string
			defined_tags?: [_]: string
			ddl_statement!: string
		}
		table_replica: {
			region!:           string
			table_name_or_id!: string
			compartment_id?:   string
			max_read_units?:   int
			max_write_units?:  int
		}
		index: {
			is_if_not_exists?: bool
			table_name_or_id!: string
			keys!: [...{
				column_name!:     string
				json_field_type?: string
				json_path?:       string
			}]
			name!:           string
			compartment_id?: string
		}
	}
}
#data: {
	tables: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	index: {
		table_name_or_id!: string
		compartment_id!:   string
		index_name!:       string
	}
	indexes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:   string
		name?:             string
		state?:            string
		table_name_or_id!: string
	}
	table: {
		table_name_or_id!: string
		compartment_id!:   string
	}
}

