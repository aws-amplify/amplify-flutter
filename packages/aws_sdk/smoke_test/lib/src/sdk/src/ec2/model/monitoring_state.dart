// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.monitoring_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MonitoringState extends _i1.SmithyEnum<MonitoringState> {
  const MonitoringState._(
    super.index,
    super.name,
    super.value,
  );

  const MonitoringState._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = MonitoringState._(
    0,
    'disabled',
    'disabled',
  );

  static const disabling = MonitoringState._(
    1,
    'disabling',
    'disabling',
  );

  static const enabled = MonitoringState._(
    2,
    'enabled',
    'enabled',
  );

  static const pending = MonitoringState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [MonitoringState].
  static const values = <MonitoringState>[
    MonitoringState.disabled,
    MonitoringState.disabling,
    MonitoringState.enabled,
    MonitoringState.pending,
  ];

  static const List<_i1.SmithySerializer<MonitoringState>> serializers = [
    _i1.SmithyEnumSerializer(
      'MonitoringState',
      values: values,
      sdkUnknown: MonitoringState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MonitoringStateHelpers on List<MonitoringState> {
  /// Returns the value of [MonitoringState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MonitoringState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MonitoringState] whose value matches [value].
  MonitoringState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
