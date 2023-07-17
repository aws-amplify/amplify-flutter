// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.sort_order; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SortOrder extends _i1.SmithyEnum<SortOrder> {
  const SortOrder._(
    super.index,
    super.name,
    super.value,
  );

  const SortOrder._sdkUnknown(super.value) : super.sdkUnknown();

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
