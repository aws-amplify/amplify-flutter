// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_owner_entity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PolicyOwnerEntityType extends _i1.SmithyEnum<PolicyOwnerEntityType> {
  const PolicyOwnerEntityType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicyOwnerEntityType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const group = PolicyOwnerEntityType._(
    0,
    'GROUP',
    'GROUP',
  );

  static const role = PolicyOwnerEntityType._(
    1,
    'ROLE',
    'ROLE',
  );

  static const user = PolicyOwnerEntityType._(
    2,
    'USER',
    'USER',
  );

  /// All values of [PolicyOwnerEntityType].
  static const values = <PolicyOwnerEntityType>[
    PolicyOwnerEntityType.group,
    PolicyOwnerEntityType.role,
    PolicyOwnerEntityType.user,
  ];

  static const List<_i1.SmithySerializer<PolicyOwnerEntityType>> serializers = [
    _i1.SmithyEnumSerializer(
      'policyOwnerEntityType',
      values: values,
      sdkUnknown: PolicyOwnerEntityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicyOwnerEntityTypeHelpers on List<PolicyOwnerEntityType> {
  /// Returns the value of [PolicyOwnerEntityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicyOwnerEntityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicyOwnerEntityType] whose value matches [value].
  PolicyOwnerEntityType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
