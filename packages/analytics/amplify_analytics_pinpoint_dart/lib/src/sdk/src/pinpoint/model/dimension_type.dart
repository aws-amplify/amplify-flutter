// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.dimension_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DimensionType extends _i1.SmithyEnum<DimensionType> {
  const DimensionType._(super.index, super.name, super.value);

  const DimensionType._sdkUnknown(super.value) : super.sdkUnknown();

  static const exclusive = DimensionType._(0, 'EXCLUSIVE', 'EXCLUSIVE');

  static const inclusive = DimensionType._(1, 'INCLUSIVE', 'INCLUSIVE');

  /// All values of [DimensionType].
  static const values = <DimensionType>[
    DimensionType.exclusive,
    DimensionType.inclusive,
  ];

  static const List<_i1.SmithySerializer<DimensionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DimensionType',
      values: values,
      sdkUnknown: DimensionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
      ],
    ),
  ];
}

extension DimensionTypeHelpers on List<DimensionType> {
  /// Returns the value of [DimensionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DimensionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DimensionType] whose value matches [value].
  DimensionType byValue(String value) => firstWhere((el) => el.value == value);
}
