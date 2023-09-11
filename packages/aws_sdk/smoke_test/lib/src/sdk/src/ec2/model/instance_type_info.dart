// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_type_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/inference_accelerator_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_hypervisor.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_enclaves_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_tpm_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_tpm_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/processor_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/root_device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/usage_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart';

part 'instance_type_info.g.dart';

/// Describes the instance type.
abstract class InstanceTypeInfo
    with _i1.AWSEquatable<InstanceTypeInfo>
    implements Built<InstanceTypeInfo, InstanceTypeInfoBuilder> {
  /// Describes the instance type.
  factory InstanceTypeInfo({
    InstanceType? instanceType,
    bool? currentGeneration,
    bool? freeTierEligible,
    List<UsageClassType>? supportedUsageClasses,
    List<RootDeviceType>? supportedRootDeviceTypes,
    List<VirtualizationType>? supportedVirtualizationTypes,
    bool? bareMetal,
    InstanceTypeHypervisor? hypervisor,
    ProcessorInfo? processorInfo,
    VCpuInfo? vCpuInfo,
    MemoryInfo? memoryInfo,
    bool? instanceStorageSupported,
    InstanceStorageInfo? instanceStorageInfo,
    EbsInfo? ebsInfo,
    NetworkInfo? networkInfo,
    GpuInfo? gpuInfo,
    FpgaInfo? fpgaInfo,
    PlacementGroupInfo? placementGroupInfo,
    InferenceAcceleratorInfo? inferenceAcceleratorInfo,
    bool? hibernationSupported,
    bool? burstablePerformanceSupported,
    bool? dedicatedHostsSupported,
    bool? autoRecoverySupported,
    List<BootModeType>? supportedBootModes,
    NitroEnclavesSupport? nitroEnclavesSupport,
    NitroTpmSupport? nitroTpmSupport,
    NitroTpmInfo? nitroTpmInfo,
  }) {
    return _$InstanceTypeInfo._(
      instanceType: instanceType,
      currentGeneration: currentGeneration,
      freeTierEligible: freeTierEligible,
      supportedUsageClasses: supportedUsageClasses == null
          ? null
          : _i2.BuiltList(supportedUsageClasses),
      supportedRootDeviceTypes: supportedRootDeviceTypes == null
          ? null
          : _i2.BuiltList(supportedRootDeviceTypes),
      supportedVirtualizationTypes: supportedVirtualizationTypes == null
          ? null
          : _i2.BuiltList(supportedVirtualizationTypes),
      bareMetal: bareMetal,
      hypervisor: hypervisor,
      processorInfo: processorInfo,
      vCpuInfo: vCpuInfo,
      memoryInfo: memoryInfo,
      instanceStorageSupported: instanceStorageSupported,
      instanceStorageInfo: instanceStorageInfo,
      ebsInfo: ebsInfo,
      networkInfo: networkInfo,
      gpuInfo: gpuInfo,
      fpgaInfo: fpgaInfo,
      placementGroupInfo: placementGroupInfo,
      inferenceAcceleratorInfo: inferenceAcceleratorInfo,
      hibernationSupported: hibernationSupported,
      burstablePerformanceSupported: burstablePerformanceSupported,
      dedicatedHostsSupported: dedicatedHostsSupported,
      autoRecoverySupported: autoRecoverySupported,
      supportedBootModes:
          supportedBootModes == null ? null : _i2.BuiltList(supportedBootModes),
      nitroEnclavesSupport: nitroEnclavesSupport,
      nitroTpmSupport: nitroTpmSupport,
      nitroTpmInfo: nitroTpmInfo,
    );
  }

  /// Describes the instance type.
  factory InstanceTypeInfo.build(
      [void Function(InstanceTypeInfoBuilder) updates]) = _$InstanceTypeInfo;

  const InstanceTypeInfo._();

  static const List<_i3.SmithySerializer<InstanceTypeInfo>> serializers = [
    InstanceTypeInfoEc2QuerySerializer()
  ];

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  InstanceType? get instanceType;

  /// Indicates whether the instance type is current generation.
  bool? get currentGeneration;

  /// Indicates whether the instance type is eligible for the free tier.
  bool? get freeTierEligible;

  /// Indicates whether the instance type is offered for spot or On-Demand.
  _i2.BuiltList<UsageClassType>? get supportedUsageClasses;

  /// The supported root device types.
  _i2.BuiltList<RootDeviceType>? get supportedRootDeviceTypes;

  /// The supported virtualization types.
  _i2.BuiltList<VirtualizationType>? get supportedVirtualizationTypes;

  /// Indicates whether the instance is a bare metal instance type.
  bool? get bareMetal;

  /// The hypervisor for the instance type.
  InstanceTypeHypervisor? get hypervisor;

  /// Describes the processor.
  ProcessorInfo? get processorInfo;

  /// Describes the vCPU configurations for the instance type.
  VCpuInfo? get vCpuInfo;

  /// Describes the memory for the instance type.
  MemoryInfo? get memoryInfo;

  /// Indicates whether instance storage is supported.
  bool? get instanceStorageSupported;

  /// Describes the instance storage for the instance type.
  InstanceStorageInfo? get instanceStorageInfo;

  /// Describes the Amazon EBS settings for the instance type.
  EbsInfo? get ebsInfo;

  /// Describes the network settings for the instance type.
  NetworkInfo? get networkInfo;

  /// Describes the GPU accelerator settings for the instance type.
  GpuInfo? get gpuInfo;

  /// Describes the FPGA accelerator settings for the instance type.
  FpgaInfo? get fpgaInfo;

  /// Describes the placement group settings for the instance type.
  PlacementGroupInfo? get placementGroupInfo;

  /// Describes the Inference accelerator settings for the instance type.
  InferenceAcceleratorInfo? get inferenceAcceleratorInfo;

  /// Indicates whether On-Demand hibernation is supported.
  bool? get hibernationSupported;

  /// Indicates whether the instance type is a burstable performance T instance type. For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html).
  bool? get burstablePerformanceSupported;

  /// Indicates whether Dedicated Hosts are supported on the instance type.
  bool? get dedicatedHostsSupported;

  /// Indicates whether Amazon CloudWatch action based recovery is supported.
  bool? get autoRecoverySupported;

  /// The supported boot modes. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  _i2.BuiltList<BootModeType>? get supportedBootModes;

  /// Indicates whether Nitro Enclaves is supported.
  NitroEnclavesSupport? get nitroEnclavesSupport;

  /// Indicates whether NitroTPM is supported.
  NitroTpmSupport? get nitroTpmSupport;

  /// Describes the supported NitroTPM versions for the instance type.
  NitroTpmInfo? get nitroTpmInfo;
  @override
  List<Object?> get props => [
        instanceType,
        currentGeneration,
        freeTierEligible,
        supportedUsageClasses,
        supportedRootDeviceTypes,
        supportedVirtualizationTypes,
        bareMetal,
        hypervisor,
        processorInfo,
        vCpuInfo,
        memoryInfo,
        instanceStorageSupported,
        instanceStorageInfo,
        ebsInfo,
        networkInfo,
        gpuInfo,
        fpgaInfo,
        placementGroupInfo,
        inferenceAcceleratorInfo,
        hibernationSupported,
        burstablePerformanceSupported,
        dedicatedHostsSupported,
        autoRecoverySupported,
        supportedBootModes,
        nitroEnclavesSupport,
        nitroTpmSupport,
        nitroTpmInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceTypeInfo')
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'currentGeneration',
        currentGeneration,
      )
      ..add(
        'freeTierEligible',
        freeTierEligible,
      )
      ..add(
        'supportedUsageClasses',
        supportedUsageClasses,
      )
      ..add(
        'supportedRootDeviceTypes',
        supportedRootDeviceTypes,
      )
      ..add(
        'supportedVirtualizationTypes',
        supportedVirtualizationTypes,
      )
      ..add(
        'bareMetal',
        bareMetal,
      )
      ..add(
        'hypervisor',
        hypervisor,
      )
      ..add(
        'processorInfo',
        processorInfo,
      )
      ..add(
        'vCpuInfo',
        vCpuInfo,
      )
      ..add(
        'memoryInfo',
        memoryInfo,
      )
      ..add(
        'instanceStorageSupported',
        instanceStorageSupported,
      )
      ..add(
        'instanceStorageInfo',
        instanceStorageInfo,
      )
      ..add(
        'ebsInfo',
        ebsInfo,
      )
      ..add(
        'networkInfo',
        networkInfo,
      )
      ..add(
        'gpuInfo',
        gpuInfo,
      )
      ..add(
        'fpgaInfo',
        fpgaInfo,
      )
      ..add(
        'placementGroupInfo',
        placementGroupInfo,
      )
      ..add(
        'inferenceAcceleratorInfo',
        inferenceAcceleratorInfo,
      )
      ..add(
        'hibernationSupported',
        hibernationSupported,
      )
      ..add(
        'burstablePerformanceSupported',
        burstablePerformanceSupported,
      )
      ..add(
        'dedicatedHostsSupported',
        dedicatedHostsSupported,
      )
      ..add(
        'autoRecoverySupported',
        autoRecoverySupported,
      )
      ..add(
        'supportedBootModes',
        supportedBootModes,
      )
      ..add(
        'nitroEnclavesSupport',
        nitroEnclavesSupport,
      )
      ..add(
        'nitroTpmSupport',
        nitroTpmSupport,
      )
      ..add(
        'nitroTpmInfo',
        nitroTpmInfo,
      );
    return helper.toString();
  }
}

class InstanceTypeInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceTypeInfo> {
  const InstanceTypeInfoEc2QuerySerializer() : super('InstanceTypeInfo');

  @override
  Iterable<Type> get types => const [
        InstanceTypeInfo,
        _$InstanceTypeInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTypeInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTypeInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'currentGeneration':
          result.currentGeneration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'freeTierEligible':
          result.freeTierEligible = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'supportedUsageClasses':
          result.supportedUsageClasses
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UsageClassType)],
            ),
          ) as _i2.BuiltList<UsageClassType>));
        case 'supportedRootDeviceTypes':
          result.supportedRootDeviceTypes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RootDeviceType)],
            ),
          ) as _i2.BuiltList<RootDeviceType>));
        case 'supportedVirtualizationTypes':
          result.supportedVirtualizationTypes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VirtualizationType)],
            ),
          ) as _i2.BuiltList<VirtualizationType>));
        case 'bareMetal':
          result.bareMetal = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceTypeHypervisor),
          ) as InstanceTypeHypervisor);
        case 'processorInfo':
          result.processorInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProcessorInfo),
          ) as ProcessorInfo));
        case 'vCpuInfo':
          result.vCpuInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VCpuInfo),
          ) as VCpuInfo));
        case 'memoryInfo':
          result.memoryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(MemoryInfo),
          ) as MemoryInfo));
        case 'instanceStorageSupported':
          result.instanceStorageSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceStorageInfo':
          result.instanceStorageInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStorageInfo),
          ) as InstanceStorageInfo));
        case 'ebsInfo':
          result.ebsInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EbsInfo),
          ) as EbsInfo));
        case 'networkInfo':
          result.networkInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInfo),
          ) as NetworkInfo));
        case 'gpuInfo':
          result.gpuInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(GpuInfo),
          ) as GpuInfo));
        case 'fpgaInfo':
          result.fpgaInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FpgaInfo),
          ) as FpgaInfo));
        case 'placementGroupInfo':
          result.placementGroupInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementGroupInfo),
          ) as PlacementGroupInfo));
        case 'inferenceAcceleratorInfo':
          result.inferenceAcceleratorInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InferenceAcceleratorInfo),
          ) as InferenceAcceleratorInfo));
        case 'hibernationSupported':
          result.hibernationSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'burstablePerformanceSupported':
          result.burstablePerformanceSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dedicatedHostsSupported':
          result.dedicatedHostsSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'autoRecoverySupported':
          result.autoRecoverySupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'supportedBootModes':
          result.supportedBootModes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(BootModeType)],
            ),
          ) as _i2.BuiltList<BootModeType>));
        case 'nitroEnclavesSupport':
          result.nitroEnclavesSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(NitroEnclavesSupport),
          ) as NitroEnclavesSupport);
        case 'nitroTpmSupport':
          result.nitroTpmSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(NitroTpmSupport),
          ) as NitroTpmSupport);
        case 'nitroTpmInfo':
          result.nitroTpmInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NitroTpmInfo),
          ) as NitroTpmInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceTypeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceTypeInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceTypeInfo(
      :instanceType,
      :currentGeneration,
      :freeTierEligible,
      :supportedUsageClasses,
      :supportedRootDeviceTypes,
      :supportedVirtualizationTypes,
      :bareMetal,
      :hypervisor,
      :processorInfo,
      :vCpuInfo,
      :memoryInfo,
      :instanceStorageSupported,
      :instanceStorageInfo,
      :ebsInfo,
      :networkInfo,
      :gpuInfo,
      :fpgaInfo,
      :placementGroupInfo,
      :inferenceAcceleratorInfo,
      :hibernationSupported,
      :burstablePerformanceSupported,
      :dedicatedHostsSupported,
      :autoRecoverySupported,
      :supportedBootModes,
      :nitroEnclavesSupport,
      :nitroTpmSupport,
      :nitroTpmInfo
    ) = object;
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    if (currentGeneration != null) {
      result$
        ..add(const _i3.XmlElementName('CurrentGeneration'))
        ..add(serializers.serialize(
          currentGeneration,
          specifiedType: const FullType(bool),
        ));
    }
    if (freeTierEligible != null) {
      result$
        ..add(const _i3.XmlElementName('FreeTierEligible'))
        ..add(serializers.serialize(
          freeTierEligible,
          specifiedType: const FullType(bool),
        ));
    }
    if (supportedUsageClasses != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedUsageClasses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedUsageClasses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(UsageClassType)],
          ),
        ));
    }
    if (supportedRootDeviceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedRootDeviceTypes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedRootDeviceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RootDeviceType)],
          ),
        ));
    }
    if (supportedVirtualizationTypes != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedVirtualizationTypes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedVirtualizationTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VirtualizationType)],
          ),
        ));
    }
    if (bareMetal != null) {
      result$
        ..add(const _i3.XmlElementName('BareMetal'))
        ..add(serializers.serialize(
          bareMetal,
          specifiedType: const FullType(bool),
        ));
    }
    if (hypervisor != null) {
      result$
        ..add(const _i3.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType(InstanceTypeHypervisor),
        ));
    }
    if (processorInfo != null) {
      result$
        ..add(const _i3.XmlElementName('ProcessorInfo'))
        ..add(serializers.serialize(
          processorInfo,
          specifiedType: const FullType(ProcessorInfo),
        ));
    }
    if (vCpuInfo != null) {
      result$
        ..add(const _i3.XmlElementName('VCpuInfo'))
        ..add(serializers.serialize(
          vCpuInfo,
          specifiedType: const FullType(VCpuInfo),
        ));
    }
    if (memoryInfo != null) {
      result$
        ..add(const _i3.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          memoryInfo,
          specifiedType: const FullType(MemoryInfo),
        ));
    }
    if (instanceStorageSupported != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceStorageSupported'))
        ..add(serializers.serialize(
          instanceStorageSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (instanceStorageInfo != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceStorageInfo'))
        ..add(serializers.serialize(
          instanceStorageInfo,
          specifiedType: const FullType(InstanceStorageInfo),
        ));
    }
    if (ebsInfo != null) {
      result$
        ..add(const _i3.XmlElementName('EbsInfo'))
        ..add(serializers.serialize(
          ebsInfo,
          specifiedType: const FullType(EbsInfo),
        ));
    }
    if (networkInfo != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInfo'))
        ..add(serializers.serialize(
          networkInfo,
          specifiedType: const FullType(NetworkInfo),
        ));
    }
    if (gpuInfo != null) {
      result$
        ..add(const _i3.XmlElementName('GpuInfo'))
        ..add(serializers.serialize(
          gpuInfo,
          specifiedType: const FullType(GpuInfo),
        ));
    }
    if (fpgaInfo != null) {
      result$
        ..add(const _i3.XmlElementName('FpgaInfo'))
        ..add(serializers.serialize(
          fpgaInfo,
          specifiedType: const FullType(FpgaInfo),
        ));
    }
    if (placementGroupInfo != null) {
      result$
        ..add(const _i3.XmlElementName('PlacementGroupInfo'))
        ..add(serializers.serialize(
          placementGroupInfo,
          specifiedType: const FullType(PlacementGroupInfo),
        ));
    }
    if (inferenceAcceleratorInfo != null) {
      result$
        ..add(const _i3.XmlElementName('InferenceAcceleratorInfo'))
        ..add(serializers.serialize(
          inferenceAcceleratorInfo,
          specifiedType: const FullType(InferenceAcceleratorInfo),
        ));
    }
    if (hibernationSupported != null) {
      result$
        ..add(const _i3.XmlElementName('HibernationSupported'))
        ..add(serializers.serialize(
          hibernationSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (burstablePerformanceSupported != null) {
      result$
        ..add(const _i3.XmlElementName('BurstablePerformanceSupported'))
        ..add(serializers.serialize(
          burstablePerformanceSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (dedicatedHostsSupported != null) {
      result$
        ..add(const _i3.XmlElementName('DedicatedHostsSupported'))
        ..add(serializers.serialize(
          dedicatedHostsSupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (autoRecoverySupported != null) {
      result$
        ..add(const _i3.XmlElementName('AutoRecoverySupported'))
        ..add(serializers.serialize(
          autoRecoverySupported,
          specifiedType: const FullType(bool),
        ));
    }
    if (supportedBootModes != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedBootModes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedBootModes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(BootModeType)],
          ),
        ));
    }
    if (nitroEnclavesSupport != null) {
      result$
        ..add(const _i3.XmlElementName('NitroEnclavesSupport'))
        ..add(serializers.serialize(
          nitroEnclavesSupport,
          specifiedType: const FullType(NitroEnclavesSupport),
        ));
    }
    if (nitroTpmSupport != null) {
      result$
        ..add(const _i3.XmlElementName('NitroTpmSupport'))
        ..add(serializers.serialize(
          nitroTpmSupport,
          specifiedType: const FullType(NitroTpmSupport),
        ));
    }
    if (nitroTpmInfo != null) {
      result$
        ..add(const _i3.XmlElementName('NitroTpmInfo'))
        ..add(serializers.serialize(
          nitroTpmInfo,
          specifiedType: const FullType(NitroTpmInfo),
        ));
    }
    return result$;
  }
}
