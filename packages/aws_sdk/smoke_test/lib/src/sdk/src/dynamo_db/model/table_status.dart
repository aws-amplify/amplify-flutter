// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TableStatus extends _i1.SmithyEnum<TableStatus> {
  const TableStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TableStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = TableStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const archived = TableStatus._(
    1,
    'ARCHIVED',
    'ARCHIVED',
  );

  static const archiving = TableStatus._(
    2,
    'ARCHIVING',
    'ARCHIVING',
  );

  static const creating = TableStatus._(
    3,
    'CREATING',
    'CREATING',
  );

  static const deleting = TableStatus._(
    4,
    'DELETING',
    'DELETING',
  );

  static const inaccessibleEncryptionCredentials = TableStatus._(
    5,
    'INACCESSIBLE_ENCRYPTION_CREDENTIALS',
    'INACCESSIBLE_ENCRYPTION_CREDENTIALS',
  );

  static const updating = TableStatus._(
    6,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [TableStatus].
  static const values = <TableStatus>[
    TableStatus.active,
    TableStatus.archived,
    TableStatus.archiving,
    TableStatus.creating,
    TableStatus.deleting,
    TableStatus.inaccessibleEncryptionCredentials,
    TableStatus.updating,
  ];

  static const List<_i1.SmithySerializer<TableStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'TableStatus',
      values: values,
      sdkUnknown: TableStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension TableStatusHelpers on List<TableStatus> {
  /// Returns the value of [TableStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TableStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TableStatus] whose value matches [value].
  TableStatus byValue(String value) => firstWhere((el) => el.value == value);
}
