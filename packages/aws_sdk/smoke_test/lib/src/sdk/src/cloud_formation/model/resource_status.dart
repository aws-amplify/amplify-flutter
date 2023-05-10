// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.resource_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceStatus extends _i1.SmithyEnum<ResourceStatus> {
  const ResourceStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const createComplete = ResourceStatus._(
    0,
    'CREATE_COMPLETE',
    'CREATE_COMPLETE',
  );

  static const createFailed = ResourceStatus._(
    1,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = ResourceStatus._(
    2,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const deleteComplete = ResourceStatus._(
    3,
    'DELETE_COMPLETE',
    'DELETE_COMPLETE',
  );

  static const deleteFailed = ResourceStatus._(
    4,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = ResourceStatus._(
    5,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deleteSkipped = ResourceStatus._(
    6,
    'DELETE_SKIPPED',
    'DELETE_SKIPPED',
  );

  static const importComplete = ResourceStatus._(
    7,
    'IMPORT_COMPLETE',
    'IMPORT_COMPLETE',
  );

  static const importFailed = ResourceStatus._(
    8,
    'IMPORT_FAILED',
    'IMPORT_FAILED',
  );

  static const importInProgress = ResourceStatus._(
    9,
    'IMPORT_IN_PROGRESS',
    'IMPORT_IN_PROGRESS',
  );

  static const importRollbackComplete = ResourceStatus._(
    10,
    'IMPORT_ROLLBACK_COMPLETE',
    'IMPORT_ROLLBACK_COMPLETE',
  );

  static const importRollbackFailed = ResourceStatus._(
    11,
    'IMPORT_ROLLBACK_FAILED',
    'IMPORT_ROLLBACK_FAILED',
  );

  static const importRollbackInProgress = ResourceStatus._(
    12,
    'IMPORT_ROLLBACK_IN_PROGRESS',
    'IMPORT_ROLLBACK_IN_PROGRESS',
  );

  static const rollbackComplete = ResourceStatus._(
    13,
    'ROLLBACK_COMPLETE',
    'ROLLBACK_COMPLETE',
  );

  static const rollbackFailed = ResourceStatus._(
    14,
    'ROLLBACK_FAILED',
    'ROLLBACK_FAILED',
  );

  static const rollbackInProgress = ResourceStatus._(
    15,
    'ROLLBACK_IN_PROGRESS',
    'ROLLBACK_IN_PROGRESS',
  );

  static const updateComplete = ResourceStatus._(
    16,
    'UPDATE_COMPLETE',
    'UPDATE_COMPLETE',
  );

  static const updateFailed = ResourceStatus._(
    17,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = ResourceStatus._(
    18,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateRollbackComplete = ResourceStatus._(
    19,
    'UPDATE_ROLLBACK_COMPLETE',
    'UPDATE_ROLLBACK_COMPLETE',
  );

  static const updateRollbackFailed = ResourceStatus._(
    20,
    'UPDATE_ROLLBACK_FAILED',
    'UPDATE_ROLLBACK_FAILED',
  );

  static const updateRollbackInProgress = ResourceStatus._(
    21,
    'UPDATE_ROLLBACK_IN_PROGRESS',
    'UPDATE_ROLLBACK_IN_PROGRESS',
  );

  /// All values of [ResourceStatus].
  static const values = <ResourceStatus>[
    ResourceStatus.createComplete,
    ResourceStatus.createFailed,
    ResourceStatus.createInProgress,
    ResourceStatus.deleteComplete,
    ResourceStatus.deleteFailed,
    ResourceStatus.deleteInProgress,
    ResourceStatus.deleteSkipped,
    ResourceStatus.importComplete,
    ResourceStatus.importFailed,
    ResourceStatus.importInProgress,
    ResourceStatus.importRollbackComplete,
    ResourceStatus.importRollbackFailed,
    ResourceStatus.importRollbackInProgress,
    ResourceStatus.rollbackComplete,
    ResourceStatus.rollbackFailed,
    ResourceStatus.rollbackInProgress,
    ResourceStatus.updateComplete,
    ResourceStatus.updateFailed,
    ResourceStatus.updateInProgress,
    ResourceStatus.updateRollbackComplete,
    ResourceStatus.updateRollbackFailed,
    ResourceStatus.updateRollbackInProgress,
  ];

  static const List<_i1.SmithySerializer<ResourceStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceStatus',
      values: values,
      sdkUnknown: ResourceStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ResourceStatusHelpers on List<ResourceStatus> {
  /// Returns the value of [ResourceStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceStatus] whose value matches [value].
  ResourceStatus byValue(String value) => firstWhere((el) => el.value == value);
}
