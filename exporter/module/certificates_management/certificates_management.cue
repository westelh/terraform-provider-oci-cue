package certificates_management

#resource: {
	attributes: {
		ca_bundle: {
			state:           string
			compartment_id!: string
			description?:    string
			freeform_tags?: [_]: string
			lifecycle_details: string
			defined_tags?: [_]: string
			name!:          string
			time_created:   string
			ca_bundle_pem!: string
		}
		certificate: {
			lifecycle_details: string
			certificate_rules?: [...{
				renewal_interval!:       string
				rule_type!:              string
				advance_renewal_period!: string
			}]
			key_algorithm:            string
			certificate_profile_type: string
			time_created:             string
			compartment_id!:          string
			freeform_tags?: [_]: string
			certificate_revocation_list_details: [...{
				custom_formatted_urls: [...string]
				object_storage_config: [...{
					object_storage_bucket_name:        string
					object_storage_namespace:          string
					object_storage_object_name_format: string
				}]
			}]
			description?: string
			state:        string
			defined_tags?: [_]: string
			name!:               string
			signature_algorithm: string
			config_type:         string
			certificate_config!: [...{
				certificate_profile_type?:        string
				issuer_certificate_authority_id?: string
				subject_alternative_names?: [...{
					value!: string
					type!:  string
				}]
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				config_type!:         string
				csr_pem?:             string
				version_name?:        string
				key_algorithm?:       string
				signature_algorithm?: string
				subject?: [...{
					surname?:                      string
					generation_qualifier?:         string
					state_or_province_name?:       string
					locality_name?:                string
					country?:                      string
					domain_component?:             string
					organization?:                 string
					given_name?:                   string
					initials?:                     string
					street?:                       string
					distinguished_name_qualifier?: string
					pseudonym?:                    string
					common_name!:                  string
					user_id?:                      string
					organizational_unit?:          string
					title?:                        string
					serial_number?:                string
				}]
			}]
			current_version: [...{
				version_number:           string
				issuer_ca_version_number: string
				revocation_status: [...{
					revocation_reason:  string
					time_of_revocation: string
				}]
				stages: [...string]
				validity: [...{
					time_of_validity_not_after:  string
					time_of_validity_not_before: string
				}]
				certificate_id:   string
				time_created:     string
				time_of_deletion: string
				version_name:     string
				serial_number:    string
				subject_alternative_names: [...{
					type:  string
					value: string
				}]
			}]
			issuer_certificate_authority_id: string
			subject: [...{
				organization:                 string
				country:                      string
				pseudonym:                    string
				serial_number:                string
				street:                       string
				title:                        string
				user_id:                      string
				domain_component:             string
				generation_qualifier:         string
				distinguished_name_qualifier: string
				given_name:                   string
				state_or_province_name:       string
				initials:                     string
				surname:                      string
				common_name:                  string
				organizational_unit:          string
				locality_name:                string
			}]
			time_of_deletion: string
		}
		certificate_authority: {
			config_type: string
			current_version: [...{
				time_of_deletion: string
				revocation_status: [...{
					revocation_reason:  string
					time_of_revocation: string
				}]
				validity: [...{
					time_of_validity_not_after:  string
					time_of_validity_not_before: string
				}]
				version_number:           string
				certificate_authority_id: string
				version_name:             string
				issuer_ca_version_number: string
				time_created:             string
				serial_number:            string
				stages: [...string]
			}]
			kms_key_id!: string
			certificate_revocation_list_details?: [...{
				custom_formatted_urls?: [...string]
				object_storage_config!: [...{
					object_storage_namespace?:          string
					object_storage_bucket_name!:        string
					object_storage_object_name_format!: string
				}]
			}]
			freeform_tags?: [_]: string
			time_of_deletion:                string
			issuer_certificate_authority_id: string
			subject: [...{
				street:                       string
				surname:                      string
				generation_qualifier:         string
				common_name:                  string
				organization:                 string
				distinguished_name_qualifier: string
				given_name:                   string
				state_or_province_name:       string
				user_id:                      string
				pseudonym:                    string
				locality_name:                string
				title:                        string
				serial_number:                string
				domain_component:             string
				country:                      string
				organizational_unit:          string
				initials:                     string
			}]
			state: string
			certificate_authority_config!: [...{
				subject!: [...{
					surname?:                      string
					distinguished_name_qualifier?: string
					locality_name?:                string
					pseudonym?:                    string
					generation_qualifier?:         string
					organizational_unit?:          string
					common_name!:                  string
					state_or_province_name?:       string
					serial_number?:                string
					country?:                      string
					street?:                       string
					given_name?:                   string
					organization?:                 string
					title?:                        string
					user_id?:                      string
					initials?:                     string
					domain_component?:             string
				}]
				issuer_certificate_authority_id?: string
				signing_algorithm?:               string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				version_name?: string
				config_type!:  string
			}]
			description?: string
			certificate_authority_rules?: [...{
				rule_type!:                                   string
				certificate_authority_max_validity_duration?: string
				leaf_certificate_max_validity_duration?:      string
			}]
			signing_algorithm: string
			name!:             string
			compartment_id!:   string
			defined_tags?: [_]: string
			time_created:      string
			lifecycle_details: string
		}
	}
	arguments: {
		ca_bundle: {
			defined_tags?: [_]: string
			ca_bundle_pem!: string
			description?:   string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
		}
		certificate: {
			certificate_rules?: [...{
				renewal_interval!:       string
				rule_type!:              string
				advance_renewal_period!: string
			}]
			defined_tags?: [_]: string
			description?: string
			name!:        string
			freeform_tags?: [_]: string
			compartment_id!: string
			certificate_config!: [...{
				subject_alternative_names?: [...{
					type!:  string
					value!: string
				}]
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				key_algorithm?:       string
				signature_algorithm?: string
				csr_pem?:             string
				subject?: [...{
					domain_component?:             string
					pseudonym?:                    string
					common_name!:                  string
					country?:                      string
					state_or_province_name?:       string
					generation_qualifier?:         string
					given_name?:                   string
					street?:                       string
					surname?:                      string
					user_id?:                      string
					initials?:                     string
					distinguished_name_qualifier?: string
					organizational_unit?:          string
					locality_name?:                string
					title?:                        string
					organization?:                 string
					serial_number?:                string
				}]
				certificate_profile_type?:        string
				issuer_certificate_authority_id?: string
				config_type!:                     string
				version_name?:                    string
			}]
		}
		certificate_authority: {
			compartment_id!: string
			defined_tags?: [_]: string
			certificate_authority_config!: [...{
				config_type!: string
				subject!: [...{
					organizational_unit?:          string
					street?:                       string
					surname?:                      string
					common_name!:                  string
					generation_qualifier?:         string
					country?:                      string
					title?:                        string
					user_id?:                      string
					domain_component?:             string
					organization?:                 string
					given_name?:                   string
					locality_name?:                string
					serial_number?:                string
					pseudonym?:                    string
					state_or_province_name?:       string
					distinguished_name_qualifier?: string
					initials?:                     string
				}]
				issuer_certificate_authority_id?: string
				signing_algorithm?:               string
				validity?: [...{
					time_of_validity_not_after!:  string
					time_of_validity_not_before?: string
				}]
				version_name?: string
			}]
			description?: string
			kms_key_id!:  string
			freeform_tags?: [_]: string
			name!: string
			certificate_authority_rules?: [...{
				certificate_authority_max_validity_duration?: string
				leaf_certificate_max_validity_duration?:      string
				rule_type!:                                   string
			}]
			certificate_revocation_list_details?: [...{
				object_storage_config!: [...{
					object_storage_bucket_name!:        string
					object_storage_object_name_format!: string
					object_storage_namespace?:          string
				}]
				custom_formatted_urls?: [...string]
			}]
		}
	}
}
#data: {
	certificate_authority: certificate_authority_id!: string
	certificate_version: {
		certificate_id!:             string
		certificate_version_number!: string
	}
	certificate_versions: {
		version_number?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		certificate_id!: string
	}
	certificates: {
		issuer_certificate_authority_id?: string
		name?:                            string
		state?:                           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		certificate_id?: string
		compartment_id?: string
	}
	ca_bundle: ca_bundle_id!: string
	ca_bundles: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ca_bundle_id?:   string
		compartment_id?: string
		name?:           string
	}
	certificate_authorities: {
		compartment_id?:                  string
		issuer_certificate_authority_id?: string
		name?:                            string
		state?:                           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		certificate_authority_id?: string
	}
	certificate_authority_version: {
		certificate_authority_id!:             string
		certificate_authority_version_number!: string
	}
	certificate_authority_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		certificate_authority_id!: string
		version_number?:           string
	}
	association: association_id!: string
	associations: {
		association_id?:           string
		association_type?:         string
		certificates_resource_id?: string
		compartment_id?:           string
		name?:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		associated_resource_id?: string
	}
	certificate: certificate_id!: string
}

