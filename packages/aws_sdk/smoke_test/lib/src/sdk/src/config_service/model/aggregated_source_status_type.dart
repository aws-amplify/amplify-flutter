// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.aggregated_source_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AggregatedSourceStatusType
    extends _i1.SmithyEnum<AggregatedSourceStatusType> {
  const AggregatedSourceStatusType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AggregatedSourceStatusType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = AggregatedSourceStatusType._(
    0,
    'FAILED',
    'FAILED',
  );

  static const outdated = AggregatedSourceStatusType._(
    1,
    'OUTDATED',
    'OUTDATED',
  );

  static const succeeded = AggregatedSourceStatusType._(
    2,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [AggregatedSourceStatusType].
  static const values = <AggregatedSourceStatusType>[
    AggregatedSourceStatusType.failed,
    AggregatedSourceStatusType.outdated,
    AggregatedSourceStatusType.succeeded,
  ];

  static const List<_i1.SmithySerializer<AggregatedSourceStatusType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AggregatedSourceStatusType',
      values: values,
      sdkUnknown: AggregatedSourceStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension AggregatedSourceStatusTypeHelpers
    on List<AggregatedSourceStatusType> {
  /// Returns the value of [AggregatedSourceStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AggregatedSourceStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AggregatedSourceStatusType] whose value matches [value].
  AggregatedSourceStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
