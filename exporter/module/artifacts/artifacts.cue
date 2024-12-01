package artifacts

#resource: {
	attributes: {
		container_configuration: {
			is_repository_created_on_first_push!: bool
			namespace:                            string
			compartment_id!:                      string
		}
		container_image_signature: {
			defined_tags?: [_]: string
			system_tags: [_]: string
			signing_algorithm!: string
			kms_key_id!:        string
			image_id!:          string
			message!:           string
			freeform_tags?: [_]: string
			kms_key_version_id!: string
			state:               string
			time_created:        string
			signature!:          string
			display_name:        string
			created_by:          string
			compartment_id!:     string
		}
		container_repository: {
			time_last_pushed: string
			created_by:       string
			compartment_id!:  string
			freeform_tags?: [_]: string
			is_public?:    bool
			display_name!: string
			defined_tags?: [_]: string
			layer_count:          int
			layers_size_in_bytes: string
			system_tags: [_]: string
			time_created:  string
			state:         string
			image_count:   int
			is_immutable?: bool
			readme?: [...{
				format!:  string
				content!: string
			}]
			billable_size_in_gbs: string
			namespace:            string
		}
		generic_artifact: {
			display_name: string
			sha256:       string
			defined_tags?: [_]: string
			artifact_path:  string
			compartment_id: string
			state:          string
			version:        string
			artifact_id!:   string
			time_created:   string
			freeform_tags?: [_]: string
			repository_id: string
			size_in_bytes: string
		}
		repository: {
			state:         string
			is_immutable!: bool
			defined_tags?: [_]: string
			time_created:     string
			repository_type!: string
			display_name?:    string
			freeform_tags?: [_]: string
			description?:    string
			compartment_id!: string
		}
	}
	arguments: {
		container_configuration: {
			compartment_id!:                      string
			is_repository_created_on_first_push!: bool
		}
		container_image_signature: {
			signature!: string
			freeform_tags?: [_]: string
			signing_algorithm!: string
			defined_tags?: [_]: string
			compartment_id!:     string
			image_id!:           string
			message!:            string
			kms_key_id!:         string
			kms_key_version_id!: string
		}
		container_repository: {
			defined_tags?: [_]: string
			display_name!:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			is_immutable?: bool
			readme?: [...{
				content!: string
				format!:  string
			}]
			is_public?: bool
		}
		generic_artifact: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			artifact_id!: string
		}
		repository: {
			freeform_tags?: [_]: string
			repository_type!: string
			is_immutable!:    bool
			defined_tags?: [_]: string
			compartment_id!: string
			description?:    string
			display_name?:   string
		}
	}
}
#data: {
	generic_artifacts: {
		id?:             string
		artifact_path?:  string
		state?:          string
		version?:        string
		compartment_id!: string
		sha256?:         string
		display_name?:   string
		repository_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	container_repositories: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		is_public?:                 bool
		repository_id?:             string
	}
	container_repository: repository_id!: string
	generic_artifact: artifact_id!: string
	container_image_signatures: {
		signing_algorithm?:  string
		kms_key_version_id?: string
		repository_name?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		compartment_id!:            string
		display_name?:              string
		image_digest?:              string
		kms_key_id?:                string
		image_id?:                  string
		repository_id?:             string
	}
	container_images: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:              string
		is_versioned?:              bool
		compartment_id_in_subtree?: bool
		image_id?:                  string
		repository_id?:             string
		repository_name?:           string
		state?:                     string
		version?:                   string
		compartment_id!:            string
	}
	repositories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		is_immutable?:   bool
		state?:          string
	}
	repository: repository_id!: string
	container_configuration: compartment_id!: string
	container_image: image_id!: string
	container_image_signature: image_signature_id!: string
}

