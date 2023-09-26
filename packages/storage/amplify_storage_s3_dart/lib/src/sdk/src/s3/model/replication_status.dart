// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.replication_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicationStatus extends _i1.SmithyEnum<ReplicationStatus> {
  const ReplicationStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ReplicationStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const complete = ReplicationStatus._(
    0,
    'COMPLETE',
    'COMPLETE',
  );

  static const completed = ReplicationStatus._(
    1,
    'COMPLETED',
    'COMPLETED',
  );

  static const failed = ReplicationStatus._(
    2,
    'FAILED',
    'FAILED',
  );

  static const pending = ReplicationStatus._(
    3,
    'PENDING',
    'PENDING',
  );

  static const replica = ReplicationStatus._(
    4,
    'REPLICA',
    'REPLICA',
  );

  /// All values of [ReplicationStatus].
  static const values = <ReplicationStatus>[
    ReplicationStatus.complete,
    ReplicationStatus.completed,
    ReplicationStatus.failed,
    ReplicationStatus.pending,
    ReplicationStatus.replica,
  ];

  static const List<_i1.SmithySerializer<ReplicationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReplicationStatus',
      values: values,
      sdkUnknown: ReplicationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ReplicationStatusHelpers on List<ReplicationStatus> {
  /// Returns the value of [ReplicationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplicationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplicationStatus] whose value matches [value].
  ReplicationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
