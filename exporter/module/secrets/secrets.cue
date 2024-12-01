package secrets

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	secretbundle: {
		version_number?:      string
		secret_id!:           string
		secret_version_name?: string
		stage?:               string
	}
	secretbundle_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		secret_id!: string
	}
}

