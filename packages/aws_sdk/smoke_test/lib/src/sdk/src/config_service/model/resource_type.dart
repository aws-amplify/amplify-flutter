// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const api = ResourceType._(
    4,
    'Api',
    'AWS::ApiGatewayV2::Api',
  );

  static const appConfigApplication = ResourceType._(
    5,
    'AppConfigApplication',
    'AWS::AppConfig::Application',
  );

  static const appConfigConfigurationProfile = ResourceType._(
    6,
    'AppConfigConfigurationProfile',
    'AWS::AppConfig::ConfigurationProfile',
  );

  static const appConfigEnvironment = ResourceType._(
    7,
    'AppConfigEnvironment',
    'AWS::AppConfig::Environment',
  );

  static const appSyncGraphQlApi = ResourceType._(
    8,
    'AppSyncGraphQLApi',
    'AWS::AppSync::GraphQLApi',
  );

  static const application = ResourceType._(
    9,
    'Application',
    'AWS::ElasticBeanstalk::Application',
  );

  static const applicationVersion = ResourceType._(
    10,
    'ApplicationVersion',
    'AWS::ElasticBeanstalk::ApplicationVersion',
  );

  static const associationCompliance = ResourceType._(
    11,
    'AssociationCompliance',
    'AWS::SSM::AssociationCompliance',
  );

  static const athenaDataCatalog = ResourceType._(
    12,
    'AthenaDataCatalog',
    'AWS::Athena::DataCatalog',
  );

  static const athenaWorkGroup = ResourceType._(
    13,
    'AthenaWorkGroup',
    'AWS::Athena::WorkGroup',
  );

  static const autoScalingGroup = ResourceType._(
    14,
    'AutoScalingGroup',
    'AWS::AutoScaling::AutoScalingGroup',
  );

  static const backupPlan = ResourceType._(
    15,
    'BackupPlan',
    'AWS::Backup::BackupPlan',
  );

  static const backupRecoveryPoint = ResourceType._(
    16,
    'BackupRecoveryPoint',
    'AWS::Backup::RecoveryPoint',
  );

  static const backupReportPlan = ResourceType._(
    17,
    'BackupReportPlan',
    'AWS::Backup::ReportPlan',
  );

  static const backupSelection = ResourceType._(
    18,
    'BackupSelection',
    'AWS::Backup::BackupSelection',
  );

  static const backupVault = ResourceType._(
    19,
    'BackupVault',
    'AWS::Backup::BackupVault',
  );

  static const batchComputeEnvironment = ResourceType._(
    20,
    'BatchComputeEnvironment',
    'AWS::Batch::ComputeEnvironment',
  );

  static const batchJobQueue = ResourceType._(
    21,
    'BatchJobQueue',
    'AWS::Batch::JobQueue',
  );

  static const bucket = ResourceType._(
    22,
    'Bucket',
    'AWS::S3::Bucket',
  );

  static const budgetsBudgetsAction = ResourceType._(
    23,
    'BudgetsBudgetsAction',
    'AWS::Budgets::BudgetsAction',
  );

  static const certificate = ResourceType._(
    24,
    'Certificate',
    'AWS::ACM::Certificate',
  );

  static const cloud9EnvironmentEc2 = ResourceType._(
    25,
    'Cloud9EnvironmentEC2',
    'AWS::Cloud9::EnvironmentEC2',
  );

  static const cloudFormationProduct = ResourceType._(
    26,
    'CloudFormationProduct',
    'AWS::ServiceCatalog::CloudFormationProduct',
  );

  static const cloudFormationProvisionedProduct = ResourceType._(
    27,
    'CloudFormationProvisionedProduct',
    'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  );

  static const cluster = ResourceType._(
    28,
    'Cluster',
    'AWS::Redshift::Cluster',
  );

  static const clusterParameterGroup = ResourceType._(
    29,
    'ClusterParameterGroup',
    'AWS::Redshift::ClusterParameterGroup',
  );

  static const clusterSecurityGroup = ResourceType._(
    30,
    'ClusterSecurityGroup',
    'AWS::Redshift::ClusterSecurityGroup',
  );

  static const clusterSnapshot = ResourceType._(
    31,
    'ClusterSnapshot',
    'AWS::Redshift::ClusterSnapshot',
  );

  static const clusterSubnetGroup = ResourceType._(
    32,
    'ClusterSubnetGroup',
    'AWS::Redshift::ClusterSubnetGroup',
  );

  static const codeDeployApplication = ResourceType._(
    33,
    'CodeDeployApplication',
    'AWS::CodeDeploy::Application',
  );

  static const codeDeployDeploymentConfig = ResourceType._(
    34,
    'CodeDeployDeploymentConfig',
    'AWS::CodeDeploy::DeploymentConfig',
  );

  static const codeDeployDeploymentGroup = ResourceType._(
    35,
    'CodeDeployDeploymentGroup',
    'AWS::CodeDeploy::DeploymentGroup',
  );

  static const codeGuruReviewerRepositoryAssociation = ResourceType._(
    36,
    'CodeGuruReviewerRepositoryAssociation',
    'AWS::CodeGuruReviewer::RepositoryAssociation',
  );

  static const conformancePackCompliance = ResourceType._(
    37,
    'ConformancePackCompliance',
    'AWS::Config::ConformancePackCompliance',
  );

  static const customerGateway = ResourceType._(
    38,
    'CustomerGateway',
    'AWS::EC2::CustomerGateway',
  );

  static const dataSyncLocationEfs = ResourceType._(
    39,
    'DataSyncLocationEFS',
    'AWS::DataSync::LocationEFS',
  );

  static const dataSyncLocationFSxLustre = ResourceType._(
    40,
    'DataSyncLocationFSxLustre',
    'AWS::DataSync::LocationFSxLustre',
  );

  static const dataSyncLocationFSxWindows = ResourceType._(
    41,
    'DataSyncLocationFSxWindows',
    'AWS::DataSync::LocationFSxWindows',
  );

  static const dataSyncLocationHdfs = ResourceType._(
    42,
    'DataSyncLocationHDFS',
    'AWS::DataSync::LocationHDFS',
  );

  static const dataSyncLocationNfs = ResourceType._(
    43,
    'DataSyncLocationNFS',
    'AWS::DataSync::LocationNFS',
  );

  static const dataSyncLocationObjectStorage = ResourceType._(
    44,
    'DataSyncLocationObjectStorage',
    'AWS::DataSync::LocationObjectStorage',
  );

  static const dataSyncLocationS3 = ResourceType._(
    45,
    'DataSyncLocationS3',
    'AWS::DataSync::LocationS3',
  );

  static const dataSyncLocationSmb = ResourceType._(
    46,
    'DataSyncLocationSMB',
    'AWS::DataSync::LocationSMB',
  );

  static const dataSyncTask = ResourceType._(
    47,
    'DataSyncTask',
    'AWS::DataSync::Task',
  );

  static const dbCluster = ResourceType._(
    48,
    'DBCluster',
    'AWS::RDS::DBCluster',
  );

  static const dbClusterSnapshot = ResourceType._(
    49,
    'DBClusterSnapshot',
    'AWS::RDS::DBClusterSnapshot',
  );

  static const dbInstance = ResourceType._(
    50,
    'DBInstance',
    'AWS::RDS::DBInstance',
  );

  static const dbSecurityGroup = ResourceType._(
    51,
    'DBSecurityGroup',
    'AWS::RDS::DBSecurityGroup',
  );

  static const dbSnapshot = ResourceType._(
    52,
    'DBSnapshot',
    'AWS::RDS::DBSnapshot',
  );

  static const dbSubnetGroup = ResourceType._(
    53,
    'DBSubnetGroup',
    'AWS::RDS::DBSubnetGroup',
  );

  static const detectiveGraph = ResourceType._(
    54,
    'DetectiveGraph',
    'AWS::Detective::Graph',
  );

  static const deviceFarmTestGridProject = ResourceType._(
    55,
    'DeviceFarmTestGridProject',
    'AWS::DeviceFarm::TestGridProject',
  );

  static const distribution = ResourceType._(
    56,
    'Distribution',
    'AWS::CloudFront::Distribution',
  );

  static const dmsCertificate = ResourceType._(
    57,
    'DMSCertificate',
    'AWS::DMS::Certificate',
  );

  static const dmsEventSubscription = ResourceType._(
    58,
    'DMSEventSubscription',
    'AWS::DMS::EventSubscription',
  );

  static const dmsReplicationSubnetGroup = ResourceType._(
    59,
    'DMSReplicationSubnetGroup',
    'AWS::DMS::ReplicationSubnetGroup',
  );

  static const domain = ResourceType._(
    60,
    'Domain',
    'AWS::Elasticsearch::Domain',
  );

  static const ec2TrafficMirrorSession = ResourceType._(
    61,
    'EC2TrafficMirrorSession',
    'AWS::EC2::TrafficMirrorSession',
  );

  static const ec2TrafficMirrorTarget = ResourceType._(
    62,
    'EC2TrafficMirrorTarget',
    'AWS::EC2::TrafficMirrorTarget',
  );

  static const ecrPublicRepository = ResourceType._(
    63,
    'ECRPublicRepository',
    'AWS::ECR::PublicRepository',
  );

  static const ecrRegistryPolicy = ResourceType._(
    64,
    'ECRRegistryPolicy',
    'AWS::ECR::RegistryPolicy',
  );

  static const ecrRepository = ResourceType._(
    65,
    'ECRRepository',
    'AWS::ECR::Repository',
  );

  static const ecsCluster = ResourceType._(
    66,
    'ECSCluster',
    'AWS::ECS::Cluster',
  );

  static const ecsService = ResourceType._(
    67,
    'ECSService',
    'AWS::ECS::Service',
  );

  static const ecsTaskDefinition = ResourceType._(
    68,
    'ECSTaskDefinition',
    'AWS::ECS::TaskDefinition',
  );

  static const efsAccessPoint = ResourceType._(
    69,
    'EFSAccessPoint',
    'AWS::EFS::AccessPoint',
  );

  static const efsFileSystem = ResourceType._(
    70,
    'EFSFileSystem',
    'AWS::EFS::FileSystem',
  );

  static const egressOnlyInternetGateway = ResourceType._(
    71,
    'EgressOnlyInternetGateway',
    'AWS::EC2::EgressOnlyInternetGateway',
  );

  static const eip = ResourceType._(
    72,
    'EIP',
    'AWS::EC2::EIP',
  );

  static const eksAddon = ResourceType._(
    73,
    'EKSAddon',
    'AWS::EKS::Addon',
  );

  static const eksCluster = ResourceType._(
    74,
    'EKSCluster',
    'AWS::EKS::Cluster',
  );

  static const eksFargateProfile = ResourceType._(
    75,
    'EKSFargateProfile',
    'AWS::EKS::FargateProfile',
  );

  static const eksIdentityProviderConfig = ResourceType._(
    76,
    'EKSIdentityProviderConfig',
    'AWS::EKS::IdentityProviderConfig',
  );

  static const emrSecurityConfiguration = ResourceType._(
    77,
    'EMRSecurityConfiguration',
    'AWS::EMR::SecurityConfiguration',
  );

  static const encryptionConfig = ResourceType._(
    78,
    'EncryptionConfig',
    'AWS::XRay::EncryptionConfig',
  );

  static const environment = ResourceType._(
    79,
    'Environment',
    'AWS::ElasticBeanstalk::Environment',
  );

  static const eventSchemasDiscoverer = ResourceType._(
    80,
    'EventSchemasDiscoverer',
    'AWS::EventSchemas::Discoverer',
  );

  static const eventSchemasRegistry = ResourceType._(
    81,
    'EventSchemasRegistry',
    'AWS::EventSchemas::Registry',
  );

  static const eventSchemasRegistryPolicy = ResourceType._(
    82,
    'EventSchemasRegistryPolicy',
    'AWS::EventSchemas::RegistryPolicy',
  );

  static const eventSchemasSchema = ResourceType._(
    83,
    'EventSchemasSchema',
    'AWS::EventSchemas::Schema',
  );

  static const eventSubscription = ResourceType._(
    84,
    'EventSubscription',
    'AWS::RDS::EventSubscription',
  );

  static const eventsApiDestination = ResourceType._(
    85,
    'EventsApiDestination',
    'AWS::Events::ApiDestination',
  );

  static const eventsArchive = ResourceType._(
    86,
    'EventsArchive',
    'AWS::Events::Archive',
  );

  static const eventsConnection = ResourceType._(
    87,
    'EventsConnection',
    'AWS::Events::Connection',
  );

  static const eventsEndpoint = ResourceType._(
    88,
    'EventsEndpoint',
    'AWS::Events::Endpoint',
  );

  static const eventsEventBus = ResourceType._(
    89,
    'EventsEventBus',
    'AWS::Events::EventBus',
  );

  static const fileData = ResourceType._(
    90,
    'FileData',
    'AWS::SSM::FileData',
  );

  static const fisExperimentTemplate = ResourceType._(
    91,
    'FISExperimentTemplate',
    'AWS::FIS::ExperimentTemplate',
  );

  static const flowLog = ResourceType._(
    92,
    'FlowLog',
    'AWS::EC2::FlowLog',
  );

  static const fraudDetectorEntityType = ResourceType._(
    93,
    'FraudDetectorEntityType',
    'AWS::FraudDetector::EntityType',
  );

  static const fraudDetectorLabel = ResourceType._(
    94,
    'FraudDetectorLabel',
    'AWS::FraudDetector::Label',
  );

  static const fraudDetectorOutcome = ResourceType._(
    95,
    'FraudDetectorOutcome',
    'AWS::FraudDetector::Outcome',
  );

  static const fraudDetectorVariable = ResourceType._(
    96,
    'FraudDetectorVariable',
    'AWS::FraudDetector::Variable',
  );

  static const function = ResourceType._(
    97,
    'Function',
    'AWS::Lambda::Function',
  );

  static const globalAcceleratorAccelerator = ResourceType._(
    98,
    'GlobalAcceleratorAccelerator',
    'AWS::GlobalAccelerator::Accelerator',
  );

  static const globalAcceleratorEndpointGroup = ResourceType._(
    99,
    'GlobalAcceleratorEndpointGroup',
    'AWS::GlobalAccelerator::EndpointGroup',
  );

  static const globalAcceleratorListener = ResourceType._(
    100,
    'GlobalAcceleratorListener',
    'AWS::GlobalAccelerator::Listener',
  );

  static const glueClassifier = ResourceType._(
    101,
    'GlueClassifier',
    'AWS::Glue::Classifier',
  );

  static const glueJob = ResourceType._(
    102,
    'GlueJob',
    'AWS::Glue::Job',
  );

  static const glueMlTransform = ResourceType._(
    103,
    'GlueMLTransform',
    'AWS::Glue::MLTransform',
  );

  static const group = ResourceType._(
    104,
    'Group',
    'AWS::IAM::Group',
  );

  static const guardDutyDetector = ResourceType._(
    105,
    'GuardDutyDetector',
    'AWS::GuardDuty::Detector',
  );

  static const guardDutyFilter = ResourceType._(
    106,
    'GuardDutyFilter',
    'AWS::GuardDuty::Filter',
  );

  static const guardDutyIpSet = ResourceType._(
    107,
    'GuardDutyIPSet',
    'AWS::GuardDuty::IPSet',
  );

  static const guardDutyThreatIntelSet = ResourceType._(
    108,
    'GuardDutyThreatIntelSet',
    'AWS::GuardDuty::ThreatIntelSet',
  );

  static const host = ResourceType._(
    109,
    'Host',
    'AWS::EC2::Host',
  );

  static const imageBuilderContainerRecipe = ResourceType._(
    110,
    'ImageBuilderContainerRecipe',
    'AWS::ImageBuilder::ContainerRecipe',
  );

  static const imageBuilderDistributionConfiguration = ResourceType._(
    111,
    'ImageBuilderDistributionConfiguration',
    'AWS::ImageBuilder::DistributionConfiguration',
  );

  static const imageBuilderInfrastructureConfiguration = ResourceType._(
    112,
    'ImageBuilderInfrastructureConfiguration',
    'AWS::ImageBuilder::InfrastructureConfiguration',
  );

  static const instance = ResourceType._(
    113,
    'Instance',
    'AWS::EC2::Instance',
  );

  static const internetGateway = ResourceType._(
    114,
    'InternetGateway',
    'AWS::EC2::InternetGateway',
  );

  static const ioTAccountAuditConfiguration = ResourceType._(
    115,
    'IoTAccountAuditConfiguration',
    'AWS::IoT::AccountAuditConfiguration',
  );

  static const ioTAnalyticsChannel = ResourceType._(
    116,
    'IoTAnalyticsChannel',
    'AWS::IoTAnalytics::Channel',
  );

  static const ioTAnalyticsDataset = ResourceType._(
    117,
    'IoTAnalyticsDataset',
    'AWS::IoTAnalytics::Dataset',
  );

  static const ioTAnalyticsDatastore = ResourceType._(
    118,
    'IoTAnalyticsDatastore',
    'AWS::IoTAnalytics::Datastore',
  );

  static const ioTAnalyticsPipeline = ResourceType._(
    119,
    'IoTAnalyticsPipeline',
    'AWS::IoTAnalytics::Pipeline',
  );

  static const ioTAuthorizer = ResourceType._(
    120,
    'IoTAuthorizer',
    'AWS::IoT::Authorizer',
  );

  static const ioTCustomMetric = ResourceType._(
    121,
    'IoTCustomMetric',
    'AWS::IoT::CustomMetric',
  );

  static const ioTDimension = ResourceType._(
    122,
    'IoTDimension',
    'AWS::IoT::Dimension',
  );

  static const ioTEventsAlarmModel = ResourceType._(
    123,
    'IoTEventsAlarmModel',
    'AWS::IoTEvents::AlarmModel',
  );

  static const ioTEventsDetectorModel = ResourceType._(
    124,
    'IoTEventsDetectorModel',
    'AWS::IoTEvents::DetectorModel',
  );

  static const ioTEventsInput = ResourceType._(
    125,
    'IoTEventsInput',
    'AWS::IoTEvents::Input',
  );

  static const ioTMitigationAction = ResourceType._(
    126,
    'IoTMitigationAction',
    'AWS::IoT::MitigationAction',
  );

  static const ioTPolicy = ResourceType._(
    127,
    'IoTPolicy',
    'AWS::IoT::Policy',
  );

  static const ioTRoleAlias = ResourceType._(
    128,
    'IoTRoleAlias',
    'AWS::IoT::RoleAlias',
  );

  static const ioTScheduledAudit = ResourceType._(
    129,
    'IoTScheduledAudit',
    'AWS::IoT::ScheduledAudit',
  );

  static const ioTSecurityProfile = ResourceType._(
    130,
    'IoTSecurityProfile',
    'AWS::IoT::SecurityProfile',
  );

  static const ioTSiteWiseAssetModel = ResourceType._(
    131,
    'IoTSiteWiseAssetModel',
    'AWS::IoTSiteWise::AssetModel',
  );

  static const ioTSiteWiseDashboard = ResourceType._(
    132,
    'IoTSiteWiseDashboard',
    'AWS::IoTSiteWise::Dashboard',
  );

  static const ioTSiteWiseGateway = ResourceType._(
    133,
    'IoTSiteWiseGateway',
    'AWS::IoTSiteWise::Gateway',
  );

  static const ioTSiteWisePortal = ResourceType._(
    134,
    'IoTSiteWisePortal',
    'AWS::IoTSiteWise::Portal',
  );

  static const ioTSiteWiseProject = ResourceType._(
    135,
    'IoTSiteWiseProject',
    'AWS::IoTSiteWise::Project',
  );

  static const ioTTwinMakerEntity = ResourceType._(
    136,
    'IoTTwinMakerEntity',
    'AWS::IoTTwinMaker::Entity',
  );

  static const ioTTwinMakerWorkspace = ResourceType._(
    137,
    'IoTTwinMakerWorkspace',
    'AWS::IoTTwinMaker::Workspace',
  );

  static const ipSetV2 = ResourceType._(
    138,
    'IPSetV2',
    'AWS::WAFv2::IPSet',
  );

  static const ivsChannel = ResourceType._(
    139,
    'IVSChannel',
    'AWS::IVS::Channel',
  );

  static const ivsPlaybackKeyPair = ResourceType._(
    140,
    'IVSPlaybackKeyPair',
    'AWS::IVS::PlaybackKeyPair',
  );

  static const ivsRecordingConfiguration = ResourceType._(
    141,
    'IVSRecordingConfiguration',
    'AWS::IVS::RecordingConfiguration',
  );

  static const key = ResourceType._(
    142,
    'Key',
    'AWS::KMS::Key',
  );

  static const kinesisAnalyticsV2Application = ResourceType._(
    143,
    'KinesisAnalyticsV2Application',
    'AWS::KinesisAnalyticsV2::Application',
  );

  static const kinesisStream = ResourceType._(
    144,
    'KinesisStream',
    'AWS::Kinesis::Stream',
  );

  static const kinesisStreamConsumer = ResourceType._(
    145,
    'KinesisStreamConsumer',
    'AWS::Kinesis::StreamConsumer',
  );

  static const launchConfiguration = ResourceType._(
    146,
    'LaunchConfiguration',
    'AWS::AutoScaling::LaunchConfiguration',
  );

  static const launchTemplate = ResourceType._(
    147,
    'LaunchTemplate',
    'AWS::EC2::LaunchTemplate',
  );

  static const lexBot = ResourceType._(
    148,
    'LexBot',
    'AWS::Lex::Bot',
  );

  static const lexBotAlias = ResourceType._(
    149,
    'LexBotAlias',
    'AWS::Lex::BotAlias',
  );

  static const lightsailBucket = ResourceType._(
    150,
    'LightsailBucket',
    'AWS::Lightsail::Bucket',
  );

  static const lightsailCertificate = ResourceType._(
    151,
    'LightsailCertificate',
    'AWS::Lightsail::Certificate',
  );

  static const lightsailDisk = ResourceType._(
    152,
    'LightsailDisk',
    'AWS::Lightsail::Disk',
  );

  static const lightsailStaticIp = ResourceType._(
    153,
    'LightsailStaticIp',
    'AWS::Lightsail::StaticIp',
  );

  static const listenerV2 = ResourceType._(
    154,
    'ListenerV2',
    'AWS::ElasticLoadBalancingV2::Listener',
  );

  static const loadBalancer = ResourceType._(
    155,
    'LoadBalancer',
    'AWS::ElasticLoadBalancing::LoadBalancer',
  );

  static const loadBalancerV2 = ResourceType._(
    156,
    'LoadBalancerV2',
    'AWS::ElasticLoadBalancingV2::LoadBalancer',
  );

  static const lookoutMetricsAlert = ResourceType._(
    157,
    'LookoutMetricsAlert',
    'AWS::LookoutMetrics::Alert',
  );

  static const managedInstanceInventory = ResourceType._(
    158,
    'ManagedInstanceInventory',
    'AWS::SSM::ManagedInstanceInventory',
  );

  static const managedRuleSetV2 = ResourceType._(
    159,
    'ManagedRuleSetV2',
    'AWS::WAFv2::ManagedRuleSet',
  );

  static const mediaPackagePackagingConfiguration = ResourceType._(
    160,
    'MediaPackagePackagingConfiguration',
    'AWS::MediaPackage::PackagingConfiguration',
  );

  static const mediaPackagePackagingGroup = ResourceType._(
    161,
    'MediaPackagePackagingGroup',
    'AWS::MediaPackage::PackagingGroup',
  );

  static const mskCluster = ResourceType._(
    162,
    'MSKCluster',
    'AWS::MSK::Cluster',
  );

  static const natGateway = ResourceType._(
    163,
    'NatGateway',
    'AWS::EC2::NatGateway',
  );

  static const networkAcl = ResourceType._(
    164,
    'NetworkAcl',
    'AWS::EC2::NetworkAcl',
  );

  static const networkFirewallFirewall = ResourceType._(
    165,
    'NetworkFirewallFirewall',
    'AWS::NetworkFirewall::Firewall',
  );

  static const networkFirewallFirewallPolicy = ResourceType._(
    166,
    'NetworkFirewallFirewallPolicy',
    'AWS::NetworkFirewall::FirewallPolicy',
  );

  static const networkFirewallRuleGroup = ResourceType._(
    167,
    'NetworkFirewallRuleGroup',
    'AWS::NetworkFirewall::RuleGroup',
  );

  static const networkInsightsAccessScopeAnalysis = ResourceType._(
    168,
    'NetworkInsightsAccessScopeAnalysis',
    'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
  );

  static const networkInterface = ResourceType._(
    169,
    'NetworkInterface',
    'AWS::EC2::NetworkInterface',
  );

  static const openSearchDomain = ResourceType._(
    170,
    'OpenSearchDomain',
    'AWS::OpenSearch::Domain',
  );

  static const patchCompliance = ResourceType._(
    171,
    'PatchCompliance',
    'AWS::SSM::PatchCompliance',
  );

  static const pipeline = ResourceType._(
    172,
    'Pipeline',
    'AWS::CodePipeline::Pipeline',
  );

  static const policy = ResourceType._(
    173,
    'Policy',
    'AWS::IAM::Policy',
  );

  static const portfolio = ResourceType._(
    174,
    'Portfolio',
    'AWS::ServiceCatalog::Portfolio',
  );

  static const project = ResourceType._(
    175,
    'Project',
    'AWS::CodeBuild::Project',
  );

  static const protection = ResourceType._(
    176,
    'Protection',
    'AWS::Shield::Protection',
  );

  static const qldbLedger = ResourceType._(
    177,
    'QLDBLedger',
    'AWS::QLDB::Ledger',
  );

  static const queue = ResourceType._(
    178,
    'Queue',
    'AWS::SQS::Queue',
  );

  static const rateBasedRule = ResourceType._(
    179,
    'RateBasedRule',
    'AWS::WAF::RateBasedRule',
  );

  static const rdsGlobalCluster = ResourceType._(
    180,
    'RDSGlobalCluster',
    'AWS::RDS::GlobalCluster',
  );

  static const redshiftEventSubscription = ResourceType._(
    181,
    'RedshiftEventSubscription',
    'AWS::Redshift::EventSubscription',
  );

  static const regexPatternSetV2 = ResourceType._(
    182,
    'RegexPatternSetV2',
    'AWS::WAFv2::RegexPatternSet',
  );

  static const regionalProtection = ResourceType._(
    183,
    'RegionalProtection',
    'AWS::ShieldRegional::Protection',
  );

  static const regionalRateBasedRule = ResourceType._(
    184,
    'RegionalRateBasedRule',
    'AWS::WAFRegional::RateBasedRule',
  );

  static const regionalRule = ResourceType._(
    185,
    'RegionalRule',
    'AWS::WAFRegional::Rule',
  );

  static const regionalRuleGroup = ResourceType._(
    186,
    'RegionalRuleGroup',
    'AWS::WAFRegional::RuleGroup',
  );

  static const regionalWebAcl = ResourceType._(
    187,
    'RegionalWebACL',
    'AWS::WAFRegional::WebACL',
  );

  static const registeredHaInstance = ResourceType._(
    188,
    'RegisteredHAInstance',
    'AWS::EC2::RegisteredHAInstance',
  );

  static const resilienceHubResiliencyPolicy = ResourceType._(
    189,
    'ResilienceHubResiliencyPolicy',
    'AWS::ResilienceHub::ResiliencyPolicy',
  );

  static const resourceCompliance = ResourceType._(
    190,
    'ResourceCompliance',
    'AWS::Config::ResourceCompliance',
  );

  static const restApi = ResourceType._(
    191,
    'RestApi',
    'AWS::ApiGateway::RestApi',
  );

  static const roboMakerRobotApplicationVersion = ResourceType._(
    192,
    'RoboMakerRobotApplicationVersion',
    'AWS::RoboMaker::RobotApplicationVersion',
  );

  static const role = ResourceType._(
    193,
    'Role',
    'AWS::IAM::Role',
  );

  static const route53HostedZone = ResourceType._(
    194,
    'Route53HostedZone',
    'AWS::Route53::HostedZone',
  );

  static const route53RecoveryReadinessCell = ResourceType._(
    195,
    'Route53RecoveryReadinessCell',
    'AWS::Route53RecoveryReadiness::Cell',
  );

  static const route53RecoveryReadinessReadinessCheck = ResourceType._(
    196,
    'Route53RecoveryReadinessReadinessCheck',
    'AWS::Route53RecoveryReadiness::ReadinessCheck',
  );

  static const route53RecoveryReadinessRecoveryGroup = ResourceType._(
    197,
    'Route53RecoveryReadinessRecoveryGroup',
    'AWS::Route53RecoveryReadiness::RecoveryGroup',
  );

  static const route53ResolverFirewallDomainList = ResourceType._(
    198,
    'Route53ResolverFirewallDomainList',
    'AWS::Route53Resolver::FirewallDomainList',
  );

  static const route53ResolverResolverEndpoint = ResourceType._(
    199,
    'Route53ResolverResolverEndpoint',
    'AWS::Route53Resolver::ResolverEndpoint',
  );

  static const route53ResolverResolverRule = ResourceType._(
    200,
    'Route53ResolverResolverRule',
    'AWS::Route53Resolver::ResolverRule',
  );

  static const route53ResolverResolverRuleAssociation = ResourceType._(
    201,
    'Route53ResolverResolverRuleAssociation',
    'AWS::Route53Resolver::ResolverRuleAssociation',
  );

  static const routeTable = ResourceType._(
    202,
    'RouteTable',
    'AWS::EC2::RouteTable',
  );

  static const rule = ResourceType._(
    203,
    'Rule',
    'AWS::WAF::Rule',
  );

  static const ruleGroup = ResourceType._(
    204,
    'RuleGroup',
    'AWS::WAF::RuleGroup',
  );

  static const ruleGroupV2 = ResourceType._(
    205,
    'RuleGroupV2',
    'AWS::WAFv2::RuleGroup',
  );

  static const rumAppMonitor = ResourceType._(
    206,
    'RUMAppMonitor',
    'AWS::RUM::AppMonitor',
  );

  static const s3MultiRegionAccessPoint = ResourceType._(
    207,
    'S3MultiRegionAccessPoint',
    'AWS::S3::MultiRegionAccessPoint',
  );

  static const s3StorageLens = ResourceType._(
    208,
    'S3StorageLens',
    'AWS::S3::StorageLens',
  );

  static const sageMakerCodeRepository = ResourceType._(
    209,
    'SageMakerCodeRepository',
    'AWS::SageMaker::CodeRepository',
  );

  static const sageMakerModel = ResourceType._(
    210,
    'SageMakerModel',
    'AWS::SageMaker::Model',
  );

  static const sageMakerNotebookInstanceLifecycleConfig = ResourceType._(
    211,
    'SageMakerNotebookInstanceLifecycleConfig',
    'AWS::SageMaker::NotebookInstanceLifecycleConfig',
  );

  static const sageMakerWorkteam = ResourceType._(
    212,
    'SageMakerWorkteam',
    'AWS::SageMaker::Workteam',
  );

  static const scalingPolicy = ResourceType._(
    213,
    'ScalingPolicy',
    'AWS::AutoScaling::ScalingPolicy',
  );

  static const scheduledAction = ResourceType._(
    214,
    'ScheduledAction',
    'AWS::AutoScaling::ScheduledAction',
  );

  static const secret = ResourceType._(
    215,
    'Secret',
    'AWS::SecretsManager::Secret',
  );

  static const securityGroup = ResourceType._(
    216,
    'SecurityGroup',
    'AWS::EC2::SecurityGroup',
  );

  static const serviceDiscoveryHttpNamespace = ResourceType._(
    217,
    'ServiceDiscoveryHttpNamespace',
    'AWS::ServiceDiscovery::HttpNamespace',
  );

  static const serviceDiscoveryPublicDnsNamespace = ResourceType._(
    218,
    'ServiceDiscoveryPublicDnsNamespace',
    'AWS::ServiceDiscovery::PublicDnsNamespace',
  );

  static const serviceDiscoveryService = ResourceType._(
    219,
    'ServiceDiscoveryService',
    'AWS::ServiceDiscovery::Service',
  );

  static const sesConfigurationSet = ResourceType._(
    220,
    'SESConfigurationSet',
    'AWS::SES::ConfigurationSet',
  );

  static const sesContactList = ResourceType._(
    221,
    'SESContactList',
    'AWS::SES::ContactList',
  );

  static const sesReceiptFilter = ResourceType._(
    222,
    'SESReceiptFilter',
    'AWS::SES::ReceiptFilter',
  );

  static const sesReceiptRuleSet = ResourceType._(
    223,
    'SESReceiptRuleSet',
    'AWS::SES::ReceiptRuleSet',
  );

  static const sesTemplate = ResourceType._(
    224,
    'SESTemplate',
    'AWS::SES::Template',
  );

  static const stack = ResourceType._(
    225,
    'Stack',
    'AWS::CloudFormation::Stack',
  );

  static const stage = ResourceType._(
    226,
    'Stage',
    'AWS::ApiGateway::Stage',
  );

  static const stageV2 = ResourceType._(
    227,
    'StageV2',
    'AWS::ApiGatewayV2::Stage',
  );

  static const stepFunctionsActivity = ResourceType._(
    228,
    'StepFunctionsActivity',
    'AWS::StepFunctions::Activity',
  );

  static const stepFunctionsStateMachine = ResourceType._(
    229,
    'StepFunctionsStateMachine',
    'AWS::StepFunctions::StateMachine',
  );

  static const streamingDistribution = ResourceType._(
    230,
    'StreamingDistribution',
    'AWS::CloudFront::StreamingDistribution',
  );

  static const subnet = ResourceType._(
    231,
    'Subnet',
    'AWS::EC2::Subnet',
  );

  static const table = ResourceType._(
    232,
    'Table',
    'AWS::DynamoDB::Table',
  );

  static const topic = ResourceType._(
    233,
    'Topic',
    'AWS::SNS::Topic',
  );

  static const trail = ResourceType._(
    234,
    'Trail',
    'AWS::CloudTrail::Trail',
  );

  static const transferWorkflow = ResourceType._(
    235,
    'TransferWorkflow',
    'AWS::Transfer::Workflow',
  );

  static const transitGateway = ResourceType._(
    236,
    'TransitGateway',
    'AWS::EC2::TransitGateway',
  );

  static const transitGatewayAttachment = ResourceType._(
    237,
    'TransitGatewayAttachment',
    'AWS::EC2::TransitGatewayAttachment',
  );

  static const transitGatewayRouteTable = ResourceType._(
    238,
    'TransitGatewayRouteTable',
    'AWS::EC2::TransitGatewayRouteTable',
  );

  static const user = ResourceType._(
    239,
    'User',
    'AWS::IAM::User',
  );

  static const volume = ResourceType._(
    240,
    'Volume',
    'AWS::EC2::Volume',
  );

  static const vpc = ResourceType._(
    241,
    'VPC',
    'AWS::EC2::VPC',
  );

  static const vpcEndpoint = ResourceType._(
    242,
    'VPCEndpoint',
    'AWS::EC2::VPCEndpoint',
  );

  static const vpcEndpointService = ResourceType._(
    243,
    'VPCEndpointService',
    'AWS::EC2::VPCEndpointService',
  );

  static const vpcPeeringConnection = ResourceType._(
    244,
    'VPCPeeringConnection',
    'AWS::EC2::VPCPeeringConnection',
  );

  static const vpnConnection = ResourceType._(
    245,
    'VPNConnection',
    'AWS::EC2::VPNConnection',
  );

  static const vpnGateway = ResourceType._(
    246,
    'VPNGateway',
    'AWS::EC2::VPNGateway',
  );

  static const webAcl = ResourceType._(
    247,
    'WebACL',
    'AWS::WAF::WebACL',
  );

  static const webAclv2 = ResourceType._(
    248,
    'WebACLV2',
    'AWS::WAFv2::WebACL',
  );

  static const workSpacesConnectionAlias = ResourceType._(
    249,
    'WorkSpacesConnectionAlias',
    'AWS::WorkSpaces::ConnectionAlias',
  );

  static const workSpacesWorkspace = ResourceType._(
    250,
    'WorkSpacesWorkspace',
    'AWS::WorkSpaces::Workspace',
  );

  /// All values of [ResourceType].
  static const values = <ResourceType>[
    ResourceType.accessAnalyzerAnalyzer,
    ResourceType.accountPublicAccessBlock,
    ResourceType.alarm,
    ResourceType.amazonMqBroker,
    ResourceType.api,
    ResourceType.appConfigApplication,
    ResourceType.appConfigConfigurationProfile,
    ResourceType.appConfigEnvironment,
    ResourceType.appSyncGraphQlApi,
    ResourceType.application,
    ResourceType.applicationVersion,
    ResourceType.associationCompliance,
    ResourceType.athenaDataCatalog,
    ResourceType.athenaWorkGroup,
    ResourceType.autoScalingGroup,
    ResourceType.backupPlan,
    ResourceType.backupRecoveryPoint,
    ResourceType.backupReportPlan,
    ResourceType.backupSelection,
    ResourceType.backupVault,
    ResourceType.batchComputeEnvironment,
    ResourceType.batchJobQueue,
    ResourceType.bucket,
    ResourceType.budgetsBudgetsAction,
    ResourceType.certificate,
    ResourceType.cloud9EnvironmentEc2,
    ResourceType.cloudFormationProduct,
    ResourceType.cloudFormationProvisionedProduct,
    ResourceType.cluster,
    ResourceType.clusterParameterGroup,
    ResourceType.clusterSecurityGroup,
    ResourceType.clusterSnapshot,
    ResourceType.clusterSubnetGroup,
    ResourceType.codeDeployApplication,
    ResourceType.codeDeployDeploymentConfig,
    ResourceType.codeDeployDeploymentGroup,
    ResourceType.codeGuruReviewerRepositoryAssociation,
    ResourceType.conformancePackCompliance,
    ResourceType.customerGateway,
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
    ResourceType.deviceFarmTestGridProject,
    ResourceType.distribution,
    ResourceType.dmsCertificate,
    ResourceType.dmsEventSubscription,
    ResourceType.dmsReplicationSubnetGroup,
    ResourceType.domain,
    ResourceType.ec2TrafficMirrorSession,
    ResourceType.ec2TrafficMirrorTarget,
    ResourceType.ecrPublicRepository,
    ResourceType.ecrRegistryPolicy,
    ResourceType.ecrRepository,
    ResourceType.ecsCluster,
    ResourceType.ecsService,
    ResourceType.ecsTaskDefinition,
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
    ResourceType.fileData,
    ResourceType.fisExperimentTemplate,
    ResourceType.flowLog,
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
    ResourceType.group,
    ResourceType.guardDutyDetector,
    ResourceType.guardDutyFilter,
    ResourceType.guardDutyIpSet,
    ResourceType.guardDutyThreatIntelSet,
    ResourceType.host,
    ResourceType.imageBuilderContainerRecipe,
    ResourceType.imageBuilderDistributionConfiguration,
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
    ResourceType.ioTTwinMakerWorkspace,
    ResourceType.ipSetV2,
    ResourceType.ivsChannel,
    ResourceType.ivsPlaybackKeyPair,
    ResourceType.ivsRecordingConfiguration,
    ResourceType.key,
    ResourceType.kinesisAnalyticsV2Application,
    ResourceType.kinesisStream,
    ResourceType.kinesisStreamConsumer,
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
    ResourceType.openSearchDomain,
    ResourceType.patchCompliance,
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
    ResourceType.roboMakerRobotApplicationVersion,
    ResourceType.role,
    ResourceType.route53HostedZone,
    ResourceType.route53RecoveryReadinessCell,
    ResourceType.route53RecoveryReadinessReadinessCheck,
    ResourceType.route53RecoveryReadinessRecoveryGroup,
    ResourceType.route53ResolverFirewallDomainList,
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
    ResourceType.sageMakerCodeRepository,
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
