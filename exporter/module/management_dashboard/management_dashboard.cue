package management_dashboard

#resource: {
	attributes: management_dashboards_import: {
		import_details_file?: string
		import_details?:      string
	}
	arguments: management_dashboards_import: {
		import_details_file?: string
		import_details?:      string
	}
}
#data: {
	management_dashboards_export: export_dashboard_id!: string
}

