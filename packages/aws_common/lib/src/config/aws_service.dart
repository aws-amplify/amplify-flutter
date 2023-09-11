// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with `aft generate sdk`. Do not modify by hand.

/// The enumeration of AWS services.
///
/// This enumeration is used to configure the SigV4 signer. To use a service
/// that is not listed here, call [AWSService.new] directly.
class AWSService {
  /// Creates a new [AWSService] instance which can be passed to a SigV4 signer.
  const AWSService(this.service);

  /// The SigV4 service name, used in signing.
  final String service;

  /// Access Analyzer
  static const accessAnalyzer = AWSService('access-analyzer');

  /// AWS Account
  static const account = AWSService('account');

  /// AWS Certificate Manager
  static const acm = AWSService('acm');

  /// AWS Certificate Manager Private Certificate Authority
  static const acmPca = AWSService('acm-pca');

  /// Alexa For Business
  static const alexaForBusiness = AWSService('a4b');

  /// Amazon Prometheus Service
  static const amp = AWSService('aps');

  /// AWS Amplify
  static const amplify = AWSService('amplify');

  /// AmplifyBackend
  static const amplifyBackend = AWSService('amplifybackend');

  /// AWS Amplify UI Builder
  static const amplifyUiBuilder = AWSService('amplifyuibuilder');

  /// Amazon API Gateway
  static const apiGateway = AWSService('apigateway');

  /// AmazonApiGatewayManagementApi
  static const apiGatewayManagementApi = AWSService('execute-api');

  /// AmazonApiGatewayV2
  static const apiGatewayV2 = AWSService('apigateway');

  /// Amazon AppConfig
  static const appConfig = AWSService('appconfig');

  /// AWS AppConfig Data
  static const appConfigData = AWSService('appconfig');

  /// AppFabric
  static const appFabric = AWSService('appfabric');

  /// Amazon AppIntegrations Service
  static const appIntegrations = AWSService('app-integrations');

  /// AWS App Mesh
  static const appMesh = AWSService('appmesh');

  /// AWS App Runner
  static const appRunner = AWSService('apprunner');

  /// Amazon AppStream
  static const appStream = AWSService('appstream');

  /// AWS AppSync
  static const appSync = AWSService('appsync');

  /// Amazon Appflow
  static const appflow = AWSService('appflow');

  /// Application Auto Scaling
  static const applicationAutoScaling = AWSService('application-autoscaling');

  /// AWS Application Cost Profiler
  static const applicationCostProfiler =
      AWSService('application-cost-profiler');

  /// AWS Application Discovery Service
  static const applicationDiscoveryService = AWSService('discovery');

  /// Amazon CloudWatch Application Insights
  static const applicationInsights = AWSService('applicationinsights');

  /// AWS ARC - Zonal Shift
  static const arcZonalShift = AWSService('arc-zonal-shift');

  /// Amazon Athena
  static const athena = AWSService('athena');

  /// AWS Audit Manager
  static const auditManager = AWSService('auditmanager');

  /// Auto Scaling
  static const autoScaling = AWSService('autoscaling');

  /// AWS Auto Scaling Plans
  static const autoScalingPlans = AWSService('autoscaling-plans');

  /// AWS Backup
  static const backup = AWSService('backup');

  /// AWS Backup Gateway
  static const backupGateway = AWSService('backup-gateway');

  /// AWS Backup Storage
  static const backupStorage = AWSService('backup-storage');

  /// AWS Batch
  static const batch = AWSService('batch');

  /// AWSBillingConductor
  static const billingconductor = AWSService('billingconductor');

  /// Braket
  static const braket = AWSService('braket');

  /// AWS Budgets
  static const budgets = AWSService('budgets');

  /// Amazon Chime
  static const chime = AWSService('chime');

  /// Amazon Chime SDK Identity
  static const chimeSdkIdentity = AWSService('chime');

  /// Amazon Chime SDK Media Pipelines
  static const chimeSdkMediaPipelines = AWSService('chime');

  /// Amazon Chime SDK Meetings
  static const chimeSdkMeetings = AWSService('chime');

  /// Amazon Chime SDK Messaging
  static const chimeSdkMessaging = AWSService('chime');

  /// Amazon Chime SDK Voice
  static const chimeSdkVoice = AWSService('chime');

  /// AWS Clean Rooms Service
  static const cleanRooms = AWSService('cleanrooms');

  /// AWS Cloud9
  static const cloud9 = AWSService('cloud9');

  /// AWS Cloud Control API
  static const cloudControl = AWSService('cloudcontrolapi');

  /// Amazon CloudDirectory
  static const cloudDirectory = AWSService('clouddirectory');

  /// AWS CloudFormation
  static const cloudFormation = AWSService('cloudformation');

  /// Amazon CloudFront
  static const cloudFront = AWSService('cloudfront');

  /// Amazon CloudHSM
  static const cloudHsm = AWSService('cloudhsm');

  /// AWS CloudHSM V2
  static const cloudHsmV2 = AWSService('cloudhsm');

  /// Amazon CloudSearch
  static const cloudSearch = AWSService('cloudsearch');

  /// Amazon CloudSearch Domain
  static const cloudSearchDomain = AWSService('cloudsearch');

  /// AWS CloudTrail
  static const cloudTrail = AWSService('cloudtrail');

  /// AWS CloudTrail Data Service
  static const cloudTrailData = AWSService('cloudtrail-data');

  /// Amazon CloudWatch
  static const cloudWatch = AWSService('monitoring');

  /// Amazon CloudWatch Events
  static const cloudWatchEvents = AWSService('events');

  /// Amazon CloudWatch Logs
  static const cloudWatchLogs = AWSService('logs');

  /// AWS CodeBuild
  static const codeBuild = AWSService('codebuild');

  /// AWS CodeCommit
  static const codeCommit = AWSService('codecommit');

  /// AWS CodeDeploy
  static const codeDeploy = AWSService('codedeploy');

  /// Amazon CodeGuru Profiler
  static const codeGuruProfiler = AWSService('codeguru-profiler');

  /// Amazon CodeGuru Reviewer
  static const codeGuruReviewer = AWSService('codeguru-reviewer');

  /// Amazon CodeGuru Security
  static const codeGuruSecurity = AWSService('codeguru-security');

  /// AWS CodePipeline
  static const codePipeline = AWSService('codepipeline');

  /// AWS CodeStar
  static const codeStar = AWSService('codestar');

  /// AWS CodeStar connections
  static const codeStarConnections = AWSService('codestar-connections');

  /// CodeArtifact
  static const codeartifact = AWSService('codeartifact');

  /// AWS CodeStar Notifications
  static const codestarNotifications = AWSService('codestar-notifications');

  /// Amazon Cognito Identity
  static const cognitoIdentity = AWSService('cognito-identity');

  /// Amazon Cognito Identity Provider
  static const cognitoIdentityProvider = AWSService('cognito-idp');

  /// Amazon Cognito Sync
  static const cognitoSync = AWSService('cognito-sync');

  /// Amazon Comprehend
  static const comprehend = AWSService('comprehend');

  /// AWS Comprehend Medical
  static const comprehendMedical = AWSService('comprehendmedical');

  /// AWS Compute Optimizer
  static const computeOptimizer = AWSService('compute-optimizer');

  /// AWS Config
  static const configService = AWSService('config');

  /// Amazon Connect Service
  static const connect = AWSService('connect');

  /// AmazonConnectCampaignService
  static const connectCampaigns = AWSService('connect-campaigns');

  /// Amazon Connect Cases
  static const connectCases = AWSService('cases');

  /// Amazon Connect Contact Lens
  static const connectContactLens = AWSService('connect');

  /// Amazon Connect Participant Service
  static const connectParticipant = AWSService('execute-api');

  /// AWS Control Tower
  static const controlTower = AWSService('controltower');

  /// AWS Cost and Usage Report Service
  static const costAndUsageReportService = AWSService('cur');

  /// AWS Cost Explorer Service
  static const costExplorer = AWSService('ce');

  /// Amazon Connect Customer Profiles
  static const customerProfiles = AWSService('profile');

  /// AWS Glue DataBrew
  static const dataBrew = AWSService('databrew');

  /// AWS Data Exchange
  static const dataExchange = AWSService('dataexchange');

  /// AWS Data Pipeline
  static const dataPipeline = AWSService('datapipeline');

  /// AWS DataSync
  static const dataSync = AWSService('datasync');

  /// AWS Database Migration Service
  static const databaseMigrationService = AWSService('dms');

  /// Amazon DynamoDB Accelerator (DAX)
  static const dax = AWSService('dax');

  /// Amazon Detective
  static const detective = AWSService('detective');

  /// Amazon DevOps Guru
  static const devOpsGuru = AWSService('devops-guru');

  /// AWS Device Farm
  static const deviceFarm = AWSService('devicefarm');

  /// AWS Direct Connect
  static const directConnect = AWSService('directconnect');

  /// AWS Directory Service
  static const directoryService = AWSService('ds');

  /// Amazon Data Lifecycle Manager
  static const dlm = AWSService('dlm');

  /// Amazon DocumentDB with MongoDB compatibility
  static const docDb = AWSService('rds');

  /// Amazon DocumentDB Elastic Clusters
  static const docDbElastic = AWSService('docdb-elastic');

  /// Elastic Disaster Recovery Service
  static const drs = AWSService('drs');

  /// Amazon DynamoDB
  static const dynamoDb = AWSService('dynamodb');

  /// Amazon DynamoDB Streams
  static const dynamoDbStreams = AWSService('dynamodb');

  /// Amazon Elastic Block Store
  static const ebs = AWSService('ebs');

  /// Amazon Elastic Compute Cloud
  static const ec2 = AWSService('ec2');

  /// AWS EC2 Instance Connect
  static const ec2InstanceConnect = AWSService('ec2-instance-connect');

  /// Amazon EC2 Container Registry
  static const ecr = AWSService('ecr');

  /// Amazon Elastic Container Registry Public
  static const ecrPublic = AWSService('ecr-public');

  /// Amazon EC2 Container Service
  static const ecs = AWSService('ecs');

  /// Amazon Elastic File System
  static const efs = AWSService('elasticfilesystem');

  /// Amazon Elastic Kubernetes Service
  static const eks = AWSService('eks');

  /// Amazon ElastiCache
  static const elastiCache = AWSService('elasticache');

  /// AWS Elastic Beanstalk
  static const elasticBeanstalk = AWSService('elasticbeanstalk');

  /// Amazon Elastic  Inference
  static const elasticInference = AWSService('elastic-inference');

  /// Elastic Load Balancing
  static const elasticLoadBalancing = AWSService('elasticloadbalancing');

  /// Elastic Load Balancing
  static const elasticLoadBalancingV2 = AWSService('elasticloadbalancing');

  /// Amazon Elastic Transcoder
  static const elasticTranscoder = AWSService('elastictranscoder');

  /// Amazon Elasticsearch Service
  static const elasticsearchService = AWSService('es');

  /// Amazon EMR
  static const emr = AWSService('elasticmapreduce');

  /// Amazon EMR Containers
  static const emrContainers = AWSService('emr-containers');

  /// EMR Serverless
  static const emrServerless = AWSService('emr-serverless');

  /// AWS EntityResolution
  static const entityResolution = AWSService('entityresolution');

  /// Amazon EventBridge
  static const eventBridge = AWSService('events');

  /// Amazon CloudWatch Evidently
  static const evidently = AWSService('evidently');

  /// Amazon FSx
  static const fSx = AWSService('fsx');

  /// FinSpace User Environment Management service
  static const finspace = AWSService('finspace');

  /// FinSpace Public API
  static const finspaceData = AWSService('finspace-api');

  /// Amazon Kinesis Firehose
  static const firehose = AWSService('firehose');

  /// AWS Fault Injection Simulator
  static const fis = AWSService('fis');

  /// Firewall Management Service
  static const fms = AWSService('fms');

  /// Amazon Forecast Service
  static const forecast = AWSService('forecast');

  /// Amazon Forecast Query Service
  static const forecastquery = AWSService('forecast');

  /// Amazon Fraud Detector
  static const fraudDetector = AWSService('frauddetector');

  /// Amazon GameLift
  static const gameLift = AWSService('gamelift');

  /// GameSparks
  static const gameSparks = AWSService('gamesparks');

  /// Amazon Glacier
  static const glacier = AWSService('glacier');

  /// AWS Global Accelerator
  static const globalAccelerator = AWSService('globalaccelerator');

  /// AWS Glue
  static const glue = AWSService('glue');

  /// Amazon Managed Grafana
  static const grafana = AWSService('grafana');

  /// AWS Greengrass
  static const greengrass = AWSService('greengrass');

  /// AWS IoT Greengrass V2
  static const greengrassV2 = AWSService('greengrass');

  /// AWS Ground Station
  static const groundStation = AWSService('groundstation');

  /// Amazon GuardDuty
  static const guardDuty = AWSService('guardduty');

  /// AWS Health APIs and Notifications
  static const health = AWSService('health');

  /// Amazon HealthLake
  static const healthLake = AWSService('healthlake');

  /// Amazon Honeycode
  static const honeycode = AWSService('honeycode');

  /// AWS Identity and Access Management
  static const iam = AWSService('iam');

  /// AWS SSO Identity Store
  static const identitystore = AWSService('identitystore');

  /// EC2 Image Builder
  static const imagebuilder = AWSService('imagebuilder');

  /// Amazon Inspector
  static const inspector = AWSService('inspector');

  /// Inspector2
  static const inspector2 = AWSService('inspector2');

  /// Amazon CloudWatch Internet Monitor
  static const internetMonitor = AWSService('internetmonitor');

  /// AWS IoT Analytics
  static const ioTAnalytics = AWSService('iotanalytics');

  /// AWS IoT Fleet Hub
  static const ioTFleetHub = AWSService('iotfleethub');

  /// AWS IoT FleetWise
  static const ioTFleetWise = AWSService('iotfleetwise');

  /// AWS IoT Secure Tunneling
  static const ioTSecureTunneling = AWSService('IoTSecuredTunneling');

  /// AWS IoT SiteWise
  static const ioTSiteWise = AWSService('iotsitewise');

  /// AWS IoT Things Graph
  static const ioTThingsGraph = AWSService('iotthingsgraph');

  /// AWS IoT TwinMaker
  static const ioTTwinMaker = AWSService('iottwinmaker');

  /// AWS IoT
  static const iot = AWSService('iot');

  /// AWS IoT 1-Click Devices Service
  static const iot1ClickDevicesService = AWSService('iot1click');

  /// AWS IoT 1-Click Projects Service
  static const iot1ClickProjects = AWSService('iot1click');

  /// AWS IoT Data Plane
  static const iotDataPlane = AWSService('iotdata');

  /// AWS IoT Core Device Advisor
  static const iotDeviceAdvisor = AWSService('iotdeviceadvisor');

  /// AWS IoT Events
  static const iotEvents = AWSService('iotevents');

  /// AWS IoT Events Data
  static const iotEventsData = AWSService('ioteventsdata');

  /// AWS IoT Jobs Data Plane
  static const iotJobsDataPlane = AWSService('iot-jobs-data');

  /// AWS IoT RoboRunner
  static const iotRoboRunner = AWSService('iotroborunner');

  /// AWS IoT Wireless
  static const iotWireless = AWSService('iotwireless');

  /// Amazon Interactive Video Service
  static const ivs = AWSService('ivs');

  /// Amazon Interactive Video Service RealTime
  static const ivsRealTime = AWSService('ivs');

  /// Amazon Interactive Video Service Chat
  static const ivschat = AWSService('ivschat');

  /// Managed Streaming for Kafka
  static const kafka = AWSService('kafka');

  /// Managed Streaming for Kafka Connect
  static const kafkaConnect = AWSService('kafkaconnect');

  /// AWSKendraFrontendService
  static const kendra = AWSService('kendra');

  /// Amazon Kendra Intelligent Ranking
  static const kendraRanking = AWSService('kendra-ranking');

  /// Amazon Keyspaces
  static const keyspaces = AWSService('cassandra');

  /// Amazon Kinesis
  static const kinesis = AWSService('kinesis');

  /// Amazon Kinesis Analytics
  static const kinesisAnalytics = AWSService('kinesisanalytics');

  /// Amazon Kinesis Analytics
  static const kinesisAnalyticsV2 = AWSService('kinesisanalytics');

  /// Amazon Kinesis Video Streams
  static const kinesisVideo = AWSService('kinesisvideo');

  /// Amazon Kinesis Video Streams Archived Media
  static const kinesisVideoArchivedMedia = AWSService('kinesisvideo');

  /// Amazon Kinesis Video Streams Media
  static const kinesisVideoMedia = AWSService('kinesisvideo');

  /// Amazon Kinesis Video Signaling Channels
  static const kinesisVideoSignaling = AWSService('kinesisvideo');

  /// Amazon Kinesis Video WebRTC Storage
  static const kinesisVideoWebRtcStorage = AWSService('kinesisvideo');

  /// AWS Key Management Service
  static const kms = AWSService('kms');

  /// AWS Lake Formation
  static const lakeFormation = AWSService('lakeformation');

  /// AWS Lambda
  static const lambda = AWSService('lambda');

  /// Amazon Lex Model Building Service
  static const lexModelBuildingService = AWSService('lex');

  /// Amazon Lex Model Building V2
  static const lexModelsV2 = AWSService('lex');

  /// Amazon Lex Runtime Service
  static const lexRuntimeService = AWSService('lex');

  /// Amazon Lex Runtime V2
  static const lexRuntimeV2 = AWSService('lex');

  /// AWS License Manager
  static const licenseManager = AWSService('license-manager');

  /// AWS License Manager Linux Subscriptions
  static const licenseManagerLinuxSubscriptions =
      AWSService('license-manager-linux-subscriptions');

  /// AWS License Manager User Subscriptions
  static const licenseManagerUserSubscriptions =
      AWSService('license-manager-user-subscriptions');

  /// Amazon Lightsail
  static const lightsail = AWSService('lightsail');

  /// Amazon Location Service
  static const location = AWSService('geo');

  /// Amazon Lookout for Equipment
  static const lookoutEquipment = AWSService('lookoutequipment');

  /// Amazon Lookout for Metrics
  static const lookoutMetrics = AWSService('lookoutmetrics');

  /// Amazon Lookout for Vision
  static const lookoutVision = AWSService('lookoutvision');

  /// AWSMainframeModernization
  static const m2 = AWSService('m2');

  /// Amazon Mechanical Turk
  static const mTurk = AWSService('mturk-requester');

  /// Amazon Machine Learning
  static const machineLearning = AWSService('machinelearning');

  /// Amazon Macie
  static const macie = AWSService('macie');

  /// Amazon Macie 2
  static const macie2 = AWSService('macie2');

  /// Amazon Managed Blockchain
  static const managedBlockchain = AWSService('managedblockchain');

  /// Amazon Managed Blockchain Query
  static const managedBlockchainQuery = AWSService('managedblockchain-query');

  /// AWS Marketplace Catalog Service
  static const marketplaceCatalog = AWSService('aws-marketplace');

  /// AWS Marketplace Commerce Analytics
  static const marketplaceCommerceAnalytics =
      AWSService('marketplacecommerceanalytics');

  /// AWS Marketplace Entitlement Service
  static const marketplaceEntitlementService = AWSService('aws-marketplace');

  /// AWSMarketplace Metering
  static const marketplaceMetering = AWSService('aws-marketplace');

  /// AWS MediaConnect
  static const mediaConnect = AWSService('mediaconnect');

  /// AWS Elemental MediaConvert
  static const mediaConvert = AWSService('mediaconvert');

  /// AWS Elemental MediaLive
  static const mediaLive = AWSService('medialive');

  /// AWS Elemental MediaPackage
  static const mediaPackage = AWSService('mediapackage');

  /// AWS Elemental MediaPackage v2
  static const mediaPackageV2 = AWSService('mediapackagev2');

  /// AWS Elemental MediaPackage VOD
  static const mediaPackageVod = AWSService('mediapackage-vod');

  /// AWS Elemental MediaStore
  static const mediaStore = AWSService('mediastore');

  /// AWS Elemental MediaStore Data Plane
  static const mediaStoreData = AWSService('mediastore');

  /// AWS MediaTailor
  static const mediaTailor = AWSService('mediatailor');

  /// AWS Health Imaging
  static const medicalImaging = AWSService('medical-imaging');

  /// Amazon MemoryDB
  static const memoryDb = AWSService('memorydb');

  /// Application Migration Service
  static const mgn = AWSService('mgn');

  /// AWS Migration Hub
  static const migrationHub = AWSService('mgh');

  /// AWS Migration Hub Config
  static const migrationHubConfig = AWSService('mgh');

  /// AWS Migration Hub Orchestrator
  static const migrationHubOrchestrator =
      AWSService('migrationhub-orchestrator');

  /// AWS Migration Hub Refactor Spaces
  static const migrationHubRefactorSpaces = AWSService('refactor-spaces');

  /// Migration Hub Strategy Recommendations
  static const migrationHubStrategy = AWSService('migrationhub-strategy');

  /// AWS Mobile
  static const mobile = AWSService('AWSMobileHubService');

  /// AmazonMQ
  static const mq = AWSService('mq');

  /// AmazonMWAA
  static const mwaa = AWSService('airflow');

  /// Amazon Neptune
  static const neptune = AWSService('rds');

  /// Amazon NeptuneData
  static const neptunedata = AWSService('neptune-db');

  /// AWS Network Firewall
  static const networkFirewall = AWSService('network-firewall');

  /// AWS Network Manager
  static const networkManager = AWSService('networkmanager');

  /// AmazonNimbleStudio
  static const nimble = AWSService('nimble');

  /// CloudWatch Observability Access Manager
  static const oam = AWSService('oam');

  /// Amazon Omics
  static const omics = AWSService('omics');

  /// Amazon OpenSearch Service
  static const openSearch = AWSService('es');

  /// OpenSearch Service Serverless
  static const openSearchServerless = AWSService('aoss');

  /// AWS OpsWorks
  static const opsWorks = AWSService('opsworks');

  /// AWS OpsWorks CM
  static const opsWorksCm = AWSService('opsworks-cm');

  /// AWS Organizations
  static const organizations = AWSService('organizations');

  /// Amazon OpenSearch Ingestion
  static const osis = AWSService('osis');

  /// AWS Outposts
  static const outposts = AWSService('outposts');

  /// AWS Panorama
  static const panorama = AWSService('panorama');

  /// Payment Cryptography Control Plane
  static const paymentCryptography = AWSService('payment-cryptography');

  /// Payment Cryptography Data Plane
  static const paymentCryptographyData = AWSService('payment-cryptography');

  /// PcaConnectorAd
  static const pcaConnectorAd = AWSService('pca-connector-ad');

  /// Amazon Personalize
  static const personalize = AWSService('personalize');

  /// Amazon Personalize Events
  static const personalizeEvents = AWSService('personalize');

  /// Amazon Personalize Runtime
  static const personalizeRuntime = AWSService('personalize');

  /// AWS Performance Insights
  static const pi = AWSService('pi');

  /// Amazon Pinpoint
  static const pinpoint = AWSService('mobiletargeting');

  /// Amazon Pinpoint Email Service
  static const pinpointEmail = AWSService('ses');

  /// Amazon Pinpoint SMS and Voice Service
  static const pinpointSmsVoice = AWSService('sms-voice');

  /// Amazon Pinpoint SMS Voice V2
  static const pinpointSmsVoiceV2 = AWSService('sms-voice');

  /// Amazon EventBridge Pipes
  static const pipes = AWSService('pipes');

  /// Amazon Polly
  static const polly = AWSService('polly');

  /// AWS Price List Service
  static const pricing = AWSService('pricing');

  /// AWS Private 5G
  static const privateNetworks = AWSService('private-networks');

  /// AWS Proton
  static const proton = AWSService('proton');

  /// Amazon QLDB
  static const qldb = AWSService('qldb');

  /// Amazon QLDB Session
  static const qldbSession = AWSService('qldb');

  /// Amazon QuickSight
  static const quickSight = AWSService('quicksight');

  /// AWS Resource Access Manager
  static const ram = AWSService('ram');

  /// Amazon Recycle Bin
  static const rbin = AWSService('rbin');

  /// Amazon Relational Database Service
  static const rds = AWSService('rds');

  /// AWS RDS DataService
  static const rdsData = AWSService('rds-data');

  /// Amazon Redshift
  static const redshift = AWSService('redshift');

  /// Redshift Data API Service
  static const redshiftData = AWSService('redshift-data');

  /// Redshift Serverless
  static const redshiftServerless = AWSService('redshift-serverless');

  /// Amazon Rekognition
  static const rekognition = AWSService('rekognition');

  /// Amazon Rekognition Streaming
  static const rekognitionStreaming = AWSService('rekognition');

  /// AWS Resilience Hub
  static const resiliencehub = AWSService('resiliencehub');

  /// AWS Resource Explorer
  static const resourceExplorer2 = AWSService('resource-explorer-2');

  /// AWS Resource Groups
  static const resourceGroups = AWSService('resource-groups');

  /// AWS Resource Groups Tagging API
  static const resourceGroupsTaggingApi = AWSService('tagging');

  /// AWS RoboMaker
  static const roboMaker = AWSService('robomaker');

  /// IAM Roles Anywhere
  static const rolesAnywhere = AWSService('rolesanywhere');

  /// Amazon Route 53
  static const route53 = AWSService('route53');

  /// Amazon Route 53 Domains
  static const route53Domains = AWSService('route53domains');

  /// Route53 Recovery Cluster
  static const route53RecoveryCluster = AWSService('route53-recovery-cluster');

  /// AWS Route53 Recovery Control Config
  static const route53RecoveryControlConfig =
      AWSService('route53-recovery-control-config');

  /// AWS Route53 Recovery Readiness
  static const route53RecoveryReadiness =
      AWSService('route53-recovery-readiness');

  /// Amazon Route 53 Resolver
  static const route53Resolver = AWSService('route53resolver');

  /// CloudWatch RUM
  static const rum = AWSService('rum');

  /// Amazon Simple Storage Service
  static const s3 = AWSService('s3');

  /// AWS S3 Control
  static const s3Control = AWSService('s3');

  /// Amazon S3 on Outposts
  static const s3Outposts = AWSService('s3-outposts');

  /// Amazon SageMaker Service
  static const sageMaker = AWSService('sagemaker');

  /// Amazon Augmented AI Runtime
  static const sageMakerA2IRuntime = AWSService('sagemaker');

  /// Amazon SageMaker Feature Store Runtime
  static const sageMakerFeatureStoreRuntime = AWSService('sagemaker');

  /// Amazon SageMaker geospatial capabilities
  static const sageMakerGeospatial = AWSService('sagemaker-geospatial');

  /// Amazon SageMaker Metrics Service
  static const sageMakerMetrics = AWSService('sagemaker');

  /// Amazon SageMaker Runtime
  static const sageMakerRuntime = AWSService('sagemaker');

  /// Amazon Sagemaker Edge Manager
  static const sagemakerEdge = AWSService('sagemaker');

  /// AWS Savings Plans
  static const savingsplans = AWSService('savingsplans');

  /// Amazon EventBridge Scheduler
  static const scheduler = AWSService('scheduler');

  /// Schemas
  static const schemas = AWSService('schemas');

  /// AWS Secrets Manager
  static const secretsManager = AWSService('secretsmanager');

  /// AWS SecurityHub
  static const securityHub = AWSService('securityhub');

  /// Amazon Security Lake
  static const securityLake = AWSService('securitylake');

  /// AWSServerlessApplicationRepository
  static const serverlessApplicationRepository = AWSService('serverlessrepo');

  /// AWS Service Catalog
  static const serviceCatalog = AWSService('servicecatalog');

  /// AWS Service Catalog App Registry
  static const serviceCatalogAppRegistry = AWSService('servicecatalog');

  /// AWS Cloud Map
  static const serviceDiscovery = AWSService('servicediscovery');

  /// Service Quotas
  static const serviceQuotas = AWSService('servicequotas');

  /// Amazon Simple Email Service
  static const ses = AWSService('ses');

  /// Amazon Simple Email Service
  static const sesV2 = AWSService('ses');

  /// AWS Step Functions
  static const sfn = AWSService('states');

  /// AWS Shield
  static const shield = AWSService('shield');

  /// AWS Signer
  static const signer = AWSService('signer');

  /// AWS SimSpace Weaver
  static const simSpaceWeaver = AWSService('simspaceweaver');

  /// AWS Server Migration Service
  static const sms = AWSService('sms');

  /// AWS Snow Device Management
  static const snowDeviceManagement = AWSService('snow-device-management');

  /// Amazon Import/Export Snowball
  static const snowball = AWSService('snowball');

  /// Amazon Simple Notification Service
  static const sns = AWSService('sns');

  /// Amazon Simple Queue Service
  static const sqs = AWSService('sqs');

  /// Amazon Simple Systems Manager (SSM)
  static const ssm = AWSService('ssm');

  /// AWS Systems Manager Incident Manager Contacts
  static const ssmContacts = AWSService('ssm-contacts');

  /// AWS Systems Manager Incident Manager
  static const ssmIncidents = AWSService('ssm-incidents');

  /// AWS Systems Manager for SAP
  static const ssmSap = AWSService('ssm-sap');

  /// AWS Single Sign-On
  static const sso = AWSService('awsssoportal');

  /// AWS Single Sign-On Admin
  static const ssoAdmin = AWSService('sso');

  /// AWS SSO OIDC
  static const ssoOidc = AWSService('awsssooidc');

  /// AWS Storage Gateway
  static const storageGateway = AWSService('storagegateway');

  /// AWS Security Token Service
  static const sts = AWSService('sts');

  /// AWS Support
  static const support = AWSService('support');

  /// AWS Support App
  static const supportApp = AWSService('supportapp');

  /// Amazon Simple Workflow Service
  static const swf = AWSService('swf');

  /// Synthetics
  static const synthetics = AWSService('synthetics');

  /// Amazon Textract
  static const textract = AWSService('textract');

  /// Amazon Timestream Query
  static const timestreamQuery = AWSService('timestream');

  /// Amazon Timestream Write
  static const timestreamWrite = AWSService('timestream');

  /// AWS Telco Network Builder
  static const tnb = AWSService('tnb');

  /// Amazon Transcribe Service
  static const transcribe = AWSService('transcribe');

  /// Amazon Transcribe Streaming Service
  static const transcribeStreaming = AWSService('transcribe');

  /// AWS Transfer Family
  static const transfer = AWSService('transfer');

  /// Amazon Translate
  static const translate = AWSService('translate');

  /// Amazon Verified Permissions
  static const verifiedPermissions = AWSService('verifiedpermissions');

  /// Amazon Voice ID
  static const voiceId = AWSService('voiceid');

  /// Amazon VPC Lattice
  static const vpcLattice = AWSService('vpc-lattice');

  /// AWS WAF
  static const waf = AWSService('waf');

  /// AWS WAF Regional
  static const wafRegional = AWSService('waf-regional');

  /// AWS WAFV2
  static const wafv2 = AWSService('wafv2');

  /// AWS Well-Architected Tool
  static const wellArchitected = AWSService('wellarchitected');

  /// Amazon Connect Wisdom Service
  static const wisdom = AWSService('wisdom');

  /// Amazon WorkDocs
  static const workDocs = AWSService('workdocs');

  /// Amazon WorkLink
  static const workLink = AWSService('worklink');

  /// Amazon WorkMail
  static const workMail = AWSService('workmail');

  /// Amazon WorkMail Message Flow
  static const workMailMessageFlow = AWSService('workmailmessageflow');

  /// Amazon WorkSpaces
  static const workSpaces = AWSService('workspaces');

  /// Amazon WorkSpaces Web
  static const workSpacesWeb = AWSService('workspaces-web');

  /// AWS X-Ray
  static const xRay = AWSService('xray');
}
