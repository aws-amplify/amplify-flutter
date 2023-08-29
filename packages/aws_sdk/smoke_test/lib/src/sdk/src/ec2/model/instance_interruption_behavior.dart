// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_interruption_behavior; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceInterruptionBehavior
    extends _i1.SmithyEnum<InstanceInterruptionBehavior> {
  const InstanceInterruptionBehavior._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceInterruptionBehavior._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const hibernate = InstanceInterruptionBehavior._(
    0,
    'hibernate',
    'hibernate',
  );

  static const stop = InstanceInterruptionBehavior._(
    1,
    'stop',
    'stop',
  );

  static const terminate = InstanceInterruptionBehavior._(
    2,
    'terminate',
    'terminate',
  );

  /// All values of [InstanceInterruptionBehavior].
  static const values = <InstanceInterruptionBehavior>[
    InstanceInterruptionBehavior.hibernate,
    InstanceInterruptionBehavior.stop,
    InstanceInterruptionBehavior.terminate,
  ];

  static const List<_i1.SmithySerializer<InstanceInterruptionBehavior>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceInterruptionBehavior',
      values: values,
      sdkUnknown: InstanceInterruptionBehavior._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceInterruptionBehaviorHelpers
    on List<InstanceInterruptionBehavior> {
  /// Returns the value of [InstanceInterruptionBehavior] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceInterruptionBehavior byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceInterruptionBehavior] whose value matches [value].
  InstanceInterruptionBehavior byValue(String value) =>
      firstWhere((el) => el.value == value);
}
