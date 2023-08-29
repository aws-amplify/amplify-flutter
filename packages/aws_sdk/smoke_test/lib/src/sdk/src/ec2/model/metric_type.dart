// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.metric_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MetricType extends _i1.SmithyEnum<MetricType> {
  const MetricType._(
    super.index,
    super.name,
    super.value,
  );

  const MetricType._sdkUnknown(super.value) : super.sdkUnknown();

  static const aggregateLatency = MetricType._(
    0,
    'aggregate_latency',
    'aggregate-latency',
  );

  /// All values of [MetricType].
  static const values = <MetricType>[MetricType.aggregateLatency];

  static const List<_i1.SmithySerializer<MetricType>> serializers = [
    _i1.SmithyEnumSerializer(
      'MetricType',
      values: values,
      sdkUnknown: MetricType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MetricTypeHelpers on List<MetricType> {
  /// Returns the value of [MetricType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MetricType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MetricType] whose value matches [value].
  MetricType byValue(String value) => firstWhere((el) => el.value == value);
}
