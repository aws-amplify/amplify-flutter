// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceType extends _i1.SmithyEnum<ResourceType> {
  const ResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const ResourceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const accessAnalyzerAnalyzer = ResourceType._(
    0,
    'AccessAnalyzerAnalyzer',
    'AWS::AccessAnalyzer::Analyzer',
  );

  static const accountPublicAccessBlock = ResourceType._(
    1,
    'AccountPublicAccessBlock',
    'AWS::S3::AccountPublicAccessBlock',
  );

  static const acmpcaCertificateAuthority = ResourceType._(
    2,
    'ACMPCACertificateAuthority',
    'AWS::ACMPCA::CertificateAuthority',
  );

  static const alarm = ResourceType._(
    3,
    'Alarm',
    'AWS::CloudWatch::Alarm',
  );

  static const amazonMqBroker = ResourceType._(
    4,
    'AmazonMQBroker',
    'AWS::AmazonMQ::Broker',
  );

  static const amplifyApp = ResourceType._(
    5,
    'AmplifyApp',
    'AWS::Amplify::App',
  );

  static const amplifyBranch = ResourceType._(
    6,
    'AmplifyBranch',
    'AWS::Amplify::Branch',
  );

  static const api = ResourceType._(
    7,
    'Api',
    'AWS::ApiGatewayV2::Api',
  );

  static const appConfigApplication = ResourceType._(
    8,
    'AppConfigApplication',
    'AWS::AppConfig::Application',
  );

  static const appConfigConfigurationProfile = ResourceType._(
    9,
    'AppConfigConfigurationProfile',
    'AWS::AppConfig::ConfigurationProfile',
  );

  static const appConfigDeploymentStrategy = ResourceType._(
    10,
    'AppConfigDeploymentStrategy',
    'AWS::AppConfig::DeploymentStrategy',
  );

  static const appConfigEnvironment = ResourceType._(
    11,
    'AppConfigEnvironment',
    'AWS::AppConfig::Environment',
  );

  static const appConfigHostedConfigurationVersion = ResourceType._(
    12,
    'AppConfigHostedConfigurationVersion',
    'AWS::AppConfig::HostedConfigurationVersion',
  );

  static const appFlowFlow = ResourceType._(
    13,
    'AppFlowFlow',
    'AWS::AppFlow::Flow',
  );

  static const appIntegrationsEventIntegration = ResourceType._(
    14,
    'AppIntegrationsEventIntegration',
    'AWS::AppIntegrations::EventIntegration',
  );

  static const appMeshRoute = ResourceType._(
    15,
    'AppMeshRoute',
    'AWS::AppMesh::Route',
  );

  static const appMeshVirtualGateway = ResourceType._(
    16,
    'AppMeshVirtualGateway',
    'AWS::AppMesh::VirtualGateway',
  );

  static const appMeshVirtualNode = ResourceType._(
    17,
    'AppMeshVirtualNode',
    'AWS::AppMesh::VirtualNode',
  );

  static const appMeshVirtualRouter = ResourceType._(
    18,
    'AppMeshVirtualRouter',
    'AWS::AppMesh::VirtualRouter',
  );

  static const appMeshVirtualService = ResourceType._(
    19,
    'AppMeshVirtualService',
    'AWS::AppMesh::VirtualService',
  );

  static const appRunnerService = ResourceType._(
    20,
    'AppRunnerService',
    'AWS::AppRunner::Service',
  );

  static const appRunnerVpcConnector = ResourceType._(
    21,
    'AppRunnerVpcConnector',
    'AWS::AppRunner::VpcConnector',
  );

  static const appStreamApplication = ResourceType._(
    22,
    'AppStreamApplication',
    'AWS::AppStream::Application',
  );

  static const appStreamDirectoryConfig = ResourceType._(
    23,
    'AppStreamDirectoryConfig',
    'AWS::AppStream::DirectoryConfig',
  );

  static const appSyncGraphQlApi = ResourceType._(
    24,
    'AppSyncGraphQLApi',
    'AWS::AppSync::GraphQLApi',
  );

  static const application = ResourceType._(
    25,
    'Application',
    'AWS::ElasticBeanstalk::Application',
  );

  static const applicationVersion = ResourceType._(
    26,
    'ApplicationVersion',
    'AWS::ElasticBeanstalk::ApplicationVersion',
  );

  static const associationCompliance = ResourceType._(
    27,
    'AssociationCompliance',
    'AWS::SSM::AssociationCompliance',
  );

  static const athenaDataCatalog = ResourceType._(
    28,
    'AthenaDataCatalog',
    'AWS::Athena::DataCatalog',
  );

  static const athenaPreparedStatement = ResourceType._(
    29,
    'AthenaPreparedStatement',
    'AWS::Athena::PreparedStatement',
  );

  static const athenaWorkGroup = ResourceType._(
    30,
    'AthenaWorkGroup',
    'AWS::Athena::WorkGroup',
  );

  static const auditManagerAssessment = ResourceType._(
    31,
    'AuditManagerAssessment',
    'AWS::AuditManager::Assessment',
  );

  static const autoScalingGroup = ResourceType._(
    32,
    'AutoScalingGroup',
    'AWS::AutoScaling::AutoScalingGroup',
  );

  static const autoScalingWarmPool = ResourceType._(
    33,
    'AutoScalingWarmPool',
    'AWS::AutoScaling::WarmPool',
  );

  static const backupPlan = ResourceType._(
    34,
    'BackupPlan',
    'AWS::Backup::BackupPlan',
  );

  static const backupRecoveryPoint = ResourceType._(
    35,
    'BackupRecoveryPoint',
    'AWS::Backup::RecoveryPoint',
  );

  static const backupReportPlan = ResourceType._(
    36,
    'BackupReportPlan',
    'AWS::Backup::ReportPlan',
  );

  static const backupSelection = ResourceType._(
    37,
    'BackupSelection',
    'AWS::Backup::BackupSelection',
  );

  static const backupVault = ResourceType._(
    38,
    'BackupVault',
    'AWS::Backup::BackupVault',
  );

  static const batchComputeEnvironment = ResourceType._(
    39,
    'BatchComputeEnvironment',
    'AWS::Batch::ComputeEnvironment',
  );

  static const batchJobQueue = ResourceType._(
    40,
    'BatchJobQueue',
    'AWS::Batch::JobQueue',
  );

  static const bucket = ResourceType._(
    41,
    'Bucket',
    'AWS::S3::Bucket',
  );

  static const budgetsBudgetsAction = ResourceType._(
    42,
    'BudgetsBudgetsAction',
    'AWS::Budgets::BudgetsAction',
  );

  static const cassandraKeyspace = ResourceType._(
    43,
    'CassandraKeyspace',
    'AWS::Cassandra::Keyspace',
  );

  static const certificate = ResourceType._(
    44,
    'Certificate',
    'AWS::ACM::Certificate',
  );

  static const cloud9EnvironmentEc2 = ResourceType._(
    45,
    'Cloud9EnvironmentEC2',
    'AWS::Cloud9::EnvironmentEC2',
  );

  static const cloudFormationProduct = ResourceType._(
    46,
    'CloudFormationProduct',
    'AWS::ServiceCatalog::CloudFormationProduct',
  );

  static const cloudFormationProvisionedProduct = ResourceType._(
    47,
    'CloudFormationProvisionedProduct',
    'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  );

  static const cloudWatchMetricStream = ResourceType._(
    48,
    'CloudWatchMetricStream',
    'AWS::CloudWatch::MetricStream',
  );

  static const cluster = ResourceType._(
    49,
    'Cluster',
    'AWS::Redshift::Cluster',
  );

  static const clusterParameterGroup = ResourceType._(
    50,
    'ClusterParameterGroup',
    'AWS::Redshift::ClusterParameterGroup',
  );

  static const clusterSecurityGroup = ResourceType._(
    51,
    'ClusterSecurityGroup',
    'AWS::Redshift::ClusterSecurityGroup',
  );

  static const clusterSnapshot = ResourceType._(
    52,
    'ClusterSnapshot',
    'AWS::Redshift::ClusterSnapshot',
  );

  static const clusterSubnetGroup = ResourceType._(
    53,
    'ClusterSubnetGroup',
    'AWS::Redshift::ClusterSubnetGroup',
  );

  static const codeArtifactRepository = ResourceType._(
    54,
    'CodeArtifactRepository',
    'AWS::CodeArtifact::Repository',
  );

  static const codeDeployApplication = ResourceType._(
    55,
    'CodeDeployApplication',
    'AWS::CodeDeploy::Application',
  );

  static const codeDeployDeploymentConfig = ResourceType._(
    56,
    'CodeDeployDeploymentConfig',
    'AWS::CodeDeploy::DeploymentConfig',
  );

  static const codeDeployDeploymentGroup = ResourceType._(
    57,
    'CodeDeployDeploymentGroup',
    'AWS::CodeDeploy::DeploymentGroup',
  );

  static const codeGuruReviewerRepositoryAssociation = ResourceType._(
    58,
    'CodeGuruReviewerRepositoryAssociation',
    'AWS::CodeGuruReviewer::RepositoryAssociation',
  );

  static const conformancePackCompliance = ResourceType._(
    59,
    'ConformancePackCompliance',
    'AWS::Config::ConformancePackCompliance',
  );

  static const connectPhoneNumber = ResourceType._(
    60,
    'ConnectPhoneNumber',
    'AWS::Connect::PhoneNumber',
  );

  static const customerGateway = ResourceType._(
    61,
    'CustomerGateway',
    'AWS::EC2::CustomerGateway',
  );

  static const customerProfilesDomain = ResourceType._(
    62,
    'CustomerProfilesDomain',
    'AWS::CustomerProfiles::Domain',
  );

  static const customerProfilesObjectType = ResourceType._(
    63,
    'CustomerProfilesObjectType',
    'AWS::CustomerProfiles::ObjectType',
  );

  static const dataSyncLocationEfs = ResourceType._(
    64,
    'DataSyncLocationEFS',
    'AWS::DataSync::LocationEFS',
  );

  static const dataSyncLocationFSxLustre = ResourceType._(
    65,
    'DataSyncLocationFSxLustre',
    'AWS::DataSync::LocationFSxLustre',
  );

  static const dataSyncLocationFSxWindows = ResourceType._(
    66,
    'DataSyncLocationFSxWindows',
    'AWS::DataSync::LocationFSxWindows',
  );

  static const dataSyncLocationHdfs = ResourceType._(
    67,
    'DataSyncLocationHDFS',
    'AWS::DataSync::LocationHDFS',
  );

  static const dataSyncLocationNfs = ResourceType._(
    68,
    'DataSyncLocationNFS',
    'AWS::DataSync::LocationNFS',
  );

  static const dataSyncLocationObjectStorage = ResourceType._(
    69,
    'DataSyncLocationObjectStorage',
    'AWS::DataSync::LocationObjectStorage',
  );

  static const dataSyncLocationS3 = ResourceType._(
    70,
    'DataSyncLocationS3',
    'AWS::DataSync::LocationS3',
  );

  static const dataSyncLocationSmb = ResourceType._(
    71,
    'DataSyncLocationSMB',
    'AWS::DataSync::LocationSMB',
  );

  static const dataSyncTask = ResourceType._(
    72,
    'DataSyncTask',
    'AWS::DataSync::Task',
  );

  static const dbCluster = ResourceType._(
    73,
    'DBCluster',
    'AWS::RDS::DBCluster',
  );

  static const dbClusterSnapshot = ResourceType._(
    74,
    'DBClusterSnapshot',
    'AWS::RDS::DBClusterSnapshot',
  );

  static const dbInstance = ResourceType._(
    75,
    'DBInstance',
    'AWS::RDS::DBInstance',
  );

  static const dbSecurityGroup = ResourceType._(
    76,
    'DBSecurityGroup',
    'AWS::RDS::DBSecurityGroup',
  );

  static const dbSnapshot = ResourceType._(
    77,
    'DBSnapshot',
    'AWS::RDS::DBSnapshot',
  );

  static const dbSubnetGroup = ResourceType._(
    78,
    'DBSubnetGroup',
    'AWS::RDS::DBSubnetGroup',
  );

  static const detectiveGraph = ResourceType._(
    79,
    'DetectiveGraph',
    'AWS::Detective::Graph',
  );

  static const deviceFarmInstanceProfile = ResourceType._(
    80,
    'DeviceFarmInstanceProfile',
    'AWS::DeviceFarm::InstanceProfile',
  );

  static const deviceFarmProject = ResourceType._(
    81,
    'DeviceFarmProject',
    'AWS::DeviceFarm::Project',
  );

  static const deviceFarmTestGridProject = ResourceType._(
    82,
    'DeviceFarmTestGridProject',
    'AWS::DeviceFarm::TestGridProject',
  );

  static const distribution = ResourceType._(
    83,
    'Distribution',
    'AWS::CloudFront::Distribution',
  );

  static const dmsCertificate = ResourceType._(
    84,
    'DMSCertificate',
    'AWS::DMS::Certificate',
  );

  static const dmsEndpoint = ResourceType._(
    85,
    'DMSEndpoint',
    'AWS::DMS::Endpoint',
  );

  static const dmsEventSubscription = ResourceType._(
    86,
    'DMSEventSubscription',
    'AWS::DMS::EventSubscription',
  );

  static const dmsReplicationSubnetGroup = ResourceType._(
    87,
    'DMSReplicationSubnetGroup',
    'AWS::DMS::ReplicationSubnetGroup',
  );

  static const domain = ResourceType._(
    88,
    'Domain',
    'AWS::Elasticsearch::Domain',
  );

  static const ec2CapacityReservation = ResourceType._(
    89,
    'EC2CapacityReservation',
    'AWS::EC2::CapacityReservation',
  );

  static const ec2ClientVpnEndpoint = ResourceType._(
    90,
    'EC2ClientVpnEndpoint',
    'AWS::EC2::ClientVpnEndpoint',
  );

  static const ec2DhcpOptions = ResourceType._(
    91,
    'EC2DHCPOptions',
    'AWS::EC2::DHCPOptions',
  );

  static const ec2Ec2Fleet = ResourceType._(
    92,
    'EC2EC2Fleet',
    'AWS::EC2::EC2Fleet',
  );

  static const ec2Ipam = ResourceType._(
    93,
    'EC2IPAM',
    'AWS::EC2::IPAM',
  );

  static const ec2IpamScope = ResourceType._(
    94,
    'EC2IPAMScope',
    'AWS::EC2::IPAMScope',
  );

  static const ec2NetworkInsightsPath = ResourceType._(
    95,
    'EC2NetworkInsightsPath',
    'AWS::EC2::NetworkInsightsPath',
  );

  static const ec2PrefixList = ResourceType._(
    96,
    'EC2PrefixList',
    'AWS::EC2::PrefixList',
  );

  static const ec2SpotFleet = ResourceType._(
    97,
    'EC2SpotFleet',
    'AWS::EC2::SpotFleet',
  );

  static const ec2SubnetRouteTableAssociation = ResourceType._(
    98,
    'EC2SubnetRouteTableAssociation',
    'AWS::EC2::SubnetRouteTableAssociation',
  );

  static const ec2TrafficMirrorFilter = ResourceType._(
    99,
    'EC2TrafficMirrorFilter',
    'AWS::EC2::TrafficMirrorFilter',
  );

  static const ec2TrafficMirrorSession = ResourceType._(
    100,
    'EC2TrafficMirrorSession',
    'AWS::EC2::TrafficMirrorSession',
  );

  static const ec2TrafficMirrorTarget = ResourceType._(
    101,
    'EC2TrafficMirrorTarget',
    'AWS::EC2::TrafficMirrorTarget',
  );

  static const ecrPublicRepository = ResourceType._(
    102,
    'ECRPublicRepository',
    'AWS::ECR::PublicRepository',
  );

  static const ecrPullThroughCacheRule = ResourceType._(
    103,
    'ECRPullThroughCacheRule',
    'AWS::ECR::PullThroughCacheRule',
  );

  static const ecrRegistryPolicy = ResourceType._(
    104,
    'ECRRegistryPolicy',
    'AWS::ECR::RegistryPolicy',
  );

  static const ecrRepository = ResourceType._(
    105,
    'ECRRepository',
    'AWS::ECR::Repository',
  );

  static const ecsCluster = ResourceType._(
    106,
    'ECSCluster',
    'AWS::ECS::Cluster',
  );

  static const ecsService = ResourceType._(
    107,
    'ECSService',
    'AWS::ECS::Service',
  );

  static const ecsTaskDefinition = ResourceType._(
    108,
    'ECSTaskDefinition',
    'AWS::ECS::TaskDefinition',
  );

  static const ecsTaskSet = ResourceType._(
    109,
    'ECSTaskSet',
    'AWS::ECS::TaskSet',
  );

  static const efsAccessPoint = ResourceType._(
    110,
    'EFSAccessPoint',
    'AWS::EFS::AccessPoint',
  );

  static const efsFileSystem = ResourceType._(
    111,
    'EFSFileSystem',
    'AWS::EFS::FileSystem',
  );

  static const egressOnlyInternetGateway = ResourceType._(
    112,
    'EgressOnlyInternetGateway',
    'AWS::EC2::EgressOnlyInternetGateway',
  );

  static const eip = ResourceType._(
    113,
    'EIP',
    'AWS::EC2::EIP',
  );

  static const eksAddon = ResourceType._(
    114,
    'EKSAddon',
    'AWS::EKS::Addon',
  );

  static const eksCluster = ResourceType._(
    115,
    'EKSCluster',
    'AWS::EKS::Cluster',
  );

  static const eksFargateProfile = ResourceType._(
    116,
    'EKSFargateProfile',
    'AWS::EKS::FargateProfile',
  );

  static const eksIdentityProviderConfig = ResourceType._(
    117,
    'EKSIdentityProviderConfig',
    'AWS::EKS::IdentityProviderConfig',
  );

  static const emrSecurityConfiguration = ResourceType._(
    118,
    'EMRSecurityConfiguration',
    'AWS::EMR::SecurityConfiguration',
  );

  static const encryptionConfig = ResourceType._(
    119,
    'EncryptionConfig',
    'AWS::XRay::EncryptionConfig',
  );

  static const environment = ResourceType._(
    120,
    'Environment',
    'AWS::ElasticBeanstalk::Environment',
  );

  static const eventSchemasDiscoverer = ResourceType._(
    121,
    'EventSchemasDiscoverer',
    'AWS::EventSchemas::Discoverer',
  );

  static const eventSchemasRegistry = ResourceType._(
    122,
    'EventSchemasRegistry',
    'AWS::EventSchemas::Registry',
  );

  static const eventSchemasRegistryPolicy = ResourceType._(
    123,
    'EventSchemasRegistryPolicy',
    'AWS::EventSchemas::RegistryPolicy',
  );

  static const eventSchemasSchema = ResourceType._(
    124,
    'EventSchemasSchema',
    'AWS::EventSchemas::Schema',
  );

  static const eventSubscription = ResourceType._(
    125,
    'EventSubscription',
    'AWS::RDS::EventSubscription',
  );

  static const eventsApiDestination = ResourceType._(
    126,
    'EventsApiDestination',
    'AWS::Events::ApiDestination',
  );

  static const eventsArchive = ResourceType._(
    127,
    'EventsArchive',
    'AWS::Events::Archive',
  );

  static const eventsConnection = ResourceType._(
    128,
    'EventsConnection',
    'AWS::Events::Connection',
  );

  static const eventsEndpoint = ResourceType._(
    129,
    'EventsEndpoint',
    'AWS::Events::Endpoint',
  );

  static const eventsEventBus = ResourceType._(
    130,
    'EventsEventBus',
    'AWS::Events::EventBus',
  );

  static const eventsRule = ResourceType._(
    131,
    'EventsRule',
    'AWS::Events::Rule',
  );

  static const evidentlyLaunch = ResourceType._(
    132,
    'EvidentlyLaunch',
    'AWS::Evidently::Launch',
  );

  static const evidentlyProject = ResourceType._(
    133,
    'EvidentlyProject',
    'AWS::Evidently::Project',
  );

  static const fileData = ResourceType._(
    134,
    'FileData',
    'AWS::SSM::FileData',
  );

  static const fisExperimentTemplate = ResourceType._(
    135,
    'FISExperimentTemplate',
    'AWS::FIS::ExperimentTemplate',
  );

  static const flowLog = ResourceType._(
    136,
    'FlowLog',
    'AWS::EC2::FlowLog',
  );

  static const forecastDataset = ResourceType._(
    137,
    'ForecastDataset',
    'AWS::Forecast::Dataset',
  );

  static const forecastDatasetGroup = ResourceType._(
    138,
    'ForecastDatasetGroup',
    'AWS::Forecast::DatasetGroup',
  );

  static const fraudDetectorEntityType = ResourceType._(
    139,
    'FraudDetectorEntityType',
    'AWS::FraudDetector::EntityType',
  );

  static const fraudDetectorLabel = ResourceType._(
    140,
    'FraudDetectorLabel',
    'AWS::FraudDetector::Label',
  );

  static const fraudDetectorOutcome = ResourceType._(
    141,
    'FraudDetectorOutcome',
    'AWS::FraudDetector::Outcome',
  );

  static const fraudDetectorVariable = ResourceType._(
    142,
    'FraudDetectorVariable',
    'AWS::FraudDetector::Variable',
  );

  static const function = ResourceType._(
    143,
    'Function',
    'AWS::Lambda::Function',
  );

  static const globalAcceleratorAccelerator = ResourceType._(
    144,
    'GlobalAcceleratorAccelerator',
    'AWS::GlobalAccelerator::Accelerator',
  );

  static const globalAcceleratorEndpointGroup = ResourceType._(
    145,
    'GlobalAcceleratorEndpointGroup',
    'AWS::GlobalAccelerator::EndpointGroup',
  );

  static const globalAcceleratorListener = ResourceType._(
    146,
    'GlobalAcceleratorListener',
    'AWS::GlobalAccelerator::Listener',
  );

  static const glueClassifier = ResourceType._(
    147,
    'GlueClassifier',
    'AWS::Glue::Classifier',
  );

  static const glueJob = ResourceType._(
    148,
    'GlueJob',
    'AWS::Glue::Job',
  );

  static const glueMlTransform = ResourceType._(
    149,
    'GlueMLTransform',
    'AWS::Glue::MLTransform',
  );

  static const greengrassV2ComponentVersion = ResourceType._(
    150,
    'GreengrassV2ComponentVersion',
    'AWS::GreengrassV2::ComponentVersion',
  );

  static const groundStationConfig = ResourceType._(
    151,
    'GroundStationConfig',
    'AWS::GroundStation::Config',
  );

  static const groundStationMissionProfile = ResourceType._(
    152,
    'GroundStationMissionProfile',
    'AWS::GroundStation::MissionProfile',
  );

  static const group = ResourceType._(
    153,
    'Group',
    'AWS::IAM::Group',
  );

  static const guardDutyDetector = ResourceType._(
    154,
    'GuardDutyDetector',
    'AWS::GuardDuty::Detector',
  );

  static const guardDutyFilter = ResourceType._(
    155,
    'GuardDutyFilter',
    'AWS::GuardDuty::Filter',
  );

  static const guardDutyIpSet = ResourceType._(
    156,
    'GuardDutyIPSet',
    'AWS::GuardDuty::IPSet',
  );

  static const guardDutyThreatIntelSet = ResourceType._(
    157,
    'GuardDutyThreatIntelSet',
    'AWS::GuardDuty::ThreatIntelSet',
  );

  static const healthLakeFhirDatastore = ResourceType._(
    158,
    'HealthLakeFHIRDatastore',
    'AWS::HealthLake::FHIRDatastore',
  );

  static const host = ResourceType._(
    159,
    'Host',
    'AWS::EC2::Host',
  );

  static const iamServerCertificate = ResourceType._(
    160,
    'IAMServerCertificate',
    'AWS::IAM::ServerCertificate',
  );

  static const iamsamlProvider = ResourceType._(
    161,
    'IAMSAMLProvider',
    'AWS::IAM::SAMLProvider',
  );

  static const imageBuilderContainerRecipe = ResourceType._(
    162,
    'ImageBuilderContainerRecipe',
    'AWS::ImageBuilder::ContainerRecipe',
  );

  static const imageBuilderDistributionConfiguration = ResourceType._(
    163,
    'ImageBuilderDistributionConfiguration',
    'AWS::ImageBuilder::DistributionConfiguration',
  );

  static const imageBuilderImagePipeline = ResourceType._(
    164,
    'ImageBuilderImagePipeline',
    'AWS::ImageBuilder::ImagePipeline',
  );

  static const imageBuilderInfrastructureConfiguration = ResourceType._(
    165,
    'ImageBuilderInfrastructureConfiguration',
    'AWS::ImageBuilder::InfrastructureConfiguration',
  );

  static const instance = ResourceType._(
    166,
    'Instance',
    'AWS::EC2::Instance',
  );

  static const internetGateway = ResourceType._(
    167,
    'InternetGateway',
    'AWS::EC2::InternetGateway',
  );

  static const ioTAccountAuditConfiguration = ResourceType._(
    168,
    'IoTAccountAuditConfiguration',
    'AWS::IoT::AccountAuditConfiguration',
  );

  static const ioTAnalyticsChannel = ResourceType._(
    169,
    'IoTAnalyticsChannel',
    'AWS::IoTAnalytics::Channel',
  );

  static const ioTAnalyticsDataset = ResourceType._(
    170,
    'IoTAnalyticsDataset',
    'AWS::IoTAnalytics::Dataset',
  );

  static const ioTAnalyticsDatastore = ResourceType._(
    171,
    'IoTAnalyticsDatastore',
    'AWS::IoTAnalytics::Datastore',
  );

  static const ioTAnalyticsPipeline = ResourceType._(
    172,
    'IoTAnalyticsPipeline',
    'AWS::IoTAnalytics::Pipeline',
  );

  static const ioTAuthorizer = ResourceType._(
    173,
    'IoTAuthorizer',
    'AWS::IoT::Authorizer',
  );

  static const ioTCustomMetric = ResourceType._(
    174,
    'IoTCustomMetric',
    'AWS::IoT::CustomMetric',
  );

  static const ioTDimension = ResourceType._(
    175,
    'IoTDimension',
    'AWS::IoT::Dimension',
  );

  static const ioTEventsAlarmModel = ResourceType._(
    176,
    'IoTEventsAlarmModel',
    'AWS::IoTEvents::AlarmModel',
  );

  static const ioTEventsDetectorModel = ResourceType._(
    177,
    'IoTEventsDetectorModel',
    'AWS::IoTEvents::DetectorModel',
  );

  static const ioTEventsInput = ResourceType._(
    178,
    'IoTEventsInput',
    'AWS::IoTEvents::Input',
  );

  static const ioTFleetMetric = ResourceType._(
    179,
    'IoTFleetMetric',
    'AWS::IoT::FleetMetric',
  );

  static const ioTMitigationAction = ResourceType._(
    180,
    'IoTMitigationAction',
    'AWS::IoT::MitigationAction',
  );

  static const ioTPolicy = ResourceType._(
    181,
    'IoTPolicy',
    'AWS::IoT::Policy',
  );

  static const ioTRoleAlias = ResourceType._(
    182,
    'IoTRoleAlias',
    'AWS::IoT::RoleAlias',
  );

  static const ioTScheduledAudit = ResourceType._(
    183,
    'IoTScheduledAudit',
    'AWS::IoT::ScheduledAudit',
  );

  static const ioTSecurityProfile = ResourceType._(
    184,
    'IoTSecurityProfile',
    'AWS::IoT::SecurityProfile',
  );

  static const ioTSiteWiseAssetModel = ResourceType._(
    185,
    'IoTSiteWiseAssetModel',
    'AWS::IoTSiteWise::AssetModel',
  );

  static const ioTSiteWiseDashboard = ResourceType._(
    186,
    'IoTSiteWiseDashboard',
    'AWS::IoTSiteWise::Dashboard',
  );

  static const ioTSiteWiseGateway = ResourceType._(
    187,
    'IoTSiteWiseGateway',
    'AWS::IoTSiteWise::Gateway',
  );

  static const ioTSiteWisePortal = ResourceType._(
    188,
    'IoTSiteWisePortal',
    'AWS::IoTSiteWise::Portal',
  );

  static const ioTSiteWiseProject = ResourceType._(
    189,
    'IoTSiteWiseProject',
    'AWS::IoTSiteWise::Project',
  );

  static const ioTTwinMakerEntity = ResourceType._(
    190,
    'IoTTwinMakerEntity',
    'AWS::IoTTwinMaker::Entity',
  );

  static const ioTTwinMakerScene = ResourceType._(
    191,
    'IoTTwinMakerScene',
    'AWS::IoTTwinMaker::Scene',
  );

  static const ioTTwinMakerWorkspace = ResourceType._(
    192,
    'IoTTwinMakerWorkspace',
    'AWS::IoTTwinMaker::Workspace',
  );

  static const ioTWirelessServiceProfile = ResourceType._(
    193,
    'IoTWirelessServiceProfile',
    'AWS::IoTWireless::ServiceProfile',
  );

  static const ipSetV2 = ResourceType._(
    194,
    'IPSetV2',
    'AWS::WAFv2::IPSet',
  );

  static const ivsChannel = ResourceType._(
    195,
    'IVSChannel',
    'AWS::IVS::Channel',
  );

  static const ivsPlaybackKeyPair = ResourceType._(
    196,
    'IVSPlaybackKeyPair',
    'AWS::IVS::PlaybackKeyPair',
  );

  static const ivsRecordingConfiguration = ResourceType._(
    197,
    'IVSRecordingConfiguration',
    'AWS::IVS::RecordingConfiguration',
  );

  static const kendraIndex = ResourceType._(
    198,
    'KendraIndex',
    'AWS::Kendra::Index',
  );

  static const key = ResourceType._(
    199,
    'Key',
    'AWS::KMS::Key',
  );

  static const kinesisAnalyticsV2Application = ResourceType._(
    200,
    'KinesisAnalyticsV2Application',
    'AWS::KinesisAnalyticsV2::Application',
  );

  static const kinesisFirehoseDeliveryStream = ResourceType._(
    201,
    'KinesisFirehoseDeliveryStream',
    'AWS::KinesisFirehose::DeliveryStream',
  );

  static const kinesisStream = ResourceType._(
    202,
    'KinesisStream',
    'AWS::Kinesis::Stream',
  );

  static const kinesisStreamConsumer = ResourceType._(
    203,
    'KinesisStreamConsumer',
    'AWS::Kinesis::StreamConsumer',
  );

  static const kinesisVideoSignalingChannel = ResourceType._(
    204,
    'KinesisVideoSignalingChannel',
    'AWS::KinesisVideo::SignalingChannel',
  );

  static const kinesisVideoStream = ResourceType._(
    205,
    'KinesisVideoStream',
    'AWS::KinesisVideo::Stream',
  );

  static const launchConfiguration = ResourceType._(
    206,
    'LaunchConfiguration',
    'AWS::AutoScaling::LaunchConfiguration',
  );

  static const launchTemplate = ResourceType._(
    207,
    'LaunchTemplate',
    'AWS::EC2::LaunchTemplate',
  );

  static const lexBot = ResourceType._(
    208,
    'LexBot',
    'AWS::Lex::Bot',
  );

  static const lexBotAlias = ResourceType._(
    209,
    'LexBotAlias',
    'AWS::Lex::BotAlias',
  );

  static const lightsailBucket = ResourceType._(
    210,
    'LightsailBucket',
    'AWS::Lightsail::Bucket',
  );

  static const lightsailCertificate = ResourceType._(
    211,
    'LightsailCertificate',
    'AWS::Lightsail::Certificate',
  );

  static const lightsailDisk = ResourceType._(
    212,
    'LightsailDisk',
    'AWS::Lightsail::Disk',
  );

  static const lightsailStaticIp = ResourceType._(
    213,
    'LightsailStaticIp',
    'AWS::Lightsail::StaticIp',
  );

  static const listenerV2 = ResourceType._(
    214,
    'ListenerV2',
    'AWS::ElasticLoadBalancingV2::Listener',
  );

  static const loadBalancer = ResourceType._(
    215,
    'LoadBalancer',
    'AWS::ElasticLoadBalancing::LoadBalancer',
  );

  static const loadBalancerV2 = ResourceType._(
    216,
    'LoadBalancerV2',
    'AWS::ElasticLoadBalancingV2::LoadBalancer',
  );

  static const logsDestination = ResourceType._(
    217,
    'LogsDestination',
    'AWS::Logs::Destination',
  );

  static const lookoutMetricsAlert = ResourceType._(
    218,
    'LookoutMetricsAlert',
    'AWS::LookoutMetrics::Alert',
  );

  static const lookoutVisionProject = ResourceType._(
    219,
    'LookoutVisionProject',
    'AWS::LookoutVision::Project',
  );

  static const managedInstanceInventory = ResourceType._(
    220,
    'ManagedInstanceInventory',
    'AWS::SSM::ManagedInstanceInventory',
  );

  static const managedRuleSetV2 = ResourceType._(
    221,
    'ManagedRuleSetV2',
    'AWS::WAFv2::ManagedRuleSet',
  );

  static const mediaConnectFlowEntitlement = ResourceType._(
    222,
    'MediaConnectFlowEntitlement',
    'AWS::MediaConnect::FlowEntitlement',
  );

  static const mediaConnectFlowVpcInterface = ResourceType._(
    223,
    'MediaConnectFlowVpcInterface',
    'AWS::MediaConnect::FlowVpcInterface',
  );

  static const mediaPackagePackagingConfiguration = ResourceType._(
    224,
    'MediaPackagePackagingConfiguration',
    'AWS::MediaPackage::PackagingConfiguration',
  );

  static const mediaPackagePackagingGroup = ResourceType._(
    225,
    'MediaPackagePackagingGroup',
    'AWS::MediaPackage::PackagingGroup',
  );

  static const mediaTailorPlaybackConfiguration = ResourceType._(
    226,
    'MediaTailorPlaybackConfiguration',
    'AWS::MediaTailor::PlaybackConfiguration',
  );

  static const mskCluster = ResourceType._(
    227,
    'MSKCluster',
    'AWS::MSK::Cluster',
  );

  static const mskConfiguration = ResourceType._(
    228,
    'MSKConfiguration',
    'AWS::MSK::Configuration',
  );

  static const natGateway = ResourceType._(
    229,
    'NatGateway',
    'AWS::EC2::NatGateway',
  );

  static const networkAcl = ResourceType._(
    230,
    'NetworkAcl',
    'AWS::EC2::NetworkAcl',
  );

  static const networkFirewallFirewall = ResourceType._(
    231,
    'NetworkFirewallFirewall',
    'AWS::NetworkFirewall::Firewall',
  );

  static const networkFirewallFirewallPolicy = ResourceType._(
    232,
    'NetworkFirewallFirewallPolicy',
    'AWS::NetworkFirewall::FirewallPolicy',
  );

  static const networkFirewallRuleGroup = ResourceType._(
    233,
    'NetworkFirewallRuleGroup',
    'AWS::NetworkFirewall::RuleGroup',
  );

  static const networkInsightsAccessScopeAnalysis = ResourceType._(
    234,
    'NetworkInsightsAccessScopeAnalysis',
    'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
  );

  static const networkInterface = ResourceType._(
    235,
    'NetworkInterface',
    'AWS::EC2::NetworkInterface',
  );

  static const networkManagerCustomerGatewayAssociation = ResourceType._(
    236,
    'NetworkManagerCustomerGatewayAssociation',
    'AWS::NetworkManager::CustomerGatewayAssociation',
  );

  static const networkManagerDevice = ResourceType._(
    237,
    'NetworkManagerDevice',
    'AWS::NetworkManager::Device',
  );

  static const networkManagerGlobalNetwork = ResourceType._(
    238,
    'NetworkManagerGlobalNetwork',
    'AWS::NetworkManager::GlobalNetwork',
  );

  static const networkManagerLink = ResourceType._(
    239,
    'NetworkManagerLink',
    'AWS::NetworkManager::Link',
  );

  static const networkManagerLinkAssociation = ResourceType._(
    240,
    'NetworkManagerLinkAssociation',
    'AWS::NetworkManager::LinkAssociation',
  );

  static const networkManagerSite = ResourceType._(
    241,
    'NetworkManagerSite',
    'AWS::NetworkManager::Site',
  );

  static const networkManagerTransitGatewayRegistration = ResourceType._(
    242,
    'NetworkManagerTransitGatewayRegistration',
    'AWS::NetworkManager::TransitGatewayRegistration',
  );

  static const openSearchDomain = ResourceType._(
    243,
    'OpenSearchDomain',
    'AWS::OpenSearch::Domain',
  );

  static const panoramaPackage = ResourceType._(
    244,
    'PanoramaPackage',
    'AWS::Panorama::Package',
  );

  static const patchCompliance = ResourceType._(
    245,
    'PatchCompliance',
    'AWS::SSM::PatchCompliance',
  );

  static const personalizeDataset = ResourceType._(
    246,
    'PersonalizeDataset',
    'AWS::Personalize::Dataset',
  );

  static const personalizeSchema = ResourceType._(
    247,
    'PersonalizeSchema',
    'AWS::Personalize::Schema',
  );

  static const personalizeSolution = ResourceType._(
    248,
    'PersonalizeSolution',
    'AWS::Personalize::Solution',
  );

  static const pinpointApp = ResourceType._(
    249,
    'PinpointApp',
    'AWS::Pinpoint::App',
  );

  static const pinpointApplicationSettings = ResourceType._(
    250,
    'PinpointApplicationSettings',
    'AWS::Pinpoint::ApplicationSettings',
  );

  static const pinpointCampaign = ResourceType._(
    251,
    'PinpointCampaign',
    'AWS::Pinpoint::Campaign',
  );

  static const pinpointEmailChannel = ResourceType._(
    252,
    'PinpointEmailChannel',
    'AWS::Pinpoint::EmailChannel',
  );

  static const pinpointEmailTemplate = ResourceType._(
    253,
    'PinpointEmailTemplate',
    'AWS::Pinpoint::EmailTemplate',
  );

  static const pinpointEventStream = ResourceType._(
    254,
    'PinpointEventStream',
    'AWS::Pinpoint::EventStream',
  );

  static const pinpointInAppTemplate = ResourceType._(
    255,
    'PinpointInAppTemplate',
    'AWS::Pinpoint::InAppTemplate',
  );

  static const pinpointSegment = ResourceType._(
    256,
    'PinpointSegment',
    'AWS::Pinpoint::Segment',
  );

  static const pipeline = ResourceType._(
    257,
    'Pipeline',
    'AWS::CodePipeline::Pipeline',
  );

  static const policy = ResourceType._(
    258,
    'Policy',
    'AWS::IAM::Policy',
  );

  static const portfolio = ResourceType._(
    259,
    'Portfolio',
    'AWS::ServiceCatalog::Portfolio',
  );

  static const project = ResourceType._(
    260,
    'Project',
    'AWS::CodeBuild::Project',
  );

  static const protection = ResourceType._(
    261,
    'Protection',
    'AWS::Shield::Protection',
  );

  static const qldbLedger = ResourceType._(
    262,
    'QLDBLedger',
    'AWS::QLDB::Ledger',
  );

  static const queue = ResourceType._(
    263,
    'Queue',
    'AWS::SQS::Queue',
  );

  static const rateBasedRule = ResourceType._(
    264,
    'RateBasedRule',
    'AWS::WAF::RateBasedRule',
  );

  static const rdsGlobalCluster = ResourceType._(
    265,
    'RDSGlobalCluster',
    'AWS::RDS::GlobalCluster',
  );

  static const redshiftEventSubscription = ResourceType._(
    266,
    'RedshiftEventSubscription',
    'AWS::Redshift::EventSubscription',
  );

  static const redshiftScheduledAction = ResourceType._(
    267,
    'RedshiftScheduledAction',
    'AWS::Redshift::ScheduledAction',
  );

  static const regexPatternSetV2 = ResourceType._(
    268,
    'RegexPatternSetV2',
    'AWS::WAFv2::RegexPatternSet',
  );

  static const regionalProtection = ResourceType._(
    269,
    'RegionalProtection',
    'AWS::ShieldRegional::Protection',
  );

  static const regionalRateBasedRule = ResourceType._(
    270,
    'RegionalRateBasedRule',
    'AWS::WAFRegional::RateBasedRule',
  );

  static const regionalRule = ResourceType._(
    271,
    'RegionalRule',
    'AWS::WAFRegional::Rule',
  );

  static const regionalRuleGroup = ResourceType._(
    272,
    'RegionalRuleGroup',
    'AWS::WAFRegional::RuleGroup',
  );

  static const regionalWebAcl = ResourceType._(
    273,
    'RegionalWebACL',
    'AWS::WAFRegional::WebACL',
  );

  static const registeredHaInstance = ResourceType._(
    274,
    'RegisteredHAInstance',
    'AWS::EC2::RegisteredHAInstance',
  );

  static const resilienceHubApp = ResourceType._(
    275,
    'ResilienceHubApp',
    'AWS::ResilienceHub::App',
  );

  static const resilienceHubResiliencyPolicy = ResourceType._(
    276,
    'ResilienceHubResiliencyPolicy',
    'AWS::ResilienceHub::ResiliencyPolicy',
  );

  static const resourceCompliance = ResourceType._(
    277,
    'ResourceCompliance',
    'AWS::Config::ResourceCompliance',
  );

  static const restApi = ResourceType._(
    278,
    'RestApi',
    'AWS::ApiGateway::RestApi',
  );

  static const roboMakerRobotApplication = ResourceType._(
    279,
    'RoboMakerRobotApplication',
    'AWS::RoboMaker::RobotApplication',
  );

  static const roboMakerRobotApplicationVersion = ResourceType._(
    280,
    'RoboMakerRobotApplicationVersion',
    'AWS::RoboMaker::RobotApplicationVersion',
  );

  static const roboMakerSimulationApplication = ResourceType._(
    281,
    'RoboMakerSimulationApplication',
    'AWS::RoboMaker::SimulationApplication',
  );

  static const role = ResourceType._(
    282,
    'Role',
    'AWS::IAM::Role',
  );

  static const route53HostedZone = ResourceType._(
    283,
    'Route53HostedZone',
    'AWS::Route53::HostedZone',
  );

  static const route53RecoveryControlCluster = ResourceType._(
    284,
    'Route53RecoveryControlCluster',
    'AWS::Route53RecoveryControl::Cluster',
  );

  static const route53RecoveryControlControlPanel = ResourceType._(
    285,
    'Route53RecoveryControlControlPanel',
    'AWS::Route53RecoveryControl::ControlPanel',
  );

  static const route53RecoveryControlRoutingControl = ResourceType._(
    286,
    'Route53RecoveryControlRoutingControl',
    'AWS::Route53RecoveryControl::RoutingControl',
  );

  static const route53RecoveryControlSafetyRule = ResourceType._(
    287,
    'Route53RecoveryControlSafetyRule',
    'AWS::Route53RecoveryControl::SafetyRule',
  );

  static const route53RecoveryReadinessCell = ResourceType._(
    288,
    'Route53RecoveryReadinessCell',
    'AWS::Route53RecoveryReadiness::Cell',
  );

  static const route53RecoveryReadinessReadinessCheck = ResourceType._(
    289,
    'Route53RecoveryReadinessReadinessCheck',
    'AWS::Route53RecoveryReadiness::ReadinessCheck',
  );

  static const route53RecoveryReadinessRecoveryGroup = ResourceType._(
    290,
    'Route53RecoveryReadinessRecoveryGroup',
    'AWS::Route53RecoveryReadiness::RecoveryGroup',
  );

  static const route53RecoveryReadinessResourceSet = ResourceType._(
    291,
    'Route53RecoveryReadinessResourceSet',
    'AWS::Route53RecoveryReadiness::ResourceSet',
  );

  static const route53ResolverFirewallDomainList = ResourceType._(
    292,
    'Route53ResolverFirewallDomainList',
    'AWS::Route53Resolver::FirewallDomainList',
  );

  static const route53ResolverFirewallRuleGroupAssociation = ResourceType._(
    293,
    'Route53ResolverFirewallRuleGroupAssociation',
    'AWS::Route53Resolver::FirewallRuleGroupAssociation',
  );

  static const route53ResolverResolverEndpoint = ResourceType._(
    294,
    'Route53ResolverResolverEndpoint',
    'AWS::Route53Resolver::ResolverEndpoint',
  );

  static const route53ResolverResolverRule = ResourceType._(
    295,
    'Route53ResolverResolverRule',
    'AWS::Route53Resolver::ResolverRule',
  );

  static const route53ResolverResolverRuleAssociation = ResourceType._(
    296,
    'Route53ResolverResolverRuleAssociation',
    'AWS::Route53Resolver::ResolverRuleAssociation',
  );

  static const routeTable = ResourceType._(
    297,
    'RouteTable',
    'AWS::EC2::RouteTable',
  );

  static const rule = ResourceType._(
    298,
    'Rule',
    'AWS::WAF::Rule',
  );

  static const ruleGroup = ResourceType._(
    299,
    'RuleGroup',
    'AWS::WAF::RuleGroup',
  );

  static const ruleGroupV2 = ResourceType._(
    300,
    'RuleGroupV2',
    'AWS::WAFv2::RuleGroup',
  );

  static const rumAppMonitor = ResourceType._(
    301,
    'RUMAppMonitor',
    'AWS::RUM::AppMonitor',
  );

  static const s3AccessPoint = ResourceType._(
    302,
    'S3AccessPoint',
    'AWS::S3::AccessPoint',
  );

  static const s3MultiRegionAccessPoint = ResourceType._(
    303,
    'S3MultiRegionAccessPoint',
    'AWS::S3::MultiRegionAccessPoint',
  );

  static const s3StorageLens = ResourceType._(
    304,
    'S3StorageLens',
    'AWS::S3::StorageLens',
  );

  static const sageMakerAppImageConfig = ResourceType._(
    305,
    'SageMakerAppImageConfig',
    'AWS::SageMaker::AppImageConfig',
  );

  static const sageMakerCodeRepository = ResourceType._(
    306,
    'SageMakerCodeRepository',
    'AWS::SageMaker::CodeRepository',
  );

  static const sageMakerDomain = ResourceType._(
    307,
    'SageMakerDomain',
    'AWS::SageMaker::Domain',
  );

  static const sageMakerImage = ResourceType._(
    308,
    'SageMakerImage',
    'AWS::SageMaker::Image',
  );

  static const sageMakerModel = ResourceType._(
    309,
    'SageMakerModel',
    'AWS::SageMaker::Model',
  );

  static const sageMakerNotebookInstanceLifecycleConfig = ResourceType._(
    310,
    'SageMakerNotebookInstanceLifecycleConfig',
    'AWS::SageMaker::NotebookInstanceLifecycleConfig',
  );

  static const sageMakerWorkteam = ResourceType._(
    311,
    'SageMakerWorkteam',
    'AWS::SageMaker::Workteam',
  );

  static const scalingPolicy = ResourceType._(
    312,
    'ScalingPolicy',
    'AWS::AutoScaling::ScalingPolicy',
  );

  static const scheduledAction = ResourceType._(
    313,
    'ScheduledAction',
    'AWS::AutoScaling::ScheduledAction',
  );

  static const secret = ResourceType._(
    314,
    'Secret',
    'AWS::SecretsManager::Secret',
  );

  static const securityGroup = ResourceType._(
    315,
    'SecurityGroup',
    'AWS::EC2::SecurityGroup',
  );

  static const serviceDiscoveryHttpNamespace = ResourceType._(
    316,
    'ServiceDiscoveryHttpNamespace',
    'AWS::ServiceDiscovery::HttpNamespace',
  );

  static const serviceDiscoveryPublicDnsNamespace = ResourceType._(
    317,
    'ServiceDiscoveryPublicDnsNamespace',
    'AWS::ServiceDiscovery::PublicDnsNamespace',
  );

  static const serviceDiscoveryService = ResourceType._(
    318,
    'ServiceDiscoveryService',
    'AWS::ServiceDiscovery::Service',
  );

  static const sesConfigurationSet = ResourceType._(
    319,
    'SESConfigurationSet',
    'AWS::SES::ConfigurationSet',
  );

  static const sesContactList = ResourceType._(
    320,
    'SESContactList',
    'AWS::SES::ContactList',
  );

  static const sesReceiptFilter = ResourceType._(
    321,
    'SESReceiptFilter',
    'AWS::SES::ReceiptFilter',
  );

  static const sesReceiptRuleSet = ResourceType._(
    322,
    'SESReceiptRuleSet',
    'AWS::SES::ReceiptRuleSet',
  );

  static const sesTemplate = ResourceType._(
    323,
    'SESTemplate',
    'AWS::SES::Template',
  );

  static const signerSigningProfile = ResourceType._(
    324,
    'SignerSigningProfile',
    'AWS::Signer::SigningProfile',
  );

  static const stack = ResourceType._(
    325,
    'Stack',
    'AWS::CloudFormation::Stack',
  );

  static const stage = ResourceType._(
    326,
    'Stage',
    'AWS::ApiGateway::Stage',
  );

  static const stageV2 = ResourceType._(
    327,
    'StageV2',
    'AWS::ApiGatewayV2::Stage',
  );

  static const stepFunctionsActivity = ResourceType._(
    328,
    'StepFunctionsActivity',
    'AWS::StepFunctions::Activity',
  );

  static const stepFunctionsStateMachine = ResourceType._(
    329,
    'StepFunctionsStateMachine',
    'AWS::StepFunctions::StateMachine',
  );

  static const streamingDistribution = ResourceType._(
    330,
    'StreamingDistribution',
    'AWS::CloudFront::StreamingDistribution',
  );

  static const subnet = ResourceType._(
    331,
    'Subnet',
    'AWS::EC2::Subnet',
  );

  static const table = ResourceType._(
    332,
    'Table',
    'AWS::DynamoDB::Table',
  );

  static const topic = ResourceType._(
    333,
    'Topic',
    'AWS::SNS::Topic',
  );

  static const trail = ResourceType._(
    334,
    'Trail',
    'AWS::CloudTrail::Trail',
  );

  static const transferAgreement = ResourceType._(
    335,
    'TransferAgreement',
    'AWS::Transfer::Agreement',
  );

  static const transferConnector = ResourceType._(
    336,
    'TransferConnector',
    'AWS::Transfer::Connector',
  );

  static const transferWorkflow = ResourceType._(
    337,
    'TransferWorkflow',
    'AWS::Transfer::Workflow',
  );

  static const transitGateway = ResourceType._(
    338,
    'TransitGateway',
    'AWS::EC2::TransitGateway',
  );

  static const transitGatewayAttachment = ResourceType._(
    339,
    'TransitGatewayAttachment',
    'AWS::EC2::TransitGatewayAttachment',
  );

  static const transitGatewayRouteTable = ResourceType._(
    340,
    'TransitGatewayRouteTable',
    'AWS::EC2::TransitGatewayRouteTable',
  );

  static const user = ResourceType._(
    341,
    'User',
    'AWS::IAM::User',
  );

  static const volume = ResourceType._(
    342,
    'Volume',
    'AWS::EC2::Volume',
  );

  static const vpc = ResourceType._(
    343,
    'VPC',
    'AWS::EC2::VPC',
  );

  static const vpcEndpoint = ResourceType._(
    344,
    'VPCEndpoint',
    'AWS::EC2::VPCEndpoint',
  );

  static const vpcEndpointService = ResourceType._(
    345,
    'VPCEndpointService',
    'AWS::EC2::VPCEndpointService',
  );

  static const vpcPeeringConnection = ResourceType._(
    346,
    'VPCPeeringConnection',
    'AWS::EC2::VPCPeeringConnection',
  );

  static const vpnConnection = ResourceType._(
    347,
    'VPNConnection',
    'AWS::EC2::VPNConnection',
  );

  static const vpnGateway = ResourceType._(
    348,
    'VPNGateway',
    'AWS::EC2::VPNGateway',
  );

  static const webAcl = ResourceType._(
    349,
    'WebACL',
    'AWS::WAF::WebACL',
  );

  static const webAclv2 = ResourceType._(
    350,
    'WebACLV2',
    'AWS::WAFv2::WebACL',
  );

  static const workSpacesConnectionAlias = ResourceType._(
    351,
    'WorkSpacesConnectionAlias',
    'AWS::WorkSpaces::ConnectionAlias',
  );

  static const workSpacesWorkspace = ResourceType._(
    352,
    'WorkSpacesWorkspace',
    'AWS::WorkSpaces::Workspace',
  );

  /// All values of [ResourceType].
  static const values = <ResourceType>[
    ResourceType.accessAnalyzerAnalyzer,
    ResourceType.accountPublicAccessBlock,
    ResourceType.acmpcaCertificateAuthority,
    ResourceType.alarm,
    ResourceType.amazonMqBroker,
    ResourceType.amplifyApp,
    ResourceType.amplifyBranch,
    ResourceType.api,
    ResourceType.appConfigApplication,
    ResourceType.appConfigConfigurationProfile,
    ResourceType.appConfigDeploymentStrategy,
    ResourceType.appConfigEnvironment,
    ResourceType.appConfigHostedConfigurationVersion,
    ResourceType.appFlowFlow,
    ResourceType.appIntegrationsEventIntegration,
    ResourceType.appMeshRoute,
    ResourceType.appMeshVirtualGateway,
    ResourceType.appMeshVirtualNode,
    ResourceType.appMeshVirtualRouter,
    ResourceType.appMeshVirtualService,
    ResourceType.appRunnerService,
    ResourceType.appRunnerVpcConnector,
    ResourceType.appStreamApplication,
    ResourceType.appStreamDirectoryConfig,
    ResourceType.appSyncGraphQlApi,
    ResourceType.application,
    ResourceType.applicationVersion,
    ResourceType.associationCompliance,
    ResourceType.athenaDataCatalog,
    ResourceType.athenaPreparedStatement,
    ResourceType.athenaWorkGroup,
    ResourceType.auditManagerAssessment,
    ResourceType.autoScalingGroup,
    ResourceType.autoScalingWarmPool,
    ResourceType.backupPlan,
    ResourceType.backupRecoveryPoint,
    ResourceType.backupReportPlan,
    ResourceType.backupSelection,
    ResourceType.backupVault,
    ResourceType.batchComputeEnvironment,
    ResourceType.batchJobQueue,
    ResourceType.bucket,
    ResourceType.budgetsBudgetsAction,
    ResourceType.cassandraKeyspace,
    ResourceType.certificate,
    ResourceType.cloud9EnvironmentEc2,
    ResourceType.cloudFormationProduct,
    ResourceType.cloudFormationProvisionedProduct,
    ResourceType.cloudWatchMetricStream,
    ResourceType.cluster,
    ResourceType.clusterParameterGroup,
    ResourceType.clusterSecurityGroup,
    ResourceType.clusterSnapshot,
    ResourceType.clusterSubnetGroup,
    ResourceType.codeArtifactRepository,
    ResourceType.codeDeployApplication,
    ResourceType.codeDeployDeploymentConfig,
    ResourceType.codeDeployDeploymentGroup,
    ResourceType.codeGuruReviewerRepositoryAssociation,
    ResourceType.conformancePackCompliance,
    ResourceType.connectPhoneNumber,
    ResourceType.customerGateway,
    ResourceType.customerProfilesDomain,
    ResourceType.customerProfilesObjectType,
    ResourceType.dataSyncLocationEfs,
    ResourceType.dataSyncLocationFSxLustre,
    ResourceType.dataSyncLocationFSxWindows,
    ResourceType.dataSyncLocationHdfs,
    ResourceType.dataSyncLocationNfs,
    ResourceType.dataSyncLocationObjectStorage,
    ResourceType.dataSyncLocationS3,
    ResourceType.dataSyncLocationSmb,
    ResourceType.dataSyncTask,
    ResourceType.dbCluster,
    ResourceType.dbClusterSnapshot,
    ResourceType.dbInstance,
    ResourceType.dbSecurityGroup,
    ResourceType.dbSnapshot,
    ResourceType.dbSubnetGroup,
    ResourceType.detectiveGraph,
    ResourceType.deviceFarmInstanceProfile,
    ResourceType.deviceFarmProject,
    ResourceType.deviceFarmTestGridProject,
    ResourceType.distribution,
    ResourceType.dmsCertificate,
    ResourceType.dmsEndpoint,
    ResourceType.dmsEventSubscription,
    ResourceType.dmsReplicationSubnetGroup,
    ResourceType.domain,
    ResourceType.ec2CapacityReservation,
    ResourceType.ec2ClientVpnEndpoint,
    ResourceType.ec2DhcpOptions,
    ResourceType.ec2Ec2Fleet,
    ResourceType.ec2Ipam,
    ResourceType.ec2IpamScope,
    ResourceType.ec2NetworkInsightsPath,
    ResourceType.ec2PrefixList,
    ResourceType.ec2SpotFleet,
    ResourceType.ec2SubnetRouteTableAssociation,
    ResourceType.ec2TrafficMirrorFilter,
    ResourceType.ec2TrafficMirrorSession,
    ResourceType.ec2TrafficMirrorTarget,
    ResourceType.ecrPublicRepository,
    ResourceType.ecrPullThroughCacheRule,
    ResourceType.ecrRegistryPolicy,
    ResourceType.ecrRepository,
    ResourceType.ecsCluster,
    ResourceType.ecsService,
    ResourceType.ecsTaskDefinition,
    ResourceType.ecsTaskSet,
    ResourceType.efsAccessPoint,
    ResourceType.efsFileSystem,
    ResourceType.egressOnlyInternetGateway,
    ResourceType.eip,
    ResourceType.eksAddon,
    ResourceType.eksCluster,
    ResourceType.eksFargateProfile,
    ResourceType.eksIdentityProviderConfig,
    ResourceType.emrSecurityConfiguration,
    ResourceType.encryptionConfig,
    ResourceType.environment,
    ResourceType.eventSchemasDiscoverer,
    ResourceType.eventSchemasRegistry,
    ResourceType.eventSchemasRegistryPolicy,
    ResourceType.eventSchemasSchema,
    ResourceType.eventSubscription,
    ResourceType.eventsApiDestination,
    ResourceType.eventsArchive,
    ResourceType.eventsConnection,
    ResourceType.eventsEndpoint,
    ResourceType.eventsEventBus,
    ResourceType.eventsRule,
    ResourceType.evidentlyLaunch,
    ResourceType.evidentlyProject,
    ResourceType.fileData,
    ResourceType.fisExperimentTemplate,
    ResourceType.flowLog,
    ResourceType.forecastDataset,
    ResourceType.forecastDatasetGroup,
    ResourceType.fraudDetectorEntityType,
    ResourceType.fraudDetectorLabel,
    ResourceType.fraudDetectorOutcome,
    ResourceType.fraudDetectorVariable,
    ResourceType.function,
    ResourceType.globalAcceleratorAccelerator,
    ResourceType.globalAcceleratorEndpointGroup,
    ResourceType.globalAcceleratorListener,
    ResourceType.glueClassifier,
    ResourceType.glueJob,
    ResourceType.glueMlTransform,
    ResourceType.greengrassV2ComponentVersion,
    ResourceType.groundStationConfig,
    ResourceType.groundStationMissionProfile,
    ResourceType.group,
    ResourceType.guardDutyDetector,
    ResourceType.guardDutyFilter,
    ResourceType.guardDutyIpSet,
    ResourceType.guardDutyThreatIntelSet,
    ResourceType.healthLakeFhirDatastore,
    ResourceType.host,
    ResourceType.iamServerCertificate,
    ResourceType.iamsamlProvider,
    ResourceType.imageBuilderContainerRecipe,
    ResourceType.imageBuilderDistributionConfiguration,
    ResourceType.imageBuilderImagePipeline,
    ResourceType.imageBuilderInfrastructureConfiguration,
    ResourceType.instance,
    ResourceType.internetGateway,
    ResourceType.ioTAccountAuditConfiguration,
    ResourceType.ioTAnalyticsChannel,
    ResourceType.ioTAnalyticsDataset,
    ResourceType.ioTAnalyticsDatastore,
    ResourceType.ioTAnalyticsPipeline,
    ResourceType.ioTAuthorizer,
    ResourceType.ioTCustomMetric,
    ResourceType.ioTDimension,
    ResourceType.ioTEventsAlarmModel,
    ResourceType.ioTEventsDetectorModel,
    ResourceType.ioTEventsInput,
    ResourceType.ioTFleetMetric,
    ResourceType.ioTMitigationAction,
    ResourceType.ioTPolicy,
    ResourceType.ioTRoleAlias,
    ResourceType.ioTScheduledAudit,
    ResourceType.ioTSecurityProfile,
    ResourceType.ioTSiteWiseAssetModel,
    ResourceType.ioTSiteWiseDashboard,
    ResourceType.ioTSiteWiseGateway,
    ResourceType.ioTSiteWisePortal,
    ResourceType.ioTSiteWiseProject,
    ResourceType.ioTTwinMakerEntity,
    ResourceType.ioTTwinMakerScene,
    ResourceType.ioTTwinMakerWorkspace,
    ResourceType.ioTWirelessServiceProfile,
    ResourceType.ipSetV2,
    ResourceType.ivsChannel,
    ResourceType.ivsPlaybackKeyPair,
    ResourceType.ivsRecordingConfiguration,
    ResourceType.kendraIndex,
    ResourceType.key,
    ResourceType.kinesisAnalyticsV2Application,
    ResourceType.kinesisFirehoseDeliveryStream,
    ResourceType.kinesisStream,
    ResourceType.kinesisStreamConsumer,
    ResourceType.kinesisVideoSignalingChannel,
    ResourceType.kinesisVideoStream,
    ResourceType.launchConfiguration,
    ResourceType.launchTemplate,
    ResourceType.lexBot,
    ResourceType.lexBotAlias,
    ResourceType.lightsailBucket,
    ResourceType.lightsailCertificate,
    ResourceType.lightsailDisk,
    ResourceType.lightsailStaticIp,
    ResourceType.listenerV2,
    ResourceType.loadBalancer,
    ResourceType.loadBalancerV2,
    ResourceType.logsDestination,
    ResourceType.lookoutMetricsAlert,
    ResourceType.lookoutVisionProject,
    ResourceType.managedInstanceInventory,
    ResourceType.managedRuleSetV2,
    ResourceType.mediaConnectFlowEntitlement,
    ResourceType.mediaConnectFlowVpcInterface,
    ResourceType.mediaPackagePackagingConfiguration,
    ResourceType.mediaPackagePackagingGroup,
    ResourceType.mediaTailorPlaybackConfiguration,
    ResourceType.mskCluster,
    ResourceType.mskConfiguration,
    ResourceType.natGateway,
    ResourceType.networkAcl,
    ResourceType.networkFirewallFirewall,
    ResourceType.networkFirewallFirewallPolicy,
    ResourceType.networkFirewallRuleGroup,
    ResourceType.networkInsightsAccessScopeAnalysis,
    ResourceType.networkInterface,
    ResourceType.networkManagerCustomerGatewayAssociation,
    ResourceType.networkManagerDevice,
    ResourceType.networkManagerGlobalNetwork,
    ResourceType.networkManagerLink,
    ResourceType.networkManagerLinkAssociation,
    ResourceType.networkManagerSite,
    ResourceType.networkManagerTransitGatewayRegistration,
    ResourceType.openSearchDomain,
    ResourceType.panoramaPackage,
    ResourceType.patchCompliance,
    ResourceType.personalizeDataset,
    ResourceType.personalizeSchema,
    ResourceType.personalizeSolution,
    ResourceType.pinpointApp,
    ResourceType.pinpointApplicationSettings,
    ResourceType.pinpointCampaign,
    ResourceType.pinpointEmailChannel,
    ResourceType.pinpointEmailTemplate,
    ResourceType.pinpointEventStream,
    ResourceType.pinpointInAppTemplate,
    ResourceType.pinpointSegment,
    ResourceType.pipeline,
    ResourceType.policy,
    ResourceType.portfolio,
    ResourceType.project,
    ResourceType.protection,
    ResourceType.qldbLedger,
    ResourceType.queue,
    ResourceType.rateBasedRule,
    ResourceType.rdsGlobalCluster,
    ResourceType.redshiftEventSubscription,
    ResourceType.redshiftScheduledAction,
    ResourceType.regexPatternSetV2,
    ResourceType.regionalProtection,
    ResourceType.regionalRateBasedRule,
    ResourceType.regionalRule,
    ResourceType.regionalRuleGroup,
    ResourceType.regionalWebAcl,
    ResourceType.registeredHaInstance,
    ResourceType.resilienceHubApp,
    ResourceType.resilienceHubResiliencyPolicy,
    ResourceType.resourceCompliance,
    ResourceType.restApi,
    ResourceType.roboMakerRobotApplication,
    ResourceType.roboMakerRobotApplicationVersion,
    ResourceType.roboMakerSimulationApplication,
    ResourceType.role,
    ResourceType.route53HostedZone,
    ResourceType.route53RecoveryControlCluster,
    ResourceType.route53RecoveryControlControlPanel,
    ResourceType.route53RecoveryControlRoutingControl,
    ResourceType.route53RecoveryControlSafetyRule,
    ResourceType.route53RecoveryReadinessCell,
    ResourceType.route53RecoveryReadinessReadinessCheck,
    ResourceType.route53RecoveryReadinessRecoveryGroup,
    ResourceType.route53RecoveryReadinessResourceSet,
    ResourceType.route53ResolverFirewallDomainList,
    ResourceType.route53ResolverFirewallRuleGroupAssociation,
    ResourceType.route53ResolverResolverEndpoint,
    ResourceType.route53ResolverResolverRule,
    ResourceType.route53ResolverResolverRuleAssociation,
    ResourceType.routeTable,
    ResourceType.rule,
    ResourceType.ruleGroup,
    ResourceType.ruleGroupV2,
    ResourceType.rumAppMonitor,
    ResourceType.s3AccessPoint,
    ResourceType.s3MultiRegionAccessPoint,
    ResourceType.s3StorageLens,
    ResourceType.sageMakerAppImageConfig,
    ResourceType.sageMakerCodeRepository,
    ResourceType.sageMakerDomain,
    ResourceType.sageMakerImage,
    ResourceType.sageMakerModel,
    ResourceType.sageMakerNotebookInstanceLifecycleConfig,
    ResourceType.sageMakerWorkteam,
    ResourceType.scalingPolicy,
    ResourceType.scheduledAction,
    ResourceType.secret,
    ResourceType.securityGroup,
    ResourceType.serviceDiscoveryHttpNamespace,
    ResourceType.serviceDiscoveryPublicDnsNamespace,
    ResourceType.serviceDiscoveryService,
    ResourceType.sesConfigurationSet,
    ResourceType.sesContactList,
    ResourceType.sesReceiptFilter,
    ResourceType.sesReceiptRuleSet,
    ResourceType.sesTemplate,
    ResourceType.signerSigningProfile,
    ResourceType.stack,
    ResourceType.stage,
    ResourceType.stageV2,
    ResourceType.stepFunctionsActivity,
    ResourceType.stepFunctionsStateMachine,
    ResourceType.streamingDistribution,
    ResourceType.subnet,
    ResourceType.table,
    ResourceType.topic,
    ResourceType.trail,
    ResourceType.transferAgreement,
    ResourceType.transferConnector,
    ResourceType.transferWorkflow,
    ResourceType.transitGateway,
    ResourceType.transitGatewayAttachment,
    ResourceType.transitGatewayRouteTable,
    ResourceType.user,
    ResourceType.volume,
    ResourceType.vpc,
    ResourceType.vpcEndpoint,
    ResourceType.vpcEndpointService,
    ResourceType.vpcPeeringConnection,
    ResourceType.vpnConnection,
    ResourceType.vpnGateway,
    ResourceType.webAcl,
    ResourceType.webAclv2,
    ResourceType.workSpacesConnectionAlias,
    ResourceType.workSpacesWorkspace,
  ];

  static const List<_i1.SmithySerializer<ResourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceType',
      values: values,
      sdkUnknown: ResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ResourceTypeHelpers on List<ResourceType> {
  /// Returns the value of [ResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceType] whose value matches [value].
  ResourceType byValue(String value) => firstWhere((el) => el.value == value);
}
