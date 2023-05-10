// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.report_format_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReportFormatType extends _i1.SmithyEnum<ReportFormatType> {
  const ReportFormatType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReportFormatType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const textCsv = ReportFormatType._(
    0,
    'text_csv',
    'text/csv',
  );

  /// All values of [ReportFormatType].
  static const values = <ReportFormatType>[ReportFormatType.textCsv];

  static const List<_i1.SmithySerializer<ReportFormatType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReportFormatType',
      values: values,
      sdkUnknown: ReportFormatType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ReportFormatTypeHelpers on List<ReportFormatType> {
  /// Returns the value of [ReportFormatType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReportFormatType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReportFormatType] whose value matches [value].
  ReportFormatType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
