// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.backup_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BackupStatus extends _i1.SmithyEnum<BackupStatus> {
  const BackupStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BackupStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = BackupStatus._(
    0,
    'AVAILABLE',
    'AVAILABLE',
  );

  static const creating = BackupStatus._(
    1,
    'CREATING',
    'CREATING',
  );

  static const deleted = BackupStatus._(
    2,
    'DELETED',
    'DELETED',
  );

  /// All values of [BackupStatus].
  static const values = <BackupStatus>[
    BackupStatus.available,
    BackupStatus.creating,
    BackupStatus.deleted,
  ];

  static const List<_i1.SmithySerializer<BackupStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'BackupStatus',
      values: values,
      sdkUnknown: BackupStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension BackupStatusHelpers on List<BackupStatus> {
  /// Returns the value of [BackupStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BackupStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BackupStatus] whose value matches [value].
  BackupStatus byValue(String value) => firstWhere((el) => el.value == value);
}
