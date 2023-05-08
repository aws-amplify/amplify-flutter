// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_scope_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PolicyScopeType extends _i1.SmithyEnum<PolicyScopeType> {
  const PolicyScopeType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicyScopeType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const all = PolicyScopeType._(
    0,
    'All',
    'All',
  );

  static const aws = PolicyScopeType._(
    1,
    'AWS',
    'AWS',
  );

  static const local = PolicyScopeType._(
    2,
    'Local',
    'Local',
  );

  /// All values of [PolicyScopeType].
  static const values = <PolicyScopeType>[
    PolicyScopeType.all,
    PolicyScopeType.aws,
    PolicyScopeType.local,
  ];

  static const List<_i1.SmithySerializer<PolicyScopeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'policyScopeType',
      values: values,
      sdkUnknown: PolicyScopeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicyScopeTypeHelpers on List<PolicyScopeType> {
  /// Returns the value of [PolicyScopeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicyScopeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicyScopeType] whose value matches [value].
  PolicyScopeType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
