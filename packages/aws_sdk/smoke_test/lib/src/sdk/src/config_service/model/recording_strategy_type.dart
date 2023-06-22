// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.recording_strategy_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RecordingStrategyType extends _i1.SmithyEnum<RecordingStrategyType> {
  const RecordingStrategyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RecordingStrategyType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const allSupportedResourceTypes = RecordingStrategyType._(
    0,
    'ALL_SUPPORTED_RESOURCE_TYPES',
    'ALL_SUPPORTED_RESOURCE_TYPES',
  );

  static const exclusionByResourceTypes = RecordingStrategyType._(
    1,
    'EXCLUSION_BY_RESOURCE_TYPES',
    'EXCLUSION_BY_RESOURCE_TYPES',
  );

  static const inclusionByResourceTypes = RecordingStrategyType._(
    2,
    'INCLUSION_BY_RESOURCE_TYPES',
    'INCLUSION_BY_RESOURCE_TYPES',
  );

  /// All values of [RecordingStrategyType].
  static const values = <RecordingStrategyType>[
    RecordingStrategyType.allSupportedResourceTypes,
    RecordingStrategyType.exclusionByResourceTypes,
    RecordingStrategyType.inclusionByResourceTypes,
  ];

  static const List<_i1.SmithySerializer<RecordingStrategyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RecordingStrategyType',
      values: values,
      sdkUnknown: RecordingStrategyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RecordingStrategyTypeHelpers on List<RecordingStrategyType> {
  /// Returns the value of [RecordingStrategyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RecordingStrategyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RecordingStrategyType] whose value matches [value].
  RecordingStrategyType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
