// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_direction; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficDirection extends _i1.SmithyEnum<TrafficDirection> {
  const TrafficDirection._(
    super.index,
    super.name,
    super.value,
  );

  const TrafficDirection._sdkUnknown(super.value) : super.sdkUnknown();

  static const egress = TrafficDirection._(
    0,
    'egress',
    'egress',
  );

  static const ingress = TrafficDirection._(
    1,
    'ingress',
    'ingress',
  );

  /// All values of [TrafficDirection].
  static const values = <TrafficDirection>[
    TrafficDirection.egress,
    TrafficDirection.ingress,
  ];

  static const List<_i1.SmithySerializer<TrafficDirection>> serializers = [
    _i1.SmithyEnumSerializer(
      'TrafficDirection',
      values: values,
      sdkUnknown: TrafficDirection._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficDirectionHelpers on List<TrafficDirection> {
  /// Returns the value of [TrafficDirection] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficDirection byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficDirection] whose value matches [value].
  TrafficDirection byValue(String value) =>
      firstWhere((el) => el.value == value);
}
