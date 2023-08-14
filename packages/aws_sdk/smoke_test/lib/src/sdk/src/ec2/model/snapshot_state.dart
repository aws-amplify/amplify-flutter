// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SnapshotState extends _i1.SmithyEnum<SnapshotState> {
  const SnapshotState._(
    super.index,
    super.name,
    super.value,
  );

  const SnapshotState._sdkUnknown(super.value) : super.sdkUnknown();

  static const completed = SnapshotState._(
    0,
    'completed',
    'completed',
  );

  static const error = SnapshotState._(
    1,
    'error',
    'error',
  );

  static const pending = SnapshotState._(
    2,
    'pending',
    'pending',
  );

  static const recoverable = SnapshotState._(
    3,
    'recoverable',
    'recoverable',
  );

  static const recovering = SnapshotState._(
    4,
    'recovering',
    'recovering',
  );

  /// All values of [SnapshotState].
  static const values = <SnapshotState>[
    SnapshotState.completed,
    SnapshotState.error,
    SnapshotState.pending,
    SnapshotState.recoverable,
    SnapshotState.recovering,
  ];

  static const List<_i1.SmithySerializer<SnapshotState>> serializers = [
    _i1.SmithyEnumSerializer(
      'SnapshotState',
      values: values,
      sdkUnknown: SnapshotState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SnapshotStateHelpers on List<SnapshotState> {
  /// Returns the value of [SnapshotState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SnapshotState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SnapshotState] whose value matches [value].
  SnapshotState byValue(String value) => firstWhere((el) => el.value == value);
}
