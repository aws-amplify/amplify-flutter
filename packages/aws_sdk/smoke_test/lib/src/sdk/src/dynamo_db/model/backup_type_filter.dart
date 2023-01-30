// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.backup_type_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BackupTypeFilter extends _i1.SmithyEnum<BackupTypeFilter> {
  const BackupTypeFilter._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BackupTypeFilter._sdkUnknown(String value) : super.sdkUnknown(value);

  static const all = BackupTypeFilter._(
    0,
    'ALL',
    'ALL',
  );

  static const awsBackup = BackupTypeFilter._(
    1,
    'AWS_BACKUP',
    'AWS_BACKUP',
  );

  static const system = BackupTypeFilter._(
    2,
    'SYSTEM',
    'SYSTEM',
  );

  static const user = BackupTypeFilter._(
    3,
    'USER',
    'USER',
  );

  /// All values of [BackupTypeFilter].
  static const values = <BackupTypeFilter>[
    BackupTypeFilter.all,
    BackupTypeFilter.awsBackup,
    BackupTypeFilter.system,
    BackupTypeFilter.user,
  ];

  static const List<_i1.SmithySerializer<BackupTypeFilter>> serializers = [
    _i1.SmithyEnumSerializer(
      'BackupTypeFilter',
      values: values,
      sdkUnknown: BackupTypeFilter._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension BackupTypeFilterHelpers on List<BackupTypeFilter> {
  /// Returns the value of [BackupTypeFilter] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BackupTypeFilter byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BackupTypeFilter] whose value matches [value].
  BackupTypeFilter byValue(String value) =>
      firstWhere((el) => el.value == value);
}
