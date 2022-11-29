// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.inventory_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InventoryFormat extends _i1.SmithyEnum<InventoryFormat> {
  const InventoryFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InventoryFormat._sdkUnknown(String value) : super.sdkUnknown(value);

  static const csv = InventoryFormat._(
    0,
    'CSV',
    'CSV',
  );

  static const orc = InventoryFormat._(
    1,
    'ORC',
    'ORC',
  );

  static const parquet = InventoryFormat._(
    2,
    'Parquet',
    'Parquet',
  );

  /// All values of [InventoryFormat].
  static const values = <InventoryFormat>[
    InventoryFormat.csv,
    InventoryFormat.orc,
    InventoryFormat.parquet,
  ];

  static const List<_i1.SmithySerializer<InventoryFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'InventoryFormat',
      values: values,
      sdkUnknown: InventoryFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension InventoryFormatHelpers on List<InventoryFormat> {
  /// Returns the value of [InventoryFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InventoryFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InventoryFormat] whose value matches [value].
  InventoryFormat byValue(String value) =>
      firstWhere((el) => el.value == value);
}
