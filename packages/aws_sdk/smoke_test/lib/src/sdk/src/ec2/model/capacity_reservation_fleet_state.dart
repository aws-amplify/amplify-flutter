// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_fleet_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CapacityReservationFleetState
    extends _i1.SmithyEnum<CapacityReservationFleetState> {
  const CapacityReservationFleetState._(
    super.index,
    super.name,
    super.value,
  );

  const CapacityReservationFleetState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = CapacityReservationFleetState._(
    0,
    'ACTIVE',
    'active',
  );

  static const cancelled = CapacityReservationFleetState._(
    1,
    'CANCELLED',
    'cancelled',
  );

  static const cancelling = CapacityReservationFleetState._(
    2,
    'CANCELLING',
    'cancelling',
  );

  static const expired = CapacityReservationFleetState._(
    3,
    'EXPIRED',
    'expired',
  );

  static const expiring = CapacityReservationFleetState._(
    4,
    'EXPIRING',
    'expiring',
  );

  static const failed = CapacityReservationFleetState._(
    5,
    'FAILED',
    'failed',
  );

  static const modifying = CapacityReservationFleetState._(
    6,
    'MODIFYING',
    'modifying',
  );

  static const partiallyFulfilled = CapacityReservationFleetState._(
    7,
    'PARTIALLY_FULFILLED',
    'partially_fulfilled',
  );

  static const submitted = CapacityReservationFleetState._(
    8,
    'SUBMITTED',
    'submitted',
  );

  /// All values of [CapacityReservationFleetState].
  static const values = <CapacityReservationFleetState>[
    CapacityReservationFleetState.active,
    CapacityReservationFleetState.cancelled,
    CapacityReservationFleetState.cancelling,
    CapacityReservationFleetState.expired,
    CapacityReservationFleetState.expiring,
    CapacityReservationFleetState.failed,
    CapacityReservationFleetState.modifying,
    CapacityReservationFleetState.partiallyFulfilled,
    CapacityReservationFleetState.submitted,
  ];

  static const List<_i1.SmithySerializer<CapacityReservationFleetState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CapacityReservationFleetState',
      values: values,
      sdkUnknown: CapacityReservationFleetState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CapacityReservationFleetStateHelpers
    on List<CapacityReservationFleetState> {
  /// Returns the value of [CapacityReservationFleetState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CapacityReservationFleetState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CapacityReservationFleetState] whose value matches [value].
  CapacityReservationFleetState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
