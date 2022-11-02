// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_frequency; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InventoryFrequency extends _i1.SmithyEnum<InventoryFrequency> {
  const InventoryFrequency._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InventoryFrequency._sdkUnknown(String value) : super.sdkUnknown(value);

  static const daily = InventoryFrequency._(
    0,
    'Daily',
    'Daily',
  );

  static const weekly = InventoryFrequency._(
    1,
    'Weekly',
    'Weekly',
  );

  /// All values of [InventoryFrequency].
  static const values = <InventoryFrequency>[
    InventoryFrequency.daily,
    InventoryFrequency.weekly,
  ];

  static const List<_i1.SmithySerializer<InventoryFrequency>> serializers = [
    _i1.SmithyEnumSerializer(
      'InventoryFrequency',
      values: values,
      sdkUnknown: InventoryFrequency._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension InventoryFrequencyHelpers on List<InventoryFrequency> {
  /// Returns the value of [InventoryFrequency] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InventoryFrequency byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InventoryFrequency] whose value matches [value].
  InventoryFrequency byValue(String value) =>
      firstWhere((el) => el.value == value);
}
