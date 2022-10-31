// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.sort_order; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SortOrder extends _i1.SmithyEnum<SortOrder> {
  const SortOrder._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SortOrder._sdkUnknown(String value) : super.sdkUnknown(value);

  static const ascending = SortOrder._(
    0,
    'ASCENDING',
    'ASCENDING',
  );

  static const descending = SortOrder._(
    1,
    'DESCENDING',
    'DESCENDING',
  );

  /// All values of [SortOrder].
  static const values = <SortOrder>[
    SortOrder.ascending,
    SortOrder.descending,
  ];

  static const List<_i1.SmithySerializer<SortOrder>> serializers = [
    _i1.SmithyEnumSerializer(
      'SortOrder',
      values: values,
      sdkUnknown: SortOrder._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension SortOrderHelpers on List<SortOrder> {
  /// Returns the value of [SortOrder] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SortOrder byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SortOrder] whose value matches [value].
  SortOrder byValue(String value) => firstWhere((el) => el.value == value);
}
