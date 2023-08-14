// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.report_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReportStatusType extends _i1.SmithyEnum<ReportStatusType> {
  const ReportStatusType._(
    super.index,
    super.name,
    super.value,
  );

  const ReportStatusType._sdkUnknown(super.value) : super.sdkUnknown();

  static const impaired = ReportStatusType._(
    0,
    'impaired',
    'impaired',
  );

  static const ok = ReportStatusType._(
    1,
    'ok',
    'ok',
  );

  /// All values of [ReportStatusType].
  static const values = <ReportStatusType>[
    ReportStatusType.impaired,
    ReportStatusType.ok,
  ];

  static const List<_i1.SmithySerializer<ReportStatusType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReportStatusType',
      values: values,
      sdkUnknown: ReportStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReportStatusTypeHelpers on List<ReportStatusType> {
  /// Returns the value of [ReportStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReportStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReportStatusType] whose value matches [value].
  ReportStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
