// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeType extends _i1.SmithyEnum<VolumeType> {
  const VolumeType._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeType._sdkUnknown(super.value) : super.sdkUnknown();

  static const gp2 = VolumeType._(
    0,
    'gp2',
    'gp2',
  );

  static const gp3 = VolumeType._(
    1,
    'gp3',
    'gp3',
  );

  static const io1 = VolumeType._(
    2,
    'io1',
    'io1',
  );

  static const io2 = VolumeType._(
    3,
    'io2',
    'io2',
  );

  static const sc1 = VolumeType._(
    4,
    'sc1',
    'sc1',
  );

  static const st1 = VolumeType._(
    5,
    'st1',
    'st1',
  );

  static const standard = VolumeType._(
    6,
    'standard',
    'standard',
  );

  /// All values of [VolumeType].
  static const values = <VolumeType>[
    VolumeType.gp2,
    VolumeType.gp3,
    VolumeType.io1,
    VolumeType.io2,
    VolumeType.sc1,
    VolumeType.st1,
    VolumeType.standard,
  ];

  static const List<_i1.SmithySerializer<VolumeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'VolumeType',
      values: values,
      sdkUnknown: VolumeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeTypeHelpers on List<VolumeType> {
  /// Returns the value of [VolumeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeType] whose value matches [value].
  VolumeType byValue(String value) => firstWhere((el) => el.value == value);
}
