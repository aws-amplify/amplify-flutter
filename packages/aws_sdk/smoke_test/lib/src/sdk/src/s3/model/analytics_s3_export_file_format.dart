// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.analytics_s3_export_file_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AnalyticsS3ExportFileFormat
    extends _i1.SmithyEnum<AnalyticsS3ExportFileFormat> {
  const AnalyticsS3ExportFileFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AnalyticsS3ExportFileFormat._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const csv = AnalyticsS3ExportFileFormat._(
    0,
    'CSV',
    'CSV',
  );

  /// All values of [AnalyticsS3ExportFileFormat].
  static const values = <AnalyticsS3ExportFileFormat>[
    AnalyticsS3ExportFileFormat.csv
  ];

  static const List<_i1.SmithySerializer<AnalyticsS3ExportFileFormat>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AnalyticsS3ExportFileFormat',
      values: values,
      sdkUnknown: AnalyticsS3ExportFileFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension AnalyticsS3ExportFileFormatHelpers
    on List<AnalyticsS3ExportFileFormat> {
  /// Returns the value of [AnalyticsS3ExportFileFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AnalyticsS3ExportFileFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AnalyticsS3ExportFileFormat] whose value matches [value].
  AnalyticsS3ExportFileFormat byValue(String value) =>
      firstWhere((el) => el.value == value);
}
