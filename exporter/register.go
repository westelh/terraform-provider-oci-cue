package main

import (
	tf_adm "github.com/westelh/terraform-provider-oci-cue/internal/service/adm"
	tf_ai_anomaly_detection "github.com/westelh/terraform-provider-oci-cue/internal/service/ai_anomaly_detection"
	tf_ai_document "github.com/westelh/terraform-provider-oci-cue/internal/service/ai_document"
	tf_ai_language "github.com/westelh/terraform-provider-oci-cue/internal/service/ai_language"
	tf_ai_vision "github.com/westelh/terraform-provider-oci-cue/internal/service/ai_vision"
	tf_analytics "github.com/westelh/terraform-provider-oci-cue/internal/service/analytics"
	tf_announcements_service "github.com/westelh/terraform-provider-oci-cue/internal/service/announcements_service"
	tf_apigateway "github.com/westelh/terraform-provider-oci-cue/internal/service/apigateway"
	tf_apm "github.com/westelh/terraform-provider-oci-cue/internal/service/apm"
	tf_apm_config "github.com/westelh/terraform-provider-oci-cue/internal/service/apm_config"
	tf_apm_synthetics "github.com/westelh/terraform-provider-oci-cue/internal/service/apm_synthetics"
	tf_apm_traces "github.com/westelh/terraform-provider-oci-cue/internal/service/apm_traces"
	tf_appmgmt_control "github.com/westelh/terraform-provider-oci-cue/internal/service/appmgmt_control"
	tf_artifacts "github.com/westelh/terraform-provider-oci-cue/internal/service/artifacts"
	tf_audit "github.com/westelh/terraform-provider-oci-cue/internal/service/audit"
	tf_autoscaling "github.com/westelh/terraform-provider-oci-cue/internal/service/autoscaling"
	tf_bastion "github.com/westelh/terraform-provider-oci-cue/internal/service/bastion"
	tf_bds "github.com/westelh/terraform-provider-oci-cue/internal/service/bds"
	tf_blockchain "github.com/westelh/terraform-provider-oci-cue/internal/service/blockchain"
	tf_budget "github.com/westelh/terraform-provider-oci-cue/internal/service/budget"
	tf_capacity_management "github.com/westelh/terraform-provider-oci-cue/internal/service/capacity_management"
	tf_certificates_management "github.com/westelh/terraform-provider-oci-cue/internal/service/certificates_management"
	tf_cloud_bridge "github.com/westelh/terraform-provider-oci-cue/internal/service/cloud_bridge"
	tf_cloud_guard "github.com/westelh/terraform-provider-oci-cue/internal/service/cloud_guard"
	tf_cloud_migrations "github.com/westelh/terraform-provider-oci-cue/internal/service/cloud_migrations"
	tf_cluster_placement_groups "github.com/westelh/terraform-provider-oci-cue/internal/service/cluster_placement_groups"
	tf_compute_cloud_at_customer "github.com/westelh/terraform-provider-oci-cue/internal/service/compute_cloud_at_customer"
	tf_computeinstanceagent "github.com/westelh/terraform-provider-oci-cue/internal/service/computeinstanceagent"
	tf_container_instances "github.com/westelh/terraform-provider-oci-cue/internal/service/container_instances"
	tf_containerengine "github.com/westelh/terraform-provider-oci-cue/internal/service/containerengine"
	tf_core "github.com/westelh/terraform-provider-oci-cue/internal/service/core"
	tf_data_labeling_service "github.com/westelh/terraform-provider-oci-cue/internal/service/data_labeling_service"
	tf_data_safe "github.com/westelh/terraform-provider-oci-cue/internal/service/data_safe"
	tf_database "github.com/westelh/terraform-provider-oci-cue/internal/service/database"
	tf_database_management "github.com/westelh/terraform-provider-oci-cue/internal/service/database_management"
	tf_database_migration "github.com/westelh/terraform-provider-oci-cue/internal/service/database_migration"
	tf_database_tools "github.com/westelh/terraform-provider-oci-cue/internal/service/database_tools"
	tf_datacatalog "github.com/westelh/terraform-provider-oci-cue/internal/service/datacatalog"
	tf_dataflow "github.com/westelh/terraform-provider-oci-cue/internal/service/dataflow"
	tf_dataintegration "github.com/westelh/terraform-provider-oci-cue/internal/service/dataintegration"
	tf_datascience "github.com/westelh/terraform-provider-oci-cue/internal/service/datascience"
	tf_delegate_access_control "github.com/westelh/terraform-provider-oci-cue/internal/service/delegate_access_control"
	tf_demand_signal "github.com/westelh/terraform-provider-oci-cue/internal/service/demand_signal"
	tf_desktops "github.com/westelh/terraform-provider-oci-cue/internal/service/desktops"
	tf_devops "github.com/westelh/terraform-provider-oci-cue/internal/service/devops"
	tf_disaster_recovery "github.com/westelh/terraform-provider-oci-cue/internal/service/disaster_recovery"
	tf_dns "github.com/westelh/terraform-provider-oci-cue/internal/service/dns"
	tf_em_warehouse "github.com/westelh/terraform-provider-oci-cue/internal/service/em_warehouse"
	tf_email "github.com/westelh/terraform-provider-oci-cue/internal/service/email"
	tf_events "github.com/westelh/terraform-provider-oci-cue/internal/service/events"
	tf_file_storage "github.com/westelh/terraform-provider-oci-cue/internal/service/file_storage"
	tf_fleet_apps_management "github.com/westelh/terraform-provider-oci-cue/internal/service/fleet_apps_management"
	tf_fleet_software_update "github.com/westelh/terraform-provider-oci-cue/internal/service/fleet_software_update"
	tf_functions "github.com/westelh/terraform-provider-oci-cue/internal/service/functions"
	tf_fusion_apps "github.com/westelh/terraform-provider-oci-cue/internal/service/fusion_apps"
	tf_generative_ai "github.com/westelh/terraform-provider-oci-cue/internal/service/generative_ai"
	tf_generative_ai_agent "github.com/westelh/terraform-provider-oci-cue/internal/service/generative_ai_agent"
	tf_generic_artifacts_content "github.com/westelh/terraform-provider-oci-cue/internal/service/generic_artifacts_content"
	tf_globally_distributed_database "github.com/westelh/terraform-provider-oci-cue/internal/service/globally_distributed_database"
	tf_golden_gate "github.com/westelh/terraform-provider-oci-cue/internal/service/golden_gate"
	tf_health_checks "github.com/westelh/terraform-provider-oci-cue/internal/service/health_checks"
	tf_identity "github.com/westelh/terraform-provider-oci-cue/internal/service/identity"
	tf_identity_data_plane "github.com/westelh/terraform-provider-oci-cue/internal/service/identity_data_plane"
	tf_identity_domains "github.com/westelh/terraform-provider-oci-cue/internal/service/identity_domains"
	tf_integration "github.com/westelh/terraform-provider-oci-cue/internal/service/integration"
	tf_jms "github.com/westelh/terraform-provider-oci-cue/internal/service/jms"
	tf_jms_java_downloads "github.com/westelh/terraform-provider-oci-cue/internal/service/jms_java_downloads"
	tf_kms "github.com/westelh/terraform-provider-oci-cue/internal/service/kms"
	tf_license_manager "github.com/westelh/terraform-provider-oci-cue/internal/service/license_manager"
	tf_limits "github.com/westelh/terraform-provider-oci-cue/internal/service/limits"
	tf_load_balancer "github.com/westelh/terraform-provider-oci-cue/internal/service/load_balancer"
	tf_log_analytics "github.com/westelh/terraform-provider-oci-cue/internal/service/log_analytics"
	tf_logging "github.com/westelh/terraform-provider-oci-cue/internal/service/logging"
	tf_management_agent "github.com/westelh/terraform-provider-oci-cue/internal/service/management_agent"
	tf_management_dashboard "github.com/westelh/terraform-provider-oci-cue/internal/service/management_dashboard"
	tf_marketplace "github.com/westelh/terraform-provider-oci-cue/internal/service/marketplace"
	tf_media_services "github.com/westelh/terraform-provider-oci-cue/internal/service/media_services"
	tf_metering_computation "github.com/westelh/terraform-provider-oci-cue/internal/service/metering_computation"
	tf_monitoring "github.com/westelh/terraform-provider-oci-cue/internal/service/monitoring"
	tf_mysql "github.com/westelh/terraform-provider-oci-cue/internal/service/mysql"
	tf_network_firewall "github.com/westelh/terraform-provider-oci-cue/internal/service/network_firewall"
	tf_network_load_balancer "github.com/westelh/terraform-provider-oci-cue/internal/service/network_load_balancer"
	tf_nosql "github.com/westelh/terraform-provider-oci-cue/internal/service/nosql"
	tf_objectstorage "github.com/westelh/terraform-provider-oci-cue/internal/service/objectstorage"
	tf_oce "github.com/westelh/terraform-provider-oci-cue/internal/service/oce"
	tf_ocvp "github.com/westelh/terraform-provider-oci-cue/internal/service/ocvp"
	tf_oda "github.com/westelh/terraform-provider-oci-cue/internal/service/oda"
	tf_onesubscription "github.com/westelh/terraform-provider-oci-cue/internal/service/onesubscription"
	tf_ons "github.com/westelh/terraform-provider-oci-cue/internal/service/ons"
	tf_opa "github.com/westelh/terraform-provider-oci-cue/internal/service/opa"
	tf_opensearch "github.com/westelh/terraform-provider-oci-cue/internal/service/opensearch"
	tf_operator_access_control "github.com/westelh/terraform-provider-oci-cue/internal/service/operator_access_control"
	tf_opsi "github.com/westelh/terraform-provider-oci-cue/internal/service/opsi"
	tf_optimizer "github.com/westelh/terraform-provider-oci-cue/internal/service/optimizer"
	tf_os_management_hub "github.com/westelh/terraform-provider-oci-cue/internal/service/os_management_hub"
	tf_osmanagement "github.com/westelh/terraform-provider-oci-cue/internal/service/osmanagement"
	tf_osp_gateway "github.com/westelh/terraform-provider-oci-cue/internal/service/osp_gateway"
	tf_osub_billing_schedule "github.com/westelh/terraform-provider-oci-cue/internal/service/osub_billing_schedule"
	tf_osub_organization_subscription "github.com/westelh/terraform-provider-oci-cue/internal/service/osub_organization_subscription"
	tf_osub_subscription "github.com/westelh/terraform-provider-oci-cue/internal/service/osub_subscription"
	tf_osub_usage "github.com/westelh/terraform-provider-oci-cue/internal/service/osub_usage"
	tf_psql "github.com/westelh/terraform-provider-oci-cue/internal/service/psql"
	tf_queue "github.com/westelh/terraform-provider-oci-cue/internal/service/queue"
	tf_recovery "github.com/westelh/terraform-provider-oci-cue/internal/service/recovery"
	tf_redis "github.com/westelh/terraform-provider-oci-cue/internal/service/redis"
	tf_resource_scheduler "github.com/westelh/terraform-provider-oci-cue/internal/service/resource_scheduler"
	tf_resourcemanager "github.com/westelh/terraform-provider-oci-cue/internal/service/resourcemanager"
	tf_sch "github.com/westelh/terraform-provider-oci-cue/internal/service/sch"
	tf_secrets "github.com/westelh/terraform-provider-oci-cue/internal/service/secrets"
	tf_security_attribute "github.com/westelh/terraform-provider-oci-cue/internal/service/security_attribute"
	tf_service_catalog "github.com/westelh/terraform-provider-oci-cue/internal/service/service_catalog"
	tf_service_manager_proxy "github.com/westelh/terraform-provider-oci-cue/internal/service/service_manager_proxy"
	tf_service_mesh "github.com/westelh/terraform-provider-oci-cue/internal/service/service_mesh"
	tf_stack_monitoring "github.com/westelh/terraform-provider-oci-cue/internal/service/stack_monitoring"
	tf_streaming "github.com/westelh/terraform-provider-oci-cue/internal/service/streaming"
	tf_usage_proxy "github.com/westelh/terraform-provider-oci-cue/internal/service/usage_proxy"
	tf_vault "github.com/westelh/terraform-provider-oci-cue/internal/service/vault"
	tf_vbs_inst "github.com/westelh/terraform-provider-oci-cue/internal/service/vbs_inst"
	tf_visual_builder "github.com/westelh/terraform-provider-oci-cue/internal/service/visual_builder"
	tf_vn_monitoring "github.com/westelh/terraform-provider-oci-cue/internal/service/vn_monitoring"
	tf_vulnerability_scanning "github.com/westelh/terraform-provider-oci-cue/internal/service/vulnerability_scanning"
	tf_waa "github.com/westelh/terraform-provider-oci-cue/internal/service/waa"
	tf_waas "github.com/westelh/terraform-provider-oci-cue/internal/service/waas"
	tf_waf "github.com/westelh/terraform-provider-oci-cue/internal/service/waf"
	tf_zpr "github.com/westelh/terraform-provider-oci-cue/internal/service/zpr"
)

func RegisterService(name string) bool {
	switch name {
	case "adm":
		tf_adm.RegisterResource()
		tf_adm.RegisterDatasource()
		return true
	case "ai_anomaly_detection":
		tf_ai_anomaly_detection.RegisterResource()
		tf_ai_anomaly_detection.RegisterDatasource()
		return true
	case "ai_document":
		tf_ai_document.RegisterResource()
		tf_ai_document.RegisterDatasource()
		return true
	case "ai_language":
		tf_ai_language.RegisterResource()
		tf_ai_language.RegisterDatasource()
		return true
	case "ai_vision":
		tf_ai_vision.RegisterResource()
		tf_ai_vision.RegisterDatasource()
		return true
	case "analytics":
		tf_analytics.RegisterResource()
		tf_analytics.RegisterDatasource()
		return true
	case "announcements_service":
		tf_announcements_service.RegisterResource()
		tf_announcements_service.RegisterDatasource()
		return true
	case "apigateway":
		tf_apigateway.RegisterResource()
		tf_apigateway.RegisterDatasource()
		return true
	case "apm":
		tf_apm.RegisterResource()
		tf_apm.RegisterDatasource()
		return true
	case "apm_config":
		tf_apm_config.RegisterResource()
		tf_apm_config.RegisterDatasource()
		return true
	case "apm_synthetics":
		tf_apm_synthetics.RegisterResource()
		tf_apm_synthetics.RegisterDatasource()
		return true
	case "apm_traces":
		tf_apm_traces.RegisterResource()
		tf_apm_traces.RegisterDatasource()
		return true
	case "appmgmt_control":
		tf_appmgmt_control.RegisterResource()
		tf_appmgmt_control.RegisterDatasource()
		return true
	case "artifacts":
		tf_artifacts.RegisterResource()
		tf_artifacts.RegisterDatasource()
		return true
	case "audit":
		tf_audit.RegisterResource()
		tf_audit.RegisterDatasource()
		return true
	case "autoscaling":
		tf_autoscaling.RegisterResource()
		tf_autoscaling.RegisterDatasource()
		return true
	case "bastion":
		tf_bastion.RegisterResource()
		tf_bastion.RegisterDatasource()
		return true
	case "bds":
		tf_bds.RegisterResource()
		tf_bds.RegisterDatasource()
		return true
	case "blockchain":
		tf_blockchain.RegisterResource()
		tf_blockchain.RegisterDatasource()
		return true
	case "budget":
		tf_budget.RegisterResource()
		tf_budget.RegisterDatasource()
		return true
	case "capacity_management":
		tf_capacity_management.RegisterResource()
		tf_capacity_management.RegisterDatasource()
		return true
	case "certificates_management":
		tf_certificates_management.RegisterResource()
		tf_certificates_management.RegisterDatasource()
		return true
	case "cloud_bridge":
		tf_cloud_bridge.RegisterResource()
		tf_cloud_bridge.RegisterDatasource()
		return true
	case "cloud_guard":
		tf_cloud_guard.RegisterResource()
		tf_cloud_guard.RegisterDatasource()
		return true
	case "cloud_migrations":
		tf_cloud_migrations.RegisterResource()
		tf_cloud_migrations.RegisterDatasource()
		return true
	case "cluster_placement_groups":
		tf_cluster_placement_groups.RegisterResource()
		tf_cluster_placement_groups.RegisterDatasource()
		return true
	case "compute_cloud_at_customer":
		tf_compute_cloud_at_customer.RegisterResource()
		tf_compute_cloud_at_customer.RegisterDatasource()
		return true
	case "computeinstanceagent":
		tf_computeinstanceagent.RegisterResource()
		tf_computeinstanceagent.RegisterDatasource()
		return true
	case "container_instances":
		tf_container_instances.RegisterResource()
		tf_container_instances.RegisterDatasource()
		return true
	case "containerengine":
		tf_containerengine.RegisterResource()
		tf_containerengine.RegisterDatasource()
		return true
	case "core":
		tf_core.RegisterResource()
		tf_core.RegisterDatasource()
		return true
	case "data_labeling_service":
		tf_data_labeling_service.RegisterResource()
		tf_data_labeling_service.RegisterDatasource()
		return true
	case "data_safe":
		tf_data_safe.RegisterResource()
		tf_data_safe.RegisterDatasource()
		return true
	case "database":
		tf_database.RegisterResource()
		tf_database.RegisterDatasource()
		return true
	case "database_management":
		tf_database_management.RegisterResource()
		tf_database_management.RegisterDatasource()
		return true
	case "database_migration":
		tf_database_migration.RegisterResource()
		tf_database_migration.RegisterDatasource()
		return true
	case "database_tools":
		tf_database_tools.RegisterResource()
		tf_database_tools.RegisterDatasource()
		return true
	case "datacatalog":
		tf_datacatalog.RegisterResource()
		tf_datacatalog.RegisterDatasource()
		return true
	case "dataflow":
		tf_dataflow.RegisterResource()
		tf_dataflow.RegisterDatasource()
		return true
	case "dataintegration":
		tf_dataintegration.RegisterResource()
		tf_dataintegration.RegisterDatasource()
		return true
	case "datascience":
		tf_datascience.RegisterResource()
		tf_datascience.RegisterDatasource()
		return true
	case "delegate_access_control":
		tf_delegate_access_control.RegisterResource()
		tf_delegate_access_control.RegisterDatasource()
		return true
	case "demand_signal":
		tf_demand_signal.RegisterResource()
		tf_demand_signal.RegisterDatasource()
		return true
	case "desktops":
		tf_desktops.RegisterResource()
		tf_desktops.RegisterDatasource()
		return true
	case "devops":
		tf_devops.RegisterResource()
		tf_devops.RegisterDatasource()
		return true
	case "disaster_recovery":
		tf_disaster_recovery.RegisterResource()
		tf_disaster_recovery.RegisterDatasource()
		return true
	case "dns":
		tf_dns.RegisterResource()
		tf_dns.RegisterDatasource()
		return true
	case "em_warehouse":
		tf_em_warehouse.RegisterResource()
		tf_em_warehouse.RegisterDatasource()
		return true
	case "email":
		tf_email.RegisterResource()
		tf_email.RegisterDatasource()
		return true
	case "events":
		tf_events.RegisterResource()
		tf_events.RegisterDatasource()
		return true
	case "file_storage":
		tf_file_storage.RegisterResource()
		tf_file_storage.RegisterDatasource()
		return true
	case "fleet_apps_management":
		tf_fleet_apps_management.RegisterResource()
		tf_fleet_apps_management.RegisterDatasource()
		return true
	case "fleet_software_update":
		tf_fleet_software_update.RegisterResource()
		tf_fleet_software_update.RegisterDatasource()
		return true
	case "functions":
		tf_functions.RegisterResource()
		tf_functions.RegisterDatasource()
		return true
	case "fusion_apps":
		tf_fusion_apps.RegisterResource()
		tf_fusion_apps.RegisterDatasource()
		return true
	case "generative_ai":
		tf_generative_ai.RegisterResource()
		tf_generative_ai.RegisterDatasource()
		return true
	case "generative_ai_agent":
		tf_generative_ai_agent.RegisterResource()
		tf_generative_ai_agent.RegisterDatasource()
		return true
	case "generic_artifacts_content":
		tf_generic_artifacts_content.RegisterResource()
		tf_generic_artifacts_content.RegisterDatasource()
		return true
	case "globally_distributed_database":
		tf_globally_distributed_database.RegisterResource()
		tf_globally_distributed_database.RegisterDatasource()
		return true
	case "golden_gate":
		tf_golden_gate.RegisterResource()
		tf_golden_gate.RegisterDatasource()
		return true
	case "health_checks":
		tf_health_checks.RegisterResource()
		tf_health_checks.RegisterDatasource()
		return true
	case "identity":
		tf_identity.RegisterResource()
		tf_identity.RegisterDatasource()
		return true
	case "identity_data_plane":
		tf_identity_data_plane.RegisterResource()
		tf_identity_data_plane.RegisterDatasource()
		return true
	case "identity_domains":
		tf_identity_domains.RegisterResource()
		tf_identity_domains.RegisterDatasource()
		return true
	case "integration":
		tf_integration.RegisterResource()
		tf_integration.RegisterDatasource()
		return true
	case "jms":
		tf_jms.RegisterResource()
		tf_jms.RegisterDatasource()
		return true
	case "jms_java_downloads":
		tf_jms_java_downloads.RegisterResource()
		tf_jms_java_downloads.RegisterDatasource()
		return true
	case "kms":
		tf_kms.RegisterResource()
		tf_kms.RegisterDatasource()
		return true
	case "license_manager":
		tf_license_manager.RegisterResource()
		tf_license_manager.RegisterDatasource()
		return true
	case "limits":
		tf_limits.RegisterResource()
		tf_limits.RegisterDatasource()
		return true
	case "load_balancer":
		tf_load_balancer.RegisterResource()
		tf_load_balancer.RegisterDatasource()
		return true
	case "log_analytics":
		tf_log_analytics.RegisterResource()
		tf_log_analytics.RegisterDatasource()
		return true
	case "logging":
		tf_logging.RegisterResource()
		tf_logging.RegisterDatasource()
		return true
	case "management_agent":
		tf_management_agent.RegisterResource()
		tf_management_agent.RegisterDatasource()
		return true
	case "management_dashboard":
		tf_management_dashboard.RegisterResource()
		tf_management_dashboard.RegisterDatasource()
		return true
	case "marketplace":
		tf_marketplace.RegisterResource()
		tf_marketplace.RegisterDatasource()
		return true
	case "media_services":
		tf_media_services.RegisterResource()
		tf_media_services.RegisterDatasource()
		return true
	case "metering_computation":
		tf_metering_computation.RegisterResource()
		tf_metering_computation.RegisterDatasource()
		return true
	case "monitoring":
		tf_monitoring.RegisterResource()
		tf_monitoring.RegisterDatasource()
		return true
	case "mysql":
		tf_mysql.RegisterResource()
		tf_mysql.RegisterDatasource()
		return true
	case "network_firewall":
		tf_network_firewall.RegisterResource()
		tf_network_firewall.RegisterDatasource()
		return true
	case "network_load_balancer":
		tf_network_load_balancer.RegisterResource()
		tf_network_load_balancer.RegisterDatasource()
		return true
	case "nosql":
		tf_nosql.RegisterResource()
		tf_nosql.RegisterDatasource()
		return true
	case "objectstorage":
		tf_objectstorage.RegisterResource()
		tf_objectstorage.RegisterDatasource()
		return true
	case "oce":
		tf_oce.RegisterResource()
		tf_oce.RegisterDatasource()
		return true
	case "ocvp":
		tf_ocvp.RegisterResource()
		tf_ocvp.RegisterDatasource()
		return true
	case "oda":
		tf_oda.RegisterResource()
		tf_oda.RegisterDatasource()
		return true
	case "onesubscription":
		tf_onesubscription.RegisterResource()
		tf_onesubscription.RegisterDatasource()
		return true
	case "ons":
		tf_ons.RegisterResource()
		tf_ons.RegisterDatasource()
		return true
	case "opa":
		tf_opa.RegisterResource()
		tf_opa.RegisterDatasource()
		return true
	case "opensearch":
		tf_opensearch.RegisterResource()
		tf_opensearch.RegisterDatasource()
		return true
	case "operator_access_control":
		tf_operator_access_control.RegisterResource()
		tf_operator_access_control.RegisterDatasource()
		return true
	case "opsi":
		tf_opsi.RegisterResource()
		tf_opsi.RegisterDatasource()
		return true
	case "optimizer":
		tf_optimizer.RegisterResource()
		tf_optimizer.RegisterDatasource()
		return true
	case "os_management_hub":
		tf_os_management_hub.RegisterResource()
		tf_os_management_hub.RegisterDatasource()
		return true
	case "osmanagement":
		tf_osmanagement.RegisterResource()
		tf_osmanagement.RegisterDatasource()
		return true
	case "osp_gateway":
		tf_osp_gateway.RegisterResource()
		tf_osp_gateway.RegisterDatasource()
		return true
	case "osub_billing_schedule":
		tf_osub_billing_schedule.RegisterResource()
		tf_osub_billing_schedule.RegisterDatasource()
		return true
	case "osub_organization_subscription":
		tf_osub_organization_subscription.RegisterResource()
		tf_osub_organization_subscription.RegisterDatasource()
		return true
	case "osub_subscription":
		tf_osub_subscription.RegisterResource()
		tf_osub_subscription.RegisterDatasource()
		return true
	case "osub_usage":
		tf_osub_usage.RegisterResource()
		tf_osub_usage.RegisterDatasource()
		return true
	case "psql":
		tf_psql.RegisterResource()
		tf_psql.RegisterDatasource()
		return true
	case "queue":
		tf_queue.RegisterResource()
		tf_queue.RegisterDatasource()
		return true
	case "recovery":
		tf_recovery.RegisterResource()
		tf_recovery.RegisterDatasource()
		return true
	case "redis":
		tf_redis.RegisterResource()
		tf_redis.RegisterDatasource()
		return true
	case "resource_scheduler":
		tf_resource_scheduler.RegisterResource()
		tf_resource_scheduler.RegisterDatasource()
		return true
	case "resourcemanager":
		tf_resourcemanager.RegisterResource()
		tf_resourcemanager.RegisterDatasource()
		return true
	case "sch":
		tf_sch.RegisterResource()
		tf_sch.RegisterDatasource()
		return true
	case "secrets":
		tf_secrets.RegisterResource()
		tf_secrets.RegisterDatasource()
		return true
	case "security_attribute":
		tf_security_attribute.RegisterResource()
		tf_security_attribute.RegisterDatasource()
		return true
	case "service_catalog":
		tf_service_catalog.RegisterResource()
		tf_service_catalog.RegisterDatasource()
		return true
	case "service_manager_proxy":
		tf_service_manager_proxy.RegisterResource()
		tf_service_manager_proxy.RegisterDatasource()
		return true
	case "service_mesh":
		tf_service_mesh.RegisterResource()
		tf_service_mesh.RegisterDatasource()
		return true
	case "stack_monitoring":
		tf_stack_monitoring.RegisterResource()
		tf_stack_monitoring.RegisterDatasource()
		return true
	case "streaming":
		tf_streaming.RegisterResource()
		tf_streaming.RegisterDatasource()
		return true
	case "usage_proxy":
		tf_usage_proxy.RegisterResource()
		tf_usage_proxy.RegisterDatasource()
		return true
	case "vault":
		tf_vault.RegisterResource()
		tf_vault.RegisterDatasource()
		return true
	case "vbs_inst":
		tf_vbs_inst.RegisterResource()
		tf_vbs_inst.RegisterDatasource()
		return true
	case "visual_builder":
		tf_visual_builder.RegisterResource()
		tf_visual_builder.RegisterDatasource()
		return true
	case "vn_monitoring":
		tf_vn_monitoring.RegisterResource()
		tf_vn_monitoring.RegisterDatasource()
		return true
	case "vulnerability_scanning":
		tf_vulnerability_scanning.RegisterResource()
		tf_vulnerability_scanning.RegisterDatasource()
		return true
	case "waa":
		tf_waa.RegisterResource()
		tf_waa.RegisterDatasource()
		return true
	case "waas":
		tf_waas.RegisterResource()
		tf_waas.RegisterDatasource()
		return true
	case "waf":
		tf_waf.RegisterResource()
		tf_waf.RegisterDatasource()
		return true
	case "zpr":
		tf_zpr.RegisterResource()
		tf_zpr.RegisterDatasource()
		return true
	}
	return false
}
