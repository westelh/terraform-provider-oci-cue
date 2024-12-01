package generic_artifacts_content

#resource: {
	attributes: artifact_by_path: {
		sha256:         string
		defined_tags:   _|_
		freeform_tags:  _|_
		artifact_id:    string
		compartment_id: string
		state:          string
		size_in_bytes:  string
		artifact_path!: string
		content?:       string
		repository_id!: string
		time_created:   string
		version!:       string
		source?:        string
		display_name:   string
	}
	arguments: artifact_by_path: {
		content?:       string
		source?:        string
		repository_id!: string
		artifact_path!: string
		version!:       string
	}
}
#data: {
	artifact_by_path: {
		repository_id!: string
		artifact_path!: string
		version!:       string
	}
	generic_artifacts_content: artifact_id!: string
}

