// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_state_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceStateName extends _i1.SmithyEnum<InstanceStateName> {
  const InstanceStateName._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceStateName._sdkUnknown(super.value) : super.sdkUnknown();

  static const pending = InstanceStateName._(
    0,
    'pending',
    'pending',
  );

  static const running = InstanceStateName._(
    1,
    'running',
    'running',
  );

  static const shuttingDown = InstanceStateName._(
    2,
    'shutting_down',
    'shutting-down',
  );

  static const stopped = InstanceStateName._(
    3,
    'stopped',
    'stopped',
  );

  static const stopping = InstanceStateName._(
    4,
    'stopping',
    'stopping',
  );

  static const terminated = InstanceStateName._(
    5,
    'terminated',
    'terminated',
  );

  /// All values of [InstanceStateName].
  static const values = <InstanceStateName>[
    InstanceStateName.pending,
    InstanceStateName.running,
    InstanceStateName.shuttingDown,
    InstanceStateName.stopped,
    InstanceStateName.stopping,
    InstanceStateName.terminated,
  ];

  static const List<_i1.SmithySerializer<InstanceStateName>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceStateName',
      values: values,
      sdkUnknown: InstanceStateName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceStateNameHelpers on List<InstanceStateName> {
  /// Returns the value of [InstanceStateName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceStateName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceStateName] whose value matches [value].
  InstanceStateName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
