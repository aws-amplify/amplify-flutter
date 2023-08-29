// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reservation_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReservationState extends _i1.SmithyEnum<ReservationState> {
  const ReservationState._(
    super.index,
    super.name,
    super.value,
  );

  const ReservationState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = ReservationState._(
    0,
    'ACTIVE',
    'active',
  );

  static const paymentFailed = ReservationState._(
    1,
    'PAYMENT_FAILED',
    'payment-failed',
  );

  static const paymentPending = ReservationState._(
    2,
    'PAYMENT_PENDING',
    'payment-pending',
  );

  static const retired = ReservationState._(
    3,
    'RETIRED',
    'retired',
  );

  /// All values of [ReservationState].
  static const values = <ReservationState>[
    ReservationState.active,
    ReservationState.paymentFailed,
    ReservationState.paymentPending,
    ReservationState.retired,
  ];

  static const List<_i1.SmithySerializer<ReservationState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReservationState',
      values: values,
      sdkUnknown: ReservationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReservationStateHelpers on List<ReservationState> {
  /// Returns the value of [ReservationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReservationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReservationState] whose value matches [value].
  ReservationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
