// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicaStatus extends _i1.SmithyEnum<ReplicaStatus> {
  const ReplicaStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReplicaStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = ReplicaStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const creating = ReplicaStatus._(
    1,
    'CREATING',
    'CREATING',
  );

  static const creationFailed = ReplicaStatus._(
    2,
    'CREATION_FAILED',
    'CREATION_FAILED',
  );

  static const deleting = ReplicaStatus._(
    3,
    'DELETING',
    'DELETING',
  );

  static const inaccessibleEncryptionCredentials = ReplicaStatus._(
    4,
    'INACCESSIBLE_ENCRYPTION_CREDENTIALS',
    'INACCESSIBLE_ENCRYPTION_CREDENTIALS',
  );

  static const regionDisabled = ReplicaStatus._(
    5,
    'REGION_DISABLED',
    'REGION_DISABLED',
  );

  static const updating = ReplicaStatus._(
    6,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [ReplicaStatus].
  static const values = <ReplicaStatus>[
    ReplicaStatus.active,
    ReplicaStatus.creating,
    ReplicaStatus.creationFailed,
    ReplicaStatus.deleting,
    ReplicaStatus.inaccessibleEncryptionCredentials,
    ReplicaStatus.regionDisabled,
    ReplicaStatus.updating,
  ];

  static const List<_i1.SmithySerializer<ReplicaStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReplicaStatus',
      values: values,
      sdkUnknown: ReplicaStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ReplicaStatusHelpers on List<ReplicaStatus> {
  /// Returns the value of [ReplicaStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplicaStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplicaStatus] whose value matches [value].
  ReplicaStatus byValue(String value) => firstWhere((el) => el.value == value);
}
