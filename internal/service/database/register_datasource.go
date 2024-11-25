// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package database

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterDatasource() {
	tfresource.RegisterDatasource("oci_database_application_vip", DatabaseApplicationVipDataSource())
	tfresource.RegisterDatasource("oci_database_application_vips", DatabaseApplicationVipsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_database", DatabaseAutonomousContainerDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_database_dataguard_association", DatabaseAutonomousContainerDatabaseDataguardAssociationDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_database_dataguard_associations", DatabaseAutonomousContainerDatabaseDataguardAssociationsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_database_resource_usage", DatabaseAutonomousContainerDatabaseResourceUsageDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_database_versions", DatabaseAutonomousContainerDatabaseVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_databases", DatabaseAutonomousContainerDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_container_patches", DatabaseAutonomousContainerPatchesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database", DatabaseAutonomousDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_backup", DatabaseAutonomousDatabaseBackupDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_backups", DatabaseAutonomousDatabaseBackupsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_character_sets", DatabaseAutonomousDatabaseCharacterSetsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_dataguard_associations", DatabaseAutonomousDatabaseDataguardAssociationsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_instance_wallet_management", DatabaseAutonomousDatabaseInstanceWalletManagementDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_peers", DatabaseAutonomousDatabasePeersDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_refreshable_clones", DatabaseAutonomousDatabaseRefreshableClonesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_regional_wallet_management", DatabaseAutonomousDatabaseRegionalWalletManagementDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_software_image", DatabaseAutonomousDatabaseSoftwareImageDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_software_images", DatabaseAutonomousDatabaseSoftwareImagesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_wallet", DatabaseAutonomousDatabaseWalletDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_databases", DatabaseAutonomousDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_databases_clones", DatabaseAutonomousDatabasesClonesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_db_preview_versions", DatabaseAutonomousDbPreviewVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_db_versions", DatabaseAutonomousDbVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_exadata_infrastructure", DatabaseAutonomousExadataInfrastructureDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_exadata_infrastructure_ocpu", DatabaseAutonomousExadataInfrastructureOcpuDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_exadata_infrastructure_shapes", DatabaseAutonomousExadataInfrastructureShapesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_exadata_infrastructures", DatabaseAutonomousExadataInfrastructuresDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_patch", DatabaseAutonomousPatchDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_virtual_machine", DatabaseAutonomousVirtualMachineDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_virtual_machines", DatabaseAutonomousVirtualMachinesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_vm_cluster", DatabaseAutonomousVmClusterDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_vm_cluster_acd_resource_usages", DatabaseAutonomousVmClusterAcdResourceUsagesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_vm_cluster_resource_usage", DatabaseAutonomousVmClusterResourceUsageDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_vm_clusters", DatabaseAutonomousVmClustersDataSource())
	tfresource.RegisterDatasource("oci_database_backup_destination", DatabaseBackupDestinationDataSource())
	tfresource.RegisterDatasource("oci_database_backup_destinations", DatabaseBackupDestinationsDataSource())
	tfresource.RegisterDatasource("oci_database_backups", DatabaseBackupsDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_autonomous_vm_cluster", DatabaseCloudAutonomousVmClusterDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_autonomous_vm_cluster_acd_resource_usages", DatabaseCloudAutonomousVmClusterAcdResourceUsagesDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_autonomous_vm_cluster_resource_usage", DatabaseCloudAutonomousVmClusterResourceUsageDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_autonomous_vm_clusters", DatabaseCloudAutonomousVmClustersDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_exadata_infrastructure", DatabaseCloudExadataInfrastructureDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_exadata_infrastructure_un_allocated_resource", DatabaseCloudExadataInfrastructureUnAllocatedResourceDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_exadata_infrastructures", DatabaseCloudExadataInfrastructuresDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_vm_cluster", DatabaseCloudVmClusterDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_vm_cluster_iorm_config", DatabaseCloudVmClusterIormConfigDataSource())
	tfresource.RegisterDatasource("oci_database_cloud_vm_clusters", DatabaseCloudVmClustersDataSource())
	tfresource.RegisterDatasource("oci_database_data_guard_association", DatabaseDataGuardAssociationDataSource())
	tfresource.RegisterDatasource("oci_database_data_guard_associations", DatabaseDataGuardAssociationsDataSource())
	tfresource.RegisterDatasource("oci_database_database", DatabaseDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_database_pdb_conversion_history_entries", DatabaseDatabasePdbConversionHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_database_pdb_conversion_history_entry", DatabaseDatabasePdbConversionHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_database_software_image", DatabaseDatabaseSoftwareImageDataSource())
	tfresource.RegisterDatasource("oci_database_database_software_images", DatabaseDatabaseSoftwareImagesDataSource())
	tfresource.RegisterDatasource("oci_database_database_upgrade_history_entries", DatabaseDatabaseUpgradeHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_database_upgrade_history_entry", DatabaseDatabaseUpgradeHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_databases", DatabaseDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_db_home", DatabaseDbHomeDataSource())
	tfresource.RegisterDatasource("oci_database_db_home_patch_history_entries", DatabaseDbHomePatchHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_db_home_patches", DatabaseDbHomePatchesDataSource())
	tfresource.RegisterDatasource("oci_database_db_homes", DatabaseDbHomesDataSource())
	tfresource.RegisterDatasource("oci_database_db_node", DatabaseDbNodeDataSource())
	tfresource.RegisterDatasource("oci_database_db_node_console_connection", DatabaseDbNodeConsoleConnectionDataSource())
	tfresource.RegisterDatasource("oci_database_db_node_console_connections", DatabaseDbNodeConsoleConnectionsDataSource())
	tfresource.RegisterDatasource("oci_database_db_node_console_histories", DatabaseDbNodeConsoleHistoriesDataSource())
	tfresource.RegisterDatasource("oci_database_db_node_console_history", DatabaseDbNodeConsoleHistoryDataSource())
	tfresource.RegisterDatasource("oci_database_db_node_console_history_content", DatabaseDbNodeConsoleHistoryContentDataSource())
	tfresource.RegisterDatasource("oci_database_db_nodes", DatabaseDbNodesDataSource())
	tfresource.RegisterDatasource("oci_database_db_server", DatabaseDbServerDataSource())
	tfresource.RegisterDatasource("oci_database_db_servers", DatabaseDbServersDataSource())
	tfresource.RegisterDatasource("oci_database_db_system_patch_history_entries", DatabaseDbSystemPatchHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_db_system_patches", DatabaseDbSystemPatchesDataSource())
	tfresource.RegisterDatasource("oci_database_db_system_shapes", DatabaseDbSystemShapesDataSource())
	tfresource.RegisterDatasource("oci_database_db_systems", DatabaseDbSystemsDataSource())
	tfresource.RegisterDatasource("oci_database_db_systems_upgrade_history_entries", DatabaseDbSystemsUpgradeHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_db_systems_upgrade_history_entry", DatabaseDbSystemsUpgradeHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_db_versions", DatabaseDbVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_exadata_infrastructure", DatabaseExadataInfrastructureDataSource())
	tfresource.RegisterDatasource("oci_database_exadata_infrastructure_download_config_file", DatabaseExadataInfrastructureDownloadConfigFileDataSource())
	tfresource.RegisterDatasource("oci_database_exadata_infrastructure_un_allocated_resource", DatabaseExadataInfrastructureUnAllocatedResourceDataSource())
	tfresource.RegisterDatasource("oci_database_exadata_infrastructures", DatabaseExadataInfrastructuresDataSource())
	tfresource.RegisterDatasource("oci_database_exadata_iorm_config", DatabaseExadataIormConfigDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_cluster", DatabaseExadbVmClusterDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_cluster_update", DatabaseExadbVmClusterUpdateDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_cluster_update_history_entries", DatabaseExadbVmClusterUpdateHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_cluster_update_history_entry", DatabaseExadbVmClusterUpdateHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_cluster_updates", DatabaseExadbVmClusterUpdatesDataSource())
	tfresource.RegisterDatasource("oci_database_exadb_vm_clusters", DatabaseExadbVmClustersDataSource())
	tfresource.RegisterDatasource("oci_database_exascale_db_storage_vault", DatabaseExascaleDbStorageVaultDataSource())
	tfresource.RegisterDatasource("oci_database_exascale_db_storage_vaults", DatabaseExascaleDbStorageVaultsDataSource())
	tfresource.RegisterDatasource("oci_database_external_container_database", DatabaseExternalContainerDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_external_container_databases", DatabaseExternalContainerDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_external_database_connector", DatabaseExternalDatabaseConnectorDataSource())
	tfresource.RegisterDatasource("oci_database_external_database_connectors", DatabaseExternalDatabaseConnectorsDataSource())
	tfresource.RegisterDatasource("oci_database_external_non_container_database", DatabaseExternalNonContainerDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_external_non_container_databases", DatabaseExternalNonContainerDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_external_pluggable_database", DatabaseExternalPluggableDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_external_pluggable_databases", DatabaseExternalPluggableDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_flex_components", DatabaseFlexComponentsDataSource())
	tfresource.RegisterDatasource("oci_database_gi_version_minor_versions", DatabaseGiVersionMinorVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_gi_versions", DatabaseGiVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_infrastructure_target_version", DatabaseInfrastructureTargetVersionDataSource())
	tfresource.RegisterDatasource("oci_database_key_store", DatabaseKeyStoreDataSource())
	tfresource.RegisterDatasource("oci_database_key_stores", DatabaseKeyStoresDataSource())
	tfresource.RegisterDatasource("oci_database_maintenance_run", DatabaseMaintenanceRunDataSource())
	tfresource.RegisterDatasource("oci_database_maintenance_run_histories", DatabaseMaintenanceRunHistoriesDataSource())
	tfresource.RegisterDatasource("oci_database_maintenance_run_history", DatabaseMaintenanceRunHistoryDataSource())
	tfresource.RegisterDatasource("oci_database_maintenance_runs", DatabaseMaintenanceRunsDataSource())
	tfresource.RegisterDatasource("oci_database_oneoff_patch", DatabaseOneoffPatchDataSource())
	tfresource.RegisterDatasource("oci_database_oneoff_patches", DatabaseOneoffPatchesDataSource())
	tfresource.RegisterDatasource("oci_database_pluggable_database", DatabasePluggableDatabaseDataSource())
	tfresource.RegisterDatasource("oci_database_pluggable_databases", DatabasePluggableDatabasesDataSource())
	tfresource.RegisterDatasource("oci_database_system_versions", DatabaseSystemVersionsDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster", DatabaseVmClusterDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_network", DatabaseVmClusterNetworkDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_network_download_config_file", DatabaseVmClusterNetworkDownloadConfigFileDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_networks", DatabaseVmClusterNetworksDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_patch", DatabaseVmClusterPatchDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_patch_history_entries", DatabaseVmClusterPatchHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_patch_history_entry", DatabaseVmClusterPatchHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_patches", DatabaseVmClusterPatchesDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_recommended_network", DatabaseVmClusterRecommendedNetworkDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_update", DatabaseVmClusterUpdateDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_update_history_entries", DatabaseVmClusterUpdateHistoryEntriesDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_update_history_entry", DatabaseVmClusterUpdateHistoryEntryDataSource())
	tfresource.RegisterDatasource("oci_database_vm_cluster_updates", DatabaseVmClusterUpdatesDataSource())
	tfresource.RegisterDatasource("oci_database_vm_clusters", DatabaseVmClustersDataSource())
	tfresource.RegisterDatasource("oci_database_db_system_compute_performances", DatabaseDbSystemComputePerformancesDataSource())
	tfresource.RegisterDatasource("oci_database_db_system_storage_performances", DatabaseDbSystemStoragePerformancesDataSource())
	tfresource.RegisterDatasource("oci_database_autonomous_database_dataguard_association", DatabaseAutonomousDatabaseDataguardAssociationDataSource())
}
