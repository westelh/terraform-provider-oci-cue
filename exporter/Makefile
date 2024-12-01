PROJECT_DIR = .
BUILD_DIR = ./module
BIN := ${PROJECT_DIR}/exporter
GO_FILES:=$(shell find . -type f -name '*.go' -print)

SERVICES = \
	adm \
	ai_anomaly_detection \
	ai_document \
	ai_language \
	ai_vision \
	analytics \
	announcements_service \
	apigateway \
	apm \
	apm_config \
	apm_synthetics \
	apm_traces \
	appmgmt_control \
	artifacts \
	audit \
	autoscaling \
	bastion \
	bds \
	blockchain \
	budget \
	capacity_management \
	certificates_management \
	cloud_bridge \
	cloud_guard \
	cloud_migrations \
	cluster_placement_groups \
	compute_cloud_at_customer \
	computeinstanceagent \
	container_instances \
	containerengine \
	core \
	data_labeling_service \
	data_safe \
	database \
	database_management \
	database_migration \
	database_tools \
	datacatalog \
	dataflow \
	dataintegration \
	datascience \
	delegate_access_control \
	demand_signal \
	desktops \
	devops \
	disaster_recovery \
	dns \
	em_warehouse \
	email \
	events \
	file_storage \
	fleet_apps_management \
	fleet_software_update \
	functions \
	fusion_apps \
	generative_ai \
	generative_ai_agent \
	generic_artifacts_content \
	globally_distributed_database \
	golden_gate \
	health_checks \
	identity \
	identity_data_plane \
	identity_domains \
	integration \
	jms \
	jms_java_downloads \
	kms \
	license_manager \
	limits \
	load_balancer \
	log_analytics \
	logging \
	management_agent \
	management_dashboard \
	marketplace \
	media_services \
	metering_computation \
	monitoring \
	mysql \
	network_firewall \
	network_load_balancer \
	nosql \
	objectstorage \
	oce \
	ocvp \
	oda \
	onesubscription \
	ons \
	opa \
	opensearch \
	operator_access_control \
	opsi \
	optimizer \
	os_management_hub \
	osmanagement \
	osp_gateway \
	osub_billing_schedule \
	osub_organization_subscription \
	osub_subscription \
	osub_usage \
	psql \
	queue \
	recovery \
	redis \
	resource_scheduler \
	resourcemanager \
	sch \
	secrets \
	security_attribute \
	service_catalog \
	service_manager_proxy \
	service_mesh \
	stack_monitoring \
	streaming \
	usage_proxy \
	vault \
	vbs_inst \
	visual_builder \
	vn_monitoring \
	vulnerability_scanning \
	waa \
	waas \
	waf \
	zpr


${BIN}: $(GO_FILES)
	go build -mod=mod -o ${BIN} .

.PHONY: $(SERVICES)
$(SERVICES):
	@mkdir -p ${BUILD_DIR}/$@
	${BIN} -s $@ -p $@ > ${BUILD_DIR}/$@/$@.cue

.PHONY: build
build: ${BIN} $(SERVICES)

.PHONY: test
test:
	go test

.PHONY: clean
clean:
	rm -rf ${BIN} ${BUILD_DIR}