// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fast_snapshot_restore_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FastSnapshotRestoreStateCode
    extends _i1.SmithyEnum<FastSnapshotRestoreStateCode> {
  const FastSnapshotRestoreStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const FastSnapshotRestoreStateCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = FastSnapshotRestoreStateCode._(
    0,
    'disabled',
    'disabled',
  );

  static const disabling = FastSnapshotRestoreStateCode._(
    1,
    'disabling',
    'disabling',
  );

  static const enabled = FastSnapshotRestoreStateCode._(
    2,
    'enabled',
    'enabled',
  );

  static const enabling = FastSnapshotRestoreStateCode._(
    3,
    'enabling',
    'enabling',
  );

  static const optimizing = FastSnapshotRestoreStateCode._(
    4,
    'optimizing',
    'optimizing',
  );

  /// All values of [FastSnapshotRestoreStateCode].
  static const values = <FastSnapshotRestoreStateCode>[
    FastSnapshotRestoreStateCode.disabled,
    FastSnapshotRestoreStateCode.disabling,
    FastSnapshotRestoreStateCode.enabled,
    FastSnapshotRestoreStateCode.enabling,
    FastSnapshotRestoreStateCode.optimizing,
  ];

  static const List<_i1.SmithySerializer<FastSnapshotRestoreStateCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FastSnapshotRestoreStateCode',
      values: values,
      sdkUnknown: FastSnapshotRestoreStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FastSnapshotRestoreStateCodeHelpers
    on List<FastSnapshotRestoreStateCode> {
  /// Returns the value of [FastSnapshotRestoreStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FastSnapshotRestoreStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FastSnapshotRestoreStateCode] whose value matches [value].
  FastSnapshotRestoreStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
