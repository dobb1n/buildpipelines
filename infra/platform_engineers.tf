# ORG LEVEL

resource "google_organization_iam_member" "platform_engineers_org_level" {
  for_each = toset([
    "roles/accessapproval.viewer",
    "roles/accesscontextmanager.vpcScTroubleshooterViewer",
    "roles/actions.Viewer",
    "roles/apigee.analyticsViewer",
    "roles/appengine.appViewer",
    "roles/appengine.codeViewer",
    "roles/automl.viewer",
    "roles/automlrecommendations.adminViewer",
    "roles/automlrecommendations.viewer",
    "roles/bigtable.viewer",
    "roles/billing.viewer",
    "roles/binaryauthorization.attestorsViewer",
    "roles/binaryauthorization.policyViewer",
    "roles/cloudasset.viewer",
    "roles/cloudbuild.builds.viewer",
    "roles/cloudconfig.viewer",
    "roles/cloudfunctions.viewer",
    "roles/cloudiot.viewer",
    "roles/cloudjobdiscovery.jobsViewer",
    "roles/cloudjobdiscovery.profilesViewer",
    "roles/cloudkms.publicKeyViewer",
    "roles/cloudscheduler.viewer",
    "roles/cloudsecurityscanner.viewer",
    "roles/cloudsql.viewer",
    "roles/cloudsupport.techSupportViewer",
    "roles/cloudsupport.viewer",
    "roles/cloudtasks.viewer",
    "roles/cloudtestservice.testViewer",
    "roles/cloudtranslate.viewer",
    "roles/codelabapikeys.viewer",
    "roles/composer.environmentAndStorageObjectViewer",
    "roles/compute.networkViewer",
    "roles/compute.viewer",
    "roles/container.clusterViewer",
    "roles/container.viewer",
    "roles/containeranalysis.notes.viewer",
    "roles/containeranalysis.occurrences.viewer",
    "roles/datacatalog.entryViewer",
    "roles/datacatalog.tagTemplateViewer",
    "roles/datacatalog.viewer",
    "roles/dataflow.viewer",
    "roles/datafusion.viewer",
    "roles/datalabeling.viewer",
    "roles/dataproc.viewer",
    "roles/datastore.viewer",
    "roles/deploymentmanager.typeViewer",
    "roles/deploymentmanager.viewer",
    "roles/errorreporting.viewer",
    "roles/file.viewer",
    "roles/firebase.analyticsViewer",
    "roles/firebase.developViewer",
    "roles/firebase.growthViewer",
    "roles/firebase.qualityViewer",
    "roles/firebase.viewer",
    "roles/firebaseabt.viewer",
    "roles/firebaseappdistro.viewer",
    "roles/firebaseauth.viewer",
    "roles/firebasecrashlytics.viewer",
    "roles/firebasedatabase.viewer",
    "roles/firebasedynamiclinks.viewer",
    "roles/firebasehosting.viewer",
    "roles/firebaseinappmessaging.viewer",
    "roles/firebaseml.viewer",
    "roles/firebasenotifications.viewer",
    "roles/firebaseperformance.viewer",
    "roles/firebasepredictions.viewer",
    "roles/firebaserules.viewer",
    "roles/gameservices.viewer",
    "roles/genomics.viewer",
    "roles/gkehub.viewer",
    "roles/healthcare.annotationStoreViewer",
    "roles/healthcare.datasetViewer",
    "roles/healthcare.dicomStoreViewer",
    "roles/healthcare.dicomViewer",
    "roles/healthcare.fhirStoreViewer",
    "roles/healthcare.hl7V2StoreViewer",
    "roles/iam.organizationRoleViewer",
    // "roles/iam.roleViewer",
    "roles/iam.securityReviewer",
    "roles/identityplatform.viewer",
    "roles/identitytoolkit.viewer",
    "roles/lifesciences.viewer",
    "roles/logging.privateLogViewer",
    "roles/logging.viewer",
    "roles/managedidentities.viewer",
    "roles/memcache.viewer",
    "roles/ml.viewer",
    "roles/monitoring.alertPolicyViewer",
    "roles/monitoring.dashboardViewer",
    "roles/monitoring.notificationChannelViewer",
    "roles/monitoring.uptimeCheckConfigViewer",
    "roles/monitoring.viewer",
    "roles/netappcloudvolumes.viewer",
    "roles/networkmanagement.viewer",
    "roles/notebooks.legacyViewer",
    "roles/notebooks.viewer",
    "roles/notebooks.instances.start",
    "roles/notebooks.instances.stop",
    "roles/orgpolicy.policyViewer",
    "roles/osconfig.assignmentViewer",
    "roles/osconfig.guestPolicyViewer",
    "roles/osconfig.osConfigViewer",
    "roles/osconfig.patchDeploymentViewer",
    "roles/osconfig.patchJobViewer",
    "roles/proximitybeacon.attachmentViewer",
    "roles/pubsub.viewer",
    "roles/recaptchaenterprise.viewer",
    "roles/recommender.computeViewer",
    "roles/recommender.firewallViewer",
    "roles/recommender.iamViewer",
    "roles/redis.viewer",
    "roles/redisenterprisecloud.viewer",
    "roles/remotebuildexecution.artifactViewer",
    "roles/remotebuildexecution.configurationViewer",
    "roles/resourcemanager.folderViewer",
    "roles/resourcemanager.organizationViewer",
    "roles/run.viewer",
    "roles/secretmanager.viewer",
    "roles/securitycenter.adminViewer",
    "roles/securitycenter.assetsViewer",
    "roles/securitycenter.findingsViewer",
    "roles/securitycenter.notificationConfigViewer",
    "roles/securitycenter.sourcesViewer",
    "roles/serviceconsumermanagement.tenancyUnitsViewer",
    "roles/servicedirectory.viewer",
    "roles/servicemanagement.quotaViewer",
    "roles/serviceusage.apiKeysViewer",
    "roles/serviceusage.serviceUsageViewer",
    "roles/spanner.viewer",
    "roles/stackdriver.accounts.viewer",
    "roles/stackdriver.resourceMaintenanceWindow.viewer",
    "roles/storage.objectViewer",
    "roles/storagetransfer.viewer",
    "roles/threatdetection.viewer",
    "roles/tpu.viewer",
    "roles/vmmigration.viewer",
    "roles/vpaccess.viewer",
    "roles/androidmanagement.user",
    "roles/bigtable.user",
    "roles/billing.user",
    "roles/clouddebugger.user",
    "roles/cloudprofiler.user",
    "roles/cloudtrace.user",
    "roles/cloudtranslate.user",
    "roles/composer.user",
    "roles/compute.imageUser",
    "roles/compute.networkUser",
    "roles/compute.orgSecurityPolicyUser",
    "roles/compute.osLoginExternalUser",
    "roles/compute.packetMirroringUser",
    "roles/container.hostServiceAgentUser",
    "roles/datacatalog.tagTemplateUser",
    "roles/dataprep.projects.user",
    "roles/datastore.user",
    "roles/dlp.user",
    "roles/errorreporting.user",
    #SCC Alert for the account having the below Role
    "roles/iam.serviceAccountUser",
    "roles/iam.workloadIdentityUser",
    // "roles/ml.modelUser",
    "roles/spanner.databaseUser",
    "roles/storagetransfer.user",
    "roles/vpaccess.user",
    "roles/accesscontextmanager.policyReader",
    "roles/artifactregistry.reader",
    "roles/bigtable.reader",
    "roles/chat.reader",
    "roles/datacatalog.categoryFineGrainedReader",
    "roles/dialogflow.reader",
    "roles/dlp.analyzeRiskTemplatesReader",
    "roles/dlp.deidentifyTemplatesReader",
    "roles/dlp.inspectFindingsReader",
    "roles/dlp.inspectTemplatesReader",
    "roles/dlp.jobTriggersReader",
    "roles/dlp.jobsReader",
    "roles/dlp.reader",
    "roles/dlp.storedInfoTypesReader",
    "roles/dns.reader",
    "roles/healthcare.annotationReader",
    "roles/healthcare.fhirResourceReader",
    "roles/source.reader",
    "roles/spanner.databaseReader"
    // "roles/storage.legacyBucketReader",
    // "roles/storage.legacyObjectReader",
  ])
  //org_id = var.org_id
  role   = each.key
  member = "group:benmorton8c@gmail.com"
}

// # PROJECT LEVEL

// # testing
// # ds

// resource "google_project_iam_member" "platform_engineers_ds_tst" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-ds-tst"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # dw

// resource "google_project_iam_member" "platform_engineers_dw_tst" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/bigquery.dataViewer",
//     "roles/bigquery.jobUser",
//     "roles/bigquery.user",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-dw-tst"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # da

// resource "google_project_iam_member" "platform_engineers_da_tst" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/iam.serviceAccountUser",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader"
//   ])
//   project = "${var.org_name}-da-tst"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # staging
// # ds

// resource "google_project_iam_member" "platform_engineers_ds_stg" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-ds-stg"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # dw

// resource "google_project_iam_member" "platform_engineers_dw_stg" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/bigquery.dataViewer",
//     "roles/bigquery.jobUser",
//     "roles/bigquery.user",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-dw-stg"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # da

// resource "google_project_iam_member" "platform_engineers_da_stg" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/iam.serviceAccountUser",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader"
//   ])
//   project = "${var.org_name}-da-stg"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # prod
// # ds

// resource "google_project_iam_member" "platform_engineers_ds_prd" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-ds-prd"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # dw

// resource "google_project_iam_member" "platform_engineers_dw_prd" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/pubsub.viewer",
//     "roles/bigquery.dataViewer",
//     "roles/bigquery.jobUser",
//     "roles/bigquery.user",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader",
//     "roles/datastore.user"
//   ])
//   project = "${var.org_name}-dw-prd"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # da

// resource "google_project_iam_member" "platform_engineers_da_prd" {
//   for_each = toset([
//     "roles/cloudbuild.builds.viewer",
//     "roles/iam.serviceAccountUser",
//     "roles/cloudkms.publicKeyViewer",
//     "roles/source.reader"
//   ])
//   project = "${var.org_name}-da-prd"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # DevSecOps

// resource "google_project_iam_member" "platform_engineers_devsecops_stg" {
//   for_each = toset([
//     "roles/iam.serviceAccountUser"
//   ])
//   project = "${var.org_name}-devsecops-stg"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// resource "google_project_iam_member" "platform_engineers_devsecops_prd" {
//   for_each = toset([
//     "roles/iam.serviceAccountUser"
//   ])
//   project = "${var.org_name}-devsecops-prd"
//   role    = each.key
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }

// # Connect

// resource "google_project_iam_member" "platform_engineers_connect_prd" {
//   project = "${var.org_name}-connect-prd"
//   role    = "roles/compute.networkUser"
//   member  = "group:dcsgva-group-platform-engineers@dcsgva-at-gmail.com.a.ongcp.co"
// }