// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.expression_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExpressionType extends _i1.SmithyEnum<ExpressionType> {
  const ExpressionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExpressionType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const sql = ExpressionType._(
    0,
    'SQL',
    'SQL',
  );

  /// All values of [ExpressionType].
  static const values = <ExpressionType>[ExpressionType.sql];

  static const List<_i1.SmithySerializer<ExpressionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExpressionType',
      values: values,
      sdkUnknown: ExpressionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ExpressionTypeHelpers on List<ExpressionType> {
  /// Returns the value of [ExpressionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExpressionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExpressionType] whose value matches [value].
  ExpressionType byValue(String value) => firstWhere((el) => el.value == value);
}
