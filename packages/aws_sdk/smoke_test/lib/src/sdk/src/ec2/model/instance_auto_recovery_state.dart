// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_auto_recovery_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceAutoRecoveryState
    extends _i1.SmithyEnum<InstanceAutoRecoveryState> {
  const InstanceAutoRecoveryState._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceAutoRecoveryState._sdkUnknown(super.value) : super.sdkUnknown();

  static const default$ = InstanceAutoRecoveryState._(
    0,
    'default',
    'default',
  );

  static const disabled = InstanceAutoRecoveryState._(
    1,
    'disabled',
    'disabled',
  );

  /// All values of [InstanceAutoRecoveryState].
  static const values = <InstanceAutoRecoveryState>[
    InstanceAutoRecoveryState.default$,
    InstanceAutoRecoveryState.disabled,
  ];

  static const List<_i1.SmithySerializer<InstanceAutoRecoveryState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceAutoRecoveryState',
      values: values,
      sdkUnknown: InstanceAutoRecoveryState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceAutoRecoveryStateHelpers on List<InstanceAutoRecoveryState> {
  /// Returns the value of [InstanceAutoRecoveryState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceAutoRecoveryState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceAutoRecoveryState] whose value matches [value].
  InstanceAutoRecoveryState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
