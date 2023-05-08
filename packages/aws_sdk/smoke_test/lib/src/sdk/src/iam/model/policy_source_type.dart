// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_source_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PolicySourceType extends _i1.SmithyEnum<PolicySourceType> {
  const PolicySourceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicySourceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const awsManaged = PolicySourceType._(
    0,
    'AWS_MANAGED',
    'aws-managed',
  );

  static const group = PolicySourceType._(
    1,
    'GROUP',
    'group',
  );

  static const none = PolicySourceType._(
    2,
    'NONE',
    'none',
  );

  static const resource = PolicySourceType._(
    3,
    'RESOURCE',
    'resource',
  );

  static const role = PolicySourceType._(
    4,
    'ROLE',
    'role',
  );

  static const user = PolicySourceType._(
    5,
    'USER',
    'user',
  );

  static const userManaged = PolicySourceType._(
    6,
    'USER_MANAGED',
    'user-managed',
  );

  /// All values of [PolicySourceType].
  static const values = <PolicySourceType>[
    PolicySourceType.awsManaged,
    PolicySourceType.group,
    PolicySourceType.none,
    PolicySourceType.resource,
    PolicySourceType.role,
    PolicySourceType.user,
    PolicySourceType.userManaged,
  ];

  static const List<_i1.SmithySerializer<PolicySourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'PolicySourceType',
      values: values,
      sdkUnknown: PolicySourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicySourceTypeHelpers on List<PolicySourceType> {
  /// Returns the value of [PolicySourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicySourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicySourceType] whose value matches [value].
  PolicySourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
