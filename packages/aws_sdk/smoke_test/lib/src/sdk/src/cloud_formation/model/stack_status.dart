// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackStatus extends _i1.SmithyEnum<StackStatus> {
  const StackStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const createComplete = StackStatus._(
    0,
    'CREATE_COMPLETE',
    'CREATE_COMPLETE',
  );

  static const createFailed = StackStatus._(
    1,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = StackStatus._(
    2,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const deleteComplete = StackStatus._(
    3,
    'DELETE_COMPLETE',
    'DELETE_COMPLETE',
  );

  static const deleteFailed = StackStatus._(
    4,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = StackStatus._(
    5,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const importComplete = StackStatus._(
    6,
    'IMPORT_COMPLETE',
    'IMPORT_COMPLETE',
  );

  static const importInProgress = StackStatus._(
    7,
    'IMPORT_IN_PROGRESS',
    'IMPORT_IN_PROGRESS',
  );

  static const importRollbackComplete = StackStatus._(
    8,
    'IMPORT_ROLLBACK_COMPLETE',
    'IMPORT_ROLLBACK_COMPLETE',
  );

  static const importRollbackFailed = StackStatus._(
    9,
    'IMPORT_ROLLBACK_FAILED',
    'IMPORT_ROLLBACK_FAILED',
  );

  static const importRollbackInProgress = StackStatus._(
    10,
    'IMPORT_ROLLBACK_IN_PROGRESS',
    'IMPORT_ROLLBACK_IN_PROGRESS',
  );

  static const reviewInProgress = StackStatus._(
    11,
    'REVIEW_IN_PROGRESS',
    'REVIEW_IN_PROGRESS',
  );

  static const rollbackComplete = StackStatus._(
    12,
    'ROLLBACK_COMPLETE',
    'ROLLBACK_COMPLETE',
  );

  static const rollbackFailed = StackStatus._(
    13,
    'ROLLBACK_FAILED',
    'ROLLBACK_FAILED',
  );

  static const rollbackInProgress = StackStatus._(
    14,
    'ROLLBACK_IN_PROGRESS',
    'ROLLBACK_IN_PROGRESS',
  );

  static const updateComplete = StackStatus._(
    15,
    'UPDATE_COMPLETE',
    'UPDATE_COMPLETE',
  );

  static const updateCompleteCleanupInProgress = StackStatus._(
    16,
    'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS',
    'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS',
  );

  static const updateFailed = StackStatus._(
    17,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = StackStatus._(
    18,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateRollbackComplete = StackStatus._(
    19,
    'UPDATE_ROLLBACK_COMPLETE',
    'UPDATE_ROLLBACK_COMPLETE',
  );

  static const updateRollbackCompleteCleanupInProgress = StackStatus._(
    20,
    'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS',
    'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS',
  );

  static const updateRollbackFailed = StackStatus._(
    21,
    'UPDATE_ROLLBACK_FAILED',
    'UPDATE_ROLLBACK_FAILED',
  );

  static const updateRollbackInProgress = StackStatus._(
    22,
    'UPDATE_ROLLBACK_IN_PROGRESS',
    'UPDATE_ROLLBACK_IN_PROGRESS',
  );

  /// All values of [StackStatus].
  static const values = <StackStatus>[
    StackStatus.createComplete,
    StackStatus.createFailed,
    StackStatus.createInProgress,
    StackStatus.deleteComplete,
    StackStatus.deleteFailed,
    StackStatus.deleteInProgress,
    StackStatus.importComplete,
    StackStatus.importInProgress,
    StackStatus.importRollbackComplete,
    StackStatus.importRollbackFailed,
    StackStatus.importRollbackInProgress,
    StackStatus.reviewInProgress,
    StackStatus.rollbackComplete,
    StackStatus.rollbackFailed,
    StackStatus.rollbackInProgress,
    StackStatus.updateComplete,
    StackStatus.updateCompleteCleanupInProgress,
    StackStatus.updateFailed,
    StackStatus.updateInProgress,
    StackStatus.updateRollbackComplete,
    StackStatus.updateRollbackCompleteCleanupInProgress,
    StackStatus.updateRollbackFailed,
    StackStatus.updateRollbackInProgress,
  ];

  static const List<_i1.SmithySerializer<StackStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StackStatus',
      values: values,
      sdkUnknown: StackStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackStatusHelpers on List<StackStatus> {
  /// Returns the value of [StackStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackStatus] whose value matches [value].
  StackStatus byValue(String value) => firstWhere((el) => el.value == value);
}
