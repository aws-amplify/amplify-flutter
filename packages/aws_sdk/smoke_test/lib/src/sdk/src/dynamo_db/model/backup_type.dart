// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.backup_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BackupType extends _i1.SmithyEnum<BackupType> {
  const BackupType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BackupType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const awsBackup = BackupType._(
    0,
    'AWS_BACKUP',
    'AWS_BACKUP',
  );

  static const system = BackupType._(
    1,
    'SYSTEM',
    'SYSTEM',
  );

  static const user = BackupType._(
    2,
    'USER',
    'USER',
  );

  /// All values of [BackupType].
  static const values = <BackupType>[
    BackupType.awsBackup,
    BackupType.system,
    BackupType.user,
  ];

  static const List<_i1.SmithySerializer<BackupType>> serializers = [
    _i1.SmithyEnumSerializer(
      'BackupType',
      values: values,
      sdkUnknown: BackupType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension BackupTypeHelpers on List<BackupType> {
  /// Returns the value of [BackupType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BackupType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BackupType] whose value matches [value].
  BackupType byValue(String value) => firstWhere((el) => el.value == value);
}
