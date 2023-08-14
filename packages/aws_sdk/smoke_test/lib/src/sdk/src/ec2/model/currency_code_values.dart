// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.currency_code_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CurrencyCodeValues extends _i1.SmithyEnum<CurrencyCodeValues> {
  const CurrencyCodeValues._(
    super.index,
    super.name,
    super.value,
  );

  const CurrencyCodeValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const usd = CurrencyCodeValues._(
    0,
    'USD',
    'USD',
  );

  /// All values of [CurrencyCodeValues].
  static const values = <CurrencyCodeValues>[CurrencyCodeValues.usd];

  static const List<_i1.SmithySerializer<CurrencyCodeValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'CurrencyCodeValues',
      values: values,
      sdkUnknown: CurrencyCodeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CurrencyCodeValuesHelpers on List<CurrencyCodeValues> {
  /// Returns the value of [CurrencyCodeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CurrencyCodeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CurrencyCodeValues] whose value matches [value].
  CurrencyCodeValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
