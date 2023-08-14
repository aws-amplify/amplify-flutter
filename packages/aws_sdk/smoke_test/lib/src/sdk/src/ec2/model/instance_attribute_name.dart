// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceAttributeName extends _i1.SmithyEnum<InstanceAttributeName> {
  const InstanceAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const blockDeviceMapping = InstanceAttributeName._(
    0,
    'blockDeviceMapping',
    'blockDeviceMapping',
  );

  static const disableApiStop = InstanceAttributeName._(
    1,
    'disableApiStop',
    'disableApiStop',
  );

  static const disableApiTermination = InstanceAttributeName._(
    2,
    'disableApiTermination',
    'disableApiTermination',
  );

  static const ebsOptimized = InstanceAttributeName._(
    3,
    'ebsOptimized',
    'ebsOptimized',
  );

  static const enaSupport = InstanceAttributeName._(
    4,
    'enaSupport',
    'enaSupport',
  );

  static const enclaveOptions = InstanceAttributeName._(
    5,
    'enclaveOptions',
    'enclaveOptions',
  );

  static const groupSet = InstanceAttributeName._(
    6,
    'groupSet',
    'groupSet',
  );

  static const instanceInitiatedShutdownBehavior = InstanceAttributeName._(
    7,
    'instanceInitiatedShutdownBehavior',
    'instanceInitiatedShutdownBehavior',
  );

  static const instanceType = InstanceAttributeName._(
    8,
    'instanceType',
    'instanceType',
  );

  static const kernel = InstanceAttributeName._(
    9,
    'kernel',
    'kernel',
  );

  static const productCodes = InstanceAttributeName._(
    10,
    'productCodes',
    'productCodes',
  );

  static const ramdisk = InstanceAttributeName._(
    11,
    'ramdisk',
    'ramdisk',
  );

  static const rootDeviceName = InstanceAttributeName._(
    12,
    'rootDeviceName',
    'rootDeviceName',
  );

  static const sourceDestCheck = InstanceAttributeName._(
    13,
    'sourceDestCheck',
    'sourceDestCheck',
  );

  static const sriovNetSupport = InstanceAttributeName._(
    14,
    'sriovNetSupport',
    'sriovNetSupport',
  );

  static const userData = InstanceAttributeName._(
    15,
    'userData',
    'userData',
  );

  /// All values of [InstanceAttributeName].
  static const values = <InstanceAttributeName>[
    InstanceAttributeName.blockDeviceMapping,
    InstanceAttributeName.disableApiStop,
    InstanceAttributeName.disableApiTermination,
    InstanceAttributeName.ebsOptimized,
    InstanceAttributeName.enaSupport,
    InstanceAttributeName.enclaveOptions,
    InstanceAttributeName.groupSet,
    InstanceAttributeName.instanceInitiatedShutdownBehavior,
    InstanceAttributeName.instanceType,
    InstanceAttributeName.kernel,
    InstanceAttributeName.productCodes,
    InstanceAttributeName.ramdisk,
    InstanceAttributeName.rootDeviceName,
    InstanceAttributeName.sourceDestCheck,
    InstanceAttributeName.sriovNetSupport,
    InstanceAttributeName.userData,
  ];

  static const List<_i1.SmithySerializer<InstanceAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceAttributeName',
      values: values,
      sdkUnknown: InstanceAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceAttributeNameHelpers on List<InstanceAttributeName> {
  /// Returns the value of [InstanceAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceAttributeName] whose value matches [value].
  InstanceAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
