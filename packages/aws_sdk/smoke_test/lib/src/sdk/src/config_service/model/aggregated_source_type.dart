// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.aggregated_source_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AggregatedSourceType extends _i1.SmithyEnum<AggregatedSourceType> {
  const AggregatedSourceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AggregatedSourceType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const account = AggregatedSourceType._(
    0,
    'ACCOUNT',
    'ACCOUNT',
  );

  static const organization = AggregatedSourceType._(
    1,
    'ORGANIZATION',
    'ORGANIZATION',
  );

  /// All values of [AggregatedSourceType].
  static const values = <AggregatedSourceType>[
    AggregatedSourceType.account,
    AggregatedSourceType.organization,
  ];

  static const List<_i1.SmithySerializer<AggregatedSourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AggregatedSourceType',
      values: values,
      sdkUnknown: AggregatedSourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension AggregatedSourceTypeHelpers on List<AggregatedSourceType> {
  /// Returns the value of [AggregatedSourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AggregatedSourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AggregatedSourceType] whose value matches [value].
  AggregatedSourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
