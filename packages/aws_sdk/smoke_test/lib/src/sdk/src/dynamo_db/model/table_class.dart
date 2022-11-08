// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TableClass extends _i1.SmithyEnum<TableClass> {
  const TableClass._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TableClass._sdkUnknown(String value) : super.sdkUnknown(value);

  static const standard = TableClass._(
    0,
    'STANDARD',
    'STANDARD',
  );

  static const standardInfrequentAccess = TableClass._(
    1,
    'STANDARD_INFREQUENT_ACCESS',
    'STANDARD_INFREQUENT_ACCESS',
  );

  /// All values of [TableClass].
  static const values = <TableClass>[
    TableClass.standard,
    TableClass.standardInfrequentAccess,
  ];

  static const List<_i1.SmithySerializer<TableClass>> serializers = [
    _i1.SmithyEnumSerializer(
      'TableClass',
      values: values,
      sdkUnknown: TableClass._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension TableClassHelpers on List<TableClass> {
  /// Returns the value of [TableClass] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TableClass byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TableClass] whose value matches [value].
  TableClass byValue(String value) => firstWhere((el) => el.value == value);
}
