// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.resource_value_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceValueType extends _i1.SmithyEnum<ResourceValueType> {
  const ResourceValueType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceValueType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const resourceId = ResourceValueType._(
    0,
    'RESOURCE_ID',
    'RESOURCE_ID',
  );

  /// All values of [ResourceValueType].
  static const values = <ResourceValueType>[ResourceValueType.resourceId];

  static const List<_i1.SmithySerializer<ResourceValueType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceValueType',
      values: values,
      sdkUnknown: ResourceValueType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ResourceValueTypeHelpers on List<ResourceValueType> {
  /// Returns the value of [ResourceValueType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceValueType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceValueType] whose value matches [value].
  ResourceValueType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
