// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package identity

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterDatasource() {
	tfresource.RegisterDatasource("oci_identity_allowed_domain_license_types", IdentityAllowedDomainLicenseTypesDataSource())
	tfresource.RegisterDatasource("oci_identity_api_keys", IdentityApiKeysDataSource())
	tfresource.RegisterDatasource("oci_identity_auth_tokens", IdentityAuthTokensDataSource())
	tfresource.RegisterDatasource("oci_identity_authentication_policy", IdentityAuthenticationPolicyDataSource())
	tfresource.RegisterDatasource("oci_identity_availability_domain", IdentityAvailabilityDomainDataSource())
	tfresource.RegisterDatasource("oci_identity_availability_domains", IdentityAvailabilityDomainsDataSource())
	tfresource.RegisterDatasource("oci_identity_compartment", IdentityCompartmentDataSource())
	tfresource.RegisterDatasource("oci_identity_compartments", IdentityCompartmentsDataSource())
	tfresource.RegisterDatasource("oci_identity_cost_tracking_tags", IdentityCostTrackingTagsDataSource())
	tfresource.RegisterDatasource("oci_identity_customer_secret_keys", IdentityCustomerSecretKeysDataSource())
	tfresource.RegisterDatasource("oci_identity_db_credentials", IdentityDbCredentialsDataSource())
	tfresource.RegisterDatasource("oci_identity_domain", IdentityDomainDataSource())
	tfresource.RegisterDatasource("oci_identity_domains", IdentityDomainsDataSource())
	tfresource.RegisterDatasource("oci_identity_dynamic_groups", IdentityDynamicGroupsDataSource())
	tfresource.RegisterDatasource("oci_identity_fault_domains", IdentityFaultDomainsDataSource())
	tfresource.RegisterDatasource("oci_identity_group", IdentityGroupDataSource())
	tfresource.RegisterDatasource("oci_identity_groups", IdentityGroupsDataSource())
	tfresource.RegisterDatasource("oci_identity_iam_work_request", IdentityIamWorkRequestDataSource())
	tfresource.RegisterDatasource("oci_identity_iam_work_request_errors", IdentityIamWorkRequestErrorsDataSource())
	tfresource.RegisterDatasource("oci_identity_iam_work_request_logs", IdentityIamWorkRequestLogsDataSource())
	tfresource.RegisterDatasource("oci_identity_iam_work_requests", IdentityIamWorkRequestsDataSource())
	tfresource.RegisterDatasource("oci_identity_identity_provider_groups", IdentityIdentityProviderGroupsDataSource())
	tfresource.RegisterDatasource("oci_identity_identity_providers", IdentityIdentityProvidersDataSource())
	tfresource.RegisterDatasource("oci_identity_idp_group_mappings", IdentityIdpGroupMappingsDataSource())
	tfresource.RegisterDatasource("oci_identity_network_source", IdentityNetworkSourceDataSource())
	tfresource.RegisterDatasource("oci_identity_network_sources", IdentityNetworkSourcesDataSource())
	tfresource.RegisterDatasource("oci_identity_policies", IdentityPoliciesDataSource())
	tfresource.RegisterDatasource("oci_identity_region_subscriptions", IdentityRegionSubscriptionsDataSource())
	tfresource.RegisterDatasource("oci_identity_regions", IdentityRegionsDataSource())
	tfresource.RegisterDatasource("oci_identity_smtp_credentials", IdentitySmtpCredentialsDataSource())
	tfresource.RegisterDatasource("oci_identity_tag", IdentityTagDataSource())
	tfresource.RegisterDatasource("oci_identity_tag_default", IdentityTagDefaultDataSource())
	tfresource.RegisterDatasource("oci_identity_tag_defaults", IdentityTagDefaultsDataSource())
	tfresource.RegisterDatasource("oci_identity_tag_namespaces", IdentityTagNamespacesDataSource())
	tfresource.RegisterDatasource("oci_identity_tag_standard_tag_namespace_template", IdentityTagStandardTagNamespaceTemplateDataSource())
	tfresource.RegisterDatasource("oci_identity_tag_standard_tag_namespace_templates", IdentityTagStandardTagNamespaceTemplatesDataSource())
	tfresource.RegisterDatasource("oci_identity_tags", IdentityTagsDataSource())
	tfresource.RegisterDatasource("oci_identity_tenancy", IdentityTenancyDataSource())
	tfresource.RegisterDatasource("oci_identity_ui_password", IdentityUiPasswordDataSource())
	tfresource.RegisterDatasource("oci_identity_user", IdentityUserDataSource())
	tfresource.RegisterDatasource("oci_identity_user_group_memberships", IdentityUserGroupMembershipsDataSource())
	tfresource.RegisterDatasource("oci_identity_users", IdentityUsersDataSource())
}
