// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.rule_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RuleAction extends _i1.SmithyEnum<RuleAction> {
  const RuleAction._(
    super.index,
    super.name,
    super.value,
  );

  const RuleAction._sdkUnknown(super.value) : super.sdkUnknown();

  static const allow = RuleAction._(
    0,
    'allow',
    'allow',
  );

  static const deny = RuleAction._(
    1,
    'deny',
    'deny',
  );

  /// All values of [RuleAction].
  static const values = <RuleAction>[
    RuleAction.allow,
    RuleAction.deny,
  ];

  static const List<_i1.SmithySerializer<RuleAction>> serializers = [
    _i1.SmithyEnumSerializer(
      'RuleAction',
      values: values,
      sdkUnknown: RuleAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RuleActionHelpers on List<RuleAction> {
  /// Returns the value of [RuleAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RuleAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RuleAction] whose value matches [value].
  RuleAction byValue(String value) => firstWhere((el) => el.value == value);
}
