package datacatalog

#resource: {
	attributes: {
		connection: {
			type_key!:       string
			uri:             string
			data_asset_key!: string
			time_created:    string
			external_key:    string
			enc_properties?: [_]: string
			state:               string
			created_by_id:       string
			is_default?:         bool
			key:                 string
			display_name!:       string
			description?:        string
			updated_by_id:       string
			time_status_updated: string
			catalog_id!:         string
			properties!: [_]: string
			time_updated: string
		}
		data_asset: {
			properties?: [_]: string
			lifecycle_details: string
			time_harvested:    string
			key:               string
			display_name!:     string
			updated_by_id:     string
			description?:      string
			external_key:      string
			time_updated:      string
			catalog_id!:       string
			uri:               string
			state:             string
			time_created:      string
			type_key!:         string
			created_by_id:     string
		}
		metastore: {
			display_name?: string
			locks: [...{
				message:             string
				related_resource_id: string
				time_created:        string
				type:                string
			}]
			compartment_id!:                 string
			lifecycle_details:               string
			time_updated:                    string
			default_managed_table_location!: string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			time_created:                     string
			default_external_table_location!: string
			defined_tags?: [_]: string
		}
		catalog: {
			service_api_url: string
			state:           string
			freeform_tags?: [_]: string
			time_created:        string
			service_console_url: string
			time_updated:        string
			system_tags: [_]: string
			compartment_id!: string
			attached_catalog_private_endpoints?: [...string]
			defined_tags?: [_]: string
			display_name?: string
			locks: [...{
				type:                string
				message:             string
				related_resource_id: string
				time_created:        string
			}]
			number_of_objects: int
			lifecycle_details: string
		}
		catalog_private_endpoint: {
			lifecycle_details: string
			state:             string
			dns_zones!: [...string]
			time_updated:  string
			display_name?: string
			time_created:  string
			freeform_tags?: [_]: string
			attached_catalogs: [...string]
			locks: [...{
				message:             string
				related_resource_id: string
				time_created:        string
				type:                string
			}]
			system_tags: [_]: string
			compartment_id!: string
			subnet_id!:      string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		connection: {
			enc_properties?: [_]: string
			data_asset_key!: string
			properties!: [_]: string
			is_default?:   bool
			catalog_id!:   string
			display_name!: string
			type_key!:     string
			description?:  string
		}
		data_asset: {
			properties?: [_]: string
			type_key!:     string
			description?:  string
			catalog_id!:   string
			display_name!: string
		}
		metastore: {
			display_name?: string
			freeform_tags?: [_]: string
			default_managed_table_location!:  string
			default_external_table_location!: string
			defined_tags?: [_]: string
			compartment_id!: string
		}
		catalog: {
			defined_tags?: [_]: string
			compartment_id!: string
			attached_catalog_private_endpoints?: [...string]
			display_name?: string
			freeform_tags?: [_]: string
		}
		catalog_private_endpoint: {
			display_name?: string
			dns_zones!: [...string]
			subnet_id!: string
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	catalog_private_endpoint: catalog_private_endpoint_id!: string
	catalog_private_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	catalog_types: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_approved?:        string
		is_internal?:        string
		type_category?:      string
		name?:               string
		is_tag?:             string
		catalog_id!:         string
		external_type_name?: string
		fields?: [...string]
		state?: string
	}
	data_assets: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		type_key?:     string
		display_name?: string
		external_key?: string
		state?:        string
		fields?: [...string]
		display_name_contains?: string
		catalog_id!:            string
		created_by_id?:         string
	}
	metastores: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	catalog: catalog_id!: string
	catalog_type: {
		fields?: [...string]
		type_key!:   string
		catalog_id!: string
	}
	catalogs: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	connection: {
		catalog_id!: string
		fields?: [...string]
		connection_key!: string
		data_asset_key!: string
	}
	connections: {
		external_key?: string
		time_updated?: string
		catalog_id!:   string
		display_name?: string
		is_default?:   bool
		time_created?: string
		state?:        string
		fields?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		updated_by_id?:         string
		time_status_updated?:   string
		created_by_id?:         string
		data_asset_key!:        string
		display_name_contains?: string
	}
	data_asset: {
		fields?: [...string]
		data_asset_key!: string
		catalog_id!:     string
	}
	metastore: metastore_id!: string
}

