// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.aggregate_conformance_pack_compliance_summary_group_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AggregateConformancePackComplianceSummaryGroupKey
    extends _i1.SmithyEnum<AggregateConformancePackComplianceSummaryGroupKey> {
  const AggregateConformancePackComplianceSummaryGroupKey._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AggregateConformancePackComplianceSummaryGroupKey._sdkUnknown(
      String value)
      : super.sdkUnknown(value);

  static const accountId = AggregateConformancePackComplianceSummaryGroupKey._(
    0,
    'ACCOUNT_ID',
    'ACCOUNT_ID',
  );

  static const awsRegion = AggregateConformancePackComplianceSummaryGroupKey._(
    1,
    'AWS_REGION',
    'AWS_REGION',
  );

  /// All values of [AggregateConformancePackComplianceSummaryGroupKey].
  static const values = <AggregateConformancePackComplianceSummaryGroupKey>[
    AggregateConformancePackComplianceSummaryGroupKey.accountId,
    AggregateConformancePackComplianceSummaryGroupKey.awsRegion,
  ];

  static const List<
      _i1.SmithySerializer<
          AggregateConformancePackComplianceSummaryGroupKey>> serializers = [
    _i1.SmithyEnumSerializer(
      'AggregateConformancePackComplianceSummaryGroupKey',
      values: values,
      sdkUnknown: AggregateConformancePackComplianceSummaryGroupKey._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension AggregateConformancePackComplianceSummaryGroupKeyHelpers
    on List<AggregateConformancePackComplianceSummaryGroupKey> {
  /// Returns the value of [AggregateConformancePackComplianceSummaryGroupKey] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AggregateConformancePackComplianceSummaryGroupKey byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AggregateConformancePackComplianceSummaryGroupKey] whose value matches [value].
  AggregateConformancePackComplianceSummaryGroupKey byValue(String value) =>
      firstWhere((el) => el.value == value);
}
