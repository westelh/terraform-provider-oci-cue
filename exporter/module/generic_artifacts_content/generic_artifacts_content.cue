package generic_artifacts_content

#resource: {
	attributes: artifact_by_path: {
		content?:       string
		time_created:   string
		defined_tags:   _
		freeform_tags:  _
		sha256:         string
		display_name:   string
		size_in_bytes:  string
		state:          string
		version!:       string
		artifact_id:    string
		repository_id!: string
		source?:        string
		compartment_id: string
		artifact_path!: string
	}
	arguments: artifact_by_path: {
		repository_id!: string
		artifact_path!: string
		source?:        string
		content?:       string
		version!:       string
	}
}
#data: {
	generic_artifacts_content: artifact_id!: string
	artifact_by_path: {
		artifact_path!: string
		repository_id!: string
		version!:       string
	}
}

