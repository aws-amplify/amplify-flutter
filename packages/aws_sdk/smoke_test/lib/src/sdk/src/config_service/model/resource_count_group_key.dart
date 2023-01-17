// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_count_group_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceCountGroupKey extends _i1.SmithyEnum<ResourceCountGroupKey> {
  const ResourceCountGroupKey._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceCountGroupKey._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const accountId = ResourceCountGroupKey._(
    0,
    'ACCOUNT_ID',
    'ACCOUNT_ID',
  );

  static const awsRegion = ResourceCountGroupKey._(
    1,
    'AWS_REGION',
    'AWS_REGION',
  );

  static const resourceType = ResourceCountGroupKey._(
    2,
    'RESOURCE_TYPE',
    'RESOURCE_TYPE',
  );

  /// All values of [ResourceCountGroupKey].
  static const values = <ResourceCountGroupKey>[
    ResourceCountGroupKey.accountId,
    ResourceCountGroupKey.awsRegion,
    ResourceCountGroupKey.resourceType,
  ];

  static const List<_i1.SmithySerializer<ResourceCountGroupKey>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceCountGroupKey',
      values: values,
      sdkUnknown: ResourceCountGroupKey._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ResourceCountGroupKeyHelpers on List<ResourceCountGroupKey> {
  /// Returns the value of [ResourceCountGroupKey] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceCountGroupKey byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceCountGroupKey] whose value matches [value].
  ResourceCountGroupKey byValue(String value) =>
      firstWhere((el) => el.value == value);
}
