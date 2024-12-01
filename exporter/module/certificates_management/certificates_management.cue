package certificates_management

#resource: {
	attributes: {
		ca_bundle: {
			name!:        string
			time_created: string
			description?: string
			freeform_tags?: [_]: string
			state:             string
			ca_bundle_pem!:    string
			lifecycle_details: string
			compartment_id!:   string
			defined_tags?: [_]: string
		}
		certificate: {
			current_version: [...{
				stages: [...string]
				time_created:   string
				certificate_id: string
				revocation_status: [...{
					revocation_reason:  string
					time_of_revocation: string
				}]
				time_of_deletion: string
				validity: [...{
					time_of_validity_not_after:  string
					time_of_validity_not_before: string
				}]
				version_name:             string
				issuer_ca_version_number: string
				serial_number:            string
				subject_alternative_names: [...{
					type:  string
					value: string
				}]
				version_number: string
			}]
			time_created:                    string
			time_of_deletion:                string
			issuer_certificate_authority_id: string
			lifecycle_details:               string
			state:                           string
			certificate_revocation_list_details: [...{
				custom_formatted_urls: [...string]
				object_storage_config: [...{
					object_storage_bucket_name:        string
					object_storage_namespace:          string
					object_storage_object_name_format: string
				}]
			}]
			config_type:   string
			key_algorithm: string
			certificate_config!: [...{
				certificate_profile_type?:        string
				issuer_certificate_authority_id?: string
				csr_pem?:                         string
				signature_algorithm?:             string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				config_type!:   string
				key_algorithm?: string
				subject_alternative_names?: [...{
					value!: string
					type!:  string
				}]
				version_name?: string
				subject?: [...{
					initials?:                     string
					organizational_unit?:          string
					pseudonym?:                    string
					distinguished_name_qualifier?: string
					generation_qualifier?:         string
					country?:                      string
					locality_name?:                string
					user_id?:                      string
					organization?:                 string
					title?:                        string
					given_name?:                   string
					state_or_province_name?:       string
					street?:                       string
					surname?:                      string
					common_name!:                  string
					domain_component?:             string
					serial_number?:                string
				}]
			}]
			defined_tags?: [_]: string
			signature_algorithm: string
			description?:        string
			name!:               string
			certificate_rules?: [...{
				advance_renewal_period!: string
				renewal_interval!:       string
				rule_type!:              string
			}]
			freeform_tags?: [_]: string
			compartment_id!:          string
			certificate_profile_type: string
			subject: [...{
				organizational_unit:          string
				initials:                     string
				locality_name:                string
				serial_number:                string
				state_or_province_name:       string
				surname:                      string
				domain_component:             string
				street:                       string
				generation_qualifier:         string
				title:                        string
				country:                      string
				given_name:                   string
				organization:                 string
				common_name:                  string
				distinguished_name_qualifier: string
				user_id:                      string
				pseudonym:                    string
			}]
		}
		certificate_authority: {
			defined_tags?: [_]: string
			state:       string
			config_type: string
			subject: [...{
				given_name:                   string
				title:                        string
				organizational_unit:          string
				state_or_province_name:       string
				country:                      string
				generation_qualifier:         string
				initials:                     string
				street:                       string
				surname:                      string
				serial_number:                string
				user_id:                      string
				common_name:                  string
				distinguished_name_qualifier: string
				pseudonym:                    string
				organization:                 string
				locality_name:                string
				domain_component:             string
			}]
			time_created: string
			certificate_authority_config!: [...{
				version_name?: string
				config_type!:  string
				subject!: [...{
					generation_qualifier?:         string
					organizational_unit?:          string
					surname?:                      string
					country?:                      string
					pseudonym?:                    string
					state_or_province_name?:       string
					common_name!:                  string
					domain_component?:             string
					distinguished_name_qualifier?: string
					street?:                       string
					locality_name?:                string
					title?:                        string
					given_name?:                   string
					serial_number?:                string
					organization?:                 string
					initials?:                     string
					user_id?:                      string
				}]
				issuer_certificate_authority_id?: string
				signing_algorithm?:               string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
			}]
			issuer_certificate_authority_id: string
			lifecycle_details:               string
			kms_key_id!:                     string
			compartment_id!:                 string
			signing_algorithm:               string
			time_of_deletion:                string
			current_version: [...{
				certificate_authority_id: string
				validity: [...{
					time_of_validity_not_before: string
					time_of_validity_not_after:  string
				}]
				version_name:   string
				version_number: string
				serial_number:  string
				revocation_status: [...{
					revocation_reason:  string
					time_of_revocation: string
				}]
				time_created: string
				stages: [...string]
				time_of_deletion:         string
				issuer_ca_version_number: string
			}]
			certificate_revocation_list_details?: [...{
				object_storage_config!: [...{
					object_storage_object_name_format!: string
					object_storage_namespace?:          string
					object_storage_bucket_name!:        string
				}]
				custom_formatted_urls?: [...string]
			}]
			certificate_authority_rules?: [...{
				leaf_certificate_max_validity_duration?:      string
				rule_type!:                                   string
				certificate_authority_max_validity_duration?: string
			}]
			name!: string
			freeform_tags?: [_]: string
			description?: string
		}
	}
	arguments: {
		ca_bundle: {
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			name!:          string
			ca_bundle_pem!: string
		}
		certificate: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			certificate_config!: [...{
				key_algorithm?: string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				issuer_certificate_authority_id?: string
				subject?: [...{
					pseudonym?:                    string
					surname?:                      string
					serial_number?:                string
					title?:                        string
					user_id?:                      string
					domain_component?:             string
					organization?:                 string
					country?:                      string
					state_or_province_name?:       string
					street?:                       string
					given_name?:                   string
					locality_name?:                string
					initials?:                     string
					organizational_unit?:          string
					common_name!:                  string
					distinguished_name_qualifier?: string
					generation_qualifier?:         string
				}]
				subject_alternative_names?: [...{
					value!: string
					type!:  string
				}]
				certificate_profile_type?: string
				csr_pem?:                  string
				signature_algorithm?:      string
				version_name?:             string
				config_type!:              string
			}]
			compartment_id!: string
			description?:    string
			name!:           string
			certificate_rules?: [...{
				advance_renewal_period!: string
				renewal_interval!:       string
				rule_type!:              string
			}]
		}
		certificate_authority: {
			freeform_tags?: [_]: string
			name!: string
			defined_tags?: [_]: string
			description?: string
			certificate_revocation_list_details?: [...{
				object_storage_config!: [...{
					object_storage_bucket_name!:        string
					object_storage_object_name_format!: string
					object_storage_namespace?:          string
				}]
				custom_formatted_urls?: [...string]
			}]
			certificate_authority_config!: [...{
				signing_algorithm?: string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				version_name?: string
				config_type!:  string
				subject!: [...{
					locality_name?:                string
					common_name!:                  string
					organization?:                 string
					domain_component?:             string
					user_id?:                      string
					surname?:                      string
					title?:                        string
					serial_number?:                string
					generation_qualifier?:         string
					initials?:                     string
					street?:                       string
					distinguished_name_qualifier?: string
					given_name?:                   string
					pseudonym?:                    string
					state_or_province_name?:       string
					country?:                      string
					organizational_unit?:          string
				}]
				issuer_certificate_authority_id?: string
			}]
			kms_key_id!: string
			certificate_authority_rules?: [...{
				certificate_authority_max_validity_duration?: string
				leaf_certificate_max_validity_duration?:      string
				rule_type!:                                   string
			}]
			compartment_id!: string
		}
	}
}
#data: {
	certificate_authority: certificate_authority_id!: string
	certificate_authority_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		certificate_authority_id!: string
		version_number?:           string
	}
	certificate_version: {
		certificate_id!:             string
		certificate_version_number!: string
	}
	certificate_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		certificate_id!: string
		version_number?: string
	}
	association: association_id!: string
	associations: {
		compartment_id?: string
		name?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		associated_resource_id?:   string
		association_id?:           string
		association_type?:         string
		certificates_resource_id?: string
	}
	ca_bundle: ca_bundle_id!: string
	ca_bundles: {
		ca_bundle_id?:   string
		compartment_id?: string
		name?:           string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	certificates: {
		issuer_certificate_authority_id?: string
		name?:                            string
		state?:                           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		certificate_id?: string
		compartment_id?: string
	}
	certificate: certificate_id!: string
	certificate_authorities: {
		certificate_authority_id?:        string
		compartment_id?:                  string
		issuer_certificate_authority_id?: string
		name?:                            string
		state?:                           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	certificate_authority_version: {
		certificate_authority_id!:             string
		certificate_authority_version_number!: string
	}
}

