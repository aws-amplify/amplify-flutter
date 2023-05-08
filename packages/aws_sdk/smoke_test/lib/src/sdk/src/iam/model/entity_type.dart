// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.entity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EntityType extends _i1.SmithyEnum<EntityType> {
  const EntityType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EntityType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const awsManagedPolicy = EntityType._(
    0,
    'AWSManagedPolicy',
    'AWSManagedPolicy',
  );

  static const group = EntityType._(
    1,
    'Group',
    'Group',
  );

  static const localManagedPolicy = EntityType._(
    2,
    'LocalManagedPolicy',
    'LocalManagedPolicy',
  );

  static const role = EntityType._(
    3,
    'Role',
    'Role',
  );

  static const user = EntityType._(
    4,
    'User',
    'User',
  );

  /// All values of [EntityType].
  static const values = <EntityType>[
    EntityType.awsManagedPolicy,
    EntityType.group,
    EntityType.localManagedPolicy,
    EntityType.role,
    EntityType.user,
  ];

  static const List<_i1.SmithySerializer<EntityType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EntityType',
      values: values,
      sdkUnknown: EntityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension EntityTypeHelpers on List<EntityType> {
  /// Returns the value of [EntityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EntityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EntityType] whose value matches [value].
  EntityType byValue(String value) => firstWhere((el) => el.value == value);
}
