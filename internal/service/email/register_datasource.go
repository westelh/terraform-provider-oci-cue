// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package email

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterDatasource() {
	tfresource.RegisterDatasource("oci_email_configuration", EmailConfigurationDataSource())
	tfresource.RegisterDatasource("oci_email_dkim", EmailDkimDataSource())
	tfresource.RegisterDatasource("oci_email_dkims", EmailDkimsDataSource())
	tfresource.RegisterDatasource("oci_email_email_domain", EmailEmailDomainDataSource())
	tfresource.RegisterDatasource("oci_email_email_domains", EmailEmailDomainsDataSource())
	tfresource.RegisterDatasource("oci_email_email_return_path", EmailEmailReturnPathDataSource())
	tfresource.RegisterDatasource("oci_email_email_return_paths", EmailEmailReturnPathsDataSource())
	tfresource.RegisterDatasource("oci_email_sender", EmailSenderDataSource())
	tfresource.RegisterDatasource("oci_email_senders", EmailSendersDataSource())
	tfresource.RegisterDatasource("oci_email_suppression", EmailSuppressionDataSource())
	tfresource.RegisterDatasource("oci_email_suppressions", EmailSuppressionsDataSource())
}
