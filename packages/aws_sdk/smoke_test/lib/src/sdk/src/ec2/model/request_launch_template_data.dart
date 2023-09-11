// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.request_launch_template_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart';

part 'request_launch_template_data.g.dart';

/// The information to include in the launch template.
///
/// You must specify at least one parameter for the launch template data.
abstract class RequestLaunchTemplateData
    with _i1.AWSEquatable<RequestLaunchTemplateData>
    implements
        Built<RequestLaunchTemplateData, RequestLaunchTemplateDataBuilder> {
  /// The information to include in the launch template.
  ///
  /// You must specify at least one parameter for the launch template data.
  factory RequestLaunchTemplateData({
    String? kernelId,
    bool? ebsOptimized,
    LaunchTemplateIamInstanceProfileSpecificationRequest? iamInstanceProfile,
    List<LaunchTemplateBlockDeviceMappingRequest>? blockDeviceMappings,
    List<LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
        networkInterfaces,
    String? imageId,
    InstanceType? instanceType,
    String? keyName,
    LaunchTemplatesMonitoringRequest? monitoring,
    LaunchTemplatePlacementRequest? placement,
    String? ramDiskId,
    bool? disableApiTermination,
    ShutdownBehavior? instanceInitiatedShutdownBehavior,
    String? userData,
    List<LaunchTemplateTagSpecificationRequest>? tagSpecifications,
    List<ElasticGpuSpecification>? elasticGpuSpecifications,
    List<LaunchTemplateElasticInferenceAccelerator>?
        elasticInferenceAccelerators,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    LaunchTemplateInstanceMarketOptionsRequest? instanceMarketOptions,
    CreditSpecificationRequest? creditSpecification,
    LaunchTemplateCpuOptionsRequest? cpuOptions,
    LaunchTemplateCapacityReservationSpecificationRequest?
        capacityReservationSpecification,
    List<LaunchTemplateLicenseConfigurationRequest>? licenseSpecifications,
    LaunchTemplateHibernationOptionsRequest? hibernationOptions,
    LaunchTemplateInstanceMetadataOptionsRequest? metadataOptions,
    LaunchTemplateEnclaveOptionsRequest? enclaveOptions,
    InstanceRequirementsRequest? instanceRequirements,
    LaunchTemplatePrivateDnsNameOptionsRequest? privateDnsNameOptions,
    LaunchTemplateInstanceMaintenanceOptionsRequest? maintenanceOptions,
    bool? disableApiStop,
  }) {
    ebsOptimized ??= false;
    disableApiTermination ??= false;
    disableApiStop ??= false;
    return _$RequestLaunchTemplateData._(
      kernelId: kernelId,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      imageId: imageId,
      instanceType: instanceType,
      keyName: keyName,
      monitoring: monitoring,
      placement: placement,
      ramDiskId: ramDiskId,
      disableApiTermination: disableApiTermination,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      userData: userData,
      tagSpecifications:
          tagSpecifications == null ? null : _i2.BuiltList(tagSpecifications),
      elasticGpuSpecifications: elasticGpuSpecifications == null
          ? null
          : _i2.BuiltList(elasticGpuSpecifications),
      elasticInferenceAccelerators: elasticInferenceAccelerators == null
          ? null
          : _i2.BuiltList(elasticInferenceAccelerators),
      securityGroupIds:
          securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i2.BuiltList(securityGroups),
      instanceMarketOptions: instanceMarketOptions,
      creditSpecification: creditSpecification,
      cpuOptions: cpuOptions,
      capacityReservationSpecification: capacityReservationSpecification,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i2.BuiltList(licenseSpecifications),
      hibernationOptions: hibernationOptions,
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      instanceRequirements: instanceRequirements,
      privateDnsNameOptions: privateDnsNameOptions,
      maintenanceOptions: maintenanceOptions,
      disableApiStop: disableApiStop,
    );
  }

  /// The information to include in the launch template.
  ///
  /// You must specify at least one parameter for the launch template data.
  factory RequestLaunchTemplateData.build(
          [void Function(RequestLaunchTemplateDataBuilder) updates]) =
      _$RequestLaunchTemplateData;

  const RequestLaunchTemplateData._();

  static const List<_i3.SmithySerializer<RequestLaunchTemplateData>>
      serializers = [RequestLaunchTemplateDataEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestLaunchTemplateDataBuilder b) {
    b
      ..ebsOptimized = false
      ..disableApiTermination = false
      ..disableApiStop = false;
  }

  /// The ID of the kernel.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [User provided kernels](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get kernelId;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  bool get ebsOptimized;

  /// The name or Amazon Resource Name (ARN) of an IAM instance profile.
  LaunchTemplateIamInstanceProfileSpecificationRequest? get iamInstanceProfile;

  /// The block device mapping.
  _i2.BuiltList<LaunchTemplateBlockDeviceMappingRequest>?
      get blockDeviceMappings;

  /// One or more network interfaces. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
  _i2.BuiltList<LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
      get networkInterfaces;

  /// The ID of the AMI. Alternatively, you can specify a Systems Manager parameter, which will resolve to an AMI ID on launch.
  ///
  /// Valid formats:
  ///
  /// *   `ami-17characters00000`
  ///
  /// *   `resolve:ssm:parameter-name`
  ///
  /// *   `resolve:ssm:parameter-name:version-number`
  ///
  /// *   `resolve:ssm:parameter-name:label`
  ///
  /// *   `resolve:ssm:public-parameter`
  ///
  ///
  /// Currently, EC2 Fleet and Spot Fleet do not support specifying a Systems Manager parameter. If the launch template will be used by an EC2 Fleet or Spot Fleet, you must specify the AMI ID.
  ///
  /// For more information, see [Use a Systems Manager parameter instead of an AMI ID](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get imageId;

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you specify `InstanceType`, you can't specify `InstanceRequirements`.
  InstanceType? get instanceType;

  /// The name of the key pair. You can create a key pair using [CreateKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html) or [ImportKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).
  ///
  /// If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
  String? get keyName;

  /// The monitoring for the instance.
  LaunchTemplatesMonitoringRequest? get monitoring;

  /// The placement for the instance.
  LaunchTemplatePlacementRequest? get placement;

  /// The ID of the RAM disk.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [User provided kernels](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get ramDiskId;

  /// If you set this parameter to `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use [ModifyInstanceAttribute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html). Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.
  bool get disableApiTermination;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ///
  /// Default: `stop`
  ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The user data to make available to the instance. You must provide base64-encoded text. User data is limited to 16 KB. For more information, see [Run commands on your Linux instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) (Linux) or [Work with instance user data](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instancedata-add-user-data.html) (Windows) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you are creating the launch template for use with Batch, the user data must be provided in the [MIME multi-part archive format](https://cloudinit.readthedocs.io/en/latest/topics/format.html#mime-multi-part-archive). For more information, see [Amazon EC2 user data in launch templates](https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html) in the _Batch User Guide_.
  String? get userData;

  /// The tags to apply to the resources that are created during instance launch.
  ///
  /// You can specify tags for the following resources only:
  ///
  /// *   Instances
  ///
  /// *   Volumes
  ///
  /// *   Elastic graphics
  ///
  /// *   Spot Instance requests
  ///
  /// *   Network interfaces
  ///
  ///
  /// To tag a resource after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
  ///
  /// To tag the launch template itself, you must use the [TagSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html) parameter.
  _i2.BuiltList<LaunchTemplateTagSpecificationRequest>? get tagSpecifications;

  /// An elastic GPU to associate with the instance.
  _i2.BuiltList<ElasticGpuSpecification>? get elasticGpuSpecifications;

  /// The elastic inference accelerator for the instance.
  _i2.BuiltList<LaunchTemplateElasticInferenceAccelerator>?
      get elasticInferenceAccelerators;

  /// One or more security group IDs. You can create a security group using [CreateSecurityGroup](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html). You cannot specify both a security group ID and security name in the same request.
  _i2.BuiltList<String>? get securityGroupIds;

  /// One or more security group names. For a nondefault VPC, you must use security group IDs instead. You cannot specify both a security group ID and security name in the same request.
  _i2.BuiltList<String>? get securityGroups;

  /// The market (purchasing) option for the instances.
  LaunchTemplateInstanceMarketOptionsRequest? get instanceMarketOptions;

  /// The credit option for CPU usage of the instance. Valid only for T instances.
  CreditSpecificationRequest? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimizing CPU Options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateCpuOptionsRequest? get cpuOptions;

  /// The Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to `open`, which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  LaunchTemplateCapacityReservationSpecificationRequest?
      get capacityReservationSpecification;

  /// The license configurations.
  _i2.BuiltList<LaunchTemplateLicenseConfigurationRequest>?
      get licenseSpecifications;

  /// Indicates whether an instance is enabled for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateHibernationOptionsRequest? get hibernationOptions;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateInstanceMetadataOptionsRequest? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// You can't enable Amazon Web Services Nitro Enclaves and hibernation on the same instance.
  LaunchTemplateEnclaveOptionsRequest? get enclaveOptions;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// You must specify `VCpuCount` and `MemoryMiB`. All other attributes are optional. Any unspecified optional attribute is set to its default.
  ///
  /// When you specify multiple attributes, you get instance types that satisfy all of the specified attributes. If you specify multiple values for an attribute, you get instance types that satisfy any of the specified values.
  ///
  /// To limit the list of instance types from which Amazon EC2 can identify matching instance types, you can use one of the following parameters, but not both in the same request:
  ///
  /// *   `AllowedInstanceTypes` \- The instance types to include in the list. All other instance types are ignored, even if they match your specified attributes.
  ///
  /// *   `ExcludedInstanceTypes` \- The instance types to exclude from the list, even if they match your specified attributes.
  ///
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  ///
  /// Attribute-based instance type selection is only supported when using Auto Scaling groups, EC2 Fleet, and Spot Fleet to launch instances. If you plan to use the launch template in the [launch instance wizard](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-instance-wizard.html), or with the [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html) API or [AWS::EC2::Instance](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html) Amazon Web Services CloudFormation resource, you can't specify `InstanceRequirements`.
  ///
  /// For more information, see [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_.
  InstanceRequirementsRequest? get instanceRequirements;

  /// The options for the instance hostname. The default values are inherited from the subnet.
  LaunchTemplatePrivateDnsNameOptionsRequest? get privateDnsNameOptions;

  /// The maintenance options for the instance.
  LaunchTemplateInstanceMaintenanceOptionsRequest? get maintenanceOptions;

  /// Indicates whether to enable the instance for stop protection. For more information, see [Stop protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get disableApiStop;
  @override
  List<Object?> get props => [
        kernelId,
        ebsOptimized,
        iamInstanceProfile,
        blockDeviceMappings,
        networkInterfaces,
        imageId,
        instanceType,
        keyName,
        monitoring,
        placement,
        ramDiskId,
        disableApiTermination,
        instanceInitiatedShutdownBehavior,
        userData,
        tagSpecifications,
        elasticGpuSpecifications,
        elasticInferenceAccelerators,
        securityGroupIds,
        securityGroups,
        instanceMarketOptions,
        creditSpecification,
        cpuOptions,
        capacityReservationSpecification,
        licenseSpecifications,
        hibernationOptions,
        metadataOptions,
        enclaveOptions,
        instanceRequirements,
        privateDnsNameOptions,
        maintenanceOptions,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestLaunchTemplateData')
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'iamInstanceProfile',
        iamInstanceProfile,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'networkInterfaces',
        networkInterfaces,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'monitoring',
        monitoring,
      )
      ..add(
        'placement',
        placement,
      )
      ..add(
        'ramDiskId',
        ramDiskId,
      )
      ..add(
        'disableApiTermination',
        disableApiTermination,
      )
      ..add(
        'instanceInitiatedShutdownBehavior',
        instanceInitiatedShutdownBehavior,
      )
      ..add(
        'userData',
        '***SENSITIVE***',
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'elasticGpuSpecifications',
        elasticGpuSpecifications,
      )
      ..add(
        'elasticInferenceAccelerators',
        elasticInferenceAccelerators,
      )
      ..add(
        'securityGroupIds',
        securityGroupIds,
      )
      ..add(
        'securityGroups',
        securityGroups,
      )
      ..add(
        'instanceMarketOptions',
        instanceMarketOptions,
      )
      ..add(
        'creditSpecification',
        creditSpecification,
      )
      ..add(
        'cpuOptions',
        cpuOptions,
      )
      ..add(
        'capacityReservationSpecification',
        capacityReservationSpecification,
      )
      ..add(
        'licenseSpecifications',
        licenseSpecifications,
      )
      ..add(
        'hibernationOptions',
        hibernationOptions,
      )
      ..add(
        'metadataOptions',
        metadataOptions,
      )
      ..add(
        'enclaveOptions',
        enclaveOptions,
      )
      ..add(
        'instanceRequirements',
        instanceRequirements,
      )
      ..add(
        'privateDnsNameOptions',
        privateDnsNameOptions,
      )
      ..add(
        'maintenanceOptions',
        maintenanceOptions,
      )
      ..add(
        'disableApiStop',
        disableApiStop,
      );
    return helper.toString();
  }
}

class RequestLaunchTemplateDataEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RequestLaunchTemplateData> {
  const RequestLaunchTemplateDataEc2QuerySerializer()
      : super('RequestLaunchTemplateData');

  @override
  Iterable<Type> get types => const [
        RequestLaunchTemplateData,
        _$RequestLaunchTemplateData,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestLaunchTemplateData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestLaunchTemplateDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'KernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                LaunchTemplateIamInstanceProfileSpecificationRequest),
          ) as LaunchTemplateIamInstanceProfileSpecificationRequest));
        case 'BlockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateBlockDeviceMappingRequest)],
            ),
          ) as _i2.BuiltList<LaunchTemplateBlockDeviceMappingRequest>));
        case 'NetworkInterface':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'InstanceNetworkInterfaceSpecification',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [
                FullType(
                    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)
              ],
            ),
          ) as _i2.BuiltList<
              LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>));
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplatesMonitoringRequest),
          ) as LaunchTemplatesMonitoringRequest));
        case 'Placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplatePlacementRequest),
          ) as LaunchTemplatePlacementRequest));
        case 'RamDiskId':
          result.ramDiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DisableApiTermination':
          result.disableApiTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceInitiatedShutdownBehavior':
          result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(ShutdownBehavior),
          ) as ShutdownBehavior);
        case 'UserData':
          result.userData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'LaunchTemplateTagSpecificationRequest',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateTagSpecificationRequest)],
            ),
          ) as _i2.BuiltList<LaunchTemplateTagSpecificationRequest>));
        case 'ElasticGpuSpecification':
          result.elasticGpuSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'ElasticGpuSpecification',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ElasticGpuSpecification)],
            ),
          ) as _i2.BuiltList<ElasticGpuSpecification>));
        case 'ElasticInferenceAccelerator':
          result.elasticInferenceAccelerators
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateElasticInferenceAccelerator)],
            ),
          ) as _i2.BuiltList<LaunchTemplateElasticInferenceAccelerator>));
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'SecurityGroup':
          result.securityGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'SecurityGroup',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'InstanceMarketOptions':
          result.instanceMarketOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMarketOptionsRequest),
          ) as LaunchTemplateInstanceMarketOptionsRequest));
        case 'CreditSpecification':
          result.creditSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CreditSpecificationRequest),
          ) as CreditSpecificationRequest));
        case 'CpuOptions':
          result.cpuOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateCpuOptionsRequest),
          ) as LaunchTemplateCpuOptionsRequest));
        case 'CapacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                LaunchTemplateCapacityReservationSpecificationRequest),
          ) as LaunchTemplateCapacityReservationSpecificationRequest));
        case 'LicenseSpecification':
          result.licenseSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateLicenseConfigurationRequest)],
            ),
          ) as _i2.BuiltList<LaunchTemplateLicenseConfigurationRequest>));
        case 'HibernationOptions':
          result.hibernationOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateHibernationOptionsRequest),
          ) as LaunchTemplateHibernationOptionsRequest));
        case 'MetadataOptions':
          result.metadataOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataOptionsRequest),
          ) as LaunchTemplateInstanceMetadataOptionsRequest));
        case 'EnclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateEnclaveOptionsRequest),
          ) as LaunchTemplateEnclaveOptionsRequest));
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirementsRequest),
          ) as InstanceRequirementsRequest));
        case 'PrivateDnsNameOptions':
          result.privateDnsNameOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplatePrivateDnsNameOptionsRequest),
          ) as LaunchTemplatePrivateDnsNameOptionsRequest));
        case 'MaintenanceOptions':
          result.maintenanceOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMaintenanceOptionsRequest),
          ) as LaunchTemplateInstanceMaintenanceOptionsRequest));
        case 'DisableApiStop':
          result.disableApiStop = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestLaunchTemplateData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RequestLaunchTemplateDataResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RequestLaunchTemplateData(
      :kernelId,
      :ebsOptimized,
      :iamInstanceProfile,
      :blockDeviceMappings,
      :networkInterfaces,
      :imageId,
      :instanceType,
      :keyName,
      :monitoring,
      :placement,
      :ramDiskId,
      :disableApiTermination,
      :instanceInitiatedShutdownBehavior,
      :userData,
      :tagSpecifications,
      :elasticGpuSpecifications,
      :elasticInferenceAccelerators,
      :securityGroupIds,
      :securityGroups,
      :instanceMarketOptions,
      :creditSpecification,
      :cpuOptions,
      :capacityReservationSpecification,
      :licenseSpecifications,
      :hibernationOptions,
      :metadataOptions,
      :enclaveOptions,
      :instanceRequirements,
      :privateDnsNameOptions,
      :maintenanceOptions,
      :disableApiStop
    ) = object;
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(
              LaunchTemplateIamInstanceProfileSpecificationRequest),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LaunchTemplateBlockDeviceMappingRequest)],
          ),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterface'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'InstanceNetworkInterfaceSpecification',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType(
            _i2.BuiltList,
            [
              FullType(
                  LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)
            ],
          ),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i3.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(LaunchTemplatesMonitoringRequest),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(LaunchTemplatePlacementRequest),
        ));
    }
    if (ramDiskId != null) {
      result$
        ..add(const _i3.XmlElementName('RamDiskId'))
        ..add(serializers.serialize(
          ramDiskId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DisableApiTermination'))
      ..add(serializers.serialize(
        disableApiTermination,
        specifiedType: const FullType(bool),
      ));
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType(ShutdownBehavior),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i3.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('TagSpecification'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'LaunchTemplateTagSpecificationRequest',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LaunchTemplateTagSpecificationRequest)],
          ),
        ));
    }
    if (elasticGpuSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuSpecification'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'ElasticGpuSpecification',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ElasticGpuSpecification)],
          ),
        ));
    }
    if (elasticInferenceAccelerators != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticInferenceAccelerator'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticInferenceAccelerators,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LaunchTemplateElasticInferenceAccelerator)],
          ),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroup'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceMarketOptions != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceMarketOptions'))
        ..add(serializers.serialize(
          instanceMarketOptions,
          specifiedType:
              const FullType(LaunchTemplateInstanceMarketOptionsRequest),
        ));
    }
    if (creditSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          creditSpecification,
          specifiedType: const FullType(CreditSpecificationRequest),
        ));
    }
    if (cpuOptions != null) {
      result$
        ..add(const _i3.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          cpuOptions,
          specifiedType: const FullType(LaunchTemplateCpuOptionsRequest),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType: const FullType(
              LaunchTemplateCapacityReservationSpecificationRequest),
        ));
    }
    if (licenseSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('LicenseSpecification'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenseSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LaunchTemplateLicenseConfigurationRequest)],
          ),
        ));
    }
    if (hibernationOptions != null) {
      result$
        ..add(const _i3.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          hibernationOptions,
          specifiedType:
              const FullType(LaunchTemplateHibernationOptionsRequest),
        ));
    }
    if (metadataOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          metadataOptions,
          specifiedType:
              const FullType(LaunchTemplateInstanceMetadataOptionsRequest),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i3.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(LaunchTemplateEnclaveOptionsRequest),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirementsRequest),
        ));
    }
    if (privateDnsNameOptions != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          privateDnsNameOptions,
          specifiedType:
              const FullType(LaunchTemplatePrivateDnsNameOptionsRequest),
        ));
    }
    if (maintenanceOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          maintenanceOptions,
          specifiedType:
              const FullType(LaunchTemplateInstanceMaintenanceOptionsRequest),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DisableApiStop'))
      ..add(serializers.serialize(
        disableApiStop,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
