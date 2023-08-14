// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_instance_interruption_behavior; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpotInstanceInterruptionBehavior
    extends _i1.SmithyEnum<SpotInstanceInterruptionBehavior> {
  const SpotInstanceInterruptionBehavior._(
    super.index,
    super.name,
    super.value,
  );

  const SpotInstanceInterruptionBehavior._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const hibernate = SpotInstanceInterruptionBehavior._(
    0,
    'hibernate',
    'hibernate',
  );

  static const stop = SpotInstanceInterruptionBehavior._(
    1,
    'stop',
    'stop',
  );

  static const terminate = SpotInstanceInterruptionBehavior._(
    2,
    'terminate',
    'terminate',
  );

  /// All values of [SpotInstanceInterruptionBehavior].
  static const values = <SpotInstanceInterruptionBehavior>[
    SpotInstanceInterruptionBehavior.hibernate,
    SpotInstanceInterruptionBehavior.stop,
    SpotInstanceInterruptionBehavior.terminate,
  ];

  static const List<_i1.SmithySerializer<SpotInstanceInterruptionBehavior>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'SpotInstanceInterruptionBehavior',
      values: values,
      sdkUnknown: SpotInstanceInterruptionBehavior._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpotInstanceInterruptionBehaviorHelpers
    on List<SpotInstanceInterruptionBehavior> {
  /// Returns the value of [SpotInstanceInterruptionBehavior] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpotInstanceInterruptionBehavior byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpotInstanceInterruptionBehavior] whose value matches [value].
  SpotInstanceInterruptionBehavior byValue(String value) =>
      firstWhere((el) => el.value == value);
}
