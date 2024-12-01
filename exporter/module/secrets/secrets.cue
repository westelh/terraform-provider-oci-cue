package secrets

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	secretbundle: {
		secret_id!:           string
		stage?:               string
		secret_version_name?: string
		version_number?:      string
	}
	secretbundle_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		secret_id!: string
	}
}

