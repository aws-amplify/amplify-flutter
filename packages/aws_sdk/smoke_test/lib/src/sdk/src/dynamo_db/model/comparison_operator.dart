// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.comparison_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ComparisonOperator extends _i1.SmithyEnum<ComparisonOperator> {
  const ComparisonOperator._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ComparisonOperator._sdkUnknown(String value) : super.sdkUnknown(value);

  static const beginsWith = ComparisonOperator._(
    0,
    'BEGINS_WITH',
    'BEGINS_WITH',
  );

  static const between = ComparisonOperator._(
    1,
    'BETWEEN',
    'BETWEEN',
  );

  static const contains = ComparisonOperator._(
    2,
    'CONTAINS',
    'CONTAINS',
  );

  static const eq = ComparisonOperator._(
    3,
    'EQ',
    'EQ',
  );

  static const ge = ComparisonOperator._(
    4,
    'GE',
    'GE',
  );

  static const gt = ComparisonOperator._(
    5,
    'GT',
    'GT',
  );

  static const in$ = ComparisonOperator._(
    6,
    'IN',
    'IN',
  );

  static const le = ComparisonOperator._(
    7,
    'LE',
    'LE',
  );

  static const lt = ComparisonOperator._(
    8,
    'LT',
    'LT',
  );

  static const ne = ComparisonOperator._(
    9,
    'NE',
    'NE',
  );

  static const notContains = ComparisonOperator._(
    10,
    'NOT_CONTAINS',
    'NOT_CONTAINS',
  );

  static const notNull = ComparisonOperator._(
    11,
    'NOT_NULL',
    'NOT_NULL',
  );

  static const null$ = ComparisonOperator._(
    12,
    'NULL',
    'NULL',
  );

  /// All values of [ComparisonOperator].
  static const values = <ComparisonOperator>[
    ComparisonOperator.beginsWith,
    ComparisonOperator.between,
    ComparisonOperator.contains,
    ComparisonOperator.eq,
    ComparisonOperator.ge,
    ComparisonOperator.gt,
    ComparisonOperator.in$,
    ComparisonOperator.le,
    ComparisonOperator.lt,
    ComparisonOperator.ne,
    ComparisonOperator.notContains,
    ComparisonOperator.notNull,
    ComparisonOperator.null$,
  ];

  static const List<_i1.SmithySerializer<ComparisonOperator>> serializers = [
    _i1.SmithyEnumSerializer(
      'ComparisonOperator',
      values: values,
      sdkUnknown: ComparisonOperator._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ComparisonOperatorHelpers on List<ComparisonOperator> {
  /// Returns the value of [ComparisonOperator] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ComparisonOperator byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ComparisonOperator] whose value matches [value].
  ComparisonOperator byValue(String value) =>
      firstWhere((el) => el.value == value);
}
