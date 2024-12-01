package datacatalog

#resource: {
	attributes: {
		catalog: {
			lifecycle_details: string
			service_api_url:   string
			state:             string
			locks: [...{
				message:             string
				related_resource_id: string
				time_created:        string
				type:                string
			}]
			time_created:        string
			time_updated:        string
			compartment_id!:     string
			service_console_url: string
			display_name?:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			number_of_objects: int
			attached_catalog_private_endpoints?: [...string]
			system_tags: [_]: string
		}
		catalog_private_endpoint: {
			lifecycle_details: string
			locks: [...{
				type:                string
				message:             string
				related_resource_id: string
				time_created:        string
			}]
			system_tags: [_]: string
			subnet_id!: string
			attached_catalogs: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			time_created: string
			dns_zones!: [...string]
			display_name?: string
			freeform_tags?: [_]: string
			time_updated: string
			state:        string
		}
		connection: {
			display_name!: string
			time_updated:  string
			enc_properties?: [_]: string
			time_created:        string
			description?:        string
			data_asset_key!:     string
			external_key:        string
			time_status_updated: string
			uri:                 string
			catalog_id!:         string
			state:               string
			is_default?:         bool
			created_by_id:       string
			properties!: [_]: string
			type_key!:     string
			key:           string
			updated_by_id: string
		}
		data_asset: {
			time_harvested: string
			external_key:   string
			display_name!:  string
			time_created:   string
			updated_by_id:  string
			properties?: [_]: string
			lifecycle_details: string
			type_key!:         string
			created_by_id:     string
			key:               string
			state:             string
			catalog_id!:       string
			time_updated:      string
			uri:               string
			description?:      string
		}
		metastore: {
			state: string
			system_tags: [_]: string
			time_updated:                    string
			default_managed_table_location!: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			locks: [...{
				message:             string
				related_resource_id: string
				time_created:        string
				type:                string
			}]
			compartment_id!:                  string
			default_external_table_location!: string
			defined_tags?: [_]: string
			display_name?: string
		}
	}
	arguments: {
		catalog: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			attached_catalog_private_endpoints?: [...string]
			display_name?: string
		}
		catalog_private_endpoint: {
			defined_tags?: [_]: string
			compartment_id!: string
			dns_zones!: [...string]
			display_name?: string
			freeform_tags?: [_]: string
			subnet_id!: string
		}
		connection: {
			display_name!: string
			properties!: [_]: string
			type_key!:   string
			catalog_id!: string
			enc_properties?: [_]: string
			data_asset_key!: string
			description?:    string
			is_default?:     bool
		}
		data_asset: {
			description?: string
			properties?: [_]: string
			catalog_id!:   string
			type_key!:     string
			display_name!: string
		}
		metastore: {
			default_managed_table_location!: string
			freeform_tags?: [_]: string
			compartment_id!:                  string
			default_external_table_location!: string
			defined_tags?: [_]: string
			display_name?: string
		}
	}
}
#data: {
	catalogs: {
		display_name?: string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	connection: {
		connection_key!: string
		fields?: [...string]
		catalog_id!:     string
		data_asset_key!: string
	}
	metastore: metastore_id!: string
	metastores: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	catalog: catalog_id!: string
	catalog_private_endpoints: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	catalog_type: {
		catalog_id!: string
		fields?: [...string]
		type_key!: string
	}
	data_asset: {
		catalog_id!:     string
		data_asset_key!: string
		fields?: [...string]
	}
	data_assets: {
		catalog_id!:   string
		external_key?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name_contains?: string
		created_by_id?:         string
		state?:                 string
		type_key?:              string
		display_name?:          string
		fields?: [...string]
	}
	catalog_private_endpoint: catalog_private_endpoint_id!: string
	catalog_types: {
		name?:       string
		state?:      string
		catalog_id!: string
		fields?: [...string]
		is_tag?:      string
		is_internal?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		external_type_name?: string
		is_approved?:        string
		type_category?:      string
	}
	connections: {
		time_updated?:        string
		external_key?:        string
		state?:               string
		is_default?:          bool
		time_status_updated?: string
		updated_by_id?:       string
		catalog_id!:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		time_created?: string
		fields?: [...string]
		display_name?:          string
		display_name_contains?: string
		data_asset_key!:        string
		created_by_id?:         string
	}
}

