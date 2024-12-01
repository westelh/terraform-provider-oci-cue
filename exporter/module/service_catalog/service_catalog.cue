package service_catalog

#resource: {
	attributes: {
		private_application: {
			freeform_tags?: [_]: string
			state:                    string
			logo_file_base64encoded?: string
			long_description?:        string
			package_type:             string
			display_name!:            string
			package_details!: [...{
				version!:                string
				zip_file_base64encoded?: string
				package_type!:           string
			}]
			short_description!: string
			time_updated:       string
			logo: [...{
				mime_type:    string
				content_url:  string
				display_name: string
			}]
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		service_catalog: {
			state:           string
			time_created:    string
			time_updated:    string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		service_catalog_association: {
			entity_type?:        string
			time_created:        string
			entity_id!:          string
			service_catalog_id!: string
		}
	}
	arguments: {
		private_application: {
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			package_details!: [...{
				package_type!:           string
				version!:                string
				zip_file_base64encoded?: string
			}]
			short_description!: string
			defined_tags?: [_]: string
			logo_file_base64encoded?: string
			long_description?:        string
		}
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
	}
}
#data: {
	service_catalog: service_catalog_id!: string
	service_catalog_association: service_catalog_association_id!: string
	service_catalog_associations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		entity_id?:                      string
		entity_type?:                    string
		service_catalog_association_id?: string
		service_catalog_id?:             string
	}
	service_catalogs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:     string
		display_name?:       string
		service_catalog_id?: string
	}
	private_application: private_application_id!: string
	private_application_package: private_application_package_id!: string
	private_application_packages: {
		display_name?: string
		package_type?: [...string]
		private_application_id!:         string
		private_application_package_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	private_applications: {
		private_application_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

