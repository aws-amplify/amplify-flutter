// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PolicyType extends _i1.SmithyEnum<PolicyType> {
  const PolicyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicyType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const inline = PolicyType._(
    0,
    'INLINE',
    'INLINE',
  );

  static const managed = PolicyType._(
    1,
    'MANAGED',
    'MANAGED',
  );

  /// All values of [PolicyType].
  static const values = <PolicyType>[
    PolicyType.inline,
    PolicyType.managed,
  ];

  static const List<_i1.SmithySerializer<PolicyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'policyType',
      values: values,
      sdkUnknown: PolicyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicyTypeHelpers on List<PolicyType> {
  /// Returns the value of [PolicyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicyType] whose value matches [value].
  PolicyType byValue(String value) => firstWhere((el) => el.value == value);
}
