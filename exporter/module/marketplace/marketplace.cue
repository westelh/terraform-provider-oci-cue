package marketplace

#resource: {
	attributes: {
		accepted_agreement: {
			freeform_tags?: [_]: string
			compartment_id!:  string
			listing_id!:      string
			package_version!: string
			signature!:       string
			agreement_id!:    string
			time_accepted:    string
			defined_tags?: [_]: string
			display_name?: string
		}
		publication: {
			short_description!: string
			icon: [...{
				mime_type:      string
				name:           string
				content_url:    string
				file_extension: string
			}]
			long_description?: string
			package_type:      string
			time_created:      string
			freeform_tags?: [_]: string
			compartment_id!: string
			package_details!: [...{
				image_id?: string
				eula!: [...{
					eula_type!:    string
					license_text?: string
				}]
				operating_system!: [...{
					name?: string
				}]
				package_type!:    string
				package_version!: string
			}]
			name!:         string
			listing_type!: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			support_contacts!: [...{
				email?:   string
				name?:    string
				phone?:   string
				subject?: string
			}]
			is_agreement_acknowledged!: bool
			supported_operating_systems: [...{
				name: string
			}]
			state: string
		}
		listing_package_agreement: {
			prompt:           string
			signature:        string
			agreement_id!:    string
			listing_id!:      string
			package_version!: string
			compartment_id?:  string
			author:           string
			content_url:      string
		}
	}
	arguments: {
		accepted_agreement: {
			signature!:    string
			display_name?: string
			agreement_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:  string
			listing_id!:      string
			package_version!: string
		}
		publication: {
			short_description!: string
			defined_tags?: [_]: string
			long_description?: string
			support_contacts!: [...{
				subject?: string
				email?:   string
				name?:    string
				phone?:   string
			}]
			listing_type!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			package_details!: [...{
				operating_system!: [...{
					name?: string
				}]
				package_type!:    string
				package_version!: string
				image_id?:        string
				eula!: [...{
					eula_type!:    string
					license_text?: string
				}]
			}]
			is_agreement_acknowledged!: bool
			name!:                      string
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
	accepted_agreement: accepted_agreement_id!: string
	accepted_agreements: {
		display_name?:    string
		listing_id?:      string
		package_version?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		accepted_agreement_id?: string
		compartment_id!:        string
	}
	categories: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	listing: {
		listing_id!:     string
		compartment_id?: string
	}
	listing_package: {
		compartment_id?:  string
		package_version!: string
		listing_id!:      string
	}
	listing_packages: {
		listing_id!:      string
		package_type?:    string
		package_version?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	listing_taxes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		listing_id!:     string
	}
	publication: publication_id!: string
	listing_package_agreements: {
		compartment_id?:  string
		listing_id!:      string
		package_version!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
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
	listings: {
		category?: [...string]
		compartment_id?: string
		listing_types?: [...string]
		package_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		image_id?:   string
		listing_id?: string
		name?: [...string]
		publisher_id?: string
		is_featured?:  bool
		operating_systems?: [...string]
		pricing?: [...string]
	}
	publication_package: {
		package_version!: string
		publication_id!:  string
	}
	publishers: {
		publisher_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
}

