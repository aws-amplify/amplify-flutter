// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.conditional_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConditionalOperator extends _i1.SmithyEnum<ConditionalOperator> {
  const ConditionalOperator._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConditionalOperator._sdkUnknown(String value) : super.sdkUnknown(value);

  static const and = ConditionalOperator._(
    0,
    'AND',
    'AND',
  );

  static const or = ConditionalOperator._(
    1,
    'OR',
    'OR',
  );

  /// All values of [ConditionalOperator].
  static const values = <ConditionalOperator>[
    ConditionalOperator.and,
    ConditionalOperator.or,
  ];

  static const List<_i1.SmithySerializer<ConditionalOperator>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConditionalOperator',
      values: values,
      sdkUnknown: ConditionalOperator._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ConditionalOperatorHelpers on List<ConditionalOperator> {
  /// Returns the value of [ConditionalOperator] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConditionalOperator byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConditionalOperator] whose value matches [value].
  ConditionalOperator byValue(String value) =>
      firstWhere((el) => el.value == value);
}
