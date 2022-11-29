// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.quota_period_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class QuotaPeriodType extends _i1.SmithyEnum<QuotaPeriodType> {
  const QuotaPeriodType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const QuotaPeriodType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const day = QuotaPeriodType._(
    0,
    'DAY',
    'DAY',
  );

  static const month = QuotaPeriodType._(
    1,
    'MONTH',
    'MONTH',
  );

  static const week = QuotaPeriodType._(
    2,
    'WEEK',
    'WEEK',
  );

  /// All values of [QuotaPeriodType].
  static const values = <QuotaPeriodType>[
    QuotaPeriodType.day,
    QuotaPeriodType.month,
    QuotaPeriodType.week,
  ];

  static const List<_i1.SmithySerializer<QuotaPeriodType>> serializers = [
    _i1.SmithyEnumSerializer(
      'QuotaPeriodType',
      values: values,
      sdkUnknown: QuotaPeriodType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension QuotaPeriodTypeHelpers on List<QuotaPeriodType> {
  /// Returns the value of [QuotaPeriodType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  QuotaPeriodType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [QuotaPeriodType] whose value matches [value].
  QuotaPeriodType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
