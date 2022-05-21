// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// All AWS services.
enum AWSService {
  /// Access Analyzer
  accessAnalyzer('AccessAnalyzer', 'access-analyzer'),

  /// AWS Account
  account('Account', 'account'),

  /// AWS Certificate Manager
  acm('ACM', 'acm'),

  /// AWS Certificate Manager Private Certificate Authority
  acmPca('ACM PCA', 'acm-pca'),

  /// Alexa For Business
  alexaForBusiness('Alexa For Business', 'a4b'),

  /// Amazon Prometheus Service
  amp('amp', 'aps'),

  /// AWS Amplify
  amplify('Amplify', 'amplify'),

  /// AmplifyBackend
  amplifyBackend('AmplifyBackend', 'amplifybackend'),

  /// AWS Amplify UI Builder
  amplifyUiBuilder('AmplifyUIBuilder', 'amplifyuibuilder'),

  /// Amazon API Gateway
  apiGateway('API Gateway', 'apigateway'),

  /// AmazonApiGatewayManagementApi
  apiGatewayManagementApi('ApiGatewayManagementApi', 'execute-api'),

  /// AmazonApiGatewayV2
  apiGatewayV2('ApiGatewayV2', 'apigateway'),

  /// Amazon AppConfig
  appConfig('AppConfig', 'appconfig'),

  /// AWS AppConfig Data
  appConfigData('AppConfigData', 'appconfig'),

  /// Amazon AppIntegrations Service
  appIntegrations('AppIntegrations', 'app-integrations'),

  /// AWS App Mesh
  appMesh('App Mesh', 'appmesh'),

  /// AWS App Runner
  appRunner('AppRunner', 'apprunner'),

  /// Amazon AppStream
  appStream('AppStream', 'appstream'),

  /// AWS AppSync
  appSync('AppSync', 'appsync'),

  /// Amazon Appflow
  appflow('Appflow', 'appflow'),

  /// Application Auto Scaling
  applicationAutoScaling('Application Auto Scaling', 'application-autoscaling'),

  /// AWS Application Cost Profiler
  applicationCostProfiler(
    'ApplicationCostProfiler',
    'application-cost-profiler',
  ),

  /// AWS Application Discovery Service
  applicationDiscoveryService('Application Discovery Service', 'discovery'),

  /// Amazon CloudWatch Application Insights
  applicationInsights('Application Insights', 'applicationinsights'),

  /// Amazon Athena
  athena('Athena', 'athena'),

  /// AWS Audit Manager
  auditManager('AuditManager', 'auditmanager'),

  /// Auto Scaling
  autoScaling('Auto Scaling', 'autoscaling'),

  /// AWS Auto Scaling Plans
  autoScalingPlans('Auto Scaling Plans', 'autoscaling-plans'),

  /// AWS Backup
  backup('Backup', 'backup'),

  /// AWS Backup Gateway
  backupGateway('Backup Gateway', 'backup-gateway'),

  /// AWS Batch
  batch('Batch', 'batch'),

  /// AWSBillingConductor
  billingconductor('billingconductor', 'billingconductor'),

  /// Braket
  braket('Braket', 'braket'),

  /// AWS Budgets
  budgets('Budgets', 'budgets'),

  /// Amazon Chime
  chime('Chime', 'chime'),

  /// Amazon Chime SDK Identity
  chimeSdkIdentity('Chime SDK Identity', 'chime'),

  /// Amazon Chime SDK Media Pipelines
  chimeSdkMediaPipelines('Chime SDK Media Pipelines', 'chime'),

  /// Amazon Chime SDK Meetings
  chimeSdkMeetings('Chime SDK Meetings', 'chime'),

  /// Amazon Chime SDK Messaging
  chimeSdkMessaging('Chime SDK Messaging', 'chime'),

  /// AWS Cloud9
  cloud9('Cloud9', 'cloud9'),

  /// AWS Cloud Control API
  cloudControl('CloudControl', 'cloudcontrolapi'),

  /// Amazon CloudDirectory
  cloudDirectory('CloudDirectory', 'clouddirectory'),

  /// AWS CloudFormation
  cloudFormation('CloudFormation', 'cloudformation'),

  /// Amazon CloudFront
  cloudFront('CloudFront', 'cloudfront'),

  /// Amazon CloudHSM
  cloudHsm('CloudHSM', 'cloudhsm'),

  /// AWS CloudHSM V2
  cloudHsmV2('CloudHSM V2', 'cloudhsm'),

  /// Amazon CloudSearch
  cloudSearch('CloudSearch', 'cloudsearch'),

  /// Amazon CloudSearch Domain
  cloudSearchDomain('CloudSearch Domain', 'cloudsearch'),

  /// AWS CloudTrail
  cloudTrail('CloudTrail', 'cloudtrail'),

  /// Amazon CloudWatch
  cloudWatch('CloudWatch', 'monitoring'),

  /// Amazon CloudWatch Events
  cloudWatchEvents('CloudWatch Events', 'events'),

  /// Amazon CloudWatch Logs
  cloudWatchLogs('CloudWatch Logs', 'logs'),

  /// AWS CodeBuild
  codeBuild('CodeBuild', 'codebuild'),

  /// AWS CodeCommit
  codeCommit('CodeCommit', 'codecommit'),

  /// AWS CodeDeploy
  codeDeploy('CodeDeploy', 'codedeploy'),

  /// Amazon CodeGuru Profiler
  codeGuruProfiler('CodeGuruProfiler', 'codeguru-profiler'),

  /// Amazon CodeGuru Reviewer
  codeGuruReviewer('CodeGuru Reviewer', 'codeguru-reviewer'),

  /// AWS CodePipeline
  codePipeline('CodePipeline', 'codepipeline'),

  /// AWS CodeStar
  codeStar('CodeStar', 'codestar'),

  /// AWS CodeStar connections
  codeStarConnections('CodeStar connections', 'codestar-connections'),

  /// CodeArtifact
  codeartifact('codeartifact', 'codeartifact'),

  /// AWS CodeStar Notifications
  codestarNotifications('codestar notifications', 'codestar-notifications'),

  /// Amazon Cognito Identity
  cognitoIdentity('Cognito Identity', 'cognito-identity'),

  /// Amazon Cognito Identity Provider
  cognitoIdentityProvider('Cognito Identity Provider', 'cognito-idp'),

  /// Amazon Cognito Sync
  cognitoSync('Cognito Sync', 'cognito-sync'),

  /// Amazon Comprehend
  comprehend('Comprehend', 'comprehend'),

  /// AWS Comprehend Medical
  comprehendMedical('ComprehendMedical', 'comprehendmedical'),

  /// AWS Compute Optimizer
  computeOptimizer('Compute Optimizer', 'compute-optimizer'),

  /// AWS Config
  configService('Config Service', 'config'),

  /// Amazon Connect Service
  connect('Connect', 'connect'),

  /// Amazon Connect Contact Lens
  connectContactLens('Connect Contact Lens', 'connect'),

  /// Amazon Connect Participant Service
  connectParticipant('ConnectParticipant', 'execute-api'),

  /// AWS Cost and Usage Report Service
  costAndUsageReportService('Cost and Usage Report Service', 'cur'),

  /// AWS Cost Explorer Service
  costExplorer('Cost Explorer', 'ce'),

  /// Amazon Connect Customer Profiles
  customerProfiles('Customer Profiles', 'profile'),

  /// AWS Glue DataBrew
  dataBrew('DataBrew', 'databrew'),

  /// AWS Data Exchange
  dataExchange('DataExchange', 'dataexchange'),

  /// AWS Data Pipeline
  dataPipeline('Data Pipeline', 'datapipeline'),

  /// AWS DataSync
  dataSync('DataSync', 'datasync'),

  /// AWS Database Migration Service
  databaseMigrationService('Database Migration Service', 'dms'),

  /// Amazon DynamoDB Accelerator (DAX)
  dax('DAX', 'dax'),

  /// Amazon Detective
  detective('Detective', 'detective'),

  /// Amazon DevOps Guru
  devOpsGuru('DevOps Guru', 'devops-guru'),

  /// AWS Device Farm
  deviceFarm('Device Farm', 'devicefarm'),

  /// AWS Direct Connect
  directConnect('Direct Connect', 'directconnect'),

  /// AWS Directory Service
  directoryService('Directory Service', 'ds'),

  /// Amazon Data Lifecycle Manager
  dlm('DLM', 'dlm'),

  /// Amazon DocumentDB with MongoDB compatibility
  docDb('DocDB', 'rds'),

  /// Elastic Disaster Recovery Service
  drs('drs', 'drs'),

  /// Amazon DynamoDB
  dynamoDb('DynamoDB', 'dynamodb'),

  /// Amazon DynamoDB Streams
  dynamoDbStreams('DynamoDB Streams', 'dynamodb'),

  /// Amazon Elastic Block Store
  ebs('EBS', 'ebs'),

  /// Amazon Elastic Compute Cloud
  ec2('EC2', 'ec2'),

  /// AWS EC2 Instance Connect
  ec2InstanceConnect('EC2 Instance Connect', 'ec2-instance-connect'),

  /// Amazon EC2 Container Registry
  ecr('ECR', 'ecr'),

  /// Amazon Elastic Container Registry Public
  ecrPublic('ECR PUBLIC', 'ecr-public'),

  /// Amazon EC2 Container Service
  ecs('ECS', 'ecs'),

  /// Amazon Elastic File System
  efs('EFS', 'elasticfilesystem'),

  /// Amazon Elastic Kubernetes Service
  eks('EKS', 'eks'),

  /// Amazon ElastiCache
  elastiCache('ElastiCache', 'elasticache'),

  /// AWS Elastic Beanstalk
  elasticBeanstalk('Elastic Beanstalk', 'elasticbeanstalk'),

  /// Amazon Elastic  Inference
  elasticInference('Elastic Inference', 'elastic-inference'),

  /// Elastic Load Balancing
  elasticLoadBalancing('Elastic Load Balancing', 'elasticloadbalancing'),

  /// Elastic Load Balancing
  elasticLoadBalancingV2('Elastic Load Balancing v2', 'elasticloadbalancing'),

  /// Amazon Elastic Transcoder
  elasticTranscoder('Elastic Transcoder', 'elastictranscoder'),

  /// Amazon Elasticsearch Service
  elasticsearchService('Elasticsearch Service', 'es'),

  /// Amazon EMR
  emr('EMR', 'elasticmapreduce'),

  /// Amazon EMR Containers
  emrContainers('EMR containers', 'emr-containers'),

  /// Amazon EventBridge
  eventBridge('EventBridge', 'events'),

  /// Amazon CloudWatch Evidently
  evidently('Evidently', 'evidently'),

  /// Amazon FSx
  fSx('FSx', 'fsx'),

  /// FinSpace User Environment Management service
  finspace('finspace', 'finspace'),

  /// FinSpace Public API
  finspaceData('finspace data', 'finspace-api'),

  /// Amazon Kinesis Firehose
  firehose('Firehose', 'firehose'),

  /// AWS Fault Injection Simulator
  fis('fis', 'fis'),

  /// Firewall Management Service
  fms('FMS', 'fms'),

  /// Amazon Forecast Service
  forecast('forecast', 'forecast'),

  /// Amazon Forecast Query Service
  forecastquery('forecastquery', 'forecast'),

  /// Amazon Fraud Detector
  fraudDetector('FraudDetector', 'frauddetector'),

  /// Amazon GameLift
  gameLift('GameLift', 'gamelift'),

  /// GameSparks
  gameSparks('GameSparks', 'gamesparks'),

  /// Amazon Glacier
  glacier('Glacier', 'glacier'),

  /// AWS Global Accelerator
  globalAccelerator('Global Accelerator', 'globalaccelerator'),

  /// AWS Glue
  glue('Glue', 'glue'),

  /// Amazon Managed Grafana
  grafana('grafana', 'grafana'),

  /// AWS Greengrass
  greengrass('Greengrass', 'greengrass'),

  /// AWS IoT Greengrass V2
  greengrassV2('GreengrassV2', 'greengrass'),

  /// AWS Ground Station
  groundStation('GroundStation', 'groundstation'),

  /// Amazon GuardDuty
  guardDuty('GuardDuty', 'guardduty'),

  /// AWS Health APIs and Notifications
  health('Health', 'health'),

  /// Amazon HealthLake
  healthLake('HealthLake', 'healthlake'),

  /// Amazon Honeycode
  honeycode('Honeycode', 'honeycode'),

  /// AWS Identity and Access Management
  iam('IAM', 'iam'),

  /// AWS SSO Identity Store
  identitystore('identitystore', 'identitystore'),

  /// EC2 Image Builder
  imagebuilder('imagebuilder', 'imagebuilder'),

  /// Amazon Inspector
  inspector('Inspector', 'inspector'),

  /// Inspector2
  inspector2('Inspector2', 'inspector2'),

  /// AWS IoT Analytics
  ioTAnalytics('IoTAnalytics', 'iotanalytics'),

  /// AWS IoT Fleet Hub
  ioTFleetHub('IoTFleetHub', 'iotfleethub'),

  /// AWS IoT Secure Tunneling
  ioTSecureTunneling('IoTSecureTunneling', 'IoTSecuredTunneling'),

  /// AWS IoT SiteWise
  ioTSiteWise('IoTSiteWise', 'iotsitewise'),

  /// AWS IoT Things Graph
  ioTThingsGraph('IoTThingsGraph', 'iotthingsgraph'),

  /// AWS IoT TwinMaker
  ioTTwinMaker('IoTTwinMaker', 'iottwinmaker'),

  /// AWS IoT
  iot('IoT', 'execute-api'),

  /// AWS IoT 1-Click Devices Service
  iot1ClickDevicesService('IoT 1Click Devices Service', 'iot1click'),

  /// AWS IoT 1-Click Projects Service
  iot1ClickProjects('IoT 1Click Projects', 'iot1click'),

  /// AWS IoT Data Plane
  iotDataPlane('IoT Data Plane', 'iotdata'),

  /// AWS IoT Core Device Advisor
  iotDeviceAdvisor('IotDeviceAdvisor', 'iotdeviceadvisor'),

  /// AWS IoT Events
  iotEvents('IoT Events', 'iotevents'),

  /// AWS IoT Events Data
  iotEventsData('IoT Events Data', 'ioteventsdata'),

  /// AWS IoT Jobs Data Plane
  iotJobsDataPlane('IoT Jobs Data Plane', 'iot-jobs-data'),

  /// AWS IoT Wireless
  iotWireless('IoT Wireless', 'iotwireless'),

  /// Amazon Interactive Video Service
  ivs('ivs', 'ivs'),

  /// Amazon Interactive Video Service Chat
  ivschat('ivschat', 'ivschat'),

  /// Managed Streaming for Kafka
  kafka('Kafka', 'kafka'),

  /// Managed Streaming for Kafka Connect
  kafkaConnect('KafkaConnect', 'kafkaconnect'),

  /// AWSKendraFrontendService
  kendra('kendra', 'kendra'),

  /// Amazon Keyspaces
  keyspaces('Keyspaces', 'cassandra'),

  /// Amazon Kinesis
  kinesis('Kinesis', 'kinesis'),

  /// Amazon Kinesis Analytics
  kinesisAnalytics('Kinesis Analytics', 'kinesisanalytics'),

  /// Amazon Kinesis Analytics
  kinesisAnalyticsV2('Kinesis Analytics V2', 'kinesisanalytics'),

  /// Amazon Kinesis Video Streams
  kinesisVideo('Kinesis Video', 'kinesisvideo'),

  /// Amazon Kinesis Video Streams Archived Media
  kinesisVideoArchivedMedia('Kinesis Video Archived Media', 'kinesisvideo'),

  /// Amazon Kinesis Video Streams Media
  kinesisVideoMedia('Kinesis Video Media', 'kinesisvideo'),

  /// Amazon Kinesis Video Signaling Channels
  kinesisVideoSignaling('Kinesis Video Signaling', 'kinesisvideo'),

  /// AWS Key Management Service
  kms('KMS', 'kms'),

  /// AWS Lake Formation
  lakeFormation('LakeFormation', 'lakeformation'),

  /// AWS Lambda
  lambda('Lambda', 'lambda'),

  /// Amazon Lex Model Building Service
  lexModelBuildingService('Lex Model Building Service', 'lex'),

  /// Amazon Lex Model Building V2
  lexModelsV2('Lex Models V2', 'lex'),

  /// Amazon Lex Runtime Service
  lexRuntimeService('Lex Runtime Service', 'lex'),

  /// Amazon Lex Runtime V2
  lexRuntimeV2('Lex Runtime V2', 'lex'),

  /// AWS License Manager
  licenseManager('License Manager', 'license-manager'),

  /// Amazon Lightsail
  lightsail('Lightsail', 'lightsail'),

  /// Amazon Location Service
  location('Location', 'geo'),

  /// Amazon Lookout for Equipment
  lookoutEquipment('LookoutEquipment', 'lookoutequipment'),

  /// Amazon Lookout for Metrics
  lookoutMetrics('LookoutMetrics', 'lookoutmetrics'),

  /// Amazon Lookout for Vision
  lookoutVision('LookoutVision', 'lookoutvision'),

  /// Amazon Mechanical Turk
  mTurk('MTurk', 'mturk-requester'),

  /// Amazon Machine Learning
  machineLearning('Machine Learning', 'machinelearning'),

  /// Amazon Macie
  macie('Macie', 'macie'),

  /// Amazon Macie 2
  macie2('Macie2', 'macie2'),

  /// Amazon Managed Blockchain
  managedBlockchain('ManagedBlockchain', 'managedblockchain'),

  /// AWS Marketplace Catalog Service
  marketplaceCatalog('Marketplace Catalog', 'aws-marketplace'),

  /// AWS Marketplace Commerce Analytics
  marketplaceCommerceAnalytics(
    'Marketplace Commerce Analytics',
    'marketplacecommerceanalytics',
  ),

  /// AWS Marketplace Entitlement Service
  marketplaceEntitlementService(
    'Marketplace Entitlement Service',
    'aws-marketplace',
  ),

  /// AWSMarketplace Metering
  marketplaceMetering('Marketplace Metering', 'aws-marketplace'),

  /// AWS MediaConnect
  mediaConnect('MediaConnect', 'mediaconnect'),

  /// AWS Elemental MediaConvert
  mediaConvert('MediaConvert', 'mediaconvert'),

  /// AWS Elemental MediaLive
  mediaLive('MediaLive', 'medialive'),

  /// AWS Elemental MediaPackage
  mediaPackage('MediaPackage', 'mediapackage'),

  /// AWS Elemental MediaPackage VOD
  mediaPackageVod('MediaPackage Vod', 'mediapackage-vod'),

  /// AWS Elemental MediaStore
  mediaStore('MediaStore', 'mediastore'),

  /// AWS Elemental MediaStore Data Plane
  mediaStoreData('MediaStore Data', 'mediastore'),

  /// AWS MediaTailor
  mediaTailor('MediaTailor', 'mediatailor'),

  /// Amazon MemoryDB
  memoryDb('MemoryDB', 'memorydb'),

  /// Application Migration Service
  mgn('mgn', 'mgn'),

  /// AWS Migration Hub
  migrationHub('Migration Hub', 'mgh'),

  /// AWS Migration Hub Config
  migrationHubConfig('MigrationHub Config', 'mgh'),

  /// AWS Migration Hub Refactor Spaces
  migrationHubRefactorSpaces(
    'Migration Hub Refactor Spaces',
    'refactor-spaces',
  ),

  /// Migration Hub Strategy Recommendations
  migrationHubStrategy('MigrationHubStrategy', 'migrationhub-strategy'),

  /// AWS Mobile
  mobile('Mobile', 'AWSMobileHubService'),

  /// AmazonMQ
  mq('mq', 'mq'),

  /// AmazonMWAA
  mwaa('MWAA', 'airflow'),

  /// Amazon Neptune
  neptune('Neptune', 'rds'),

  /// AWS Network Firewall
  networkFirewall('Network Firewall', 'network-firewall'),

  /// AWS Network Manager
  networkManager('NetworkManager', 'networkmanager'),

  /// AmazonNimbleStudio
  nimble('nimble', 'nimble'),

  /// Amazon OpenSearch Service
  openSearch('OpenSearch', 'es'),

  /// AWS OpsWorks
  opsWorks('OpsWorks', 'opsworks'),

  /// AWS OpsWorks CM
  opsWorksCm('OpsWorksCM', 'opsworks-cm'),

  /// AWS Organizations
  organizations('Organizations', 'organizations'),

  /// AWS Outposts
  outposts('Outposts', 'outposts'),

  /// AWS Panorama
  panorama('Panorama', 'panorama'),

  /// Amazon Personalize
  personalize('Personalize', 'personalize'),

  /// Amazon Personalize Events
  personalizeEvents('Personalize Events', 'personalize'),

  /// Amazon Personalize Runtime
  personalizeRuntime('Personalize Runtime', 'personalize'),

  /// AWS Performance Insights
  pi('PI', 'pi'),

  /// Amazon Pinpoint
  pinpoint('Pinpoint', 'mobiletargeting'),

  /// Amazon Pinpoint Email Service
  pinpointEmail('Pinpoint Email', 'ses'),

  /// Amazon Pinpoint SMS and Voice Service
  pinpointSmsVoice('Pinpoint SMS Voice', 'sms-voice'),

  /// Amazon Pinpoint SMS Voice V2
  pinpointSmsVoiceV2('Pinpoint SMS Voice V2', 'sms-voice'),

  /// Amazon Polly
  polly('Polly', 'polly'),

  /// AWS Price List Service
  pricing('Pricing', 'pricing'),

  /// AWS Proton
  proton('Proton', 'proton'),

  /// Amazon QLDB
  qldb('QLDB', 'qldb'),

  /// Amazon QLDB Session
  qldbSession('QLDB Session', 'qldb'),

  /// Amazon QuickSight
  quickSight('QuickSight', 'quicksight'),

  /// AWS Resource Access Manager
  ram('RAM', 'ram'),

  /// Amazon Recycle Bin
  rbin('rbin', 'rbin'),

  /// Amazon Relational Database Service
  rds('RDS', 'rds'),

  /// AWS RDS DataService
  rdsData('RDS Data', 'rds-data'),

  /// Amazon Redshift
  redshift('Redshift', 'redshift'),

  /// Redshift Data API Service
  redshiftData('Redshift Data', 'redshift-data'),

  /// Amazon Rekognition
  rekognition('Rekognition', 'rekognition'),

  /// AWS Resilience Hub
  resiliencehub('resiliencehub', 'resiliencehub'),

  /// AWS Resource Groups
  resourceGroups('Resource Groups', 'resource-groups'),

  /// AWS Resource Groups Tagging API
  resourceGroupsTaggingApi('Resource Groups Tagging API', 'tagging'),

  /// AWS RoboMaker
  roboMaker('RoboMaker', 'robomaker'),

  /// Amazon Route 53
  route53('Route 53', 'route53'),

  /// Amazon Route 53 Domains
  route53Domains('Route 53 Domains', 'route53domains'),

  /// Route53 Recovery Cluster
  route53RecoveryCluster(
    'Route53 Recovery Cluster',
    'route53-recovery-cluster',
  ),

  /// AWS Route53 Recovery Control Config
  route53RecoveryControlConfig(
    'Route53 Recovery Control Config',
    'route53-recovery-control-config',
  ),

  /// AWS Route53 Recovery Readiness
  route53RecoveryReadiness(
    'Route53 Recovery Readiness',
    'route53-recovery-readiness',
  ),

  /// Amazon Route 53 Resolver
  route53Resolver('Route53Resolver', 'route53resolver'),

  /// CloudWatch RUM
  rum('RUM', 'rum'),

  /// Amazon Simple Storage Service
  s3('S3', 's3'),

  /// AWS S3 Control
  s3Control('S3 Control', 's3'),

  /// Amazon S3 on Outposts
  s3Outposts('S3Outposts', 's3-outposts'),

  /// Amazon SageMaker Service
  sageMaker('SageMaker', 'sagemaker'),

  /// Amazon Augmented AI Runtime
  sageMakerA2IRuntime('SageMaker A2I Runtime', 'sagemaker'),

  /// Amazon SageMaker Feature Store Runtime
  sageMakerFeatureStoreRuntime('SageMaker FeatureStore Runtime', 'sagemaker'),

  /// Amazon SageMaker Runtime
  sageMakerRuntime('SageMaker Runtime', 'sagemaker'),

  /// Amazon Sagemaker Edge Manager
  sagemakerEdge('Sagemaker Edge', 'sagemaker'),

  /// AWS Savings Plans
  savingsplans('savingsplans', 'savingsplans'),

  /// Schemas
  schemas('schemas', 'schemas'),

  /// AWS Secrets Manager
  secretsManager('Secrets Manager', 'secretsmanager'),

  /// AWS SecurityHub
  securityHub('SecurityHub', 'securityhub'),

  /// AWSServerlessApplicationRepository
  serverlessApplicationRepository(
    'ServerlessApplicationRepository',
    'serverlessrepo',
  ),

  /// AWS Service Catalog
  serviceCatalog('Service Catalog', 'servicecatalog'),

  /// AWS Service Catalog App Registry
  serviceCatalogAppRegistry('Service Catalog AppRegistry', 'servicecatalog'),

  /// AWS Cloud Map
  serviceDiscovery('ServiceDiscovery', 'servicediscovery'),

  /// Service Quotas
  serviceQuotas('Service Quotas', 'servicequotas'),

  /// Amazon Simple Email Service
  ses('SES', 'ses'),

  /// Amazon Simple Email Service
  sesV2('SESv2', 'ses'),

  /// AWS Step Functions
  sfn('SFN', 'states'),

  /// AWS Shield
  shield('Shield', 'shield'),

  /// AWS Signer
  signer('signer', 'signer'),

  /// AWS Server Migration Service
  sms('SMS', 'sms'),

  /// AWS Snow Device Management
  snowDeviceManagement('Snow Device Management', 'snow-device-management'),

  /// Amazon Import/Export Snowball
  snowball('Snowball', 'snowball'),

  /// Amazon Simple Notification Service
  sns('SNS', 'sns'),

  /// Amazon Simple Queue Service
  sqs('SQS', 'sqs'),

  /// Amazon Simple Systems Manager (SSM)
  ssm('SSM', 'ssm'),

  /// AWS Systems Manager Incident Manager Contacts
  ssmContacts('SSM Contacts', 'ssm-contacts'),

  /// AWS Systems Manager Incident Manager
  ssmIncidents('SSM Incidents', 'ssm-incidents'),

  /// AWS Single Sign-On
  sso('SSO', 'awsssoportal'),

  /// AWS Single Sign-On Admin
  ssoAdmin('SSO Admin', 'sso'),

  /// AWS SSO OIDC
  ssoOidc('SSO OIDC', 'awsssooidc'),

  /// AWS Storage Gateway
  storageGateway('Storage Gateway', 'storagegateway'),

  /// AWS Security Token Service
  sts('STS', 'sts'),

  /// AWS Support
  support('Support', 'support'),

  /// Amazon Simple Workflow Service
  swf('SWF', 'swf'),

  /// Synthetics
  synthetics('synthetics', 'synthetics'),

  /// Amazon Textract
  textract('Textract', 'textract'),

  /// Amazon Timestream Query
  timestreamQuery('Timestream Query', 'timestream'),

  /// Amazon Timestream Write
  timestreamWrite('Timestream Write', 'timestream'),

  /// Amazon Transcribe Service
  transcribe('Transcribe', 'transcribe'),

  /// Amazon Transcribe Streaming Service
  transcribeStreaming('Transcribe Streaming', 'transcribe'),

  /// AWS Transfer Family
  transfer('Transfer', 'transfer'),

  /// Amazon Translate
  translate('Translate', 'translate'),

  /// Amazon Voice ID
  voiceId('Voice ID', 'voiceid'),

  /// AWS WAF
  waf('WAF', 'waf'),

  /// AWS WAF Regional
  wafRegional('WAF Regional', 'waf-regional'),

  /// AWS WAFV2
  wafv2('WAFV2', 'wafv2'),

  /// AWS Well-Architected Tool
  wellArchitected('WellArchitected', 'wellarchitected'),

  /// Amazon Connect Wisdom Service
  wisdom('Wisdom', 'wisdom'),

  /// Amazon WorkDocs
  workDocs('WorkDocs', 'workdocs'),

  /// Amazon WorkLink
  workLink('WorkLink', 'worklink'),

  /// Amazon WorkMail
  workMail('WorkMail', 'workmail'),

  /// Amazon WorkMail Message Flow
  workMailMessageFlow('WorkMailMessageFlow', 'workmailmessageflow'),

  /// Amazon WorkSpaces
  workSpaces('WorkSpaces', 'workspaces'),

  /// Amazon WorkSpaces Web
  workSpacesWeb('WorkSpaces Web', 'workspaces-web'),

  /// AWS X-Ray
  xRay('XRay', 'xray');

  /// All AWS services.
  const AWSService(this.id, this.service);

  /// The SDK identifier.
  final String id;

  /// The SigV4 service name, used in signing.
  final String service;
}
