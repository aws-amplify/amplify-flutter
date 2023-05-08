// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.resource_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceAttribute extends _i1.SmithyEnum<ResourceAttribute> {
  const ResourceAttribute._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceAttribute._sdkUnknown(String value) : super.sdkUnknown(value);

  static const creationPolicy = ResourceAttribute._(
    0,
    'CreationPolicy',
    'CreationPolicy',
  );

  static const deletionPolicy = ResourceAttribute._(
    1,
    'DeletionPolicy',
    'DeletionPolicy',
  );

  static const metadata = ResourceAttribute._(
    2,
    'Metadata',
    'Metadata',
  );

  static const properties = ResourceAttribute._(
    3,
    'Properties',
    'Properties',
  );

  static const tags = ResourceAttribute._(
    4,
    'Tags',
    'Tags',
  );

  static const updatePolicy = ResourceAttribute._(
    5,
    'UpdatePolicy',
    'UpdatePolicy',
  );

  /// All values of [ResourceAttribute].
  static const values = <ResourceAttribute>[
    ResourceAttribute.creationPolicy,
    ResourceAttribute.deletionPolicy,
    ResourceAttribute.metadata,
    ResourceAttribute.properties,
    ResourceAttribute.tags,
    ResourceAttribute.updatePolicy,
  ];

  static const List<_i1.SmithySerializer<ResourceAttribute>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceAttribute',
      values: values,
      sdkUnknown: ResourceAttribute._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ResourceAttributeHelpers on List<ResourceAttribute> {
  /// Returns the value of [ResourceAttribute] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceAttribute byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceAttribute] whose value matches [value].
  ResourceAttribute byValue(String value) =>
      firstWhere((el) => el.value == value);
}
