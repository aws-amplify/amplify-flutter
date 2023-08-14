// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_filter_rule_field; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorFilterRuleField
    extends _i1.SmithyEnum<TrafficMirrorFilterRuleField> {
  const TrafficMirrorFilterRuleField._(
    super.index,
    super.name,
    super.value,
  );

  const TrafficMirrorFilterRuleField._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const description = TrafficMirrorFilterRuleField._(
    0,
    'description',
    'description',
  );

  static const destinationPortRange = TrafficMirrorFilterRuleField._(
    1,
    'destination_port_range',
    'destination-port-range',
  );

  static const protocol = TrafficMirrorFilterRuleField._(
    2,
    'protocol',
    'protocol',
  );

  static const sourcePortRange = TrafficMirrorFilterRuleField._(
    3,
    'source_port_range',
    'source-port-range',
  );

  /// All values of [TrafficMirrorFilterRuleField].
  static const values = <TrafficMirrorFilterRuleField>[
    TrafficMirrorFilterRuleField.description,
    TrafficMirrorFilterRuleField.destinationPortRange,
    TrafficMirrorFilterRuleField.protocol,
    TrafficMirrorFilterRuleField.sourcePortRange,
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorFilterRuleField>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorFilterRuleField',
      values: values,
      sdkUnknown: TrafficMirrorFilterRuleField._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorFilterRuleFieldHelpers
    on List<TrafficMirrorFilterRuleField> {
  /// Returns the value of [TrafficMirrorFilterRuleField] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorFilterRuleField byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorFilterRuleField] whose value matches [value].
  TrafficMirrorFilterRuleField byValue(String value) =>
      firstWhere((el) => el.value == value);
}
