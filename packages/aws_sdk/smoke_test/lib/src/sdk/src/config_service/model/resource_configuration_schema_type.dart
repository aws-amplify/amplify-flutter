// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_configuration_schema_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceConfigurationSchemaType
    extends _i1.SmithyEnum<ResourceConfigurationSchemaType> {
  const ResourceConfigurationSchemaType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceConfigurationSchemaType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const cfnResourceSchema = ResourceConfigurationSchemaType._(
    0,
    'CFN_RESOURCE_SCHEMA',
    'CFN_RESOURCE_SCHEMA',
  );

  /// All values of [ResourceConfigurationSchemaType].
  static const values = <ResourceConfigurationSchemaType>[
    ResourceConfigurationSchemaType.cfnResourceSchema
  ];

  static const List<_i1.SmithySerializer<ResourceConfigurationSchemaType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceConfigurationSchemaType',
      values: values,
      sdkUnknown: ResourceConfigurationSchemaType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ResourceConfigurationSchemaTypeHelpers
    on List<ResourceConfigurationSchemaType> {
  /// Returns the value of [ResourceConfigurationSchemaType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceConfigurationSchemaType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceConfigurationSchemaType] whose value matches [value].
  ResourceConfigurationSchemaType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
