import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// AWS services and related metadata.
@immutable
class AWSService with AWSEquatable<AWSService> {
  const AWSService._(this.sdkId, this.service);

  /// The SDK identifier.
  final String sdkId;

  /// The SigV4 service name, used in signing.
  final String service;

  /// Access Analyzer
  static const accessAnalyzer =
      AWSService._('AccessAnalyzer', 'access-analyzer');

  /// AWS Account
  static const account = AWSService._('Account', 'account');

  /// AWS Certificate Manager
  static const acm = AWSService._('ACM', 'acm');

  /// AWS Certificate Manager Private Certificate Authority
  static const acmPca = AWSService._('ACM PCA', 'acm-pca');

  /// Alexa For Business
  static const alexaForBusiness = AWSService._('Alexa For Business', 'a4b');

  /// Amazon Prometheus Service
  static const amp = AWSService._('amp', 'aps');

  /// AWS Amplify
  static const amplify = AWSService._('Amplify', 'amplify');

  /// AmplifyBackend
  static const amplifyBackend =
      AWSService._('AmplifyBackend', 'amplifybackend');

  /// AWS Amplify UI Builder
  static const amplifyUiBuilder =
      AWSService._('AmplifyUIBuilder', 'amplifyuibuilder');

  /// Amazon API Gateway
  static const apiGateway = AWSService._('API Gateway', 'apigateway');

  /// AmazonApiGatewayManagementApi
  static const apiGatewayManagementApi =
      AWSService._('ApiGatewayManagementApi', 'execute-api');

  /// AmazonApiGatewayV2
  static const apiGatewayV2 = AWSService._('ApiGatewayV2', 'apigateway');

  /// Amazon AppConfig
  static const appConfig = AWSService._('AppConfig', 'appconfig');

  /// AWS AppConfig Data
  static const appConfigData = AWSService._('AppConfigData', 'appconfig');

  /// Amazon AppIntegrations Service
  static const appIntegrations =
      AWSService._('AppIntegrations', 'app-integrations');

  /// AWS App Mesh
  static const appMesh = AWSService._('App Mesh', 'appmesh');

  /// AWS App Runner
  static const appRunner = AWSService._('AppRunner', 'apprunner');

  /// Amazon AppStream
  static const appStream = AWSService._('AppStream', 'appstream');

  /// AWS AppSync
  static const appSync = AWSService._('AppSync', 'appsync');

  /// Amazon Appflow
  static const appflow = AWSService._('Appflow', 'appflow');

  /// Application Auto Scaling
  static const applicationAutoScaling =
      AWSService._('Application Auto Scaling', 'application-autoscaling');

  /// AWS Application Cost Profiler
  static const applicationCostProfiler =
      AWSService._('ApplicationCostProfiler', 'application-cost-profiler');

  /// AWS Application Discovery Service
  static const applicationDiscoveryService =
      AWSService._('Application Discovery Service', 'discovery');

  /// Amazon CloudWatch Application Insights
  static const applicationInsights =
      AWSService._('Application Insights', 'applicationinsights');

  /// Amazon Athena
  static const athena = AWSService._('Athena', 'athena');

  /// AWS Audit Manager
  static const auditManager = AWSService._('AuditManager', 'auditmanager');

  /// Auto Scaling
  static const autoScaling = AWSService._('Auto Scaling', 'autoscaling');

  /// AWS Auto Scaling Plans
  static const autoScalingPlans =
      AWSService._('Auto Scaling Plans', 'autoscaling-plans');

  /// AWS Backup
  static const backup = AWSService._('Backup', 'backup');

  /// AWS Backup Gateway
  static const backupGateway = AWSService._('Backup Gateway', 'backup-gateway');

  /// AWS Batch
  static const batch = AWSService._('Batch', 'batch');

  /// AWSBillingConductor
  static const billingconductor =
      AWSService._('billingconductor', 'billingconductor');

  /// Braket
  static const braket = AWSService._('Braket', 'braket');

  /// AWS Budgets
  static const budgets = AWSService._('Budgets', 'budgets');

  /// Amazon Chime
  static const chime = AWSService._('Chime', 'chime');

  /// Amazon Chime SDK Identity
  static const chimeSdkIdentity = AWSService._('Chime SDK Identity', 'chime');

  /// Amazon Chime SDK Meetings
  static const chimeSdkMeetings = AWSService._('Chime SDK Meetings', 'chime');

  /// Amazon Chime SDK Messaging
  static const chimeSdkMessaging = AWSService._('Chime SDK Messaging', 'chime');

  /// AWS Cloud9
  static const cloud9 = AWSService._('Cloud9', 'cloud9');

  /// AWS Cloud Control API
  static const cloudControl = AWSService._('CloudControl', 'cloudcontrolapi');

  /// Amazon CloudDirectory
  static const cloudDirectory =
      AWSService._('CloudDirectory', 'clouddirectory');

  /// AWS CloudFormation
  static const cloudFormation =
      AWSService._('CloudFormation', 'cloudformation');

  /// Amazon CloudFront
  static const cloudFront = AWSService._('CloudFront', 'cloudfront');

  /// Amazon CloudHSM
  static const cloudHsm = AWSService._('CloudHSM', 'cloudhsm');

  /// AWS CloudHSM V2
  static const cloudHsmV2 = AWSService._('CloudHSM V2', 'cloudhsm');

  /// Amazon CloudSearch
  static const cloudSearch = AWSService._('CloudSearch', 'cloudsearch');

  /// Amazon CloudSearch Domain
  static const cloudSearchDomain =
      AWSService._('CloudSearch Domain', 'cloudsearch');

  /// AWS CloudTrail
  static const cloudTrail = AWSService._('CloudTrail', 'cloudtrail');

  /// Amazon CloudWatch
  static const cloudWatch = AWSService._('CloudWatch', 'monitoring');

  /// Amazon CloudWatch Events
  static const cloudWatchEvents = AWSService._('CloudWatch Events', 'events');

  /// Amazon CloudWatch Logs
  static const cloudWatchLogs = AWSService._('CloudWatch Logs', 'logs');

  /// AWS CodeBuild
  static const codeBuild = AWSService._('CodeBuild', 'codebuild');

  /// AWS CodeCommit
  static const codeCommit = AWSService._('CodeCommit', 'codecommit');

  /// AWS CodeDeploy
  static const codeDeploy = AWSService._('CodeDeploy', 'codedeploy');

  /// Amazon CodeGuru Profiler
  static const codeGuruProfiler =
      AWSService._('CodeGuruProfiler', 'codeguru-profiler');

  /// Amazon CodeGuru Reviewer
  static const codeGuruReviewer =
      AWSService._('CodeGuru Reviewer', 'codeguru-reviewer');

  /// AWS CodePipeline
  static const codePipeline = AWSService._('CodePipeline', 'codepipeline');

  /// AWS CodeStar
  static const codeStar = AWSService._('CodeStar', 'codestar');

  /// AWS CodeStar connections
  static const codeStarConnections =
      AWSService._('CodeStar connections', 'codestar-connections');

  /// CodeArtifact
  static const codeartifact = AWSService._('codeartifact', 'codeartifact');

  /// AWS CodeStar Notifications
  static const codestarNotifications =
      AWSService._('codestar notifications', 'codestar-notifications');

  /// Amazon Cognito Identity
  static const cognitoIdentity =
      AWSService._('Cognito Identity', 'cognito-identity');

  /// Amazon Cognito Identity Provider
  static const cognitoIdentityProvider =
      AWSService._('Cognito Identity Provider', 'cognito-idp');

  /// Amazon Cognito Sync
  static const cognitoSync = AWSService._('Cognito Sync', 'cognito-sync');

  /// Amazon Comprehend
  static const comprehend = AWSService._('Comprehend', 'comprehend');

  /// AWS Comprehend Medical
  static const comprehendMedical =
      AWSService._('ComprehendMedical', 'comprehendmedical');

  /// AWS Compute Optimizer
  static const computeOptimizer =
      AWSService._('Compute Optimizer', 'compute-optimizer');

  /// AWS Config
  static const configService = AWSService._('Config Service', 'config');

  /// Amazon Connect Service
  static const connect = AWSService._('Connect', 'connect');

  /// Amazon Connect Contact Lens
  static const connectContactLens =
      AWSService._('Connect Contact Lens', 'connect');

  /// Amazon Connect Participant Service
  static const connectParticipant =
      AWSService._('ConnectParticipant', 'execute-api');

  /// AWS Cost and Usage Report Service
  static const costAndUsageReportService =
      AWSService._('Cost and Usage Report Service', 'cur');

  /// AWS Cost Explorer Service
  static const costExplorer = AWSService._('Cost Explorer', 'ce');

  /// Amazon Connect Customer Profiles
  static const customerProfiles = AWSService._('Customer Profiles', 'profile');

  /// AWS Glue DataBrew
  static const dataBrew = AWSService._('DataBrew', 'databrew');

  /// AWS Data Exchange
  static const dataExchange = AWSService._('DataExchange', 'dataexchange');

  /// AWS Data Pipeline
  static const dataPipeline = AWSService._('Data Pipeline', 'datapipeline');

  /// AWS DataSync
  static const dataSync = AWSService._('DataSync', 'datasync');

  /// AWS Database Migration Service
  static const databaseMigrationService =
      AWSService._('Database Migration Service', 'dms');

  /// Amazon DynamoDB Accelerator (DAX)
  static const dax = AWSService._('DAX', 'dax');

  /// Amazon Detective
  static const detective = AWSService._('Detective', 'detective');

  /// Amazon DevOps Guru
  static const devOpsGuru = AWSService._('DevOps Guru', 'devops-guru');

  /// AWS Device Farm
  static const deviceFarm = AWSService._('Device Farm', 'devicefarm');

  /// AWS Direct Connect
  static const directConnect = AWSService._('Direct Connect', 'directconnect');

  /// AWS Directory Service
  static const directoryService = AWSService._('Directory Service', 'ds');

  /// Amazon Data Lifecycle Manager
  static const dlm = AWSService._('DLM', 'dlm');

  /// Amazon DocumentDB with MongoDB compatibility
  static const docDb = AWSService._('DocDB', 'rds');

  /// Elastic Disaster Recovery Service
  static const drs = AWSService._('drs', 'drs');

  /// Amazon DynamoDB
  static const dynamoDb = AWSService._('DynamoDB', 'dynamodb');

  /// Amazon DynamoDB Streams
  static const dynamoDbStreams = AWSService._('DynamoDB Streams', 'dynamodb');

  /// Amazon Elastic Block Store
  static const ebs = AWSService._('EBS', 'ebs');

  /// Amazon Elastic Compute Cloud
  static const ec2 = AWSService._('EC2', 'ec2');

  /// AWS EC2 Instance Connect
  static const ec2InstanceConnect =
      AWSService._('EC2 Instance Connect', 'ec2-instance-connect');

  /// Amazon EC2 Container Registry
  static const ecr = AWSService._('ECR', 'ecr');

  /// Amazon Elastic Container Registry Public
  static const ecrPublic = AWSService._('ECR PUBLIC', 'ecr-public');

  /// Amazon EC2 Container Service
  static const ecs = AWSService._('ECS', 'ecs');

  /// Amazon Elastic File System
  static const efs = AWSService._('EFS', 'elasticfilesystem');

  /// Amazon Elastic Kubernetes Service
  static const eks = AWSService._('EKS', 'eks');

  /// Amazon ElastiCache
  static const elastiCache = AWSService._('ElastiCache', 'elasticache');

  /// AWS Elastic Beanstalk
  static const elasticBeanstalk =
      AWSService._('Elastic Beanstalk', 'elasticbeanstalk');

  /// Amazon Elastic  Inference
  static const elasticInference =
      AWSService._('Elastic Inference', 'elastic-inference');

  /// Elastic Load Balancing
  static const elasticLoadBalancing =
      AWSService._('Elastic Load Balancing', 'elasticloadbalancing');

  /// Elastic Load Balancing
  static const elasticLoadBalancingV2 =
      AWSService._('Elastic Load Balancing v2', 'elasticloadbalancing');

  /// Amazon Elastic Transcoder
  static const elasticTranscoder =
      AWSService._('Elastic Transcoder', 'elastictranscoder');

  /// Amazon Elasticsearch Service
  static const elasticsearchService =
      AWSService._('Elasticsearch Service', 'es');

  /// Amazon EMR
  static const emr = AWSService._('EMR', 'elasticmapreduce');

  /// Amazon EMR Containers
  static const emrContainers = AWSService._('EMR containers', 'emr-containers');

  /// Amazon EventBridge
  static const eventBridge = AWSService._('EventBridge', 'events');

  /// Amazon CloudWatch Evidently
  static const evidently = AWSService._('Evidently', 'evidently');

  /// Amazon FSx
  static const fSx = AWSService._('FSx', 'fsx');

  /// FinSpace User Environment Management service
  static const finspace = AWSService._('finspace', 'finspace');

  /// FinSpace Public API
  static const finspaceData = AWSService._('finspace data', 'finspace-api');

  /// Amazon Kinesis Firehose
  static const firehose = AWSService._('Firehose', 'firehose');

  /// AWS Fault Injection Simulator
  static const fis = AWSService._('fis', 'fis');

  /// Firewall Management Service
  static const fms = AWSService._('FMS', 'fms');

  /// Amazon Forecast Service
  static const forecast = AWSService._('forecast', 'forecast');

  /// Amazon Forecast Query Service
  static const forecastquery = AWSService._('forecastquery', 'forecast');

  /// Amazon Fraud Detector
  static const fraudDetector = AWSService._('FraudDetector', 'frauddetector');

  /// Amazon GameLift
  static const gameLift = AWSService._('GameLift', 'gamelift');

  /// GameSparks
  static const gameSparks = AWSService._('GameSparks', 'gamesparks');

  /// Amazon Glacier
  static const glacier = AWSService._('Glacier', 'glacier');

  /// AWS Global Accelerator
  static const globalAccelerator =
      AWSService._('Global Accelerator', 'globalaccelerator');

  /// AWS Glue
  static const glue = AWSService._('Glue', 'glue');

  /// Amazon Managed Grafana
  static const grafana = AWSService._('grafana', 'grafana');

  /// AWS Greengrass
  static const greengrass = AWSService._('Greengrass', 'greengrass');

  /// AWS IoT Greengrass V2
  static const greengrassV2 = AWSService._('GreengrassV2', 'greengrass');

  /// AWS Ground Station
  static const groundStation = AWSService._('GroundStation', 'groundstation');

  /// Amazon GuardDuty
  static const guardDuty = AWSService._('GuardDuty', 'guardduty');

  /// AWS Health APIs and Notifications
  static const health = AWSService._('Health', 'health');

  /// Amazon HealthLake
  static const healthLake = AWSService._('HealthLake', 'healthlake');

  /// Amazon Honeycode
  static const honeycode = AWSService._('Honeycode', 'honeycode');

  /// AWS Identity and Access Management
  static const iam = AWSService._('IAM', 'iam');

  /// AWS SSO Identity Store
  static const identitystore = AWSService._('identitystore', 'identitystore');

  /// EC2 Image Builder
  static const imagebuilder = AWSService._('imagebuilder', 'imagebuilder');

  /// Amazon Inspector
  static const inspector = AWSService._('Inspector', 'inspector');

  /// Inspector2
  static const inspector2 = AWSService._('Inspector2', 'inspector2');

  /// AWS IoT Analytics
  static const ioTAnalytics = AWSService._('IoTAnalytics', 'iotanalytics');

  /// AWS IoT Fleet Hub
  static const ioTFleetHub = AWSService._('IoTFleetHub', 'iotfleethub');

  /// AWS IoT Secure Tunneling
  static const ioTSecureTunneling =
      AWSService._('IoTSecureTunneling', 'iotsecuredtunneling');

  /// AWS IoT SiteWise
  static const ioTSiteWise = AWSService._('IoTSiteWise', 'iotsitewise');

  /// AWS IoT Things Graph
  static const ioTThingsGraph =
      AWSService._('IoTThingsGraph', 'iotthingsgraph');

  /// AWS IoT TwinMaker
  static const ioTTwinMaker = AWSService._('IoTTwinMaker', 'iottwinmaker');

  /// AWS IoT
  static const iot = AWSService._('IoT', 'execute-api');

  /// AWS IoT 1-Click Devices Service
  static const iot1ClickDevicesService =
      AWSService._('IoT 1Click Devices Service', 'iot1click');

  /// AWS IoT 1-Click Projects Service
  static const iot1ClickProjects =
      AWSService._('IoT 1Click Projects', 'iot1click');

  /// AWS IoT Data Plane
  static const iotDataPlane = AWSService._('IoT Data Plane', 'iotdata');

  /// AWS IoT Core Device Advisor
  static const iotDeviceAdvisor =
      AWSService._('IotDeviceAdvisor', 'iotdeviceadvisor');

  /// AWS IoT Events
  static const iotEvents = AWSService._('IoT Events', 'iotevents');

  /// AWS IoT Events Data
  static const iotEventsData = AWSService._('IoT Events Data', 'ioteventsdata');

  /// AWS IoT Jobs Data Plane
  static const iotJobsDataPlane =
      AWSService._('IoT Jobs Data Plane', 'iot-jobs-data');

  /// AWS IoT Wireless
  static const iotWireless = AWSService._('IoT Wireless', 'iotwireless');

  /// Amazon Interactive Video Service
  static const ivs = AWSService._('ivs', 'ivs');

  /// Managed Streaming for Kafka
  static const kafka = AWSService._('Kafka', 'kafka');

  /// Managed Streaming for Kafka Connect
  static const kafkaConnect = AWSService._('KafkaConnect', 'kafkaconnect');

  /// AWSKendraFrontendService
  static const kendra = AWSService._('kendra', 'kendra');

  /// Amazon Keyspaces
  static const keyspaces = AWSService._('Keyspaces', 'cassandra');

  /// Amazon Kinesis
  static const kinesis = AWSService._('Kinesis', 'kinesis');

  /// Amazon Kinesis Analytics
  static const kinesisAnalytics =
      AWSService._('Kinesis Analytics', 'kinesisanalytics');

  /// Amazon Kinesis Analytics
  static const kinesisAnalyticsV2 =
      AWSService._('Kinesis Analytics V2', 'kinesisanalytics');

  /// Amazon Kinesis Video Streams
  static const kinesisVideo = AWSService._('Kinesis Video', 'kinesisvideo');

  /// Amazon Kinesis Video Streams Archived Media
  static const kinesisVideoArchivedMedia =
      AWSService._('Kinesis Video Archived Media', 'kinesisvideo');

  /// Amazon Kinesis Video Streams Media
  static const kinesisVideoMedia =
      AWSService._('Kinesis Video Media', 'kinesisvideo');

  /// Amazon Kinesis Video Signaling Channels
  static const kinesisVideoSignaling =
      AWSService._('Kinesis Video Signaling', 'kinesisvideo');

  /// AWS Key Management Service
  static const kms = AWSService._('KMS', 'kms');

  /// AWS Lake Formation
  static const lakeFormation = AWSService._('LakeFormation', 'lakeformation');

  /// AWS Lambda
  static const lambda = AWSService._('Lambda', 'lambda');

  /// Amazon Lex Model Building Service
  static const lexModelBuildingService =
      AWSService._('Lex Model Building Service', 'lex');

  /// Amazon Lex Model Building V2
  static const lexModelsV2 = AWSService._('Lex Models V2', 'lex');

  /// Amazon Lex Runtime Service
  static const lexRuntimeService = AWSService._('Lex Runtime Service', 'lex');

  /// Amazon Lex Runtime V2
  static const lexRuntimeV2 = AWSService._('Lex Runtime V2', 'lex');

  /// AWS License Manager
  static const licenseManager =
      AWSService._('License Manager', 'license-manager');

  /// Amazon Lightsail
  static const lightsail = AWSService._('Lightsail', 'lightsail');

  /// Amazon Location Service
  static const location = AWSService._('Location', 'geo');

  /// Amazon Lookout for Equipment
  static const lookoutEquipment =
      AWSService._('LookoutEquipment', 'lookoutequipment');

  /// Amazon Lookout for Metrics
  static const lookoutMetrics =
      AWSService._('LookoutMetrics', 'lookoutmetrics');

  /// Amazon Lookout for Vision
  static const lookoutVision = AWSService._('LookoutVision', 'lookoutvision');

  /// Amazon Mechanical Turk
  static const mTurk = AWSService._('MTurk', 'mturk-requester');

  /// Amazon Machine Learning
  static const machineLearning =
      AWSService._('Machine Learning', 'machinelearning');

  /// Amazon Macie
  static const macie = AWSService._('Macie', 'macie');

  /// Amazon Macie 2
  static const macie2 = AWSService._('Macie2', 'macie2');

  /// Amazon Managed Blockchain
  static const managedBlockchain =
      AWSService._('ManagedBlockchain', 'managedblockchain');

  /// AWS Marketplace Catalog Service
  static const marketplaceCatalog =
      AWSService._('Marketplace Catalog', 'aws-marketplace');

  /// AWS Marketplace Commerce Analytics
  static const marketplaceCommerceAnalytics = AWSService._(
      'Marketplace Commerce Analytics', 'marketplacecommerceanalytics');

  /// AWS Marketplace Entitlement Service
  static const marketplaceEntitlementService =
      AWSService._('Marketplace Entitlement Service', 'aws-marketplace');

  /// AWSMarketplace Metering
  static const marketplaceMetering =
      AWSService._('Marketplace Metering', 'aws-marketplace');

  /// AWS MediaConnect
  static const mediaConnect = AWSService._('MediaConnect', 'mediaconnect');

  /// AWS Elemental MediaConvert
  static const mediaConvert = AWSService._('MediaConvert', 'mediaconvert');

  /// AWS Elemental MediaLive
  static const mediaLive = AWSService._('MediaLive', 'medialive');

  /// AWS Elemental MediaPackage
  static const mediaPackage = AWSService._('MediaPackage', 'mediapackage');

  /// AWS Elemental MediaPackage VOD
  static const mediaPackageVod =
      AWSService._('MediaPackage Vod', 'mediapackage-vod');

  /// AWS Elemental MediaStore
  static const mediaStore = AWSService._('MediaStore', 'mediastore');

  /// AWS Elemental MediaStore Data Plane
  static const mediaStoreData = AWSService._('MediaStore Data', 'mediastore');

  /// AWS MediaTailor
  static const mediaTailor = AWSService._('MediaTailor', 'mediatailor');

  /// Amazon MemoryDB
  static const memoryDb = AWSService._('MemoryDB', 'memorydb');

  /// Application Migration Service
  static const mgn = AWSService._('mgn', 'mgn');

  /// AWS Migration Hub
  static const migrationHub = AWSService._('Migration Hub', 'mgh');

  /// AWS Migration Hub Config
  static const migrationHubConfig = AWSService._('MigrationHub Config', 'mgh');

  /// AWS Migration Hub Refactor Spaces
  static const migrationHubRefactorSpaces =
      AWSService._('Migration Hub Refactor Spaces', 'refactor-spaces');

  /// Migration Hub Strategy Recommendations
  static const migrationHubStrategy =
      AWSService._('MigrationHubStrategy', 'migrationhub-strategy');

  /// AWS Mobile
  static const mobile = AWSService._('Mobile', 'awsmobilehubservice');

  /// AmazonMQ
  static const mq = AWSService._('mq', 'mq');

  /// AmazonMWAA
  static const mwaa = AWSService._('MWAA', 'airflow');

  /// Amazon Neptune
  static const neptune = AWSService._('Neptune', 'rds');

  /// AWS Network Firewall
  static const networkFirewall =
      AWSService._('Network Firewall', 'network-firewall');

  /// AWS Network Manager
  static const networkManager =
      AWSService._('NetworkManager', 'networkmanager');

  /// AmazonNimbleStudio
  static const nimble = AWSService._('nimble', 'nimble');

  /// Amazon OpenSearch Service
  static const openSearch = AWSService._('OpenSearch', 'es');

  /// AWS OpsWorks
  static const opsWorks = AWSService._('OpsWorks', 'opsworks');

  /// AWS OpsWorks CM
  static const opsWorksCm = AWSService._('OpsWorksCM', 'opsworks-cm');

  /// AWS Organizations
  static const organizations = AWSService._('Organizations', 'organizations');

  /// AWS Outposts
  static const outposts = AWSService._('Outposts', 'outposts');

  /// AWS Panorama
  static const panorama = AWSService._('Panorama', 'panorama');

  /// Amazon Personalize
  static const personalize = AWSService._('Personalize', 'personalize');

  /// Amazon Personalize Events
  static const personalizeEvents =
      AWSService._('Personalize Events', 'personalize');

  /// Amazon Personalize Runtime
  static const personalizeRuntime =
      AWSService._('Personalize Runtime', 'personalize');

  /// AWS Performance Insights
  static const pi = AWSService._('PI', 'pi');

  /// Amazon Pinpoint
  static const pinpoint = AWSService._('Pinpoint', 'mobiletargeting');

  /// Amazon Pinpoint Email Service
  static const pinpointEmail = AWSService._('Pinpoint Email', 'ses');

  /// Amazon Pinpoint SMS and Voice Service
  static const pinpointSmsVoice =
      AWSService._('Pinpoint SMS Voice', 'sms-voice');

  /// Amazon Pinpoint SMS Voice V2
  static const pinpointSmsVoiceV2 =
      AWSService._('Pinpoint SMS Voice V2', 'sms-voice');

  /// Amazon Polly
  static const polly = AWSService._('Polly', 'polly');

  /// AWS Price List Service
  static const pricing = AWSService._('Pricing', 'pricing');

  /// AWS Proton
  static const proton = AWSService._('Proton', 'proton');

  /// Amazon QLDB
  static const qldb = AWSService._('QLDB', 'qldb');

  /// Amazon QLDB Session
  static const qldbSession = AWSService._('QLDB Session', 'qldb');

  /// Amazon QuickSight
  static const quickSight = AWSService._('QuickSight', 'quicksight');

  /// AWS Resource Access Manager
  static const ram = AWSService._('RAM', 'ram');

  /// Amazon Recycle Bin
  static const rbin = AWSService._('rbin', 'rbin');

  /// Amazon Relational Database Service
  static const rds = AWSService._('RDS', 'rds');

  /// AWS RDS DataService
  static const rdsData = AWSService._('RDS Data', 'rds-data');

  /// Amazon Redshift
  static const redshift = AWSService._('Redshift', 'redshift');

  /// Redshift Data API Service
  static const redshiftData = AWSService._('Redshift Data', 'redshift-data');

  /// Amazon Rekognition
  static const rekognition = AWSService._('Rekognition', 'rekognition');

  /// AWS Resilience Hub
  static const resiliencehub = AWSService._('resiliencehub', 'resiliencehub');

  /// AWS Resource Groups
  static const resourceGroups =
      AWSService._('Resource Groups', 'resource-groups');

  /// AWS Resource Groups Tagging API
  static const resourceGroupsTaggingApi =
      AWSService._('Resource Groups Tagging API', 'tagging');

  /// AWS RoboMaker
  static const roboMaker = AWSService._('RoboMaker', 'robomaker');

  /// Amazon Route 53
  static const route53 = AWSService._('Route 53', 'route53');

  /// Amazon Route 53 Domains
  static const route53Domains =
      AWSService._('Route 53 Domains', 'route53domains');

  /// Route53 Recovery Cluster
  static const route53RecoveryCluster =
      AWSService._('Route53 Recovery Cluster', 'route53-recovery-cluster');

  /// AWS Route53 Recovery Control Config
  static const route53RecoveryControlConfig = AWSService._(
      'Route53 Recovery Control Config', 'route53-recovery-control-config');

  /// AWS Route53 Recovery Readiness
  static const route53RecoveryReadiness =
      AWSService._('Route53 Recovery Readiness', 'route53-recovery-readiness');

  /// Amazon Route 53 Resolver
  static const route53Resolver =
      AWSService._('Route53Resolver', 'route53resolver');

  /// CloudWatch RUM
  static const rum = AWSService._('RUM', 'rum');

  /// Amazon Simple Storage Service
  static const s3 = AWSService._('S3', 's3');

  /// AWS S3 Control
  static const s3Control = AWSService._('S3 Control', 's3');

  /// Amazon S3 on Outposts
  static const s3Outposts = AWSService._('S3Outposts', 's3-outposts');

  /// Amazon SageMaker Service
  static const sageMaker = AWSService._('SageMaker', 'sagemaker');

  /// Amazon Augmented AI Runtime
  static const sageMakerA2IRuntime =
      AWSService._('SageMaker A2I Runtime', 'sagemaker');

  /// Amazon SageMaker Feature Store Runtime
  static const sageMakerFeatureStoreRuntime =
      AWSService._('SageMaker FeatureStore Runtime', 'sagemaker');

  /// Amazon SageMaker Runtime
  static const sageMakerRuntime =
      AWSService._('SageMaker Runtime', 'sagemaker');

  /// Amazon Sagemaker Edge Manager
  static const sagemakerEdge = AWSService._('Sagemaker Edge', 'sagemaker');

  /// AWS Savings Plans
  static const savingsplans = AWSService._('savingsplans', 'savingsplans');

  /// Schemas
  static const schemas = AWSService._('schemas', 'schemas');

  /// AWS Secrets Manager
  static const secretsManager =
      AWSService._('Secrets Manager', 'secretsmanager');

  /// AWS SecurityHub
  static const securityHub = AWSService._('SecurityHub', 'securityhub');

  /// AWSServerlessApplicationRepository
  static const serverlessApplicationRepository =
      AWSService._('ServerlessApplicationRepository', 'serverlessrepo');

  /// AWS Service Catalog
  static const serviceCatalog =
      AWSService._('Service Catalog', 'servicecatalog');

  /// AWS Service Catalog App Registry
  static const serviceCatalogAppRegistry =
      AWSService._('Service Catalog AppRegistry', 'servicecatalog');

  /// AWS Cloud Map
  static const serviceDiscovery =
      AWSService._('ServiceDiscovery', 'servicediscovery');

  /// Service Quotas
  static const serviceQuotas = AWSService._('Service Quotas', 'servicequotas');

  /// Amazon Simple Email Service
  static const ses = AWSService._('SES', 'ses');

  /// Amazon Simple Email Service
  static const sesV2 = AWSService._('SESv2', 'ses');

  /// AWS Step Functions
  static const sfn = AWSService._('SFN', 'states');

  /// AWS Shield
  static const shield = AWSService._('Shield', 'shield');

  /// AWS Signer
  static const signer = AWSService._('signer', 'signer');

  /// AWS Server Migration Service
  static const sms = AWSService._('SMS', 'sms');

  /// AWS Snow Device Management
  static const snowDeviceManagement =
      AWSService._('Snow Device Management', 'snow-device-management');

  /// Amazon Import/Export Snowball
  static const snowball = AWSService._('Snowball', 'snowball');

  /// Amazon Simple Notification Service
  static const sns = AWSService._('SNS', 'sns');

  /// Amazon Simple Queue Service
  static const sqs = AWSService._('SQS', 'sqs');

  /// Amazon Simple Systems Manager (SSM)
  static const ssm = AWSService._('SSM', 'ssm');

  /// AWS Systems Manager Incident Manager Contacts
  static const ssmContacts = AWSService._('SSM Contacts', 'ssm-contacts');

  /// AWS Systems Manager Incident Manager
  static const ssmIncidents = AWSService._('SSM Incidents', 'ssm-incidents');

  /// AWS Single Sign-On
  static const sso = AWSService._('SSO', 'awsssoportal');

  /// AWS Single Sign-On Admin
  static const ssoAdmin = AWSService._('SSO Admin', 'sso');

  /// AWS SSO OIDC
  static const ssoOidc = AWSService._('SSO OIDC', 'awsssooidc');

  /// AWS Storage Gateway
  static const storageGateway =
      AWSService._('Storage Gateway', 'storagegateway');

  /// AWS Security Token Service
  static const sts = AWSService._('STS', 'sts');

  /// AWS Support
  static const support = AWSService._('Support', 'support');

  /// Amazon Simple Workflow Service
  static const swf = AWSService._('SWF', 'swf');

  /// Synthetics
  static const synthetics = AWSService._('synthetics', 'synthetics');

  /// Amazon Textract
  static const textract = AWSService._('Textract', 'textract');

  /// Amazon Timestream Query
  static const timestreamQuery = AWSService._('Timestream Query', 'timestream');

  /// Amazon Timestream Write
  static const timestreamWrite = AWSService._('Timestream Write', 'timestream');

  /// Amazon Transcribe Service
  static const transcribe = AWSService._('Transcribe', 'transcribe');

  /// Amazon Transcribe Streaming Service
  static const transcribeStreaming =
      AWSService._('Transcribe Streaming', 'transcribe');

  /// AWS Transfer Family
  static const transfer = AWSService._('Transfer', 'transfer');

  /// Amazon Translate
  static const translate = AWSService._('Translate', 'translate');

  /// Amazon Voice ID
  static const voiceId = AWSService._('Voice ID', 'voiceid');

  /// AWS WAF
  static const waf = AWSService._('WAF', 'waf');

  /// AWS WAF Regional
  static const wafRegional = AWSService._('WAF Regional', 'waf-regional');

  /// AWS WAFV2
  static const wafv2 = AWSService._('WAFV2', 'wafv2');

  /// AWS Well-Architected Tool
  static const wellArchitected =
      AWSService._('WellArchitected', 'wellarchitected');

  /// Amazon Connect Wisdom Service
  static const wisdom = AWSService._('Wisdom', 'wisdom');

  /// Amazon WorkDocs
  static const workDocs = AWSService._('WorkDocs', 'workdocs');

  /// Amazon WorkLink
  static const workLink = AWSService._('WorkLink', 'worklink');

  /// Amazon WorkMail
  static const workMail = AWSService._('WorkMail', 'workmail');

  /// Amazon WorkMail Message Flow
  static const workMailMessageFlow =
      AWSService._('WorkMailMessageFlow', 'workmailmessageflow');

  /// Amazon WorkSpaces
  static const workSpaces = AWSService._('WorkSpaces', 'workspaces');

  /// Amazon WorkSpaces Web
  static const workSpacesWeb = AWSService._('WorkSpaces Web', 'workspaces-web');

  /// AWS X-Ray
  static const xRay = AWSService._('XRay', 'xray');

  @override
  List<Object> get props => [sdkId, service];
}
