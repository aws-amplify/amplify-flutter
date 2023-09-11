// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.run_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_market_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'run_instances_request.g.dart';

abstract class RunInstancesRequest
    with
        _i1.HttpInput<RunInstancesRequest>,
        _i2.AWSEquatable<RunInstancesRequest>
    implements Built<RunInstancesRequest, RunInstancesRequestBuilder> {
  factory RunInstancesRequest({
    List<BlockDeviceMapping>? blockDeviceMappings,
    String? imageId,
    InstanceType? instanceType,
    int? ipv6AddressCount,
    List<InstanceIpv6Address>? ipv6Addresses,
    String? kernelId,
    String? keyName,
    int? maxCount,
    int? minCount,
    RunInstancesMonitoringEnabled? monitoring,
    Placement? placement,
    String? ramdiskId,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    String? subnetId,
    String? userData,
    String? additionalInfo,
    String? clientToken,
    bool? disableApiTermination,
    bool? dryRun,
    bool? ebsOptimized,
    IamInstanceProfileSpecification? iamInstanceProfile,
    ShutdownBehavior? instanceInitiatedShutdownBehavior,
    List<InstanceNetworkInterfaceSpecification>? networkInterfaces,
    String? privateIpAddress,
    List<ElasticGpuSpecification>? elasticGpuSpecification,
    List<ElasticInferenceAccelerator>? elasticInferenceAccelerators,
    List<TagSpecification>? tagSpecifications,
    LaunchTemplateSpecification? launchTemplate,
    InstanceMarketOptionsRequest? instanceMarketOptions,
    CreditSpecificationRequest? creditSpecification,
    CpuOptionsRequest? cpuOptions,
    CapacityReservationSpecification? capacityReservationSpecification,
    HibernationOptionsRequest? hibernationOptions,
    List<LicenseConfigurationRequest>? licenseSpecifications,
    InstanceMetadataOptionsRequest? metadataOptions,
    EnclaveOptionsRequest? enclaveOptions,
    PrivateDnsNameOptionsRequest? privateDnsNameOptions,
    InstanceMaintenanceOptionsRequest? maintenanceOptions,
    bool? disableApiStop,
    bool? enablePrimaryIpv6,
  }) {
    ipv6AddressCount ??= 0;
    maxCount ??= 0;
    minCount ??= 0;
    disableApiTermination ??= false;
    dryRun ??= false;
    ebsOptimized ??= false;
    disableApiStop ??= false;
    enablePrimaryIpv6 ??= false;
    return _$RunInstancesRequest._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i3.BuiltList(blockDeviceMappings),
      imageId: imageId,
      instanceType: instanceType,
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i3.BuiltList(ipv6Addresses),
      kernelId: kernelId,
      keyName: keyName,
      maxCount: maxCount,
      minCount: minCount,
      monitoring: monitoring,
      placement: placement,
      ramdiskId: ramdiskId,
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i3.BuiltList(securityGroups),
      subnetId: subnetId,
      userData: userData,
      additionalInfo: additionalInfo,
      clientToken: clientToken,
      disableApiTermination: disableApiTermination,
      dryRun: dryRun,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      networkInterfaces:
          networkInterfaces == null ? null : _i3.BuiltList(networkInterfaces),
      privateIpAddress: privateIpAddress,
      elasticGpuSpecification: elasticGpuSpecification == null
          ? null
          : _i3.BuiltList(elasticGpuSpecification),
      elasticInferenceAccelerators: elasticInferenceAccelerators == null
          ? null
          : _i3.BuiltList(elasticInferenceAccelerators),
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      launchTemplate: launchTemplate,
      instanceMarketOptions: instanceMarketOptions,
      creditSpecification: creditSpecification,
      cpuOptions: cpuOptions,
      capacityReservationSpecification: capacityReservationSpecification,
      hibernationOptions: hibernationOptions,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i3.BuiltList(licenseSpecifications),
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      privateDnsNameOptions: privateDnsNameOptions,
      maintenanceOptions: maintenanceOptions,
      disableApiStop: disableApiStop,
      enablePrimaryIpv6: enablePrimaryIpv6,
    );
  }

  factory RunInstancesRequest.build(
          [void Function(RunInstancesRequestBuilder) updates]) =
      _$RunInstancesRequest;

  const RunInstancesRequest._();

  factory RunInstancesRequest.fromRequest(
    RunInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RunInstancesRequest>> serializers = [
    RunInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RunInstancesRequestBuilder b) {
    b
      ..ipv6AddressCount = 0
      ..maxCount = 0
      ..minCount = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..disableApiTermination = false
      ..dryRun = false
      ..ebsOptimized = false
      ..disableApiStop = false
      ..enablePrimaryIpv6 = false;
  }

  /// The block device mapping, which defines the EBS volumes and instance store volumes to attach to the instance at launch. For more information, see [Block device mappings](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html) in the _Amazon EC2 User Guide_.
  _i3.BuiltList<BlockDeviceMapping>? get blockDeviceMappings;

  /// The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template.
  String? get imageId;

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  InstanceType? get instanceType;

  /// The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  int get ipv6AddressCount;

  /// The IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  _i3.BuiltList<InstanceIpv6Address>? get ipv6Addresses;

  /// The ID of the kernel.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon EC2 User Guide_.
  String? get kernelId;

  /// The name of the key pair. You can create a key pair using [CreateKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html) or [ImportKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).
  ///
  /// If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
  String? get keyName;

  /// The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above `MinCount`.
  ///
  /// Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 FAQ.
  int get maxCount;

  /// The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances.
  ///
  /// Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 General FAQ.
  int get minCount;

  /// Specifies whether detailed monitoring is enabled for the instance.
  RunInstancesMonitoringEnabled? get monitoring;

  /// The placement for the instance.
  Placement? get placement;

  /// The ID of the RAM disk to select. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, go to the Amazon Web Services Resource Center and search for the kernel ID.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon EC2 User Guide_.
  String? get ramdiskId;

  /// The IDs of the security groups. You can create a security group using [CreateSecurityGroup](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html).
  ///
  /// If you specify a network interface, you must specify any security groups as part of the network interface.
  _i3.BuiltList<String>? get securityGroupIds;

  /// \[Default VPC\] The names of the security groups.
  ///
  /// If you specify a network interface, you must specify any security groups as part of the network interface.
  ///
  /// Default: Amazon EC2 uses the default security group.
  _i3.BuiltList<String>? get securityGroups;

  /// The ID of the subnet to launch the instance into.
  ///
  /// If you specify a network interface, you must specify any subnets as part of the network interface.
  String? get subnetId;

  /// The user data script to make available to the instance. For more information, see [Run commands on your Linux instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) and [Run commands on your Windows instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-windows-user-data.html). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
  String? get userData;

  /// Reserved.
  String? get additionalInfo;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.
  ///
  /// For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraints: Maximum 64 ASCII characters
  String? get clientToken;

  /// If you set this parameter to `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use [ModifyInstanceAttribute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html). Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.
  ///
  /// Default: `false`
  bool get disableApiTermination;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The name or Amazon Resource Name (ARN) of an IAM instance profile.
  IamInstanceProfileSpecification? get iamInstanceProfile;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ///
  /// Default: `stop`
  ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The network interfaces to associate with the instance. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
  _i3.BuiltList<InstanceNetworkInterfaceSpecification>? get networkInterfaces;

  /// The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet.
  ///
  /// Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  String? get privateIpAddress;

  /// An elastic GPU to associate with the instance. An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications. For more information, see [Amazon EC2 Elastic GPUs](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html) in the _Amazon EC2 User Guide_.
  _i3.BuiltList<ElasticGpuSpecification>? get elasticGpuSpecification;

  /// An elastic inference accelerator to associate with the instance. Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning (DL) inference workloads.
  ///
  /// You cannot specify accelerators from different generations in the same request.
  ///
  /// Starting April 15, 2023, Amazon Web Services will not onboard new customers to Amazon Elastic Inference (EI), and will help current customers migrate their workloads to options that offer better price and performance. After April 15, 2023, new customers will not be able to launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers who have used Amazon EI at least once during the past 30-day period are considered current customers and will be able to continue using the service.
  _i3.BuiltList<ElasticInferenceAccelerator>? get elasticInferenceAccelerators;

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
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The launch template to use to launch the instances. Any parameters that you specify in RunInstances override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
  LaunchTemplateSpecification? get launchTemplate;

  /// The market (purchasing) option for the instances.
  ///
  /// For RunInstances, persistent Spot Instance requests are only supported when **InstanceInterruptionBehavior** is set to either `hibernate` or `stop`.
  InstanceMarketOptionsRequest? get instanceMarketOptions;

  /// The credit option for CPU usage of the burstable performance instance. Valid values are `standard` and `unlimited`. To change this attribute after launch, use [ModifyInstanceCreditSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html). For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `standard` (T2 instances) or `unlimited` (T3/T3a/T4g instances)
  ///
  /// For T3 instances with `host` tenancy, only `standard` is supported.
  CreditSpecificationRequest? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimize CPU options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon EC2 User Guide_.
  CpuOptionsRequest? get cpuOptions;

  /// Information about the Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to `open`, which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  CapacityReservationSpecification? get capacityReservationSpecification;

  /// Indicates whether an instance is enabled for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  ///
  /// You can't enable hibernation and Amazon Web Services Nitro Enclaves on the same instance.
  HibernationOptionsRequest? get hibernationOptions;

  /// The license configurations.
  _i3.BuiltList<LicenseConfigurationRequest>? get licenseSpecifications;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
  InstanceMetadataOptionsRequest? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// You can't enable Amazon Web Services Nitro Enclaves and hibernation on the same instance.
  EnclaveOptionsRequest? get enclaveOptions;

  /// The options for the instance hostname. The default values are inherited from the subnet. Applies only if creating a network interface, not attaching an existing one.
  PrivateDnsNameOptionsRequest? get privateDnsNameOptions;

  /// The maintenance and recovery options for the instance.
  InstanceMaintenanceOptionsRequest? get maintenanceOptions;

  /// Indicates whether an instance is enabled for stop protection. For more information, see [Stop protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  bool get disableApiStop;

  /// If you’re launching an instance into a dual-stack or IPv6-only subnet, you can enable assigning a primary IPv6 address. A primary IPv6 address is an IPv6 GUA address associated with an ENI that you have enabled to use a primary IPv6 address. Use this option if an instance relies on its IPv6 address not changing. When you launch the instance, Amazon Web Services will automatically assign an IPv6 address associated with the ENI attached to your instance to be the primary IPv6 address. Once you enable an IPv6 GUA address to be a primary IPv6, you cannot disable it. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. If you have multiple IPv6 addresses associated with an ENI attached to your instance and you enable a primary IPv6 address, the first IPv6 GUA address associated with the ENI becomes the primary IPv6 address.
  bool get enablePrimaryIpv6;
  @override
  RunInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        imageId,
        instanceType,
        ipv6AddressCount,
        ipv6Addresses,
        kernelId,
        keyName,
        maxCount,
        minCount,
        monitoring,
        placement,
        ramdiskId,
        securityGroupIds,
        securityGroups,
        subnetId,
        userData,
        additionalInfo,
        clientToken,
        disableApiTermination,
        dryRun,
        ebsOptimized,
        iamInstanceProfile,
        instanceInitiatedShutdownBehavior,
        networkInterfaces,
        privateIpAddress,
        elasticGpuSpecification,
        elasticInferenceAccelerators,
        tagSpecifications,
        launchTemplate,
        instanceMarketOptions,
        creditSpecification,
        cpuOptions,
        capacityReservationSpecification,
        hibernationOptions,
        licenseSpecifications,
        metadataOptions,
        enclaveOptions,
        privateDnsNameOptions,
        maintenanceOptions,
        disableApiStop,
        enablePrimaryIpv6,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RunInstancesRequest')
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
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
        'ipv6AddressCount',
        ipv6AddressCount,
      )
      ..add(
        'ipv6Addresses',
        ipv6Addresses,
      )
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'maxCount',
        maxCount,
      )
      ..add(
        'minCount',
        minCount,
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
        'ramdiskId',
        ramdiskId,
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
        'subnetId',
        subnetId,
      )
      ..add(
        'userData',
        '***SENSITIVE***',
      )
      ..add(
        'additionalInfo',
        additionalInfo,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'disableApiTermination',
        disableApiTermination,
      )
      ..add(
        'dryRun',
        dryRun,
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
        'instanceInitiatedShutdownBehavior',
        instanceInitiatedShutdownBehavior,
      )
      ..add(
        'networkInterfaces',
        networkInterfaces,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      )
      ..add(
        'elasticGpuSpecification',
        elasticGpuSpecification,
      )
      ..add(
        'elasticInferenceAccelerators',
        elasticInferenceAccelerators,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'launchTemplate',
        launchTemplate,
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
        'hibernationOptions',
        hibernationOptions,
      )
      ..add(
        'licenseSpecifications',
        licenseSpecifications,
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
      )
      ..add(
        'enablePrimaryIpv6',
        enablePrimaryIpv6,
      );
    return helper.toString();
  }
}

class RunInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RunInstancesRequest> {
  const RunInstancesRequestEc2QuerySerializer() : super('RunInstancesRequest');

  @override
  Iterable<Type> get types => const [
        RunInstancesRequest,
        _$RunInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RunInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BlockDeviceMapping':
          result.blockDeviceMappings.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(BlockDeviceMapping)],
            ),
          ) as _i3.BuiltList<BlockDeviceMapping>));
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
        case 'Ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6Address':
          result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceIpv6Address)],
            ),
          ) as _i3.BuiltList<InstanceIpv6Address>));
        case 'KernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxCount':
          result.maxCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MinCount':
          result.minCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RunInstancesMonitoringEnabled),
          ) as RunInstancesMonitoringEnabled));
        case 'Placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Placement),
          ) as Placement));
        case 'RamdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'SecurityGroup':
          result.securityGroups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SecurityGroup',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserData':
          result.userData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'additionalInfo':
          result.additionalInfo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'disableApiTermination':
          result.disableApiTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IamInstanceProfileSpecification),
          ) as IamInstanceProfileSpecification));
        case 'instanceInitiatedShutdownBehavior':
          result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(ShutdownBehavior),
          ) as ShutdownBehavior);
        case 'networkInterface':
          result.networkInterfaces.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceNetworkInterfaceSpecification)],
            ),
          ) as _i3.BuiltList<InstanceNetworkInterfaceSpecification>));
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ElasticGpuSpecification':
          result.elasticGpuSpecification
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ElasticGpuSpecification)],
            ),
          ) as _i3.BuiltList<ElasticGpuSpecification>));
        case 'ElasticInferenceAccelerator':
          result.elasticInferenceAccelerators
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ElasticInferenceAccelerator)],
            ),
          ) as _i3.BuiltList<ElasticInferenceAccelerator>));
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'LaunchTemplate':
          result.launchTemplate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateSpecification),
          ) as LaunchTemplateSpecification));
        case 'InstanceMarketOptions':
          result.instanceMarketOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMarketOptionsRequest),
          ) as InstanceMarketOptionsRequest));
        case 'CreditSpecification':
          result.creditSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CreditSpecificationRequest),
          ) as CreditSpecificationRequest));
        case 'CpuOptions':
          result.cpuOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CpuOptionsRequest),
          ) as CpuOptionsRequest));
        case 'CapacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationSpecification),
          ) as CapacityReservationSpecification));
        case 'HibernationOptions':
          result.hibernationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(HibernationOptionsRequest),
          ) as HibernationOptionsRequest));
        case 'LicenseSpecification':
          result.licenseSpecifications
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(LicenseConfigurationRequest)],
            ),
          ) as _i3.BuiltList<LicenseConfigurationRequest>));
        case 'MetadataOptions':
          result.metadataOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataOptionsRequest),
          ) as InstanceMetadataOptionsRequest));
        case 'EnclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnclaveOptionsRequest),
          ) as EnclaveOptionsRequest));
        case 'PrivateDnsNameOptions':
          result.privateDnsNameOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PrivateDnsNameOptionsRequest),
          ) as PrivateDnsNameOptionsRequest));
        case 'MaintenanceOptions':
          result.maintenanceOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMaintenanceOptionsRequest),
          ) as InstanceMaintenanceOptionsRequest));
        case 'DisableApiStop':
          result.disableApiStop = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'EnablePrimaryIpv6':
          result.enablePrimaryIpv6 = (serializers.deserialize(
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
    RunInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RunInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RunInstancesRequest(
      :blockDeviceMappings,
      :imageId,
      :instanceType,
      :ipv6AddressCount,
      :ipv6Addresses,
      :kernelId,
      :keyName,
      :maxCount,
      :minCount,
      :monitoring,
      :placement,
      :ramdiskId,
      :securityGroupIds,
      :securityGroups,
      :subnetId,
      :userData,
      :additionalInfo,
      :clientToken,
      :disableApiTermination,
      :dryRun,
      :ebsOptimized,
      :iamInstanceProfile,
      :instanceInitiatedShutdownBehavior,
      :networkInterfaces,
      :privateIpAddress,
      :elasticGpuSpecification,
      :elasticInferenceAccelerators,
      :tagSpecifications,
      :launchTemplate,
      :instanceMarketOptions,
      :creditSpecification,
      :cpuOptions,
      :capacityReservationSpecification,
      :hibernationOptions,
      :licenseSpecifications,
      :metadataOptions,
      :enclaveOptions,
      :privateDnsNameOptions,
      :maintenanceOptions,
      :disableApiStop,
      :enablePrimaryIpv6
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(BlockDeviceMapping)],
          ),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Addresses != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Address'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InstanceIpv6Address)],
          ),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i1.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxCount'))
      ..add(serializers.serialize(
        maxCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MinCount'))
      ..add(serializers.serialize(
        minCount,
        specifiedType: const FullType(int),
      ));
    if (monitoring != null) {
      result$
        ..add(const _i1.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(RunInstancesMonitoringEnabled),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i1.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(Placement),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i1.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i1.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    if (additionalInfo != null) {
      result$
        ..add(const _i1.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          additionalInfo,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DisableApiTermination'))
      ..add(serializers.serialize(
        disableApiTermination,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i1.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(IamInstanceProfileSpecification),
        ));
    }
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType(ShutdownBehavior),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterface'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (elasticGpuSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('ElasticGpuSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuSpecification,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ElasticGpuSpecification)],
          ),
        ));
    }
    if (elasticInferenceAccelerators != null) {
      result$
        ..add(const _i1.XmlElementName('ElasticInferenceAccelerator'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticInferenceAccelerators,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ElasticInferenceAccelerator)],
          ),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (launchTemplate != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          launchTemplate,
          specifiedType: const FullType(LaunchTemplateSpecification),
        ));
    }
    if (instanceMarketOptions != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceMarketOptions'))
        ..add(serializers.serialize(
          instanceMarketOptions,
          specifiedType: const FullType(InstanceMarketOptionsRequest),
        ));
    }
    if (creditSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          creditSpecification,
          specifiedType: const FullType(CreditSpecificationRequest),
        ));
    }
    if (cpuOptions != null) {
      result$
        ..add(const _i1.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          cpuOptions,
          specifiedType: const FullType(CpuOptionsRequest),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType: const FullType(CapacityReservationSpecification),
        ));
    }
    if (hibernationOptions != null) {
      result$
        ..add(const _i1.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          hibernationOptions,
          specifiedType: const FullType(HibernationOptionsRequest),
        ));
    }
    if (licenseSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('LicenseSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenseSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(LicenseConfigurationRequest)],
          ),
        ));
    }
    if (metadataOptions != null) {
      result$
        ..add(const _i1.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          metadataOptions,
          specifiedType: const FullType(InstanceMetadataOptionsRequest),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i1.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(EnclaveOptionsRequest),
        ));
    }
    if (privateDnsNameOptions != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          privateDnsNameOptions,
          specifiedType: const FullType(PrivateDnsNameOptionsRequest),
        ));
    }
    if (maintenanceOptions != null) {
      result$
        ..add(const _i1.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          maintenanceOptions,
          specifiedType: const FullType(InstanceMaintenanceOptionsRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DisableApiStop'))
      ..add(serializers.serialize(
        disableApiStop,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('EnablePrimaryIpv6'))
      ..add(serializers.serialize(
        enablePrimaryIpv6,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
