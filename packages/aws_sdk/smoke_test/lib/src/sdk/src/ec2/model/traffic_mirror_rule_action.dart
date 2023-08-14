// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_rule_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorRuleAction extends _i1.SmithyEnum<TrafficMirrorRuleAction> {
  const TrafficMirrorRuleAction._(
    super.index,
    super.name,
    super.value,
  );

  const TrafficMirrorRuleAction._sdkUnknown(super.value) : super.sdkUnknown();

  static const accept = TrafficMirrorRuleAction._(
    0,
    'accept',
    'accept',
  );

  static const reject = TrafficMirrorRuleAction._(
    1,
    'reject',
    'reject',
  );

  /// All values of [TrafficMirrorRuleAction].
  static const values = <TrafficMirrorRuleAction>[
    TrafficMirrorRuleAction.accept,
    TrafficMirrorRuleAction.reject,
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorRuleAction>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorRuleAction',
      values: values,
      sdkUnknown: TrafficMirrorRuleAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorRuleActionHelpers on List<TrafficMirrorRuleAction> {
  /// Returns the value of [TrafficMirrorRuleAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorRuleAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorRuleAction] whose value matches [value].
  TrafficMirrorRuleAction byValue(String value) =>
      firstWhere((el) => el.value == value);
}
