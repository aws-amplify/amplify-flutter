// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_evaluation_decision_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PolicyEvaluationDecisionType
    extends _i1.SmithyEnum<PolicyEvaluationDecisionType> {
  const PolicyEvaluationDecisionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PolicyEvaluationDecisionType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const allowed = PolicyEvaluationDecisionType._(
    0,
    'ALLOWED',
    'allowed',
  );

  static const explicitDeny = PolicyEvaluationDecisionType._(
    1,
    'EXPLICIT_DENY',
    'explicitDeny',
  );

  static const implicitDeny = PolicyEvaluationDecisionType._(
    2,
    'IMPLICIT_DENY',
    'implicitDeny',
  );

  /// All values of [PolicyEvaluationDecisionType].
  static const values = <PolicyEvaluationDecisionType>[
    PolicyEvaluationDecisionType.allowed,
    PolicyEvaluationDecisionType.explicitDeny,
    PolicyEvaluationDecisionType.implicitDeny,
  ];

  static const List<_i1.SmithySerializer<PolicyEvaluationDecisionType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'PolicyEvaluationDecisionType',
      values: values,
      sdkUnknown: PolicyEvaluationDecisionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PolicyEvaluationDecisionTypeHelpers
    on List<PolicyEvaluationDecisionType> {
  /// Returns the value of [PolicyEvaluationDecisionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PolicyEvaluationDecisionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PolicyEvaluationDecisionType] whose value matches [value].
  PolicyEvaluationDecisionType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
