// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart';

part 'instance.g.dart';

/// Describes an instance.
abstract class Instance
    with _i1.AWSEquatable<Instance>
    implements Built<Instance, InstanceBuilder> {
  /// Describes an instance.
  factory Instance({
    int? amiLaunchIndex,
    String? imageId,
    String? instanceId,
    InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    DateTime? launchTime,
    Monitoring? monitoring,
    Placement? placement,
    PlatformValues? platform,
    String? privateDnsName,
    String? privateIpAddress,
    List<ProductCode>? productCodes,
    String? publicDnsName,
    String? publicIpAddress,
    String? ramdiskId,
    InstanceState? state,
    String? stateTransitionReason,
    String? subnetId,
    String? vpcId,
    ArchitectureValues? architecture,
    List<InstanceBlockDeviceMapping>? blockDeviceMappings,
    String? clientToken,
    bool? ebsOptimized,
    bool? enaSupport,
    HypervisorType? hypervisor,
    IamInstanceProfile? iamInstanceProfile,
    InstanceLifecycleType? instanceLifecycle,
    List<ElasticGpuAssociation>? elasticGpuAssociations,
    List<ElasticInferenceAcceleratorAssociation>?
        elasticInferenceAcceleratorAssociations,
    List<InstanceNetworkInterface>? networkInterfaces,
    String? outpostArn,
    String? rootDeviceName,
    DeviceType? rootDeviceType,
    List<GroupIdentifier>? securityGroups,
    bool? sourceDestCheck,
    String? spotInstanceRequestId,
    String? sriovNetSupport,
    StateReason? stateReason,
    List<Tag>? tags,
    VirtualizationType? virtualizationType,
    CpuOptions? cpuOptions,
    String? capacityReservationId,
    CapacityReservationSpecificationResponse? capacityReservationSpecification,
    HibernationOptions? hibernationOptions,
    List<LicenseConfiguration>? licenses,
    InstanceMetadataOptionsResponse? metadataOptions,
    EnclaveOptions? enclaveOptions,
    BootModeValues? bootMode,
    String? platformDetails,
    String? usageOperation,
    DateTime? usageOperationUpdateTime,
    PrivateDnsNameOptionsResponse? privateDnsNameOptions,
    String? ipv6Address,
    String? tpmSupport,
    InstanceMaintenanceOptions? maintenanceOptions,
    InstanceBootModeValues? currentInstanceBootMode,
  }) {
    amiLaunchIndex ??= 0;
    ebsOptimized ??= false;
    enaSupport ??= false;
    sourceDestCheck ??= false;
    return _$Instance._(
      amiLaunchIndex: amiLaunchIndex,
      imageId: imageId,
      instanceId: instanceId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      launchTime: launchTime,
      monitoring: monitoring,
      placement: placement,
      platform: platform,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      publicDnsName: publicDnsName,
      publicIpAddress: publicIpAddress,
      ramdiskId: ramdiskId,
      state: state,
      stateTransitionReason: stateTransitionReason,
      subnetId: subnetId,
      vpcId: vpcId,
      architecture: architecture,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      clientToken: clientToken,
      ebsOptimized: ebsOptimized,
      enaSupport: enaSupport,
      hypervisor: hypervisor,
      iamInstanceProfile: iamInstanceProfile,
      instanceLifecycle: instanceLifecycle,
      elasticGpuAssociations: elasticGpuAssociations == null
          ? null
          : _i2.BuiltList(elasticGpuAssociations),
      elasticInferenceAcceleratorAssociations:
          elasticInferenceAcceleratorAssociations == null
              ? null
              : _i2.BuiltList(elasticInferenceAcceleratorAssociations),
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      outpostArn: outpostArn,
      rootDeviceName: rootDeviceName,
      rootDeviceType: rootDeviceType,
      securityGroups:
          securityGroups == null ? null : _i2.BuiltList(securityGroups),
      sourceDestCheck: sourceDestCheck,
      spotInstanceRequestId: spotInstanceRequestId,
      sriovNetSupport: sriovNetSupport,
      stateReason: stateReason,
      tags: tags == null ? null : _i2.BuiltList(tags),
      virtualizationType: virtualizationType,
      cpuOptions: cpuOptions,
      capacityReservationId: capacityReservationId,
      capacityReservationSpecification: capacityReservationSpecification,
      hibernationOptions: hibernationOptions,
      licenses: licenses == null ? null : _i2.BuiltList(licenses),
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      bootMode: bootMode,
      platformDetails: platformDetails,
      usageOperation: usageOperation,
      usageOperationUpdateTime: usageOperationUpdateTime,
      privateDnsNameOptions: privateDnsNameOptions,
      ipv6Address: ipv6Address,
      tpmSupport: tpmSupport,
      maintenanceOptions: maintenanceOptions,
      currentInstanceBootMode: currentInstanceBootMode,
    );
  }

  /// Describes an instance.
  factory Instance.build([void Function(InstanceBuilder) updates]) = _$Instance;

  const Instance._();

  static const List<_i3.SmithySerializer<Instance>> serializers = [
    InstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceBuilder b) {
    b
      ..amiLaunchIndex = 0
      ..ebsOptimized = false
      ..enaSupport = false
      ..sourceDestCheck = false;
  }

  /// The AMI launch index, which can be used to find this instance in the launch group.
  int get amiLaunchIndex;

  /// The ID of the AMI used to launch the instance.
  String? get imageId;

  /// The ID of the instance.
  String? get instanceId;

  /// The instance type.
  InstanceType? get instanceType;

  /// The kernel associated with this instance, if applicable.
  String? get kernelId;

  /// The name of the key pair, if this instance was launched with an associated key pair.
  String? get keyName;

  /// The time the instance was launched.
  DateTime? get launchTime;

  /// The monitoring for the instance.
  Monitoring? get monitoring;

  /// The location where the instance launched, if applicable.
  Placement? get placement;

  /// The value is `Windows` for Windows instances; otherwise blank.
  PlatformValues? get platform;

  /// \[IPv4 only\] The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the `running` state.
  ///
  /// The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.
  String? get privateDnsName;

  /// The private IPv4 address assigned to the instance.
  String? get privateIpAddress;

  /// The product codes attached to this instance, if applicable.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// \[IPv4 only\] The public DNS name assigned to the instance. This name is not available until the instance enters the `running` state. This name is only available if you've enabled DNS hostnames for your VPC.
  String? get publicDnsName;

  /// The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.
  ///
  /// A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.
  String? get publicIpAddress;

  /// The RAM disk associated with this instance, if applicable.
  String? get ramdiskId;

  /// The current state of the instance.
  InstanceState? get state;

  /// The reason for the most recent state transition. This might be an empty string.
  String? get stateTransitionReason;

  /// The ID of the subnet in which the instance is running.
  String? get subnetId;

  /// The ID of the VPC in which the instance is running.
  String? get vpcId;

  /// The architecture of the image.
  ArchitectureValues? get architecture;

  /// Any block device mapping entries for the instance.
  _i2.BuiltList<InstanceBlockDeviceMapping>? get blockDeviceMappings;

  /// The idempotency token you provided when you launched the instance, if applicable.
  String? get clientToken;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  bool get ebsOptimized;

  /// Specifies whether enhanced networking with ENA is enabled.
  bool get enaSupport;

  /// The hypervisor type of the instance. The value `xen` is used for both Xen and Nitro hypervisors.
  HypervisorType? get hypervisor;

  /// The IAM instance profile associated with the instance, if applicable.
  IamInstanceProfile? get iamInstanceProfile;

  /// Indicates whether this is a Spot Instance or a Scheduled Instance.
  InstanceLifecycleType? get instanceLifecycle;

  /// The Elastic GPU associated with the instance.
  _i2.BuiltList<ElasticGpuAssociation>? get elasticGpuAssociations;

  /// The elastic inference accelerator associated with the instance.
  _i2.BuiltList<ElasticInferenceAcceleratorAssociation>?
      get elasticInferenceAcceleratorAssociations;

  /// The network interfaces for the instance.
  _i2.BuiltList<InstanceNetworkInterface>? get networkInterfaces;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  String? get rootDeviceName;

  /// The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.
  DeviceType? get rootDeviceType;

  /// The security groups for the instance.
  _i2.BuiltList<GroupIdentifier>? get securityGroups;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// If the request is a Spot Instance request, the ID of the request.
  String? get spotInstanceRequestId;

  /// Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  String? get sriovNetSupport;

  /// The reason for the most recent state transition.
  StateReason? get stateReason;

  /// Any tags assigned to the instance.
  _i2.BuiltList<Tag>? get tags;

  /// The virtualization type of the instance.
  VirtualizationType? get virtualizationType;

  /// The CPU options for the instance.
  CpuOptions? get cpuOptions;

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// Information about the Capacity Reservation targeting option.
  CapacityReservationSpecificationResponse?
      get capacityReservationSpecification;

  /// Indicates whether the instance is enabled for hibernation.
  HibernationOptions? get hibernationOptions;

  /// The license configurations for the instance.
  _i2.BuiltList<LicenseConfiguration>? get licenses;

  /// The metadata options for the instance.
  InstanceMetadataOptionsResponse? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  EnclaveOptions? get enclaveOptions;

  /// The boot mode that was specified by the AMI. If the value is `uefi-preferred`, the AMI supports both UEFI and Legacy BIOS. The `currentInstanceBootMode` parameter is the boot mode that is used to boot the instance at launch or start.
  ///
  /// The operating system contained in the AMI must be configured to support the specified boot mode.
  ///
  /// For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  BootModeValues? get bootMode;

  /// The platform details value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get platformDetails;

  /// The usage operation value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get usageOperation;

  /// The time that the usage operation was last updated.
  DateTime? get usageOperationUpdateTime;

  /// The options for the instance hostname.
  PrivateDnsNameOptionsResponse? get privateDnsNameOptions;

  /// The IPv6 address assigned to the instance.
  String? get ipv6Address;

  /// If the instance is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the _Amazon EC2 User Guide_.
  String? get tpmSupport;

  /// Provides information on the recovery and maintenance options of your instance.
  InstanceMaintenanceOptions? get maintenanceOptions;

  /// The boot mode that is used to boot the instance at launch or start. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  InstanceBootModeValues? get currentInstanceBootMode;
  @override
  List<Object?> get props => [
        amiLaunchIndex,
        imageId,
        instanceId,
        instanceType,
        kernelId,
        keyName,
        launchTime,
        monitoring,
        placement,
        platform,
        privateDnsName,
        privateIpAddress,
        productCodes,
        publicDnsName,
        publicIpAddress,
        ramdiskId,
        state,
        stateTransitionReason,
        subnetId,
        vpcId,
        architecture,
        blockDeviceMappings,
        clientToken,
        ebsOptimized,
        enaSupport,
        hypervisor,
        iamInstanceProfile,
        instanceLifecycle,
        elasticGpuAssociations,
        elasticInferenceAcceleratorAssociations,
        networkInterfaces,
        outpostArn,
        rootDeviceName,
        rootDeviceType,
        securityGroups,
        sourceDestCheck,
        spotInstanceRequestId,
        sriovNetSupport,
        stateReason,
        tags,
        virtualizationType,
        cpuOptions,
        capacityReservationId,
        capacityReservationSpecification,
        hibernationOptions,
        licenses,
        metadataOptions,
        enclaveOptions,
        bootMode,
        platformDetails,
        usageOperation,
        usageOperationUpdateTime,
        privateDnsNameOptions,
        ipv6Address,
        tpmSupport,
        maintenanceOptions,
        currentInstanceBootMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Instance')
      ..add(
        'amiLaunchIndex',
        amiLaunchIndex,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'instanceType',
        instanceType,
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
        'launchTime',
        launchTime,
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
        'platform',
        platform,
      )
      ..add(
        'privateDnsName',
        privateDnsName,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'publicDnsName',
        publicDnsName,
      )
      ..add(
        'publicIpAddress',
        publicIpAddress,
      )
      ..add(
        'ramdiskId',
        ramdiskId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'stateTransitionReason',
        stateTransitionReason,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'architecture',
        architecture,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'enaSupport',
        enaSupport,
      )
      ..add(
        'hypervisor',
        hypervisor,
      )
      ..add(
        'iamInstanceProfile',
        iamInstanceProfile,
      )
      ..add(
        'instanceLifecycle',
        instanceLifecycle,
      )
      ..add(
        'elasticGpuAssociations',
        elasticGpuAssociations,
      )
      ..add(
        'elasticInferenceAcceleratorAssociations',
        elasticInferenceAcceleratorAssociations,
      )
      ..add(
        'networkInterfaces',
        networkInterfaces,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'rootDeviceName',
        rootDeviceName,
      )
      ..add(
        'rootDeviceType',
        rootDeviceType,
      )
      ..add(
        'securityGroups',
        securityGroups,
      )
      ..add(
        'sourceDestCheck',
        sourceDestCheck,
      )
      ..add(
        'spotInstanceRequestId',
        spotInstanceRequestId,
      )
      ..add(
        'sriovNetSupport',
        sriovNetSupport,
      )
      ..add(
        'stateReason',
        stateReason,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'virtualizationType',
        virtualizationType,
      )
      ..add(
        'cpuOptions',
        cpuOptions,
      )
      ..add(
        'capacityReservationId',
        capacityReservationId,
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
        'licenses',
        licenses,
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
        'bootMode',
        bootMode,
      )
      ..add(
        'platformDetails',
        platformDetails,
      )
      ..add(
        'usageOperation',
        usageOperation,
      )
      ..add(
        'usageOperationUpdateTime',
        usageOperationUpdateTime,
      )
      ..add(
        'privateDnsNameOptions',
        privateDnsNameOptions,
      )
      ..add(
        'ipv6Address',
        ipv6Address,
      )
      ..add(
        'tpmSupport',
        tpmSupport,
      )
      ..add(
        'maintenanceOptions',
        maintenanceOptions,
      )
      ..add(
        'currentInstanceBootMode',
        currentInstanceBootMode,
      );
    return helper.toString();
  }
}

class InstanceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Instance> {
  const InstanceEc2QuerySerializer() : super('Instance');

  @override
  Iterable<Type> get types => const [
        Instance,
        _$Instance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Instance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amiLaunchIndex':
          result.amiLaunchIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchTime':
          result.launchTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Monitoring),
          ) as Monitoring));
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Placement),
          ) as Placement));
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformValues),
          ) as PlatformValues);
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'productCodes':
          result.productCodes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ProductCode)],
            ),
          ) as _i2.BuiltList<ProductCode>));
        case 'dnsName':
          result.publicDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipAddress':
          result.publicIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceState':
          result.state.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceState),
          ) as InstanceState));
        case 'reason':
          result.stateTransitionReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(ArchitectureValues),
          ) as ArchitectureValues);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceBlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<InstanceBlockDeviceMapping>));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(HypervisorType),
          ) as HypervisorType);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IamInstanceProfile),
          ) as IamInstanceProfile));
        case 'instanceLifecycle':
          result.instanceLifecycle = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceLifecycleType),
          ) as InstanceLifecycleType);
        case 'elasticGpuAssociationSet':
          result.elasticGpuAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ElasticGpuAssociation)],
            ),
          ) as _i2.BuiltList<ElasticGpuAssociation>));
        case 'elasticInferenceAcceleratorAssociationSet':
          result.elasticInferenceAcceleratorAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ElasticInferenceAcceleratorAssociation)],
            ),
          ) as _i2.BuiltList<ElasticInferenceAcceleratorAssociation>));
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceNetworkInterface)],
            ),
          ) as _i2.BuiltList<InstanceNetworkInterface>));
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceName':
          result.rootDeviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceType':
          result.rootDeviceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceType),
          ) as DeviceType);
        case 'groupSet':
          result.securityGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'spotInstanceRequestId':
          result.spotInstanceRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sriovNetSupport':
          result.sriovNetSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stateReason':
          result.stateReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StateReason),
          ) as StateReason));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'virtualizationType':
          result.virtualizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VirtualizationType),
          ) as VirtualizationType);
        case 'cpuOptions':
          result.cpuOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CpuOptions),
          ) as CpuOptions));
        case 'capacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'capacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CapacityReservationSpecificationResponse),
          ) as CapacityReservationSpecificationResponse));
        case 'hibernationOptions':
          result.hibernationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(HibernationOptions),
          ) as HibernationOptions));
        case 'licenseSet':
          result.licenses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LicenseConfiguration)],
            ),
          ) as _i2.BuiltList<LicenseConfiguration>));
        case 'metadataOptions':
          result.metadataOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataOptionsResponse),
          ) as InstanceMetadataOptionsResponse));
        case 'enclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnclaveOptions),
          ) as EnclaveOptions));
        case 'bootMode':
          result.bootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(BootModeValues),
          ) as BootModeValues);
        case 'platformDetails':
          result.platformDetails = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usageOperation':
          result.usageOperation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usageOperationUpdateTime':
          result.usageOperationUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'privateDnsNameOptions':
          result.privateDnsNameOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PrivateDnsNameOptionsResponse),
          ) as PrivateDnsNameOptionsResponse));
        case 'ipv6Address':
          result.ipv6Address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tpmSupport':
          result.tpmSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maintenanceOptions':
          result.maintenanceOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMaintenanceOptions),
          ) as InstanceMaintenanceOptions));
        case 'currentInstanceBootMode':
          result.currentInstanceBootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceBootModeValues),
          ) as InstanceBootModeValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Instance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Instance(
      :amiLaunchIndex,
      :imageId,
      :instanceId,
      :instanceType,
      :kernelId,
      :keyName,
      :launchTime,
      :monitoring,
      :placement,
      :platform,
      :privateDnsName,
      :privateIpAddress,
      :productCodes,
      :publicDnsName,
      :publicIpAddress,
      :ramdiskId,
      :state,
      :stateTransitionReason,
      :subnetId,
      :vpcId,
      :architecture,
      :blockDeviceMappings,
      :clientToken,
      :ebsOptimized,
      :enaSupport,
      :hypervisor,
      :iamInstanceProfile,
      :instanceLifecycle,
      :elasticGpuAssociations,
      :elasticInferenceAcceleratorAssociations,
      :networkInterfaces,
      :outpostArn,
      :rootDeviceName,
      :rootDeviceType,
      :securityGroups,
      :sourceDestCheck,
      :spotInstanceRequestId,
      :sriovNetSupport,
      :stateReason,
      :tags,
      :virtualizationType,
      :cpuOptions,
      :capacityReservationId,
      :capacityReservationSpecification,
      :hibernationOptions,
      :licenses,
      :metadataOptions,
      :enclaveOptions,
      :bootMode,
      :platformDetails,
      :usageOperation,
      :usageOperationUpdateTime,
      :privateDnsNameOptions,
      :ipv6Address,
      :tpmSupport,
      :maintenanceOptions,
      :currentInstanceBootMode
    ) = object;
    result$
      ..add(const _i3.XmlElementName('AmiLaunchIndex'))
      ..add(serializers.serialize(
        amiLaunchIndex,
        specifiedType: const FullType(int),
      ));
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
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
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
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
    if (launchTime != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTime'))
        ..add(serializers.serialize(
          launchTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(Monitoring),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(Placement),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i3.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType(PlatformValues),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i3.XmlElementName('ProductCodes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ProductCode)],
          ),
        ));
    }
    if (publicDnsName != null) {
      result$
        ..add(const _i3.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          publicDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          publicIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i3.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceState'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(InstanceState),
        ));
    }
    if (stateTransitionReason != null) {
      result$
        ..add(const _i3.XmlElementName('Reason'))
        ..add(serializers.serialize(
          stateTransitionReason,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (architecture != null) {
      result$
        ..add(const _i3.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType(ArchitectureValues),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceBlockDeviceMapping)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('EnaSupport'))
      ..add(serializers.serialize(
        enaSupport,
        specifiedType: const FullType(bool),
      ));
    if (hypervisor != null) {
      result$
        ..add(const _i3.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType(HypervisorType),
        ));
    }
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(IamInstanceProfile),
        ));
    }
    if (instanceLifecycle != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceLifecycle'))
        ..add(serializers.serialize(
          instanceLifecycle,
          specifiedType: const FullType(InstanceLifecycleType),
        ));
    }
    if (elasticGpuAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ElasticGpuAssociation)],
          ),
        ));
    }
    if (elasticInferenceAcceleratorAssociations != null) {
      result$
        ..add(const _i3.XmlElementName(
            'ElasticInferenceAcceleratorAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticInferenceAcceleratorAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ElasticInferenceAcceleratorAssociation)],
          ),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceNetworkInterface)],
          ),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceName != null) {
      result$
        ..add(const _i3.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          rootDeviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceType != null) {
      result$
        ..add(const _i3.XmlElementName('RootDeviceType'))
        ..add(serializers.serialize(
          rootDeviceType,
          specifiedType: const FullType(DeviceType),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (spotInstanceRequestId != null) {
      result$
        ..add(const _i3.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          spotInstanceRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i3.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (stateReason != null) {
      result$
        ..add(const _i3.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          stateReason,
          specifiedType: const FullType(StateReason),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (virtualizationType != null) {
      result$
        ..add(const _i3.XmlElementName('VirtualizationType'))
        ..add(serializers.serialize(
          virtualizationType,
          specifiedType: const FullType(VirtualizationType),
        ));
    }
    if (cpuOptions != null) {
      result$
        ..add(const _i3.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          cpuOptions,
          specifiedType: const FullType(CpuOptions),
        ));
    }
    if (capacityReservationId != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType:
              const FullType(CapacityReservationSpecificationResponse),
        ));
    }
    if (hibernationOptions != null) {
      result$
        ..add(const _i3.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          hibernationOptions,
          specifiedType: const FullType(HibernationOptions),
        ));
    }
    if (licenses != null) {
      result$
        ..add(const _i3.XmlElementName('LicenseSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LicenseConfiguration)],
          ),
        ));
    }
    if (metadataOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          metadataOptions,
          specifiedType: const FullType(InstanceMetadataOptionsResponse),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i3.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(EnclaveOptions),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i3.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType(BootModeValues),
        ));
    }
    if (platformDetails != null) {
      result$
        ..add(const _i3.XmlElementName('PlatformDetails'))
        ..add(serializers.serialize(
          platformDetails,
          specifiedType: const FullType(String),
        ));
    }
    if (usageOperation != null) {
      result$
        ..add(const _i3.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          usageOperation,
          specifiedType: const FullType(String),
        ));
    }
    if (usageOperationUpdateTime != null) {
      result$
        ..add(const _i3.XmlElementName('UsageOperationUpdateTime'))
        ..add(serializers.serialize(
          usageOperationUpdateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (privateDnsNameOptions != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          privateDnsNameOptions,
          specifiedType: const FullType(PrivateDnsNameOptionsResponse),
        ));
    }
    if (ipv6Address != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          ipv6Address,
          specifiedType: const FullType(String),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i3.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (maintenanceOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          maintenanceOptions,
          specifiedType: const FullType(InstanceMaintenanceOptions),
        ));
    }
    if (currentInstanceBootMode != null) {
      result$
        ..add(const _i3.XmlElementName('CurrentInstanceBootMode'))
        ..add(serializers.serialize(
          currentInstanceBootMode,
          specifiedType: const FullType(InstanceBootModeValues),
        ));
    }
    return result$;
  }
}
