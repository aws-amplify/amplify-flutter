// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExportFormat extends _i1.SmithyEnum<ExportFormat> {
  const ExportFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExportFormat._sdkUnknown(String value) : super.sdkUnknown(value);

  static const dynamodbJson = ExportFormat._(
    0,
    'DYNAMODB_JSON',
    'DYNAMODB_JSON',
  );

  static const ion = ExportFormat._(
    1,
    'ION',
    'ION',
  );

  /// All values of [ExportFormat].
  static const values = <ExportFormat>[
    ExportFormat.dynamodbJson,
    ExportFormat.ion,
  ];

  static const List<_i1.SmithySerializer<ExportFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExportFormat',
      values: values,
      sdkUnknown: ExportFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ExportFormatHelpers on List<ExportFormat> {
  /// Returns the value of [ExportFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExportFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExportFormat] whose value matches [value].
  ExportFormat byValue(String value) => firstWhere((el) => el.value == value);
}
