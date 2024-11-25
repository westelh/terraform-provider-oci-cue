// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package provider

import (
	"github.com/oracle/oci-go-sdk/v65/common"
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

func init() {
	if common.CheckForEnabledServices("adm") {
		tf_adm.RegisterResource()
	}
	if common.CheckForEnabledServices("aianomalydetection") {
		tf_ai_anomaly_detection.RegisterResource()
	}
	if common.CheckForEnabledServices("aidocument") {
		tf_ai_document.RegisterResource()
	}
	if common.CheckForEnabledServices("ailanguage") {
		tf_ai_language.RegisterResource()
	}
	if common.CheckForEnabledServices("aivision") {
		tf_ai_vision.RegisterResource()
	}
	if common.CheckForEnabledServices("analytics") {
		tf_analytics.RegisterResource()
	}
	if common.CheckForEnabledServices("announcementsservice") {
		tf_announcements_service.RegisterResource()
	}
	if common.CheckForEnabledServices("apigateway") {
		tf_apigateway.RegisterResource()
	}
	if common.CheckForEnabledServices("apm") {
		tf_apm.RegisterResource()
	}
	if common.CheckForEnabledServices("apmconfig") {
		tf_apm_config.RegisterResource()
	}
	if common.CheckForEnabledServices("apmsynthetics") {
		tf_apm_synthetics.RegisterResource()
	}
	if common.CheckForEnabledServices("apmtraces") {
		tf_apm_traces.RegisterResource()
	}
	if common.CheckForEnabledServices("appmgmtcontrol") {
		tf_appmgmt_control.RegisterResource()
	}
	if common.CheckForEnabledServices("artifacts") {
		tf_artifacts.RegisterResource()
	}
	if common.CheckForEnabledServices("audit") {
		tf_audit.RegisterResource()
	}
	if common.CheckForEnabledServices("autoscaling") {
		tf_autoscaling.RegisterResource()
	}
	if common.CheckForEnabledServices("bastion") {
		tf_bastion.RegisterResource()
	}
	if common.CheckForEnabledServices("bds") {
		tf_bds.RegisterResource()
	}
	if common.CheckForEnabledServices("blockchain") {
		tf_blockchain.RegisterResource()
	}
	if common.CheckForEnabledServices("budget") {
		tf_budget.RegisterResource()
	}
	if common.CheckForEnabledServices("capacitymanagement") {
		tf_capacity_management.RegisterResource()
	}
	if common.CheckForEnabledServices("certificatesmanagement") {
		tf_certificates_management.RegisterResource()
	}
	if common.CheckForEnabledServices("cloudbridge") {
		tf_cloud_bridge.RegisterResource()
	}
	if common.CheckForEnabledServices("cloudguard") {
		tf_cloud_guard.RegisterResource()
	}
	if common.CheckForEnabledServices("cloudmigrations") {
		tf_cloud_migrations.RegisterResource()
	}
	if common.CheckForEnabledServices("clusterplacementgroups") {
		tf_cluster_placement_groups.RegisterResource()
	}
	if common.CheckForEnabledServices("computecloudatcustomer") {
		tf_compute_cloud_at_customer.RegisterResource()
	}
	if common.CheckForEnabledServices("computeinstanceagent") {
		tf_computeinstanceagent.RegisterResource()
	}
	if common.CheckForEnabledServices("containerinstances") {
		tf_container_instances.RegisterResource()
	}
	if common.CheckForEnabledServices("containerengine") {
		tf_containerengine.RegisterResource()
	}
	if common.CheckForEnabledServices("core") {
		tf_core.RegisterResource()
	}
	if common.CheckForEnabledServices("datalabelingservice") {
		tf_data_labeling_service.RegisterResource()
	}
	if common.CheckForEnabledServices("datasafe") {
		tf_data_safe.RegisterResource()
	}
	if common.CheckForEnabledServices("database") {
		tf_database.RegisterResource()
	}
	if common.CheckForEnabledServices("databasemanagement") {
		tf_database_management.RegisterResource()
	}
	if common.CheckForEnabledServices("databasemigration") {
		tf_database_migration.RegisterResource()
	}
	if common.CheckForEnabledServices("databasetools") {
		tf_database_tools.RegisterResource()
	}
	if common.CheckForEnabledServices("datacatalog") {
		tf_datacatalog.RegisterResource()
	}
	if common.CheckForEnabledServices("dataflow") {
		tf_dataflow.RegisterResource()
	}
	if common.CheckForEnabledServices("dataintegration") {
		tf_dataintegration.RegisterResource()
	}
	if common.CheckForEnabledServices("datascience") {
		tf_datascience.RegisterResource()
	}
	if common.CheckForEnabledServices("delegateaccesscontrol") {
		tf_delegate_access_control.RegisterResource()
	}
	if common.CheckForEnabledServices("demandsignal") {
		tf_demand_signal.RegisterResource()
	}
	if common.CheckForEnabledServices("desktops") {
		tf_desktops.RegisterResource()
	}
	if common.CheckForEnabledServices("devops") {
		tf_devops.RegisterResource()
	}
	if common.CheckForEnabledServices("disasterrecovery") {
		tf_disaster_recovery.RegisterResource()
	}
	if common.CheckForEnabledServices("dns") {
		tf_dns.RegisterResource()
	}
	if common.CheckForEnabledServices("emwarehouse") {
		tf_em_warehouse.RegisterResource()
	}
	if common.CheckForEnabledServices("email") {
		tf_email.RegisterResource()
	}
	if common.CheckForEnabledServices("events") {
		tf_events.RegisterResource()
	}
	if common.CheckForEnabledServices("filestorage") {
		tf_file_storage.RegisterResource()
	}
	if common.CheckForEnabledServices("fleetsoftwareupdate") {
		tf_fleet_software_update.RegisterResource()
	}
	if common.CheckForEnabledServices("fleetappsmanagement") {
		tf_fleet_apps_management.RegisterResource()
	}
	if common.CheckForEnabledServices("functions") {
		tf_functions.RegisterResource()
	}
	if common.CheckForEnabledServices("fusionapps") {
		tf_fusion_apps.RegisterResource()
	}
	if common.CheckForEnabledServices("generativeai") {
		tf_generative_ai.RegisterResource()
	}
	if common.CheckForEnabledServices("generativeaiagent") {
		tf_generative_ai_agent.RegisterResource()
	}
	if common.CheckForEnabledServices("genericartifactscontent") {
		tf_generic_artifacts_content.RegisterResource()
	}
	if common.CheckForEnabledServices("globallydistributeddatabase") {
		tf_globally_distributed_database.RegisterResource()
	}
	if common.CheckForEnabledServices("goldengate") {
		tf_golden_gate.RegisterResource()
	}
	if common.CheckForEnabledServices("healthchecks") {
		tf_health_checks.RegisterResource()
	}
	if common.CheckForEnabledServices("identity") {
		tf_identity.RegisterResource()
	}
	if common.CheckForEnabledServices("identitydataplane") {
		tf_identity_data_plane.RegisterResource()
	}
	if common.CheckForEnabledServices("identitydomains") {
		tf_identity_domains.RegisterResource()
	}
	if common.CheckForEnabledServices("integration") {
		tf_integration.RegisterResource()
	}
	if common.CheckForEnabledServices("jms") {
		tf_jms.RegisterResource()
	}
	if common.CheckForEnabledServices("jmsjavadownloads") {
		tf_jms_java_downloads.RegisterResource()
	}
	if common.CheckForEnabledServices("kms") {
		tf_kms.RegisterResource()
	}
	if common.CheckForEnabledServices("licensemanager") {
		tf_license_manager.RegisterResource()
	}
	if common.CheckForEnabledServices("limits") {
		tf_limits.RegisterResource()
	}
	if common.CheckForEnabledServices("loadbalancer") {
		tf_load_balancer.RegisterResource()
	}
	if common.CheckForEnabledServices("loganalytics") {
		tf_log_analytics.RegisterResource()
	}
	if common.CheckForEnabledServices("logging") {
		tf_logging.RegisterResource()
	}
	if common.CheckForEnabledServices("managementagent") {
		tf_management_agent.RegisterResource()
	}
	if common.CheckForEnabledServices("managementdashboard") {
		tf_management_dashboard.RegisterResource()
	}
	if common.CheckForEnabledServices("marketplace") {
		tf_marketplace.RegisterResource()
	}
	if common.CheckForEnabledServices("mediaservices") {
		tf_media_services.RegisterResource()
	}
	if common.CheckForEnabledServices("meteringcomputation") {
		tf_metering_computation.RegisterResource()
	}
	if common.CheckForEnabledServices("monitoring") {
		tf_monitoring.RegisterResource()
	}
	if common.CheckForEnabledServices("mysql") {
		tf_mysql.RegisterResource()
	}
	if common.CheckForEnabledServices("networkfirewall") {
		tf_network_firewall.RegisterResource()
	}
	if common.CheckForEnabledServices("networkloadbalancer") {
		tf_network_load_balancer.RegisterResource()
	}
	if common.CheckForEnabledServices("nosql") {
		tf_nosql.RegisterResource()
	}
	if common.CheckForEnabledServices("objectstorage") {
		tf_objectstorage.RegisterResource()
	}
	if common.CheckForEnabledServices("oce") {
		tf_oce.RegisterResource()
	}
	if common.CheckForEnabledServices("ocvp") {
		tf_ocvp.RegisterResource()
	}
	if common.CheckForEnabledServices("oda") {
		tf_oda.RegisterResource()
	}
	if common.CheckForEnabledServices("onesubscription") {
		tf_onesubscription.RegisterResource()
	}
	if common.CheckForEnabledServices("ons") {
		tf_ons.RegisterResource()
	}
	if common.CheckForEnabledServices("opa") {
		tf_opa.RegisterResource()
	}
	if common.CheckForEnabledServices("opensearch") {
		tf_opensearch.RegisterResource()
	}
	if common.CheckForEnabledServices("operatoraccesscontrol") {
		tf_operator_access_control.RegisterResource()
	}
	if common.CheckForEnabledServices("opsi") {
		tf_opsi.RegisterResource()
	}
	if common.CheckForEnabledServices("optimizer") {
		tf_optimizer.RegisterResource()
	}
	if common.CheckForEnabledServices("os_management_hub") {
		tf_os_management_hub.RegisterResource()
	}
	if common.CheckForEnabledServices("osmanagement") {
		tf_osmanagement.RegisterResource()
	}
	if common.CheckForEnabledServices("ospgateway") {
		tf_osp_gateway.RegisterResource()
	}
	if common.CheckForEnabledServices("osubbillingschedule") {
		tf_osub_billing_schedule.RegisterResource()
	}
	if common.CheckForEnabledServices("osuborganizationsubscription") {
		tf_osub_organization_subscription.RegisterResource()
	}
	if common.CheckForEnabledServices("osubsubscription") {
		tf_osub_subscription.RegisterResource()
	}
	if common.CheckForEnabledServices("osubusage") {
		tf_osub_usage.RegisterResource()
	}
	if common.CheckForEnabledServices("psql") {
		tf_psql.RegisterResource()
	}
	if common.CheckForEnabledServices("queue") {
		tf_queue.RegisterResource()
	}
	if common.CheckForEnabledServices("recovery") {
		tf_recovery.RegisterResource()
	}
	if common.CheckForEnabledServices("redis") {
		tf_redis.RegisterResource()
	}
	if common.CheckForEnabledServices("resourcescheduler") {
		tf_resource_scheduler.RegisterResource()
	}
	if common.CheckForEnabledServices("resourcemanager") {
		tf_resourcemanager.RegisterResource()
	}
	if common.CheckForEnabledServices("sch") {
		tf_sch.RegisterResource()
	}
	if common.CheckForEnabledServices("secrets") {
		tf_secrets.RegisterResource()
	}
	if common.CheckForEnabledServices("securityattribute") {
		tf_security_attribute.RegisterResource()
	}
	if common.CheckForEnabledServices("servicecatalog") {
		tf_service_catalog.RegisterResource()
	}
	if common.CheckForEnabledServices("servicemanagerproxy") {
		tf_service_manager_proxy.RegisterResource()
	}
	if common.CheckForEnabledServices("servicemesh") {
		tf_service_mesh.RegisterResource()
	}
	if common.CheckForEnabledServices("stackmonitoring") {
		tf_stack_monitoring.RegisterResource()
	}
	if common.CheckForEnabledServices("streaming") {
		tf_streaming.RegisterResource()
	}
	if common.CheckForEnabledServices("usageproxy") {
		tf_usage_proxy.RegisterResource()
	}
	if common.CheckForEnabledServices("vault") {
		tf_vault.RegisterResource()
	}
	if common.CheckForEnabledServices("vbsinst") {
		tf_vbs_inst.RegisterResource()
	}
	if common.CheckForEnabledServices("visualbuilder") {
		tf_visual_builder.RegisterResource()
	}
	if common.CheckForEnabledServices("vnmonitoring") {
		tf_vn_monitoring.RegisterResource()
	}
	if common.CheckForEnabledServices("vulnerabilityscanning") {
		tf_vulnerability_scanning.RegisterResource()
	}
	if common.CheckForEnabledServices("waa") {
		tf_waa.RegisterResource()
	}
	if common.CheckForEnabledServices("waas") {
		tf_waas.RegisterResource()
	}
	if common.CheckForEnabledServices("waf") {
		tf_waf.RegisterResource()
	}
	if common.CheckForEnabledServices("zpr") {
		tf_zpr.RegisterResource()
	}

}
