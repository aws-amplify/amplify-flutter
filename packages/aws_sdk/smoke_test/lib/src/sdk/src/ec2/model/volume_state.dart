// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeState extends _i1.SmithyEnum<VolumeState> {
  const VolumeState._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = VolumeState._(
    0,
    'available',
    'available',
  );

  static const creating = VolumeState._(
    1,
    'creating',
    'creating',
  );

  static const deleted = VolumeState._(
    2,
    'deleted',
    'deleted',
  );

  static const deleting = VolumeState._(
    3,
    'deleting',
    'deleting',
  );

  static const error = VolumeState._(
    4,
    'error',
    'error',
  );

  static const inUse = VolumeState._(
    5,
    'in_use',
    'in-use',
  );

  /// All values of [VolumeState].
  static const values = <VolumeState>[
    VolumeState.available,
    VolumeState.creating,
    VolumeState.deleted,
    VolumeState.deleting,
    VolumeState.error,
    VolumeState.inUse,
  ];

  static const List<_i1.SmithySerializer<VolumeState>> serializers = [
    _i1.SmithyEnumSerializer(
      'VolumeState',
      values: values,
      sdkUnknown: VolumeState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeStateHelpers on List<VolumeState> {
  /// Returns the value of [VolumeState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeState] whose value matches [value].
  VolumeState byValue(String value) => firstWhere((el) => el.value == value);
}
