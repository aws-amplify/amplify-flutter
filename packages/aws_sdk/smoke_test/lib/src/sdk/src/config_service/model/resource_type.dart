// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceType extends _i1.SmithyEnum<ResourceType> {
  const ResourceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceType._sdkUnknown(String value) : super.sdkUnknown(value);

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

  static const alarm = ResourceType._(
    2,
    'Alarm',
    'AWS::CloudWatch::Alarm',
  );

  static const amazonMqBroker = ResourceType._(
    3,
    'AmazonMQBroker',
    'AWS::AmazonMQ::Broker',
  );

  static const amplifyApp = ResourceType._(
    4,
    'AmplifyApp',
    'AWS::Amplify::App',
  );

  static const api = ResourceType._(
    5,
    'Api',
    'AWS::ApiGatewayV2::Api',
  );

  static const appConfigApplication = ResourceType._(
    6,
    'AppConfigApplication',
    'AWS::AppConfig::Application',
  );

  static const appConfigConfigurationProfile = ResourceType._(
    7,
    'AppConfigConfigurationProfile',
    'AWS::AppConfig::ConfigurationProfile',
  );

  static const appConfigDeploymentStrategy = ResourceType._(
    8,
    'AppConfigDeploymentStrategy',
    'AWS::AppConfig::DeploymentStrategy',
  );

  static const appConfigEnvironment = ResourceType._(
    9,
    'AppConfigEnvironment',
    'AWS::AppConfig::Environment',
  );

  static const appFlowFlow = ResourceType._(
    10,
    'AppFlowFlow',
    'AWS::AppFlow::Flow',
  );

  static const appMeshVirtualNode = ResourceType._(
    11,
    'AppMeshVirtualNode',
    'AWS::AppMesh::VirtualNode',
  );

  static const appMeshVirtualService = ResourceType._(
    12,
    'AppMeshVirtualService',
    'AWS::AppMesh::VirtualService',
  );

  static const appRunnerVpcConnector = ResourceType._(
    13,
    'AppRunnerVpcConnector',
    'AWS::AppRunner::VpcConnector',
  );

  static const appStreamApplication = ResourceType._(
    14,
    'AppStreamApplication',
    'AWS::AppStream::Application',
  );

  static const appStreamDirectoryConfig = ResourceType._(
    15,
    'AppStreamDirectoryConfig',
    'AWS::AppStream::DirectoryConfig',
  );

  static const appSyncGraphQlApi = ResourceType._(
    16,
    'AppSyncGraphQLApi',
    'AWS::AppSync::GraphQLApi',
  );

  static const application = ResourceType._(
    17,
    'Application',
    'AWS::ElasticBeanstalk::Application',
  );

  static const applicationVersion = ResourceType._(
    18,
    'ApplicationVersion',
    'AWS::ElasticBeanstalk::ApplicationVersion',
  );

  static const associationCompliance = ResourceType._(
    19,
    'AssociationCompliance',
    'AWS::SSM::AssociationCompliance',
  );

  static const athenaDataCatalog = ResourceType._(
    20,
    'AthenaDataCatalog',
    'AWS::Athena::DataCatalog',
  );

  static const athenaWorkGroup = ResourceType._(
    21,
    'AthenaWorkGroup',
    'AWS::Athena::WorkGroup',
  );

  static const auditManagerAssessment = ResourceType._(
    22,
    'AuditManagerAssessment',
    'AWS::AuditManager::Assessment',
  );

  static const autoScalingGroup = ResourceType._(
    23,
    'AutoScalingGroup',
    'AWS::AutoScaling::AutoScalingGroup',
  );

  static const autoScalingWarmPool = ResourceType._(
    24,
    'AutoScalingWarmPool',
    'AWS::AutoScaling::WarmPool',
  );

  static const backupPlan = ResourceType._(
    25,
    'BackupPlan',
    'AWS::Backup::BackupPlan',
  );

  static const backupRecoveryPoint = ResourceType._(
    26,
    'BackupRecoveryPoint',
    'AWS::Backup::RecoveryPoint',
  );

  static const backupReportPlan = ResourceType._(
    27,
    'BackupReportPlan',
    'AWS::Backup::ReportPlan',
  );

  static const backupSelection = ResourceType._(
    28,
    'BackupSelection',
    'AWS::Backup::BackupSelection',
  );

  static const backupVault = ResourceType._(
    29,
    'BackupVault',
    'AWS::Backup::BackupVault',
  );

  static const batchComputeEnvironment = ResourceType._(
    30,
    'BatchComputeEnvironment',
    'AWS::Batch::ComputeEnvironment',
  );

  static const batchJobQueue = ResourceType._(
    31,
    'BatchJobQueue',
    'AWS::Batch::JobQueue',
  );

  static const bucket = ResourceType._(
    32,
    'Bucket',
    'AWS::S3::Bucket',
  );

  static const budgetsBudgetsAction = ResourceType._(
    33,
    'BudgetsBudgetsAction',
    'AWS::Budgets::BudgetsAction',
  );

  static const cassandraKeyspace = ResourceType._(
    34,
    'CassandraKeyspace',
    'AWS::Cassandra::Keyspace',
  );

  static const certificate = ResourceType._(
    35,
    'Certificate',
    'AWS::ACM::Certificate',
  );

  static const cloud9EnvironmentEc2 = ResourceType._(
    36,
    'Cloud9EnvironmentEC2',
    'AWS::Cloud9::EnvironmentEC2',
  );

  static const cloudFormationProduct = ResourceType._(
    37,
    'CloudFormationProduct',
    'AWS::ServiceCatalog::CloudFormationProduct',
  );

  static const cloudFormationProvisionedProduct = ResourceType._(
    38,
    'CloudFormationProvisionedProduct',
    'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  );

  static const cloudWatchMetricStream = ResourceType._(
    39,
    'CloudWatchMetricStream',
    'AWS::CloudWatch::MetricStream',
  );

  static const cluster = ResourceType._(
    40,
    'Cluster',
    'AWS::Redshift::Cluster',
  );

  static const clusterParameterGroup = ResourceType._(
    41,
    'ClusterParameterGroup',
    'AWS::Redshift::ClusterParameterGroup',
  );

  static const clusterSecurityGroup = ResourceType._(
    42,
    'ClusterSecurityGroup',
    'AWS::Redshift::ClusterSecurityGroup',
  );

  static const clusterSnapshot = ResourceType._(
    43,
    'ClusterSnapshot',
    'AWS::Redshift::ClusterSnapshot',
  );

  static const clusterSubnetGroup = ResourceType._(
    44,
    'ClusterSubnetGroup',
    'AWS::Redshift::ClusterSubnetGroup',
  );

  static const codeArtifactRepository = ResourceType._(
    45,
    'CodeArtifactRepository',
    'AWS::CodeArtifact::Repository',
  );

  static const codeDeployApplication = ResourceType._(
    46,
    'CodeDeployApplication',
    'AWS::CodeDeploy::Application',
  );

  static const codeDeployDeploymentConfig = ResourceType._(
    47,
    'CodeDeployDeploymentConfig',
    'AWS::CodeDeploy::DeploymentConfig',
  );

  static const codeDeployDeploymentGroup = ResourceType._(
    48,
    'CodeDeployDeploymentGroup',
    'AWS::CodeDeploy::DeploymentGroup',
  );

  static const codeGuruReviewerRepositoryAssociation = ResourceType._(
    49,
    'CodeGuruReviewerRepositoryAssociation',
    'AWS::CodeGuruReviewer::RepositoryAssociation',
  );

  static const conformancePackCompliance = ResourceType._(
    50,
    'ConformancePackCompliance',
    'AWS::Config::ConformancePackCompliance',
  );

  static const connectPhoneNumber = ResourceType._(
    51,
    'ConnectPhoneNumber',
    'AWS::Connect::PhoneNumber',
  );

  static const customerGateway = ResourceType._(
    52,
    'CustomerGateway',
    'AWS::EC2::CustomerGateway',
  );

  static const customerProfilesDomain = ResourceType._(
    53,
    'CustomerProfilesDomain',
    'AWS::CustomerProfiles::Domain',
  );

  static const dataSyncLocationEfs = ResourceType._(
    54,
    'DataSyncLocationEFS',
    'AWS::DataSync::LocationEFS',
  );

  static const dataSyncLocationFSxLustre = ResourceType._(
    55,
    'DataSyncLocationFSxLustre',
    'AWS::DataSync::LocationFSxLustre',
  );

  static const dataSyncLocationFSxWindows = ResourceType._(
    56,
    'DataSyncLocationFSxWindows',
    'AWS::DataSync::LocationFSxWindows',
  );

  static const dataSyncLocationHdfs = ResourceType._(
    57,
    'DataSyncLocationHDFS',
    'AWS::DataSync::LocationHDFS',
  );

  static const dataSyncLocationNfs = ResourceType._(
    58,
    'DataSyncLocationNFS',
    'AWS::DataSync::LocationNFS',
  );

  static const dataSyncLocationObjectStorage = ResourceType._(
    59,
    'DataSyncLocationObjectStorage',
    'AWS::DataSync::LocationObjectStorage',
  );

  static const dataSyncLocationS3 = ResourceType._(
    60,
    'DataSyncLocationS3',
    'AWS::DataSync::LocationS3',
  );

  static const dataSyncLocationSmb = ResourceType._(
    61,
    'DataSyncLocationSMB',
    'AWS::DataSync::LocationSMB',
  );

  static const dataSyncTask = ResourceType._(
    62,
    'DataSyncTask',
    'AWS::DataSync::Task',
  );

  static const dbCluster = ResourceType._(
    63,
    'DBCluster',
    'AWS::RDS::DBCluster',
  );

  static const dbClusterSnapshot = ResourceType._(
    64,
    'DBClusterSnapshot',
    'AWS::RDS::DBClusterSnapshot',
  );

  static const dbInstance = ResourceType._(
    65,
    'DBInstance',
    'AWS::RDS::DBInstance',
  );

  static const dbSecurityGroup = ResourceType._(
    66,
    'DBSecurityGroup',
    'AWS::RDS::DBSecurityGroup',
  );

  static const dbSnapshot = ResourceType._(
    67,
    'DBSnapshot',
    'AWS::RDS::DBSnapshot',
  );

  static const dbSubnetGroup = ResourceType._(
    68,
    'DBSubnetGroup',
    'AWS::RDS::DBSubnetGroup',
  );

  static const detectiveGraph = ResourceType._(
    69,
    'DetectiveGraph',
    'AWS::Detective::Graph',
  );

  static const deviceFarmInstanceProfile = ResourceType._(
    70,
    'DeviceFarmInstanceProfile',
    'AWS::DeviceFarm::InstanceProfile',
  );

  static const deviceFarmProject = ResourceType._(
    71,
    'DeviceFarmProject',
    'AWS::DeviceFarm::Project',
  );

  static const deviceFarmTestGridProject = ResourceType._(
    72,
    'DeviceFarmTestGridProject',
    'AWS::DeviceFarm::TestGridProject',
  );

  static const distribution = ResourceType._(
    73,
    'Distribution',
    'AWS::CloudFront::Distribution',
  );

  static const dmsCertificate = ResourceType._(
    74,
    'DMSCertificate',
    'AWS::DMS::Certificate',
  );

  static const dmsEventSubscription = ResourceType._(
    75,
    'DMSEventSubscription',
    'AWS::DMS::EventSubscription',
  );

  static const dmsReplicationSubnetGroup = ResourceType._(
    76,
    'DMSReplicationSubnetGroup',
    'AWS::DMS::ReplicationSubnetGroup',
  );

  static const domain = ResourceType._(
    77,
    'Domain',
    'AWS::Elasticsearch::Domain',
  );

  static const ec2DhcpOptions = ResourceType._(
    78,
    'EC2DHCPOptions',
    'AWS::EC2::DHCPOptions',
  );

  static const ec2Ec2Fleet = ResourceType._(
    79,
    'EC2EC2Fleet',
    'AWS::EC2::EC2Fleet',
  );

  static const ec2Ipam = ResourceType._(
    80,
    'EC2IPAM',
    'AWS::EC2::IPAM',
  );

  static const ec2NetworkInsightsPath = ResourceType._(
    81,
    'EC2NetworkInsightsPath',
    'AWS::EC2::NetworkInsightsPath',
  );

  static const ec2PrefixList = ResourceType._(
    82,
    'EC2PrefixList',
    'AWS::EC2::PrefixList',
  );

  static const ec2SpotFleet = ResourceType._(
    83,
    'EC2SpotFleet',
    'AWS::EC2::SpotFleet',
  );

  static const ec2SubnetRouteTableAssociation = ResourceType._(
    84,
    'EC2SubnetRouteTableAssociation',
    'AWS::EC2::SubnetRouteTableAssociation',
  );

  static const ec2TrafficMirrorFilter = ResourceType._(
    85,
    'EC2TrafficMirrorFilter',
    'AWS::EC2::TrafficMirrorFilter',
  );

  static const ec2TrafficMirrorSession = ResourceType._(
    86,
    'EC2TrafficMirrorSession',
    'AWS::EC2::TrafficMirrorSession',
  );

  static const ec2TrafficMirrorTarget = ResourceType._(
    87,
    'EC2TrafficMirrorTarget',
    'AWS::EC2::TrafficMirrorTarget',
  );

  static const ecrPublicRepository = ResourceType._(
    88,
    'ECRPublicRepository',
    'AWS::ECR::PublicRepository',
  );

  static const ecrPullThroughCacheRule = ResourceType._(
    89,
    'ECRPullThroughCacheRule',
    'AWS::ECR::PullThroughCacheRule',
  );

  static const ecrRegistryPolicy = ResourceType._(
    90,
    'ECRRegistryPolicy',
    'AWS::ECR::RegistryPolicy',
  );

  static const ecrRepository = ResourceType._(
    91,
    'ECRRepository',
    'AWS::ECR::Repository',
  );

  static const ecsCluster = ResourceType._(
    92,
    'ECSCluster',
    'AWS::ECS::Cluster',
  );

  static const ecsService = ResourceType._(
    93,
    'ECSService',
    'AWS::ECS::Service',
  );

  static const ecsTaskDefinition = ResourceType._(
    94,
    'ECSTaskDefinition',
    'AWS::ECS::TaskDefinition',
  );

  static const ecsTaskSet = ResourceType._(
    95,
    'ECSTaskSet',
    'AWS::ECS::TaskSet',
  );

  static const efsAccessPoint = ResourceType._(
    96,
    'EFSAccessPoint',
    'AWS::EFS::AccessPoint',
  );

  static const efsFileSystem = ResourceType._(
    97,
    'EFSFileSystem',
    'AWS::EFS::FileSystem',
  );

  static const egressOnlyInternetGateway = ResourceType._(
    98,
    'EgressOnlyInternetGateway',
    'AWS::EC2::EgressOnlyInternetGateway',
  );

  static const eip = ResourceType._(
    99,
    'EIP',
    'AWS::EC2::EIP',
  );

  static const eksAddon = ResourceType._(
    100,
    'EKSAddon',
    'AWS::EKS::Addon',
  );

  static const eksCluster = ResourceType._(
    101,
    'EKSCluster',
    'AWS::EKS::Cluster',
  );

  static const eksFargateProfile = ResourceType._(
    102,
    'EKSFargateProfile',
    'AWS::EKS::FargateProfile',
  );

  static const eksIdentityProviderConfig = ResourceType._(
    103,
    'EKSIdentityProviderConfig',
    'AWS::EKS::IdentityProviderConfig',
  );

  static const emrSecurityConfiguration = ResourceType._(
    104,
    'EMRSecurityConfiguration',
    'AWS::EMR::SecurityConfiguration',
  );

  static const encryptionConfig = ResourceType._(
    105,
    'EncryptionConfig',
    'AWS::XRay::EncryptionConfig',
  );

  static const environment = ResourceType._(
    106,
    'Environment',
    'AWS::ElasticBeanstalk::Environment',
  );

  static const eventSchemasDiscoverer = ResourceType._(
    107,
    'EventSchemasDiscoverer',
    'AWS::EventSchemas::Discoverer',
  );

  static const eventSchemasRegistry = ResourceType._(
    108,
    'EventSchemasRegistry',
    'AWS::EventSchemas::Registry',
  );

  static const eventSchemasRegistryPolicy = ResourceType._(
    109,
    'EventSchemasRegistryPolicy',
    'AWS::EventSchemas::RegistryPolicy',
  );

  static const eventSchemasSchema = ResourceType._(
    110,
    'EventSchemasSchema',
    'AWS::EventSchemas::Schema',
  );

  static const eventSubscription = ResourceType._(
    111,
    'EventSubscription',
    'AWS::RDS::EventSubscription',
  );

  static const eventsApiDestination = ResourceType._(
    112,
    'EventsApiDestination',
    'AWS::Events::ApiDestination',
  );

  static const eventsArchive = ResourceType._(
    113,
    'EventsArchive',
    'AWS::Events::Archive',
  );

  static const eventsConnection = ResourceType._(
    114,
    'EventsConnection',
    'AWS::Events::Connection',
  );

  static const eventsEndpoint = ResourceType._(
    115,
    'EventsEndpoint',
    'AWS::Events::Endpoint',
  );

  static const eventsEventBus = ResourceType._(
    116,
    'EventsEventBus',
    'AWS::Events::EventBus',
  );

  static const eventsRule = ResourceType._(
    117,
    'EventsRule',
    'AWS::Events::Rule',
  );

  static const evidentlyProject = ResourceType._(
    118,
    'EvidentlyProject',
    'AWS::Evidently::Project',
  );

  static const fileData = ResourceType._(
    119,
    'FileData',
    'AWS::SSM::FileData',
  );

  static const fisExperimentTemplate = ResourceType._(
    120,
    'FISExperimentTemplate',
    'AWS::FIS::ExperimentTemplate',
  );

  static const flowLog = ResourceType._(
    121,
    'FlowLog',
    'AWS::EC2::FlowLog',
  );

  static const forecastDataset = ResourceType._(
    122,
    'ForecastDataset',
    'AWS::Forecast::Dataset',
  );

  static const fraudDetectorEntityType = ResourceType._(
    123,
    'FraudDetectorEntityType',
    'AWS::FraudDetector::EntityType',
  );

  static const fraudDetectorLabel = ResourceType._(
    124,
    'FraudDetectorLabel',
    'AWS::FraudDetector::Label',
  );

  static const fraudDetectorOutcome = ResourceType._(
    125,
    'FraudDetectorOutcome',
    'AWS::FraudDetector::Outcome',
  );

  static const fraudDetectorVariable = ResourceType._(
    126,
    'FraudDetectorVariable',
    'AWS::FraudDetector::Variable',
  );

  static const function = ResourceType._(
    127,
    'Function',
    'AWS::Lambda::Function',
  );

  static const globalAcceleratorAccelerator = ResourceType._(
    128,
    'GlobalAcceleratorAccelerator',
    'AWS::GlobalAccelerator::Accelerator',
  );

  static const globalAcceleratorEndpointGroup = ResourceType._(
    129,
    'GlobalAcceleratorEndpointGroup',
    'AWS::GlobalAccelerator::EndpointGroup',
  );

  static const globalAcceleratorListener = ResourceType._(
    130,
    'GlobalAcceleratorListener',
    'AWS::GlobalAccelerator::Listener',
  );

  static const glueClassifier = ResourceType._(
    131,
    'GlueClassifier',
    'AWS::Glue::Classifier',
  );

  static const glueJob = ResourceType._(
    132,
    'GlueJob',
    'AWS::Glue::Job',
  );

  static const glueMlTransform = ResourceType._(
    133,
    'GlueMLTransform',
    'AWS::Glue::MLTransform',
  );

  static const groundStationConfig = ResourceType._(
    134,
    'GroundStationConfig',
    'AWS::GroundStation::Config',
  );

  static const group = ResourceType._(
    135,
    'Group',
    'AWS::IAM::Group',
  );

  static const guardDutyDetector = ResourceType._(
    136,
    'GuardDutyDetector',
    'AWS::GuardDuty::Detector',
  );

  static const guardDutyFilter = ResourceType._(
    137,
    'GuardDutyFilter',
    'AWS::GuardDuty::Filter',
  );

  static const guardDutyIpSet = ResourceType._(
    138,
    'GuardDutyIPSet',
    'AWS::GuardDuty::IPSet',
  );

  static const guardDutyThreatIntelSet = ResourceType._(
    139,
    'GuardDutyThreatIntelSet',
    'AWS::GuardDuty::ThreatIntelSet',
  );

  static const healthLakeFhirDatastore = ResourceType._(
    140,
    'HealthLakeFHIRDatastore',
    'AWS::HealthLake::FHIRDatastore',
  );

  static const host = ResourceType._(
    141,
    'Host',
    'AWS::EC2::Host',
  );

  static const iamServerCertificate = ResourceType._(
    142,
    'IAMServerCertificate',
    'AWS::IAM::ServerCertificate',
  );

  static const iamsamlProvider = ResourceType._(
    143,
    'IAMSAMLProvider',
    'AWS::IAM::SAMLProvider',
  );

  static const imageBuilderContainerRecipe = ResourceType._(
    144,
    'ImageBuilderContainerRecipe',
    'AWS::ImageBuilder::ContainerRecipe',
  );

  static const imageBuilderDistributionConfiguration = ResourceType._(
    145,
    'ImageBuilderDistributionConfiguration',
    'AWS::ImageBuilder::DistributionConfiguration',
  );

  static const imageBuilderImagePipeline = ResourceType._(
    146,
    'ImageBuilderImagePipeline',
    'AWS::ImageBuilder::ImagePipeline',
  );

  static const imageBuilderInfrastructureConfiguration = ResourceType._(
    147,
    'ImageBuilderInfrastructureConfiguration',
    'AWS::ImageBuilder::InfrastructureConfiguration',
  );

  static const instance = ResourceType._(
    148,
    'Instance',
    'AWS::EC2::Instance',
  );

  static const internetGateway = ResourceType._(
    149,
    'InternetGateway',
    'AWS::EC2::InternetGateway',
  );

  static const ioTAccountAuditConfiguration = ResourceType._(
    150,
    'IoTAccountAuditConfiguration',
    'AWS::IoT::AccountAuditConfiguration',
  );

  static const ioTAnalyticsChannel = ResourceType._(
    151,
    'IoTAnalyticsChannel',
    'AWS::IoTAnalytics::Channel',
  );

  static const ioTAnalyticsDataset = ResourceType._(
    152,
    'IoTAnalyticsDataset',
    'AWS::IoTAnalytics::Dataset',
  );

  static const ioTAnalyticsDatastore = ResourceType._(
    153,
    'IoTAnalyticsDatastore',
    'AWS::IoTAnalytics::Datastore',
  );

  static const ioTAnalyticsPipeline = ResourceType._(
    154,
    'IoTAnalyticsPipeline',
    'AWS::IoTAnalytics::Pipeline',
  );

  static const ioTAuthorizer = ResourceType._(
    155,
    'IoTAuthorizer',
    'AWS::IoT::Authorizer',
  );

  static const ioTCustomMetric = ResourceType._(
    156,
    'IoTCustomMetric',
    'AWS::IoT::CustomMetric',
  );

  static const ioTDimension = ResourceType._(
    157,
    'IoTDimension',
    'AWS::IoT::Dimension',
  );

  static const ioTEventsAlarmModel = ResourceType._(
    158,
    'IoTEventsAlarmModel',
    'AWS::IoTEvents::AlarmModel',
  );

  static const ioTEventsDetectorModel = ResourceType._(
    159,
    'IoTEventsDetectorModel',
    'AWS::IoTEvents::DetectorModel',
  );

  static const ioTEventsInput = ResourceType._(
    160,
    'IoTEventsInput',
    'AWS::IoTEvents::Input',
  );

  static const ioTFleetMetric = ResourceType._(
    161,
    'IoTFleetMetric',
    'AWS::IoT::FleetMetric',
  );

  static const ioTMitigationAction = ResourceType._(
    162,
    'IoTMitigationAction',
    'AWS::IoT::MitigationAction',
  );

  static const ioTPolicy = ResourceType._(
    163,
    'IoTPolicy',
    'AWS::IoT::Policy',
  );

  static const ioTRoleAlias = ResourceType._(
    164,
    'IoTRoleAlias',
    'AWS::IoT::RoleAlias',
  );

  static const ioTScheduledAudit = ResourceType._(
    165,
    'IoTScheduledAudit',
    'AWS::IoT::ScheduledAudit',
  );

  static const ioTSecurityProfile = ResourceType._(
    166,
    'IoTSecurityProfile',
    'AWS::IoT::SecurityProfile',
  );

  static const ioTSiteWiseAssetModel = ResourceType._(
    167,
    'IoTSiteWiseAssetModel',
    'AWS::IoTSiteWise::AssetModel',
  );

  static const ioTSiteWiseDashboard = ResourceType._(
    168,
    'IoTSiteWiseDashboard',
    'AWS::IoTSiteWise::Dashboard',
  );

  static const ioTSiteWiseGateway = ResourceType._(
    169,
    'IoTSiteWiseGateway',
    'AWS::IoTSiteWise::Gateway',
  );

  static const ioTSiteWisePortal = ResourceType._(
    170,
    'IoTSiteWisePortal',
    'AWS::IoTSiteWise::Portal',
  );

  static const ioTSiteWiseProject = ResourceType._(
    171,
    'IoTSiteWiseProject',
    'AWS::IoTSiteWise::Project',
  );

  static const ioTTwinMakerEntity = ResourceType._(
    172,
    'IoTTwinMakerEntity',
    'AWS::IoTTwinMaker::Entity',
  );

  static const ioTTwinMakerScene = ResourceType._(
    173,
    'IoTTwinMakerScene',
    'AWS::IoTTwinMaker::Scene',
  );

  static const ioTTwinMakerWorkspace = ResourceType._(
    174,
    'IoTTwinMakerWorkspace',
    'AWS::IoTTwinMaker::Workspace',
  );

  static const ioTWirelessServiceProfile = ResourceType._(
    175,
    'IoTWirelessServiceProfile',
    'AWS::IoTWireless::ServiceProfile',
  );

  static const ipSetV2 = ResourceType._(
    176,
    'IPSetV2',
    'AWS::WAFv2::IPSet',
  );

  static const ivsChannel = ResourceType._(
    177,
    'IVSChannel',
    'AWS::IVS::Channel',
  );

  static const ivsPlaybackKeyPair = ResourceType._(
    178,
    'IVSPlaybackKeyPair',
    'AWS::IVS::PlaybackKeyPair',
  );

  static const ivsRecordingConfiguration = ResourceType._(
    179,
    'IVSRecordingConfiguration',
    'AWS::IVS::RecordingConfiguration',
  );

  static const key = ResourceType._(
    180,
    'Key',
    'AWS::KMS::Key',
  );

  static const kinesisAnalyticsV2Application = ResourceType._(
    181,
    'KinesisAnalyticsV2Application',
    'AWS::KinesisAnalyticsV2::Application',
  );

  static const kinesisFirehoseDeliveryStream = ResourceType._(
    182,
    'KinesisFirehoseDeliveryStream',
    'AWS::KinesisFirehose::DeliveryStream',
  );

  static const kinesisStream = ResourceType._(
    183,
    'KinesisStream',
    'AWS::Kinesis::Stream',
  );

  static const kinesisStreamConsumer = ResourceType._(
    184,
    'KinesisStreamConsumer',
    'AWS::Kinesis::StreamConsumer',
  );

  static const kinesisVideoSignalingChannel = ResourceType._(
    185,
    'KinesisVideoSignalingChannel',
    'AWS::KinesisVideo::SignalingChannel',
  );

  static const launchConfiguration = ResourceType._(
    186,
    'LaunchConfiguration',
    'AWS::AutoScaling::LaunchConfiguration',
  );

  static const launchTemplate = ResourceType._(
    187,
    'LaunchTemplate',
    'AWS::EC2::LaunchTemplate',
  );

  static const lexBot = ResourceType._(
    188,
    'LexBot',
    'AWS::Lex::Bot',
  );

  static const lexBotAlias = ResourceType._(
    189,
    'LexBotAlias',
    'AWS::Lex::BotAlias',
  );

  static const lightsailBucket = ResourceType._(
    190,
    'LightsailBucket',
    'AWS::Lightsail::Bucket',
  );

  static const lightsailCertificate = ResourceType._(
    191,
    'LightsailCertificate',
    'AWS::Lightsail::Certificate',
  );

  static const lightsailDisk = ResourceType._(
    192,
    'LightsailDisk',
    'AWS::Lightsail::Disk',
  );

  static const lightsailStaticIp = ResourceType._(
    193,
    'LightsailStaticIp',
    'AWS::Lightsail::StaticIp',
  );

  static const listenerV2 = ResourceType._(
    194,
    'ListenerV2',
    'AWS::ElasticLoadBalancingV2::Listener',
  );

  static const loadBalancer = ResourceType._(
    195,
    'LoadBalancer',
    'AWS::ElasticLoadBalancing::LoadBalancer',
  );

  static const loadBalancerV2 = ResourceType._(
    196,
    'LoadBalancerV2',
    'AWS::ElasticLoadBalancingV2::LoadBalancer',
  );

  static const lookoutMetricsAlert = ResourceType._(
    197,
    'LookoutMetricsAlert',
    'AWS::LookoutMetrics::Alert',
  );

  static const lookoutVisionProject = ResourceType._(
    198,
    'LookoutVisionProject',
    'AWS::LookoutVision::Project',
  );

  static const managedInstanceInventory = ResourceType._(
    199,
    'ManagedInstanceInventory',
    'AWS::SSM::ManagedInstanceInventory',
  );

  static const managedRuleSetV2 = ResourceType._(
    200,
    'ManagedRuleSetV2',
    'AWS::WAFv2::ManagedRuleSet',
  );

  static const mediaPackagePackagingConfiguration = ResourceType._(
    201,
    'MediaPackagePackagingConfiguration',
    'AWS::MediaPackage::PackagingConfiguration',
  );

  static const mediaPackagePackagingGroup = ResourceType._(
    202,
    'MediaPackagePackagingGroup',
    'AWS::MediaPackage::PackagingGroup',
  );

  static const mskCluster = ResourceType._(
    203,
    'MSKCluster',
    'AWS::MSK::Cluster',
  );

  static const natGateway = ResourceType._(
    204,
    'NatGateway',
    'AWS::EC2::NatGateway',
  );

  static const networkAcl = ResourceType._(
    205,
    'NetworkAcl',
    'AWS::EC2::NetworkAcl',
  );

  static const networkFirewallFirewall = ResourceType._(
    206,
    'NetworkFirewallFirewall',
    'AWS::NetworkFirewall::Firewall',
  );

  static const networkFirewallFirewallPolicy = ResourceType._(
    207,
    'NetworkFirewallFirewallPolicy',
    'AWS::NetworkFirewall::FirewallPolicy',
  );

  static const networkFirewallRuleGroup = ResourceType._(
    208,
    'NetworkFirewallRuleGroup',
    'AWS::NetworkFirewall::RuleGroup',
  );

  static const networkInsightsAccessScopeAnalysis = ResourceType._(
    209,
    'NetworkInsightsAccessScopeAnalysis',
    'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
  );

  static const networkInterface = ResourceType._(
    210,
    'NetworkInterface',
    'AWS::EC2::NetworkInterface',
  );

  static const networkManagerDevice = ResourceType._(
    211,
    'NetworkManagerDevice',
    'AWS::NetworkManager::Device',
  );

  static const networkManagerGlobalNetwork = ResourceType._(
    212,
    'NetworkManagerGlobalNetwork',
    'AWS::NetworkManager::GlobalNetwork',
  );

  static const networkManagerLink = ResourceType._(
    213,
    'NetworkManagerLink',
    'AWS::NetworkManager::Link',
  );

  static const networkManagerSite = ResourceType._(
    214,
    'NetworkManagerSite',
    'AWS::NetworkManager::Site',
  );

  static const networkManagerTransitGatewayRegistration = ResourceType._(
    215,
    'NetworkManagerTransitGatewayRegistration',
    'AWS::NetworkManager::TransitGatewayRegistration',
  );

  static const openSearchDomain = ResourceType._(
    216,
    'OpenSearchDomain',
    'AWS::OpenSearch::Domain',
  );

  static const panoramaPackage = ResourceType._(
    217,
    'PanoramaPackage',
    'AWS::Panorama::Package',
  );

  static const patchCompliance = ResourceType._(
    218,
    'PatchCompliance',
    'AWS::SSM::PatchCompliance',
  );

  static const pinpointApp = ResourceType._(
    219,
    'PinpointApp',
    'AWS::Pinpoint::App',
  );

  static const pinpointApplicationSettings = ResourceType._(
    220,
    'PinpointApplicationSettings',
    'AWS::Pinpoint::ApplicationSettings',
  );

  static const pinpointCampaign = ResourceType._(
    221,
    'PinpointCampaign',
    'AWS::Pinpoint::Campaign',
  );

  static const pinpointInAppTemplate = ResourceType._(
    222,
    'PinpointInAppTemplate',
    'AWS::Pinpoint::InAppTemplate',
  );

  static const pinpointSegment = ResourceType._(
    223,
    'PinpointSegment',
    'AWS::Pinpoint::Segment',
  );

  static const pipeline = ResourceType._(
    224,
    'Pipeline',
    'AWS::CodePipeline::Pipeline',
  );

  static const policy = ResourceType._(
    225,
    'Policy',
    'AWS::IAM::Policy',
  );

  static const portfolio = ResourceType._(
    226,
    'Portfolio',
    'AWS::ServiceCatalog::Portfolio',
  );

  static const project = ResourceType._(
    227,
    'Project',
    'AWS::CodeBuild::Project',
  );

  static const protection = ResourceType._(
    228,
    'Protection',
    'AWS::Shield::Protection',
  );

  static const qldbLedger = ResourceType._(
    229,
    'QLDBLedger',
    'AWS::QLDB::Ledger',
  );

  static const queue = ResourceType._(
    230,
    'Queue',
    'AWS::SQS::Queue',
  );

  static const rateBasedRule = ResourceType._(
    231,
    'RateBasedRule',
    'AWS::WAF::RateBasedRule',
  );

  static const rdsGlobalCluster = ResourceType._(
    232,
    'RDSGlobalCluster',
    'AWS::RDS::GlobalCluster',
  );

  static const redshiftEventSubscription = ResourceType._(
    233,
    'RedshiftEventSubscription',
    'AWS::Redshift::EventSubscription',
  );

  static const redshiftScheduledAction = ResourceType._(
    234,
    'RedshiftScheduledAction',
    'AWS::Redshift::ScheduledAction',
  );

  static const regexPatternSetV2 = ResourceType._(
    235,
    'RegexPatternSetV2',
    'AWS::WAFv2::RegexPatternSet',
  );

  static const regionalProtection = ResourceType._(
    236,
    'RegionalProtection',
    'AWS::ShieldRegional::Protection',
  );

  static const regionalRateBasedRule = ResourceType._(
    237,
    'RegionalRateBasedRule',
    'AWS::WAFRegional::RateBasedRule',
  );

  static const regionalRule = ResourceType._(
    238,
    'RegionalRule',
    'AWS::WAFRegional::Rule',
  );

  static const regionalRuleGroup = ResourceType._(
    239,
    'RegionalRuleGroup',
    'AWS::WAFRegional::RuleGroup',
  );

  static const regionalWebAcl = ResourceType._(
    240,
    'RegionalWebACL',
    'AWS::WAFRegional::WebACL',
  );

  static const registeredHaInstance = ResourceType._(
    241,
    'RegisteredHAInstance',
    'AWS::EC2::RegisteredHAInstance',
  );

  static const resilienceHubResiliencyPolicy = ResourceType._(
    242,
    'ResilienceHubResiliencyPolicy',
    'AWS::ResilienceHub::ResiliencyPolicy',
  );

  static const resourceCompliance = ResourceType._(
    243,
    'ResourceCompliance',
    'AWS::Config::ResourceCompliance',
  );

  static const restApi = ResourceType._(
    244,
    'RestApi',
    'AWS::ApiGateway::RestApi',
  );

  static const roboMakerRobotApplication = ResourceType._(
    245,
    'RoboMakerRobotApplication',
    'AWS::RoboMaker::RobotApplication',
  );

  static const roboMakerRobotApplicationVersion = ResourceType._(
    246,
    'RoboMakerRobotApplicationVersion',
    'AWS::RoboMaker::RobotApplicationVersion',
  );

  static const roboMakerSimulationApplication = ResourceType._(
    247,
    'RoboMakerSimulationApplication',
    'AWS::RoboMaker::SimulationApplication',
  );

  static const role = ResourceType._(
    248,
    'Role',
    'AWS::IAM::Role',
  );

  static const route53HostedZone = ResourceType._(
    249,
    'Route53HostedZone',
    'AWS::Route53::HostedZone',
  );

  static const route53RecoveryControlCluster = ResourceType._(
    250,
    'Route53RecoveryControlCluster',
    'AWS::Route53RecoveryControl::Cluster',
  );

  static const route53RecoveryControlControlPanel = ResourceType._(
    251,
    'Route53RecoveryControlControlPanel',
    'AWS::Route53RecoveryControl::ControlPanel',
  );

  static const route53RecoveryControlRoutingControl = ResourceType._(
    252,
    'Route53RecoveryControlRoutingControl',
    'AWS::Route53RecoveryControl::RoutingControl',
  );

  static const route53RecoveryControlSafetyRule = ResourceType._(
    253,
    'Route53RecoveryControlSafetyRule',
    'AWS::Route53RecoveryControl::SafetyRule',
  );

  static const route53RecoveryReadinessCell = ResourceType._(
    254,
    'Route53RecoveryReadinessCell',
    'AWS::Route53RecoveryReadiness::Cell',
  );

  static const route53RecoveryReadinessReadinessCheck = ResourceType._(
    255,
    'Route53RecoveryReadinessReadinessCheck',
    'AWS::Route53RecoveryReadiness::ReadinessCheck',
  );

  static const route53RecoveryReadinessRecoveryGroup = ResourceType._(
    256,
    'Route53RecoveryReadinessRecoveryGroup',
    'AWS::Route53RecoveryReadiness::RecoveryGroup',
  );

  static const route53RecoveryReadinessResourceSet = ResourceType._(
    257,
    'Route53RecoveryReadinessResourceSet',
    'AWS::Route53RecoveryReadiness::ResourceSet',
  );

  static const route53ResolverFirewallDomainList = ResourceType._(
    258,
    'Route53ResolverFirewallDomainList',
    'AWS::Route53Resolver::FirewallDomainList',
  );

  static const route53ResolverFirewallRuleGroupAssociation = ResourceType._(
    259,
    'Route53ResolverFirewallRuleGroupAssociation',
    'AWS::Route53Resolver::FirewallRuleGroupAssociation',
  );

  static const route53ResolverResolverEndpoint = ResourceType._(
    260,
    'Route53ResolverResolverEndpoint',
    'AWS::Route53Resolver::ResolverEndpoint',
  );

  static const route53ResolverResolverRule = ResourceType._(
    261,
    'Route53ResolverResolverRule',
    'AWS::Route53Resolver::ResolverRule',
  );

  static const route53ResolverResolverRuleAssociation = ResourceType._(
    262,
    'Route53ResolverResolverRuleAssociation',
    'AWS::Route53Resolver::ResolverRuleAssociation',
  );

  static const routeTable = ResourceType._(
    263,
    'RouteTable',
    'AWS::EC2::RouteTable',
  );

  static const rule = ResourceType._(
    264,
    'Rule',
    'AWS::WAF::Rule',
  );

  static const ruleGroup = ResourceType._(
    265,
    'RuleGroup',
    'AWS::WAF::RuleGroup',
  );

  static const ruleGroupV2 = ResourceType._(
    266,
    'RuleGroupV2',
    'AWS::WAFv2::RuleGroup',
  );

  static const rumAppMonitor = ResourceType._(
    267,
    'RUMAppMonitor',
    'AWS::RUM::AppMonitor',
  );

  static const s3MultiRegionAccessPoint = ResourceType._(
    268,
    'S3MultiRegionAccessPoint',
    'AWS::S3::MultiRegionAccessPoint',
  );

  static const s3StorageLens = ResourceType._(
    269,
    'S3StorageLens',
    'AWS::S3::StorageLens',
  );

  static const sageMakerAppImageConfig = ResourceType._(
    270,
    'SageMakerAppImageConfig',
    'AWS::SageMaker::AppImageConfig',
  );

  static const sageMakerCodeRepository = ResourceType._(
    271,
    'SageMakerCodeRepository',
    'AWS::SageMaker::CodeRepository',
  );

  static const sageMakerDomain = ResourceType._(
    272,
    'SageMakerDomain',
    'AWS::SageMaker::Domain',
  );

  static const sageMakerImage = ResourceType._(
    273,
    'SageMakerImage',
    'AWS::SageMaker::Image',
  );

  static const sageMakerModel = ResourceType._(
    274,
    'SageMakerModel',
    'AWS::SageMaker::Model',
  );

  static const sageMakerNotebookInstanceLifecycleConfig = ResourceType._(
    275,
    'SageMakerNotebookInstanceLifecycleConfig',
    'AWS::SageMaker::NotebookInstanceLifecycleConfig',
  );

  static const sageMakerWorkteam = ResourceType._(
    276,
    'SageMakerWorkteam',
    'AWS::SageMaker::Workteam',
  );

  static const scalingPolicy = ResourceType._(
    277,
    'ScalingPolicy',
    'AWS::AutoScaling::ScalingPolicy',
  );

  static const scheduledAction = ResourceType._(
    278,
    'ScheduledAction',
    'AWS::AutoScaling::ScheduledAction',
  );

  static const secret = ResourceType._(
    279,
    'Secret',
    'AWS::SecretsManager::Secret',
  );

  static const securityGroup = ResourceType._(
    280,
    'SecurityGroup',
    'AWS::EC2::SecurityGroup',
  );

  static const serviceDiscoveryHttpNamespace = ResourceType._(
    281,
    'ServiceDiscoveryHttpNamespace',
    'AWS::ServiceDiscovery::HttpNamespace',
  );

  static const serviceDiscoveryPublicDnsNamespace = ResourceType._(
    282,
    'ServiceDiscoveryPublicDnsNamespace',
    'AWS::ServiceDiscovery::PublicDnsNamespace',
  );

  static const serviceDiscoveryService = ResourceType._(
    283,
    'ServiceDiscoveryService',
    'AWS::ServiceDiscovery::Service',
  );

  static const sesConfigurationSet = ResourceType._(
    284,
    'SESConfigurationSet',
    'AWS::SES::ConfigurationSet',
  );

  static const sesContactList = ResourceType._(
    285,
    'SESContactList',
    'AWS::SES::ContactList',
  );

  static const sesReceiptFilter = ResourceType._(
    286,
    'SESReceiptFilter',
    'AWS::SES::ReceiptFilter',
  );

  static const sesReceiptRuleSet = ResourceType._(
    287,
    'SESReceiptRuleSet',
    'AWS::SES::ReceiptRuleSet',
  );

  static const sesTemplate = ResourceType._(
    288,
    'SESTemplate',
    'AWS::SES::Template',
  );

  static const signerSigningProfile = ResourceType._(
    289,
    'SignerSigningProfile',
    'AWS::Signer::SigningProfile',
  );

  static const stack = ResourceType._(
    290,
    'Stack',
    'AWS::CloudFormation::Stack',
  );

  static const stage = ResourceType._(
    291,
    'Stage',
    'AWS::ApiGateway::Stage',
  );

  static const stageV2 = ResourceType._(
    292,
    'StageV2',
    'AWS::ApiGatewayV2::Stage',
  );

  static const stepFunctionsActivity = ResourceType._(
    293,
    'StepFunctionsActivity',
    'AWS::StepFunctions::Activity',
  );

  static const stepFunctionsStateMachine = ResourceType._(
    294,
    'StepFunctionsStateMachine',
    'AWS::StepFunctions::StateMachine',
  );

  static const streamingDistribution = ResourceType._(
    295,
    'StreamingDistribution',
    'AWS::CloudFront::StreamingDistribution',
  );

  static const subnet = ResourceType._(
    296,
    'Subnet',
    'AWS::EC2::Subnet',
  );

  static const table = ResourceType._(
    297,
    'Table',
    'AWS::DynamoDB::Table',
  );

  static const topic = ResourceType._(
    298,
    'Topic',
    'AWS::SNS::Topic',
  );

  static const trail = ResourceType._(
    299,
    'Trail',
    'AWS::CloudTrail::Trail',
  );

  static const transferAgreement = ResourceType._(
    300,
    'TransferAgreement',
    'AWS::Transfer::Agreement',
  );

  static const transferConnector = ResourceType._(
    301,
    'TransferConnector',
    'AWS::Transfer::Connector',
  );

  static const transferWorkflow = ResourceType._(
    302,
    'TransferWorkflow',
    'AWS::Transfer::Workflow',
  );

  static const transitGateway = ResourceType._(
    303,
    'TransitGateway',
    'AWS::EC2::TransitGateway',
  );

  static const transitGatewayAttachment = ResourceType._(
    304,
    'TransitGatewayAttachment',
    'AWS::EC2::TransitGatewayAttachment',
  );

  static const transitGatewayRouteTable = ResourceType._(
    305,
    'TransitGatewayRouteTable',
    'AWS::EC2::TransitGatewayRouteTable',
  );

  static const user = ResourceType._(
    306,
    'User',
    'AWS::IAM::User',
  );

  static const volume = ResourceType._(
    307,
    'Volume',
    'AWS::EC2::Volume',
  );

  static const vpc = ResourceType._(
    308,
    'VPC',
    'AWS::EC2::VPC',
  );

  static const vpcEndpoint = ResourceType._(
    309,
    'VPCEndpoint',
    'AWS::EC2::VPCEndpoint',
  );

  static const vpcEndpointService = ResourceType._(
    310,
    'VPCEndpointService',
    'AWS::EC2::VPCEndpointService',
  );

  static const vpcPeeringConnection = ResourceType._(
    311,
    'VPCPeeringConnection',
    'AWS::EC2::VPCPeeringConnection',
  );

  static const vpnConnection = ResourceType._(
    312,
    'VPNConnection',
    'AWS::EC2::VPNConnection',
  );

  static const vpnGateway = ResourceType._(
    313,
    'VPNGateway',
    'AWS::EC2::VPNGateway',
  );

  static const webAcl = ResourceType._(
    314,
    'WebACL',
    'AWS::WAF::WebACL',
  );

  static const webAclv2 = ResourceType._(
    315,
    'WebACLV2',
    'AWS::WAFv2::WebACL',
  );

  static const workSpacesConnectionAlias = ResourceType._(
    316,
    'WorkSpacesConnectionAlias',
    'AWS::WorkSpaces::ConnectionAlias',
  );

  static const workSpacesWorkspace = ResourceType._(
    317,
    'WorkSpacesWorkspace',
    'AWS::WorkSpaces::Workspace',
  );

  /// All values of [ResourceType].
  static const values = <ResourceType>[
    ResourceType.accessAnalyzerAnalyzer,
    ResourceType.accountPublicAccessBlock,
    ResourceType.alarm,
    ResourceType.amazonMqBroker,
    ResourceType.amplifyApp,
    ResourceType.api,
    ResourceType.appConfigApplication,
    ResourceType.appConfigConfigurationProfile,
    ResourceType.appConfigDeploymentStrategy,
    ResourceType.appConfigEnvironment,
    ResourceType.appFlowFlow,
    ResourceType.appMeshVirtualNode,
    ResourceType.appMeshVirtualService,
    ResourceType.appRunnerVpcConnector,
    ResourceType.appStreamApplication,
    ResourceType.appStreamDirectoryConfig,
    ResourceType.appSyncGraphQlApi,
    ResourceType.application,
    ResourceType.applicationVersion,
    ResourceType.associationCompliance,
    ResourceType.athenaDataCatalog,
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
    ResourceType.dmsEventSubscription,
    ResourceType.dmsReplicationSubnetGroup,
    ResourceType.domain,
    ResourceType.ec2DhcpOptions,
    ResourceType.ec2Ec2Fleet,
    ResourceType.ec2Ipam,
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
    ResourceType.evidentlyProject,
    ResourceType.fileData,
    ResourceType.fisExperimentTemplate,
    ResourceType.flowLog,
    ResourceType.forecastDataset,
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
    ResourceType.groundStationConfig,
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
    ResourceType.key,
    ResourceType.kinesisAnalyticsV2Application,
    ResourceType.kinesisFirehoseDeliveryStream,
    ResourceType.kinesisStream,
    ResourceType.kinesisStreamConsumer,
    ResourceType.kinesisVideoSignalingChannel,
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
    ResourceType.lookoutMetricsAlert,
    ResourceType.lookoutVisionProject,
    ResourceType.managedInstanceInventory,
    ResourceType.managedRuleSetV2,
    ResourceType.mediaPackagePackagingConfiguration,
    ResourceType.mediaPackagePackagingGroup,
    ResourceType.mskCluster,
    ResourceType.natGateway,
    ResourceType.networkAcl,
    ResourceType.networkFirewallFirewall,
    ResourceType.networkFirewallFirewallPolicy,
    ResourceType.networkFirewallRuleGroup,
    ResourceType.networkInsightsAccessScopeAnalysis,
    ResourceType.networkInterface,
    ResourceType.networkManagerDevice,
    ResourceType.networkManagerGlobalNetwork,
    ResourceType.networkManagerLink,
    ResourceType.networkManagerSite,
    ResourceType.networkManagerTransitGatewayRegistration,
    ResourceType.openSearchDomain,
    ResourceType.panoramaPackage,
    ResourceType.patchCompliance,
    ResourceType.pinpointApp,
    ResourceType.pinpointApplicationSettings,
    ResourceType.pinpointCampaign,
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
