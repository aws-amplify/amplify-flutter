// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.excess_capacity_termination_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExcessCapacityTerminationPolicy
    extends _i1.SmithyEnum<ExcessCapacityTerminationPolicy> {
  const ExcessCapacityTerminationPolicy._(
    super.index,
    super.name,
    super.value,
  );

  const ExcessCapacityTerminationPolicy._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const default$ = ExcessCapacityTerminationPolicy._(
    0,
    'DEFAULT',
    'default',
  );

  static const noTermination = ExcessCapacityTerminationPolicy._(
    1,
    'NO_TERMINATION',
    'noTermination',
  );

  /// All values of [ExcessCapacityTerminationPolicy].
  static const values = <ExcessCapacityTerminationPolicy>[
    ExcessCapacityTerminationPolicy.default$,
    ExcessCapacityTerminationPolicy.noTermination,
  ];

  static const List<_i1.SmithySerializer<ExcessCapacityTerminationPolicy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ExcessCapacityTerminationPolicy',
      values: values,
      sdkUnknown: ExcessCapacityTerminationPolicy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ExcessCapacityTerminationPolicyHelpers
    on List<ExcessCapacityTerminationPolicy> {
  /// Returns the value of [ExcessCapacityTerminationPolicy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExcessCapacityTerminationPolicy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExcessCapacityTerminationPolicy] whose value matches [value].
  ExcessCapacityTerminationPolicy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
