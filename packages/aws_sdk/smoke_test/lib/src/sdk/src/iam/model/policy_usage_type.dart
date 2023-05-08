// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_usage_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// The policy usage type that indicates whether the policy is used as a permissions policy or as the permissions boundary for an entity.
///
/// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
class PolicyUsageType extends _i1.SmithyEnum<PolicyUsageType> {
  const PolicyUsageType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicyUsageType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const permissionsBoundary = PolicyUsageType._(
    0,
    'PermissionsBoundary',
    'PermissionsBoundary',
  );

  static const permissionsPolicy = PolicyUsageType._(
    1,
    'PermissionsPolicy',
    'PermissionsPolicy',
  );

  /// All values of [PolicyUsageType].
  static const values = <PolicyUsageType>[
    PolicyUsageType.permissionsBoundary,
    PolicyUsageType.permissionsPolicy,
  ];

  static const List<_i1.SmithySerializer<PolicyUsageType>> serializers = [
    _i1.SmithyEnumSerializer(
      'PolicyUsageType',
      values: values,
      sdkUnknown: PolicyUsageType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicyUsageTypeHelpers on List<PolicyUsageType> {
  /// Returns the value of [PolicyUsageType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicyUsageType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicyUsageType] whose value matches [value].
  PolicyUsageType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
