// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.replication_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicationStatus extends _i1.SmithyEnum<ReplicationStatus> {
  const ReplicationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReplicationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const complete = ReplicationStatus._(
    0,
    'COMPLETE',
    'COMPLETE',
  );

  static const failed = ReplicationStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const pending = ReplicationStatus._(
    2,
    'PENDING',
    'PENDING',
  );

  static const replica = ReplicationStatus._(
    3,
    'REPLICA',
    'REPLICA',
  );

  /// All values of [ReplicationStatus].
  static const values = <ReplicationStatus>[
    ReplicationStatus.complete,
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
