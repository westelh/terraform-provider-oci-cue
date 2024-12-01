package marketplace

#resource: {
	attributes: {
		accepted_agreement: {
			freeform_tags?: [_]: string
			package_version!: string
			agreement_id!:    string
			display_name?:    string
			time_accepted:    string
			compartment_id!:  string
			listing_id!:      string
			signature!:       string
			defined_tags?: [_]: string
		}
		publication: {
			listing_type!: string
			package_type:  string
			icon: [...{
				content_url:    string
				file_extension: string
				mime_type:      string
				name:           string
			}]
			is_agreement_acknowledged!: bool
			compartment_id!:            string
			name!:                      string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			short_description!: string
			supported_operating_systems: [...{
				name: string
			}]
			support_contacts!: [...{
				email?:   string
				name?:    string
				phone?:   string
				subject?: string
			}]
			defined_tags?: [_]: string
			long_description?: string
			time_created:      string
			package_details!: [...{
				eula!: [...{
					eula_type!:    string
					license_text?: string
				}]
				operating_system!: [...{
					name?: string
				}]
				package_type!:    string
				package_version!: string
				image_id?:        string
			}]
		}
		listing_package_agreement: {
			content_url:      string
			prompt:           string
			signature:        string
			agreement_id!:    string
			listing_id!:      string
			package_version!: string
			compartment_id?:  string
			author:           string
		}
	}
	arguments: {
		accepted_agreement: {
			compartment_id!:  string
			listing_id!:      string
			package_version!: string
			agreement_id!:    string
			signature!:       string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		publication: {
			listing_type!: string
			defined_tags?: [_]: string
			is_agreement_acknowledged!: bool
			package_details!: [...{
				eula!: [...{
					eula_type!:    string
					license_text?: string
				}]
				operating_system!: [...{
					name?: string
				}]
				package_type!:    string
				package_version!: string
				image_id?:        string
			}]
			name!: string
			support_contacts!: [...{
				name?:    string
				phone?:   string
				subject?: string
				email?:   string
			}]
			long_description?:  string
			short_description!: string
			compartment_id!:    string
			freeform_tags?: [_]: string
		}
		listing_package_agreement: {
			agreement_id!:    string
			listing_id!:      string
			package_version!: string
			compartment_id?:  string
		}
	}
}
#data: {
	publication_package: {
		publication_id!:  string
		package_version!: string
	}
	accepted_agreements: {
		package_version?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		accepted_agreement_id?: string
		compartment_id!:        string
		display_name?:          string
		listing_id?:            string
	}
	listing: {
		listing_id!:     string
		compartment_id?: string
	}
	listing_package_agreements: {
		listing_id!:      string
		package_version!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	listing_packages: {
		package_version?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		listing_id!:     string
		package_type?:   string
	}
	categories: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	listing_package: {
		compartment_id?:  string
		listing_id!:      string
		package_version!: string
	}
	publication: publication_id!: string
	publications: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		listing_type!:   string
		name?: [...string]
		operating_systems?: [...string]
		publication_id?: string
	}
	accepted_agreement: accepted_agreement_id!: string
	listing_taxes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		listing_id!:     string
	}
	listings: {
		operating_systems?: [...string]
		listing_id?:     string
		publisher_id?:   string
		compartment_id?: string
		listing_types?: [...string]
		name?: [...string]
		package_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		category?: [...string]
		pricing?: [...string]
		image_id?:    string
		is_featured?: bool
	}
	publication_packages: {
		publication_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		package_type?:    string
		package_version?: string
	}
	publishers: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		publisher_id?:   string
	}
}

