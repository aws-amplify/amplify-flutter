// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.tiering_operation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TieringOperationStatus extends _i1.SmithyEnum<TieringOperationStatus> {
  const TieringOperationStatus._(
    super.index,
    super.name,
    super.value,
  );

  const TieringOperationStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const archivalCompleted = TieringOperationStatus._(
    0,
    'archival_completed',
    'archival-completed',
  );

  static const archivalFailed = TieringOperationStatus._(
    1,
    'archival_failed',
    'archival-failed',
  );

  static const archivalInProgress = TieringOperationStatus._(
    2,
    'archival_in_progress',
    'archival-in-progress',
  );

  static const permanentRestoreCompleted = TieringOperationStatus._(
    3,
    'permanent_restore_completed',
    'permanent-restore-completed',
  );

  static const permanentRestoreFailed = TieringOperationStatus._(
    4,
    'permanent_restore_failed',
    'permanent-restore-failed',
  );

  static const permanentRestoreInProgress = TieringOperationStatus._(
    5,
    'permanent_restore_in_progress',
    'permanent-restore-in-progress',
  );

  static const temporaryRestoreCompleted = TieringOperationStatus._(
    6,
    'temporary_restore_completed',
    'temporary-restore-completed',
  );

  static const temporaryRestoreFailed = TieringOperationStatus._(
    7,
    'temporary_restore_failed',
    'temporary-restore-failed',
  );

  static const temporaryRestoreInProgress = TieringOperationStatus._(
    8,
    'temporary_restore_in_progress',
    'temporary-restore-in-progress',
  );

  /// All values of [TieringOperationStatus].
  static const values = <TieringOperationStatus>[
    TieringOperationStatus.archivalCompleted,
    TieringOperationStatus.archivalFailed,
    TieringOperationStatus.archivalInProgress,
    TieringOperationStatus.permanentRestoreCompleted,
    TieringOperationStatus.permanentRestoreFailed,
    TieringOperationStatus.permanentRestoreInProgress,
    TieringOperationStatus.temporaryRestoreCompleted,
    TieringOperationStatus.temporaryRestoreFailed,
    TieringOperationStatus.temporaryRestoreInProgress,
  ];

  static const List<_i1.SmithySerializer<TieringOperationStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TieringOperationStatus',
      values: values,
      sdkUnknown: TieringOperationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TieringOperationStatusHelpers on List<TieringOperationStatus> {
  /// Returns the value of [TieringOperationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TieringOperationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TieringOperationStatus] whose value matches [value].
  TieringOperationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
