// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.input_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InputFormat extends _i1.SmithyEnum<InputFormat> {
  const InputFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InputFormat._sdkUnknown(String value) : super.sdkUnknown(value);

  static const csv = InputFormat._(
    0,
    'CSV',
    'CSV',
  );

  static const dynamodbJson = InputFormat._(
    1,
    'DYNAMODB_JSON',
    'DYNAMODB_JSON',
  );

  static const ion = InputFormat._(
    2,
    'ION',
    'ION',
  );

  /// All values of [InputFormat].
  static const values = <InputFormat>[
    InputFormat.csv,
    InputFormat.dynamodbJson,
    InputFormat.ion,
  ];

  static const List<_i1.SmithySerializer<InputFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'InputFormat',
      values: values,
      sdkUnknown: InputFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension InputFormatHelpers on List<InputFormat> {
  /// Returns the value of [InputFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InputFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InputFormat] whose value matches [value].
  InputFormat byValue(String value) => firstWhere((el) => el.value == value);
}
