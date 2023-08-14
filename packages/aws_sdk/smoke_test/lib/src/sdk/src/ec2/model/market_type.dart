// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.market_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MarketType extends _i1.SmithyEnum<MarketType> {
  const MarketType._(
    super.index,
    super.name,
    super.value,
  );

  const MarketType._sdkUnknown(super.value) : super.sdkUnknown();

  static const spot = MarketType._(
    0,
    'spot',
    'spot',
  );

  /// All values of [MarketType].
  static const values = <MarketType>[MarketType.spot];

  static const List<_i1.SmithySerializer<MarketType>> serializers = [
    _i1.SmithyEnumSerializer(
      'MarketType',
      values: values,
      sdkUnknown: MarketType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MarketTypeHelpers on List<MarketType> {
  /// Returns the value of [MarketType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MarketType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MarketType] whose value matches [value].
  MarketType byValue(String value) => firstWhere((el) => el.value == value);
}
