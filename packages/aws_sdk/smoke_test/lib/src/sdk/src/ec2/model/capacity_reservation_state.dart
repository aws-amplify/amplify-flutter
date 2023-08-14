// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CapacityReservationState
    extends _i1.SmithyEnum<CapacityReservationState> {
  const CapacityReservationState._(
    super.index,
    super.name,
    super.value,
  );

  const CapacityReservationState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = CapacityReservationState._(
    0,
    'active',
    'active',
  );

  static const cancelled = CapacityReservationState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const expired = CapacityReservationState._(
    2,
    'expired',
    'expired',
  );

  static const failed = CapacityReservationState._(
    3,
    'failed',
    'failed',
  );

  static const pending = CapacityReservationState._(
    4,
    'pending',
    'pending',
  );

  /// All values of [CapacityReservationState].
  static const values = <CapacityReservationState>[
    CapacityReservationState.active,
    CapacityReservationState.cancelled,
    CapacityReservationState.expired,
    CapacityReservationState.failed,
    CapacityReservationState.pending,
  ];

  static const List<_i1.SmithySerializer<CapacityReservationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CapacityReservationState',
      values: values,
      sdkUnknown: CapacityReservationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CapacityReservationStateHelpers on List<CapacityReservationState> {
  /// Returns the value of [CapacityReservationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CapacityReservationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CapacityReservationState] whose value matches [value].
  CapacityReservationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
