// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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

  static const api = ResourceType._(
    3,
    'Api',
    'AWS::ApiGatewayV2::Api',
  );

  static const application = ResourceType._(
    4,
    'Application',
    'AWS::ElasticBeanstalk::Application',
  );

  static const applicationVersion = ResourceType._(
    5,
    'ApplicationVersion',
    'AWS::ElasticBeanstalk::ApplicationVersion',
  );

  static const associationCompliance = ResourceType._(
    6,
    'AssociationCompliance',
    'AWS::SSM::AssociationCompliance',
  );

  static const athenaDataCatalog = ResourceType._(
    7,
    'AthenaDataCatalog',
    'AWS::Athena::DataCatalog',
  );

  static const athenaWorkGroup = ResourceType._(
    8,
    'AthenaWorkGroup',
    'AWS::Athena::WorkGroup',
  );

  static const autoScalingGroup = ResourceType._(
    9,
    'AutoScalingGroup',
    'AWS::AutoScaling::AutoScalingGroup',
  );

  static const backupPlan = ResourceType._(
    10,
    'BackupPlan',
    'AWS::Backup::BackupPlan',
  );

  static const backupRecoveryPoint = ResourceType._(
    11,
    'BackupRecoveryPoint',
    'AWS::Backup::RecoveryPoint',
  );

  static const backupSelection = ResourceType._(
    12,
    'BackupSelection',
    'AWS::Backup::BackupSelection',
  );

  static const backupVault = ResourceType._(
    13,
    'BackupVault',
    'AWS::Backup::BackupVault',
  );

  static const batchComputeEnvironment = ResourceType._(
    14,
    'BatchComputeEnvironment',
    'AWS::Batch::ComputeEnvironment',
  );

  static const batchJobQueue = ResourceType._(
    15,
    'BatchJobQueue',
    'AWS::Batch::JobQueue',
  );

  static const bucket = ResourceType._(
    16,
    'Bucket',
    'AWS::S3::Bucket',
  );

  static const certificate = ResourceType._(
    17,
    'Certificate',
    'AWS::ACM::Certificate',
  );

  static const cloudFormationProduct = ResourceType._(
    18,
    'CloudFormationProduct',
    'AWS::ServiceCatalog::CloudFormationProduct',
  );

  static const cloudFormationProvisionedProduct = ResourceType._(
    19,
    'CloudFormationProvisionedProduct',
    'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
  );

  static const cluster = ResourceType._(
    20,
    'Cluster',
    'AWS::Redshift::Cluster',
  );

  static const clusterParameterGroup = ResourceType._(
    21,
    'ClusterParameterGroup',
    'AWS::Redshift::ClusterParameterGroup',
  );

  static const clusterSecurityGroup = ResourceType._(
    22,
    'ClusterSecurityGroup',
    'AWS::Redshift::ClusterSecurityGroup',
  );

  static const clusterSnapshot = ResourceType._(
    23,
    'ClusterSnapshot',
    'AWS::Redshift::ClusterSnapshot',
  );

  static const clusterSubnetGroup = ResourceType._(
    24,
    'ClusterSubnetGroup',
    'AWS::Redshift::ClusterSubnetGroup',
  );

  static const codeDeployApplication = ResourceType._(
    25,
    'CodeDeployApplication',
    'AWS::CodeDeploy::Application',
  );

  static const codeDeployDeploymentConfig = ResourceType._(
    26,
    'CodeDeployDeploymentConfig',
    'AWS::CodeDeploy::DeploymentConfig',
  );

  static const codeDeployDeploymentGroup = ResourceType._(
    27,
    'CodeDeployDeploymentGroup',
    'AWS::CodeDeploy::DeploymentGroup',
  );

  static const conformancePackCompliance = ResourceType._(
    28,
    'ConformancePackCompliance',
    'AWS::Config::ConformancePackCompliance',
  );

  static const customerGateway = ResourceType._(
    29,
    'CustomerGateway',
    'AWS::EC2::CustomerGateway',
  );

  static const dbCluster = ResourceType._(
    30,
    'DBCluster',
    'AWS::RDS::DBCluster',
  );

  static const dbClusterSnapshot = ResourceType._(
    31,
    'DBClusterSnapshot',
    'AWS::RDS::DBClusterSnapshot',
  );

  static const dbInstance = ResourceType._(
    32,
    'DBInstance',
    'AWS::RDS::DBInstance',
  );

  static const dbSecurityGroup = ResourceType._(
    33,
    'DBSecurityGroup',
    'AWS::RDS::DBSecurityGroup',
  );

  static const dbSnapshot = ResourceType._(
    34,
    'DBSnapshot',
    'AWS::RDS::DBSnapshot',
  );

  static const dbSubnetGroup = ResourceType._(
    35,
    'DBSubnetGroup',
    'AWS::RDS::DBSubnetGroup',
  );

  static const detectiveGraph = ResourceType._(
    36,
    'DetectiveGraph',
    'AWS::Detective::Graph',
  );

  static const distribution = ResourceType._(
    37,
    'Distribution',
    'AWS::CloudFront::Distribution',
  );

  static const dmsCertificate = ResourceType._(
    38,
    'DMSCertificate',
    'AWS::DMS::Certificate',
  );

  static const dmsEventSubscription = ResourceType._(
    39,
    'DMSEventSubscription',
    'AWS::DMS::EventSubscription',
  );

  static const dmsReplicationSubnetGroup = ResourceType._(
    40,
    'DMSReplicationSubnetGroup',
    'AWS::DMS::ReplicationSubnetGroup',
  );

  static const domain = ResourceType._(
    41,
    'Domain',
    'AWS::Elasticsearch::Domain',
  );

  static const ecrPublicRepository = ResourceType._(
    42,
    'ECRPublicRepository',
    'AWS::ECR::PublicRepository',
  );

  static const ecrRepository = ResourceType._(
    43,
    'ECRRepository',
    'AWS::ECR::Repository',
  );

  static const ecsCluster = ResourceType._(
    44,
    'ECSCluster',
    'AWS::ECS::Cluster',
  );

  static const ecsService = ResourceType._(
    45,
    'ECSService',
    'AWS::ECS::Service',
  );

  static const ecsTaskDefinition = ResourceType._(
    46,
    'ECSTaskDefinition',
    'AWS::ECS::TaskDefinition',
  );

  static const efsAccessPoint = ResourceType._(
    47,
    'EFSAccessPoint',
    'AWS::EFS::AccessPoint',
  );

  static const efsFileSystem = ResourceType._(
    48,
    'EFSFileSystem',
    'AWS::EFS::FileSystem',
  );

  static const egressOnlyInternetGateway = ResourceType._(
    49,
    'EgressOnlyInternetGateway',
    'AWS::EC2::EgressOnlyInternetGateway',
  );

  static const eip = ResourceType._(
    50,
    'EIP',
    'AWS::EC2::EIP',
  );

  static const eksCluster = ResourceType._(
    51,
    'EKSCluster',
    'AWS::EKS::Cluster',
  );

  static const emrSecurityConfiguration = ResourceType._(
    52,
    'EMRSecurityConfiguration',
    'AWS::EMR::SecurityConfiguration',
  );

  static const encryptionConfig = ResourceType._(
    53,
    'EncryptionConfig',
    'AWS::XRay::EncryptionConfig',
  );

  static const environment = ResourceType._(
    54,
    'Environment',
    'AWS::ElasticBeanstalk::Environment',
  );

  static const eventSubscription = ResourceType._(
    55,
    'EventSubscription',
    'AWS::RDS::EventSubscription',
  );

  static const fileData = ResourceType._(
    56,
    'FileData',
    'AWS::SSM::FileData',
  );

  static const flowLog = ResourceType._(
    57,
    'FlowLog',
    'AWS::EC2::FlowLog',
  );

  static const function = ResourceType._(
    58,
    'Function',
    'AWS::Lambda::Function',
  );

  static const globalAcceleratorAccelerator = ResourceType._(
    59,
    'GlobalAcceleratorAccelerator',
    'AWS::GlobalAccelerator::Accelerator',
  );

  static const globalAcceleratorEndpointGroup = ResourceType._(
    60,
    'GlobalAcceleratorEndpointGroup',
    'AWS::GlobalAccelerator::EndpointGroup',
  );

  static const globalAcceleratorListener = ResourceType._(
    61,
    'GlobalAcceleratorListener',
    'AWS::GlobalAccelerator::Listener',
  );

  static const group = ResourceType._(
    62,
    'Group',
    'AWS::IAM::Group',
  );

  static const guardDutyDetector = ResourceType._(
    63,
    'GuardDutyDetector',
    'AWS::GuardDuty::Detector',
  );

  static const host = ResourceType._(
    64,
    'Host',
    'AWS::EC2::Host',
  );

  static const instance = ResourceType._(
    65,
    'Instance',
    'AWS::EC2::Instance',
  );

  static const internetGateway = ResourceType._(
    66,
    'InternetGateway',
    'AWS::EC2::InternetGateway',
  );

  static const ipSetV2 = ResourceType._(
    67,
    'IPSetV2',
    'AWS::WAFv2::IPSet',
  );

  static const key = ResourceType._(
    68,
    'Key',
    'AWS::KMS::Key',
  );

  static const kinesisStream = ResourceType._(
    69,
    'KinesisStream',
    'AWS::Kinesis::Stream',
  );

  static const kinesisStreamConsumer = ResourceType._(
    70,
    'KinesisStreamConsumer',
    'AWS::Kinesis::StreamConsumer',
  );

  static const launchConfiguration = ResourceType._(
    71,
    'LaunchConfiguration',
    'AWS::AutoScaling::LaunchConfiguration',
  );

  static const launchTemplate = ResourceType._(
    72,
    'LaunchTemplate',
    'AWS::EC2::LaunchTemplate',
  );

  static const listenerV2 = ResourceType._(
    73,
    'ListenerV2',
    'AWS::ElasticLoadBalancingV2::Listener',
  );

  static const loadBalancer = ResourceType._(
    74,
    'LoadBalancer',
    'AWS::ElasticLoadBalancing::LoadBalancer',
  );

  static const loadBalancerV2 = ResourceType._(
    75,
    'LoadBalancerV2',
    'AWS::ElasticLoadBalancingV2::LoadBalancer',
  );

  static const managedInstanceInventory = ResourceType._(
    76,
    'ManagedInstanceInventory',
    'AWS::SSM::ManagedInstanceInventory',
  );

  static const managedRuleSetV2 = ResourceType._(
    77,
    'ManagedRuleSetV2',
    'AWS::WAFv2::ManagedRuleSet',
  );

  static const mskCluster = ResourceType._(
    78,
    'MSKCluster',
    'AWS::MSK::Cluster',
  );

  static const natGateway = ResourceType._(
    79,
    'NatGateway',
    'AWS::EC2::NatGateway',
  );

  static const networkAcl = ResourceType._(
    80,
    'NetworkAcl',
    'AWS::EC2::NetworkAcl',
  );

  static const networkFirewallFirewall = ResourceType._(
    81,
    'NetworkFirewallFirewall',
    'AWS::NetworkFirewall::Firewall',
  );

  static const networkFirewallFirewallPolicy = ResourceType._(
    82,
    'NetworkFirewallFirewallPolicy',
    'AWS::NetworkFirewall::FirewallPolicy',
  );

  static const networkFirewallRuleGroup = ResourceType._(
    83,
    'NetworkFirewallRuleGroup',
    'AWS::NetworkFirewall::RuleGroup',
  );

  static const networkInterface = ResourceType._(
    84,
    'NetworkInterface',
    'AWS::EC2::NetworkInterface',
  );

  static const openSearchDomain = ResourceType._(
    85,
    'OpenSearchDomain',
    'AWS::OpenSearch::Domain',
  );

  static const patchCompliance = ResourceType._(
    86,
    'PatchCompliance',
    'AWS::SSM::PatchCompliance',
  );

  static const pipeline = ResourceType._(
    87,
    'Pipeline',
    'AWS::CodePipeline::Pipeline',
  );

  static const policy = ResourceType._(
    88,
    'Policy',
    'AWS::IAM::Policy',
  );

  static const portfolio = ResourceType._(
    89,
    'Portfolio',
    'AWS::ServiceCatalog::Portfolio',
  );

  static const project = ResourceType._(
    90,
    'Project',
    'AWS::CodeBuild::Project',
  );

  static const protection = ResourceType._(
    91,
    'Protection',
    'AWS::Shield::Protection',
  );

  static const qldbLedger = ResourceType._(
    92,
    'QLDBLedger',
    'AWS::QLDB::Ledger',
  );

  static const queue = ResourceType._(
    93,
    'Queue',
    'AWS::SQS::Queue',
  );

  static const rateBasedRule = ResourceType._(
    94,
    'RateBasedRule',
    'AWS::WAF::RateBasedRule',
  );

  static const redshiftEventSubscription = ResourceType._(
    95,
    'RedshiftEventSubscription',
    'AWS::Redshift::EventSubscription',
  );

  static const regexPatternSetV2 = ResourceType._(
    96,
    'RegexPatternSetV2',
    'AWS::WAFv2::RegexPatternSet',
  );

  static const regionalProtection = ResourceType._(
    97,
    'RegionalProtection',
    'AWS::ShieldRegional::Protection',
  );

  static const regionalRateBasedRule = ResourceType._(
    98,
    'RegionalRateBasedRule',
    'AWS::WAFRegional::RateBasedRule',
  );

  static const regionalRule = ResourceType._(
    99,
    'RegionalRule',
    'AWS::WAFRegional::Rule',
  );

  static const regionalRuleGroup = ResourceType._(
    100,
    'RegionalRuleGroup',
    'AWS::WAFRegional::RuleGroup',
  );

  static const regionalWebAcl = ResourceType._(
    101,
    'RegionalWebACL',
    'AWS::WAFRegional::WebACL',
  );

  static const registeredHaInstance = ResourceType._(
    102,
    'RegisteredHAInstance',
    'AWS::EC2::RegisteredHAInstance',
  );

  static const resourceCompliance = ResourceType._(
    103,
    'ResourceCompliance',
    'AWS::Config::ResourceCompliance',
  );

  static const restApi = ResourceType._(
    104,
    'RestApi',
    'AWS::ApiGateway::RestApi',
  );

  static const role = ResourceType._(
    105,
    'Role',
    'AWS::IAM::Role',
  );

  static const route53ResolverResolverEndpoint = ResourceType._(
    106,
    'Route53ResolverResolverEndpoint',
    'AWS::Route53Resolver::ResolverEndpoint',
  );

  static const route53ResolverResolverRule = ResourceType._(
    107,
    'Route53ResolverResolverRule',
    'AWS::Route53Resolver::ResolverRule',
  );

  static const route53ResolverResolverRuleAssociation = ResourceType._(
    108,
    'Route53ResolverResolverRuleAssociation',
    'AWS::Route53Resolver::ResolverRuleAssociation',
  );

  static const routeTable = ResourceType._(
    109,
    'RouteTable',
    'AWS::EC2::RouteTable',
  );

  static const rule = ResourceType._(
    110,
    'Rule',
    'AWS::WAF::Rule',
  );

  static const ruleGroup = ResourceType._(
    111,
    'RuleGroup',
    'AWS::WAF::RuleGroup',
  );

  static const ruleGroupV2 = ResourceType._(
    112,
    'RuleGroupV2',
    'AWS::WAFv2::RuleGroup',
  );

  static const sageMakerCodeRepository = ResourceType._(
    113,
    'SageMakerCodeRepository',
    'AWS::SageMaker::CodeRepository',
  );

  static const sageMakerModel = ResourceType._(
    114,
    'SageMakerModel',
    'AWS::SageMaker::Model',
  );

  static const scalingPolicy = ResourceType._(
    115,
    'ScalingPolicy',
    'AWS::AutoScaling::ScalingPolicy',
  );

  static const scheduledAction = ResourceType._(
    116,
    'ScheduledAction',
    'AWS::AutoScaling::ScheduledAction',
  );

  static const secret = ResourceType._(
    117,
    'Secret',
    'AWS::SecretsManager::Secret',
  );

  static const securityGroup = ResourceType._(
    118,
    'SecurityGroup',
    'AWS::EC2::SecurityGroup',
  );

  static const stack = ResourceType._(
    119,
    'Stack',
    'AWS::CloudFormation::Stack',
  );

  static const stage = ResourceType._(
    120,
    'Stage',
    'AWS::ApiGateway::Stage',
  );

  static const stageV2 = ResourceType._(
    121,
    'StageV2',
    'AWS::ApiGatewayV2::Stage',
  );

  static const stepFunctionsActivity = ResourceType._(
    122,
    'StepFunctionsActivity',
    'AWS::StepFunctions::Activity',
  );

  static const stepFunctionsStateMachine = ResourceType._(
    123,
    'StepFunctionsStateMachine',
    'AWS::StepFunctions::StateMachine',
  );

  static const streamingDistribution = ResourceType._(
    124,
    'StreamingDistribution',
    'AWS::CloudFront::StreamingDistribution',
  );

  static const subnet = ResourceType._(
    125,
    'Subnet',
    'AWS::EC2::Subnet',
  );

  static const table = ResourceType._(
    126,
    'Table',
    'AWS::DynamoDB::Table',
  );

  static const topic = ResourceType._(
    127,
    'Topic',
    'AWS::SNS::Topic',
  );

  static const trail = ResourceType._(
    128,
    'Trail',
    'AWS::CloudTrail::Trail',
  );

  static const transitGateway = ResourceType._(
    129,
    'TransitGateway',
    'AWS::EC2::TransitGateway',
  );

  static const transitGatewayAttachment = ResourceType._(
    130,
    'TransitGatewayAttachment',
    'AWS::EC2::TransitGatewayAttachment',
  );

  static const transitGatewayRouteTable = ResourceType._(
    131,
    'TransitGatewayRouteTable',
    'AWS::EC2::TransitGatewayRouteTable',
  );

  static const user = ResourceType._(
    132,
    'User',
    'AWS::IAM::User',
  );

  static const volume = ResourceType._(
    133,
    'Volume',
    'AWS::EC2::Volume',
  );

  static const vpc = ResourceType._(
    134,
    'VPC',
    'AWS::EC2::VPC',
  );

  static const vpcEndpoint = ResourceType._(
    135,
    'VPCEndpoint',
    'AWS::EC2::VPCEndpoint',
  );

  static const vpcEndpointService = ResourceType._(
    136,
    'VPCEndpointService',
    'AWS::EC2::VPCEndpointService',
  );

  static const vpcPeeringConnection = ResourceType._(
    137,
    'VPCPeeringConnection',
    'AWS::EC2::VPCPeeringConnection',
  );

  static const vpnConnection = ResourceType._(
    138,
    'VPNConnection',
    'AWS::EC2::VPNConnection',
  );

  static const vpnGateway = ResourceType._(
    139,
    'VPNGateway',
    'AWS::EC2::VPNGateway',
  );

  static const webAcl = ResourceType._(
    140,
    'WebACL',
    'AWS::WAF::WebACL',
  );

  static const webAclv2 = ResourceType._(
    141,
    'WebACLV2',
    'AWS::WAFv2::WebACL',
  );

  static const workSpacesConnectionAlias = ResourceType._(
    142,
    'WorkSpacesConnectionAlias',
    'AWS::WorkSpaces::ConnectionAlias',
  );

  static const workSpacesWorkspace = ResourceType._(
    143,
    'WorkSpacesWorkspace',
    'AWS::WorkSpaces::Workspace',
  );

  /// All values of [ResourceType].
  static const values = <ResourceType>[
    ResourceType.accessAnalyzerAnalyzer,
    ResourceType.accountPublicAccessBlock,
    ResourceType.alarm,
    ResourceType.api,
    ResourceType.application,
    ResourceType.applicationVersion,
    ResourceType.associationCompliance,
    ResourceType.athenaDataCatalog,
    ResourceType.athenaWorkGroup,
    ResourceType.autoScalingGroup,
    ResourceType.backupPlan,
    ResourceType.backupRecoveryPoint,
    ResourceType.backupSelection,
    ResourceType.backupVault,
    ResourceType.batchComputeEnvironment,
    ResourceType.batchJobQueue,
    ResourceType.bucket,
    ResourceType.certificate,
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
    ResourceType.conformancePackCompliance,
    ResourceType.customerGateway,
    ResourceType.dbCluster,
    ResourceType.dbClusterSnapshot,
    ResourceType.dbInstance,
    ResourceType.dbSecurityGroup,
    ResourceType.dbSnapshot,
    ResourceType.dbSubnetGroup,
    ResourceType.detectiveGraph,
    ResourceType.distribution,
    ResourceType.dmsCertificate,
    ResourceType.dmsEventSubscription,
    ResourceType.dmsReplicationSubnetGroup,
    ResourceType.domain,
    ResourceType.ecrPublicRepository,
    ResourceType.ecrRepository,
    ResourceType.ecsCluster,
    ResourceType.ecsService,
    ResourceType.ecsTaskDefinition,
    ResourceType.efsAccessPoint,
    ResourceType.efsFileSystem,
    ResourceType.egressOnlyInternetGateway,
    ResourceType.eip,
    ResourceType.eksCluster,
    ResourceType.emrSecurityConfiguration,
    ResourceType.encryptionConfig,
    ResourceType.environment,
    ResourceType.eventSubscription,
    ResourceType.fileData,
    ResourceType.flowLog,
    ResourceType.function,
    ResourceType.globalAcceleratorAccelerator,
    ResourceType.globalAcceleratorEndpointGroup,
    ResourceType.globalAcceleratorListener,
    ResourceType.group,
    ResourceType.guardDutyDetector,
    ResourceType.host,
    ResourceType.instance,
    ResourceType.internetGateway,
    ResourceType.ipSetV2,
    ResourceType.key,
    ResourceType.kinesisStream,
    ResourceType.kinesisStreamConsumer,
    ResourceType.launchConfiguration,
    ResourceType.launchTemplate,
    ResourceType.listenerV2,
    ResourceType.loadBalancer,
    ResourceType.loadBalancerV2,
    ResourceType.managedInstanceInventory,
    ResourceType.managedRuleSetV2,
    ResourceType.mskCluster,
    ResourceType.natGateway,
    ResourceType.networkAcl,
    ResourceType.networkFirewallFirewall,
    ResourceType.networkFirewallFirewallPolicy,
    ResourceType.networkFirewallRuleGroup,
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
    ResourceType.redshiftEventSubscription,
    ResourceType.regexPatternSetV2,
    ResourceType.regionalProtection,
    ResourceType.regionalRateBasedRule,
    ResourceType.regionalRule,
    ResourceType.regionalRuleGroup,
    ResourceType.regionalWebAcl,
    ResourceType.registeredHaInstance,
    ResourceType.resourceCompliance,
    ResourceType.restApi,
    ResourceType.role,
    ResourceType.route53ResolverResolverEndpoint,
    ResourceType.route53ResolverResolverRule,
    ResourceType.route53ResolverResolverRuleAssociation,
    ResourceType.routeTable,
    ResourceType.rule,
    ResourceType.ruleGroup,
    ResourceType.ruleGroupV2,
    ResourceType.sageMakerCodeRepository,
    ResourceType.sageMakerModel,
    ResourceType.scalingPolicy,
    ResourceType.scheduledAction,
    ResourceType.secret,
    ResourceType.securityGroup,
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
