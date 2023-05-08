// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_set_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeSetStatus extends _i1.SmithyEnum<ChangeSetStatus> {
  const ChangeSetStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChangeSetStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const createComplete = ChangeSetStatus._(
    0,
    'CREATE_COMPLETE',
    'CREATE_COMPLETE',
  );

  static const createInProgress = ChangeSetStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const createPending = ChangeSetStatus._(
    2,
    'CREATE_PENDING',
    'CREATE_PENDING',
  );

  static const deleteComplete = ChangeSetStatus._(
    3,
    'DELETE_COMPLETE',
    'DELETE_COMPLETE',
  );

  static const deleteFailed = ChangeSetStatus._(
    4,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = ChangeSetStatus._(
    5,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deletePending = ChangeSetStatus._(
    6,
    'DELETE_PENDING',
    'DELETE_PENDING',
  );

  static const failed = ChangeSetStatus._(
    7,
    'FAILED',
    'FAILED',
  );

  /// All values of [ChangeSetStatus].
  static const values = <ChangeSetStatus>[
    ChangeSetStatus.createComplete,
    ChangeSetStatus.createInProgress,
    ChangeSetStatus.createPending,
    ChangeSetStatus.deleteComplete,
    ChangeSetStatus.deleteFailed,
    ChangeSetStatus.deleteInProgress,
    ChangeSetStatus.deletePending,
    ChangeSetStatus.failed,
  ];

  static const List<_i1.SmithySerializer<ChangeSetStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeSetStatus',
      values: values,
      sdkUnknown: ChangeSetStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeSetStatusHelpers on List<ChangeSetStatus> {
  /// Returns the value of [ChangeSetStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeSetStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeSetStatus] whose value matches [value].
  ChangeSetStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
