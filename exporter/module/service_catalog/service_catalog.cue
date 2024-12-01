package service_catalog

#resource: {
	attributes: {
		service_catalog: {
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:           string
			time_created:    string
			time_updated:    string
			compartment_id!: string
		}
		service_catalog_association: {
			entity_type?:        string
			time_created:        string
			entity_id!:          string
			service_catalog_id!: string
		}
		private_application: {
			logo: [...{
				content_url:  string
				display_name: string
				mime_type:    string
			}]
			freeform_tags?: [_]: string
			logo_file_base64encoded?: string
			state:                    string
			time_updated:             string
			display_name!:            string
			package_details!: [...{
				package_type!:           string
				version!:                string
				zip_file_base64encoded?: string
			}]
			long_description?:  string
			compartment_id!:    string
			short_description!: string
			defined_tags?: [_]: string
			package_type: string
			time_created: string
		}
	}
	arguments: {
		service_catalog: {
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		service_catalog_association: {
			entity_id!:          string
			service_catalog_id!: string
			entity_type?:        string
		}
		private_application: {
			package_details!: [...{
				zip_file_base64encoded?: string
				package_type!:           string
				version!:                string
			}]
			short_description!: string
			freeform_tags?: [_]: string
			logo_file_base64encoded?: string
			defined_tags?: [_]: string
			long_description?: string
			compartment_id!:   string
			display_name!:     string
		}
	}
}
#data: {
	private_application: private_application_id!: string
	private_application_package: private_application_package_id!: string
	private_application_packages: {
		package_type?: [...string]
		private_application_id!:         string
		private_application_package_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?: string
	}
	private_applications: {
		private_application_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	service_catalog: service_catalog_id!: string
	service_catalog_association: service_catalog_association_id!: string
	service_catalog_associations: {
		entity_type?:                    string
		service_catalog_association_id?: string
		service_catalog_id?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		entity_id?: string
	}
	service_catalogs: {
		display_name?:       string
		service_catalog_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
}

