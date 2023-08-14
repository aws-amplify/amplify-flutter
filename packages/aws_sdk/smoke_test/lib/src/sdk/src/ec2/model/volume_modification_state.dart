// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_modification_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeModificationState extends _i1.SmithyEnum<VolumeModificationState> {
  const VolumeModificationState._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeModificationState._sdkUnknown(super.value) : super.sdkUnknown();

  static const completed = VolumeModificationState._(
    0,
    'completed',
    'completed',
  );

  static const failed = VolumeModificationState._(
    1,
    'failed',
    'failed',
  );

  static const modifying = VolumeModificationState._(
    2,
    'modifying',
    'modifying',
  );

  static const optimizing = VolumeModificationState._(
    3,
    'optimizing',
    'optimizing',
  );

  /// All values of [VolumeModificationState].
  static const values = <VolumeModificationState>[
    VolumeModificationState.completed,
    VolumeModificationState.failed,
    VolumeModificationState.modifying,
    VolumeModificationState.optimizing,
  ];

  static const List<_i1.SmithySerializer<VolumeModificationState>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'VolumeModificationState',
      values: values,
      sdkUnknown: VolumeModificationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeModificationStateHelpers on List<VolumeModificationState> {
  /// Returns the value of [VolumeModificationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeModificationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeModificationState] whose value matches [value].
  VolumeModificationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
