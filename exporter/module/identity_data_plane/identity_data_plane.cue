package identity_data_plane

#resource: {
	attributes: generate_scoped_access_token: {
		public_key!: string
		scope!:      string
		token:       string
	}
	arguments: generate_scoped_access_token: {
		public_key!: string
		scope!:      string
	}
}
#data: {}

