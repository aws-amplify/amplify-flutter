// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_requirements_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_manufacturer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mi_b_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bare_metal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/burstable_performance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_manufacturer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_generation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mi_b_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_bandwidth_gbps_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range_request.dart';

part 'instance_requirements_request.g.dart';

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
abstract class InstanceRequirementsRequest
    with _i1.AWSEquatable<InstanceRequirementsRequest>
    implements
        Built<InstanceRequirementsRequest, InstanceRequirementsRequestBuilder> {
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
  factory InstanceRequirementsRequest({
    VCpuCountRangeRequest? vCpuCount,
    MemoryMiBRequest? memoryMib,
    List<CpuManufacturer>? cpuManufacturers,
    MemoryGiBPerVCpuRequest? memoryGiBPerVCpu,
    List<String>? excludedInstanceTypes,
    List<InstanceGeneration>? instanceGenerations,
    int? spotMaxPricePercentageOverLowestPrice,
    int? onDemandMaxPricePercentageOverLowestPrice,
    BareMetal? bareMetal,
    BurstablePerformance? burstablePerformance,
    bool? requireHibernateSupport,
    NetworkInterfaceCountRequest? networkInterfaceCount,
    LocalStorage? localStorage,
    List<LocalStorageType>? localStorageTypes,
    TotalLocalStorageGbRequest? totalLocalStorageGb,
    BaselineEbsBandwidthMbpsRequest? baselineEbsBandwidthMbps,
    List<AcceleratorType>? acceleratorTypes,
    AcceleratorCountRequest? acceleratorCount,
    List<AcceleratorManufacturer>? acceleratorManufacturers,
    List<AcceleratorName>? acceleratorNames,
    AcceleratorTotalMemoryMiBRequest? acceleratorTotalMemoryMib,
    NetworkBandwidthGbpsRequest? networkBandwidthGbps,
    List<String>? allowedInstanceTypes,
  }) {
    spotMaxPricePercentageOverLowestPrice ??= 0;
    onDemandMaxPricePercentageOverLowestPrice ??= 0;
    requireHibernateSupport ??= false;
    return _$InstanceRequirementsRequest._(
      vCpuCount: vCpuCount,
      memoryMib: memoryMib,
      cpuManufacturers:
          cpuManufacturers == null ? null : _i2.BuiltList(cpuManufacturers),
      memoryGiBPerVCpu: memoryGiBPerVCpu,
      excludedInstanceTypes: excludedInstanceTypes == null
          ? null
          : _i2.BuiltList(excludedInstanceTypes),
      instanceGenerations: instanceGenerations == null
          ? null
          : _i2.BuiltList(instanceGenerations),
      spotMaxPricePercentageOverLowestPrice:
          spotMaxPricePercentageOverLowestPrice,
      onDemandMaxPricePercentageOverLowestPrice:
          onDemandMaxPricePercentageOverLowestPrice,
      bareMetal: bareMetal,
      burstablePerformance: burstablePerformance,
      requireHibernateSupport: requireHibernateSupport,
      networkInterfaceCount: networkInterfaceCount,
      localStorage: localStorage,
      localStorageTypes:
          localStorageTypes == null ? null : _i2.BuiltList(localStorageTypes),
      totalLocalStorageGb: totalLocalStorageGb,
      baselineEbsBandwidthMbps: baselineEbsBandwidthMbps,
      acceleratorTypes:
          acceleratorTypes == null ? null : _i2.BuiltList(acceleratorTypes),
      acceleratorCount: acceleratorCount,
      acceleratorManufacturers: acceleratorManufacturers == null
          ? null
          : _i2.BuiltList(acceleratorManufacturers),
      acceleratorNames:
          acceleratorNames == null ? null : _i2.BuiltList(acceleratorNames),
      acceleratorTotalMemoryMib: acceleratorTotalMemoryMib,
      networkBandwidthGbps: networkBandwidthGbps,
      allowedInstanceTypes: allowedInstanceTypes == null
          ? null
          : _i2.BuiltList(allowedInstanceTypes),
    );
  }

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
  factory InstanceRequirementsRequest.build(
          [void Function(InstanceRequirementsRequestBuilder) updates]) =
      _$InstanceRequirementsRequest;

  const InstanceRequirementsRequest._();

  static const List<_i3.SmithySerializer<InstanceRequirementsRequest>>
      serializers = [InstanceRequirementsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceRequirementsRequestBuilder b) {
    b
      ..spotMaxPricePercentageOverLowestPrice = 0
      ..onDemandMaxPricePercentageOverLowestPrice = 0
      ..requireHibernateSupport = false;
  }

  /// The minimum and maximum number of vCPUs.
  VCpuCountRangeRequest? get vCpuCount;

  /// The minimum and maximum amount of memory, in MiB.
  MemoryMiBRequest? get memoryMib;

  /// The CPU manufacturers to include.
  ///
  /// *   For instance types with Intel CPUs, specify `intel`.
  ///
  /// *   For instance types with AMD CPUs, specify `amd`.
  ///
  /// *   For instance types with Amazon Web Services CPUs, specify `amazon-web-services`.
  ///
  ///
  /// Don't confuse the CPU manufacturer with the CPU architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  ///
  /// Default: Any manufacturer
  _i2.BuiltList<CpuManufacturer>? get cpuManufacturers;

  /// The minimum and maximum amount of memory per vCPU, in GiB.
  ///
  /// Default: No minimum or maximum limits
  MemoryGiBPerVCpuRequest? get memoryGiBPerVCpu;

  /// The instance types to exclude.
  ///
  /// You can use strings with one or more wild cards, represented by an asterisk (`*`), to exclude an instance family, type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`.
  ///
  /// For example, if you specify `c5*`,Amazon EC2 will exclude the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, Amazon EC2 will exclude all the M5a instance types, but not the M5n instance types.
  ///
  /// If you specify `ExcludedInstanceTypes`, you can't specify `AllowedInstanceTypes`.
  ///
  /// Default: No excluded instance types
  _i2.BuiltList<String>? get excludedInstanceTypes;

  /// Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Current generation instance types are typically the latest two to three generations in each instance family. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  ///
  /// For current generation instance types, specify `current`.
  ///
  /// For previous generation instance types, specify `previous`.
  ///
  /// Default: Current and previous generation instance types
  _i2.BuiltList<InstanceGeneration>? get instanceGenerations;

  /// The price protection threshold for Spot Instance. This is the maximum you’ll pay for an Spot Instance, expressed as a percentage above the least expensive current generation M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
  ///
  /// The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
  ///
  /// To turn off price protection, specify a high value, such as `999999`.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html) and [GetInstanceTypesFromInstanceRequirements](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).
  ///
  /// If you set `TargetCapacityUnitType` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  ///
  /// Default: `100`
  int get spotMaxPricePercentageOverLowestPrice;

  /// The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage above the least expensive current generation M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
  ///
  /// The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
  ///
  /// To turn off price protection, specify a high value, such as `999999`.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html) and [GetInstanceTypesFromInstanceRequirements](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).
  ///
  /// If you set `TargetCapacityUnitType` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  ///
  /// Default: `20`
  int get onDemandMaxPricePercentageOverLowestPrice;

  /// Indicates whether bare metal instance types must be included, excluded, or required.
  ///
  /// *   To include bare metal instance types, specify `included`.
  ///
  /// *   To require only bare metal instance types, specify `required`.
  ///
  /// *   To exclude bare metal instance types, specify `excluded`.
  ///
  ///
  /// Default: `excluded`
  BareMetal? get bareMetal;

  /// Indicates whether burstable performance T instance types are included, excluded, or required. For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html).
  ///
  /// *   To include burstable performance instance types, specify `included`.
  ///
  /// *   To require only burstable performance instance types, specify `required`.
  ///
  /// *   To exclude burstable performance instance types, specify `excluded`.
  ///
  ///
  /// Default: `excluded`
  BurstablePerformance? get burstablePerformance;

  /// Indicates whether instance types must support hibernation for On-Demand Instances.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html).
  ///
  /// Default: `false`
  bool get requireHibernateSupport;

  /// The minimum and maximum number of network interfaces.
  ///
  /// Default: No minimum or maximum limits
  NetworkInterfaceCountRequest? get networkInterfaceCount;

  /// Indicates whether instance types with instance store volumes are included, excluded, or required. For more information, [Amazon EC2 instance store](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html) in the _Amazon EC2 User Guide_.
  ///
  /// *   To include instance types with instance store volumes, specify `included`.
  ///
  /// *   To require only instance types with instance store volumes, specify `required`.
  ///
  /// *   To exclude instance types with instance store volumes, specify `excluded`.
  ///
  ///
  /// Default: `included`
  LocalStorage? get localStorage;

  /// The type of local storage that is required.
  ///
  /// *   For instance types with hard disk drive (HDD) storage, specify `hdd`.
  ///
  /// *   For instance types with solid state drive (SSD) storage, specify `ssd`.
  ///
  ///
  /// Default: `hdd` and `ssd`
  _i2.BuiltList<LocalStorageType>? get localStorageTypes;

  /// The minimum and maximum amount of total local storage, in GB.
  ///
  /// Default: No minimum or maximum limits
  TotalLocalStorageGbRequest? get totalLocalStorageGb;

  /// The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see [Amazon EBS–optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: No minimum or maximum limits
  BaselineEbsBandwidthMbpsRequest? get baselineEbsBandwidthMbps;

  /// The accelerator types that must be on the instance type.
  ///
  /// *   To include instance types with GPU hardware, specify `gpu`.
  ///
  /// *   To include instance types with FPGA hardware, specify `fpga`.
  ///
  /// *   To include instance types with inference hardware, specify `inference`.
  ///
  ///
  /// Default: Any accelerator type
  _i2.BuiltList<AcceleratorType>? get acceleratorTypes;

  /// The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia chips) on an instance.
  ///
  /// To exclude accelerator-enabled instance types, set `Max` to `0`.
  ///
  /// Default: No minimum or maximum limits
  AcceleratorCountRequest? get acceleratorCount;

  /// Indicates whether instance types must have accelerators by specific manufacturers.
  ///
  /// *   For instance types with NVIDIA devices, specify `nvidia`.
  ///
  /// *   For instance types with AMD devices, specify `amd`.
  ///
  /// *   For instance types with Amazon Web Services devices, specify `amazon-web-services`.
  ///
  /// *   For instance types with Xilinx devices, specify `xilinx`.
  ///
  ///
  /// Default: Any manufacturer
  _i2.BuiltList<AcceleratorManufacturer>? get acceleratorManufacturers;

  /// The accelerators that must be on the instance type.
  ///
  /// *   For instance types with NVIDIA A100 GPUs, specify `a100`.
  ///
  /// *   For instance types with NVIDIA V100 GPUs, specify `v100`.
  ///
  /// *   For instance types with NVIDIA K80 GPUs, specify `k80`.
  ///
  /// *   For instance types with NVIDIA T4 GPUs, specify `t4`.
  ///
  /// *   For instance types with NVIDIA M60 GPUs, specify `m60`.
  ///
  /// *   For instance types with AMD Radeon Pro V520 GPUs, specify `radeon-pro-v520`.
  ///
  /// *   For instance types with Xilinx VU9P FPGAs, specify `vu9p`.
  ///
  /// *   For instance types with Amazon Web Services Inferentia chips, specify `inferentia`.
  ///
  /// *   For instance types with NVIDIA GRID K520 GPUs, specify `k520`.
  ///
  ///
  /// Default: Any accelerator
  _i2.BuiltList<AcceleratorName>? get acceleratorNames;

  /// The minimum and maximum amount of total accelerator memory, in MiB.
  ///
  /// Default: No minimum or maximum limits
  AcceleratorTotalMemoryMiBRequest? get acceleratorTotalMemoryMib;

  /// The minimum and maximum amount of baseline network bandwidth, in gigabits per second (Gbps). For more information, see [Amazon EC2 instance network bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: No minimum or maximum limits
  NetworkBandwidthGbpsRequest? get networkBandwidthGbps;

  /// The instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes.
  ///
  /// You can use strings with one or more wild cards, represented by an asterisk (`*`), to allow an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`.
  ///
  /// For example, if you specify `c5*`,Amazon EC2 will allow the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, Amazon EC2 will allow all the M5a instance types, but not the M5n instance types.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  ///
  /// Default: All instance types
  _i2.BuiltList<String>? get allowedInstanceTypes;
  @override
  List<Object?> get props => [
        vCpuCount,
        memoryMib,
        cpuManufacturers,
        memoryGiBPerVCpu,
        excludedInstanceTypes,
        instanceGenerations,
        spotMaxPricePercentageOverLowestPrice,
        onDemandMaxPricePercentageOverLowestPrice,
        bareMetal,
        burstablePerformance,
        requireHibernateSupport,
        networkInterfaceCount,
        localStorage,
        localStorageTypes,
        totalLocalStorageGb,
        baselineEbsBandwidthMbps,
        acceleratorTypes,
        acceleratorCount,
        acceleratorManufacturers,
        acceleratorNames,
        acceleratorTotalMemoryMib,
        networkBandwidthGbps,
        allowedInstanceTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceRequirementsRequest')
      ..add(
        'vCpuCount',
        vCpuCount,
      )
      ..add(
        'memoryMib',
        memoryMib,
      )
      ..add(
        'cpuManufacturers',
        cpuManufacturers,
      )
      ..add(
        'memoryGiBPerVCpu',
        memoryGiBPerVCpu,
      )
      ..add(
        'excludedInstanceTypes',
        excludedInstanceTypes,
      )
      ..add(
        'instanceGenerations',
        instanceGenerations,
      )
      ..add(
        'spotMaxPricePercentageOverLowestPrice',
        spotMaxPricePercentageOverLowestPrice,
      )
      ..add(
        'onDemandMaxPricePercentageOverLowestPrice',
        onDemandMaxPricePercentageOverLowestPrice,
      )
      ..add(
        'bareMetal',
        bareMetal,
      )
      ..add(
        'burstablePerformance',
        burstablePerformance,
      )
      ..add(
        'requireHibernateSupport',
        requireHibernateSupport,
      )
      ..add(
        'networkInterfaceCount',
        networkInterfaceCount,
      )
      ..add(
        'localStorage',
        localStorage,
      )
      ..add(
        'localStorageTypes',
        localStorageTypes,
      )
      ..add(
        'totalLocalStorageGb',
        totalLocalStorageGb,
      )
      ..add(
        'baselineEbsBandwidthMbps',
        baselineEbsBandwidthMbps,
      )
      ..add(
        'acceleratorTypes',
        acceleratorTypes,
      )
      ..add(
        'acceleratorCount',
        acceleratorCount,
      )
      ..add(
        'acceleratorManufacturers',
        acceleratorManufacturers,
      )
      ..add(
        'acceleratorNames',
        acceleratorNames,
      )
      ..add(
        'acceleratorTotalMemoryMib',
        acceleratorTotalMemoryMib,
      )
      ..add(
        'networkBandwidthGbps',
        networkBandwidthGbps,
      )
      ..add(
        'allowedInstanceTypes',
        allowedInstanceTypes,
      );
    return helper.toString();
  }
}

class InstanceRequirementsRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceRequirementsRequest> {
  const InstanceRequirementsRequestEc2QuerySerializer()
      : super('InstanceRequirementsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceRequirementsRequest,
        _$InstanceRequirementsRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceRequirementsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceRequirementsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VCpuCount':
          result.vCpuCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VCpuCountRangeRequest),
          ) as VCpuCountRangeRequest));
        case 'MemoryMiB':
          result.memoryMib.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(MemoryMiBRequest),
          ) as MemoryMiBRequest));
        case 'CpuManufacturer':
          result.cpuManufacturers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CpuManufacturer)],
            ),
          ) as _i2.BuiltList<CpuManufacturer>));
        case 'MemoryGiBPerVCpu':
          result.memoryGiBPerVCpu.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(MemoryGiBPerVCpuRequest),
          ) as MemoryGiBPerVCpuRequest));
        case 'ExcludedInstanceType':
          result.excludedInstanceTypes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'InstanceGeneration':
          result.instanceGenerations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceGeneration)],
            ),
          ) as _i2.BuiltList<InstanceGeneration>));
        case 'SpotMaxPricePercentageOverLowestPrice':
          result.spotMaxPricePercentageOverLowestPrice =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'OnDemandMaxPricePercentageOverLowestPrice':
          result.onDemandMaxPricePercentageOverLowestPrice =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'BareMetal':
          result.bareMetal = (serializers.deserialize(
            value,
            specifiedType: const FullType(BareMetal),
          ) as BareMetal);
        case 'BurstablePerformance':
          result.burstablePerformance = (serializers.deserialize(
            value,
            specifiedType: const FullType(BurstablePerformance),
          ) as BurstablePerformance);
        case 'RequireHibernateSupport':
          result.requireHibernateSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NetworkInterfaceCount':
          result.networkInterfaceCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceCountRequest),
          ) as NetworkInterfaceCountRequest));
        case 'LocalStorage':
          result.localStorage = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocalStorage),
          ) as LocalStorage);
        case 'LocalStorageType':
          result.localStorageTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalStorageType)],
            ),
          ) as _i2.BuiltList<LocalStorageType>));
        case 'TotalLocalStorageGB':
          result.totalLocalStorageGb.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TotalLocalStorageGbRequest),
          ) as TotalLocalStorageGbRequest));
        case 'BaselineEbsBandwidthMbps':
          result.baselineEbsBandwidthMbps.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BaselineEbsBandwidthMbpsRequest),
          ) as BaselineEbsBandwidthMbpsRequest));
        case 'AcceleratorType':
          result.acceleratorTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AcceleratorType)],
            ),
          ) as _i2.BuiltList<AcceleratorType>));
        case 'AcceleratorCount':
          result.acceleratorCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AcceleratorCountRequest),
          ) as AcceleratorCountRequest));
        case 'AcceleratorManufacturer':
          result.acceleratorManufacturers
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AcceleratorManufacturer)],
            ),
          ) as _i2.BuiltList<AcceleratorManufacturer>));
        case 'AcceleratorName':
          result.acceleratorNames.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AcceleratorName)],
            ),
          ) as _i2.BuiltList<AcceleratorName>));
        case 'AcceleratorTotalMemoryMiB':
          result.acceleratorTotalMemoryMib.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AcceleratorTotalMemoryMiBRequest),
          ) as AcceleratorTotalMemoryMiBRequest));
        case 'NetworkBandwidthGbps':
          result.networkBandwidthGbps.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkBandwidthGbpsRequest),
          ) as NetworkBandwidthGbpsRequest));
        case 'AllowedInstanceType':
          result.allowedInstanceTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceRequirementsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceRequirementsRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceRequirementsRequest(
      :vCpuCount,
      :memoryMib,
      :cpuManufacturers,
      :memoryGiBPerVCpu,
      :excludedInstanceTypes,
      :instanceGenerations,
      :spotMaxPricePercentageOverLowestPrice,
      :onDemandMaxPricePercentageOverLowestPrice,
      :bareMetal,
      :burstablePerformance,
      :requireHibernateSupport,
      :networkInterfaceCount,
      :localStorage,
      :localStorageTypes,
      :totalLocalStorageGb,
      :baselineEbsBandwidthMbps,
      :acceleratorTypes,
      :acceleratorCount,
      :acceleratorManufacturers,
      :acceleratorNames,
      :acceleratorTotalMemoryMib,
      :networkBandwidthGbps,
      :allowedInstanceTypes
    ) = object;
    if (vCpuCount != null) {
      result$
        ..add(const _i3.XmlElementName('VCpuCount'))
        ..add(serializers.serialize(
          vCpuCount,
          specifiedType: const FullType(VCpuCountRangeRequest),
        ));
    }
    if (memoryMib != null) {
      result$
        ..add(const _i3.XmlElementName('MemoryMiB'))
        ..add(serializers.serialize(
          memoryMib,
          specifiedType: const FullType(MemoryMiBRequest),
        ));
    }
    if (cpuManufacturers != null) {
      result$
        ..add(const _i3.XmlElementName('CpuManufacturer'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cpuManufacturers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(CpuManufacturer)],
          ),
        ));
    }
    if (memoryGiBPerVCpu != null) {
      result$
        ..add(const _i3.XmlElementName('MemoryGiBPerVCpu'))
        ..add(serializers.serialize(
          memoryGiBPerVCpu,
          specifiedType: const FullType(MemoryGiBPerVCpuRequest),
        ));
    }
    if (excludedInstanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('ExcludedInstanceType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          excludedInstanceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceGenerations != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceGeneration'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceGenerations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceGeneration)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('SpotMaxPricePercentageOverLowestPrice'))
      ..add(serializers.serialize(
        spotMaxPricePercentageOverLowestPrice,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(
          const _i3.XmlElementName('OnDemandMaxPricePercentageOverLowestPrice'))
      ..add(serializers.serialize(
        onDemandMaxPricePercentageOverLowestPrice,
        specifiedType: const FullType(int),
      ));
    if (bareMetal != null) {
      result$
        ..add(const _i3.XmlElementName('BareMetal'))
        ..add(serializers.serialize(
          bareMetal,
          specifiedType: const FullType(BareMetal),
        ));
    }
    if (burstablePerformance != null) {
      result$
        ..add(const _i3.XmlElementName('BurstablePerformance'))
        ..add(serializers.serialize(
          burstablePerformance,
          specifiedType: const FullType(BurstablePerformance),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('RequireHibernateSupport'))
      ..add(serializers.serialize(
        requireHibernateSupport,
        specifiedType: const FullType(bool),
      ));
    if (networkInterfaceCount != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceCount'))
        ..add(serializers.serialize(
          networkInterfaceCount,
          specifiedType: const FullType(NetworkInterfaceCountRequest),
        ));
    }
    if (localStorage != null) {
      result$
        ..add(const _i3.XmlElementName('LocalStorage'))
        ..add(serializers.serialize(
          localStorage,
          specifiedType: const FullType(LocalStorage),
        ));
    }
    if (localStorageTypes != null) {
      result$
        ..add(const _i3.XmlElementName('LocalStorageType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localStorageTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LocalStorageType)],
          ),
        ));
    }
    if (totalLocalStorageGb != null) {
      result$
        ..add(const _i3.XmlElementName('TotalLocalStorageGB'))
        ..add(serializers.serialize(
          totalLocalStorageGb,
          specifiedType: const FullType(TotalLocalStorageGbRequest),
        ));
    }
    if (baselineEbsBandwidthMbps != null) {
      result$
        ..add(const _i3.XmlElementName('BaselineEbsBandwidthMbps'))
        ..add(serializers.serialize(
          baselineEbsBandwidthMbps,
          specifiedType: const FullType(BaselineEbsBandwidthMbpsRequest),
        ));
    }
    if (acceleratorTypes != null) {
      result$
        ..add(const _i3.XmlElementName('AcceleratorType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          acceleratorTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AcceleratorType)],
          ),
        ));
    }
    if (acceleratorCount != null) {
      result$
        ..add(const _i3.XmlElementName('AcceleratorCount'))
        ..add(serializers.serialize(
          acceleratorCount,
          specifiedType: const FullType(AcceleratorCountRequest),
        ));
    }
    if (acceleratorManufacturers != null) {
      result$
        ..add(const _i3.XmlElementName('AcceleratorManufacturer'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          acceleratorManufacturers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AcceleratorManufacturer)],
          ),
        ));
    }
    if (acceleratorNames != null) {
      result$
        ..add(const _i3.XmlElementName('AcceleratorName'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          acceleratorNames,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AcceleratorName)],
          ),
        ));
    }
    if (acceleratorTotalMemoryMib != null) {
      result$
        ..add(const _i3.XmlElementName('AcceleratorTotalMemoryMiB'))
        ..add(serializers.serialize(
          acceleratorTotalMemoryMib,
          specifiedType: const FullType(AcceleratorTotalMemoryMiBRequest),
        ));
    }
    if (networkBandwidthGbps != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkBandwidthGbps'))
        ..add(serializers.serialize(
          networkBandwidthGbps,
          specifiedType: const FullType(NetworkBandwidthGbpsRequest),
        ));
    }
    if (allowedInstanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('AllowedInstanceType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allowedInstanceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
