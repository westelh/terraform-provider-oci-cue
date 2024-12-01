package artifacts

#resource: {
	attributes: {
		container_configuration: {
			namespace:                            string
			compartment_id!:                      string
			is_repository_created_on_first_push!: bool
		}
		container_image_signature: {
			signature!:         string
			created_by:         string
			display_name:       string
			signing_algorithm!: string
			state:              string
			compartment_id!:    string
			image_id!:          string
			message!:           string
			freeform_tags?: [_]: string
			kms_key_version_id!: string
			defined_tags?: [_]: string
			kms_key_id!: string
			system_tags: [_]: string
			time_created: string
		}
		container_repository: {
			billable_size_in_gbs: string
			time_created:         string
			created_by:           string
			time_last_pushed:     string
			defined_tags?: [_]: string
			layers_size_in_bytes: string
			is_public?:           bool
			readme?: [...{
				content!: string
				format!:  string
			}]
			image_count: int
			namespace:   string
			freeform_tags?: [_]: string
			layer_count:     int
			display_name!:   string
			compartment_id!: string
			is_immutable?:   bool
			state:           string
			system_tags: [_]: string
		}
		generic_artifact: {
			display_name:   string
			repository_id:  string
			compartment_id: string
			sha256:         string
			artifact_id!:   string
			defined_tags?: [_]: string
			version: string
			freeform_tags?: [_]: string
			size_in_bytes: string
			state:         string
			artifact_path: string
			time_created:  string
		}
		repository: {
			repository_type!: string
			defined_tags?: [_]: string
			state:           string
			display_name?:   string
			time_created:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			is_immutable!: bool
			description?:  string
		}
	}
	arguments: {
		container_configuration: {
			compartment_id!:                      string
			is_repository_created_on_first_push!: bool
		}
		container_image_signature: {
			compartment_id!:    string
			kms_key_id!:        string
			signing_algorithm!: string
			freeform_tags?: [_]: string
			signature!:          string
			kms_key_version_id!: string
			message!:            string
			defined_tags?: [_]: string
			image_id!: string
		}
		container_repository: {
			freeform_tags?: [_]: string
			display_name!: string
			is_public?:    bool
			readme?: [...{
				content!: string
				format!:  string
			}]
			compartment_id!: string
			is_immutable?:   bool
			defined_tags?: [_]: string
		}
		generic_artifact: {
			freeform_tags?: [_]: string
			artifact_id!: string
			defined_tags?: [_]: string
		}
		repository: {
			freeform_tags?: [_]: string
			compartment_id!:  string
			description?:     string
			display_name?:    string
			is_immutable!:    bool
			repository_type!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	container_image_signature: image_signature_id!: string
	container_repository: repository_id!: string
	generic_artifact: artifact_id!: string
	generic_artifacts: {
		repository_id!: string
		version?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		id?:             string
		artifact_path?:  string
		display_name?:   string
		compartment_id!: string
		state?:          string
		sha256?:         string
	}
	repositories: {
		id?:           string
		is_immutable?: bool
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	container_configuration: compartment_id!: string
	container_image: image_id!: string
	container_image_signatures: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		kms_key_id?:                string
		signing_algorithm?:         string
		compartment_id!:            string
		kms_key_version_id?:        string
		repository_id?:             string
		repository_name?:           string
		image_digest?:              string
		image_id?:                  string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	container_images: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:              string
		image_id?:                  string
		repository_id?:             string
		compartment_id_in_subtree?: bool
		version?:                   string
		is_versioned?:              bool
		repository_name?:           string
		state?:                     string
		compartment_id!:            string
	}
	container_repositories: {
		compartment_id_in_subtree?: bool
		display_name?:              string
		is_public?:                 bool
		repository_id?:             string
		state?:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	repository: repository_id!: string
}

