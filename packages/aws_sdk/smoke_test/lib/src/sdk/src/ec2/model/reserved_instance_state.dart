// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instance_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReservedInstanceState extends _i1.SmithyEnum<ReservedInstanceState> {
  const ReservedInstanceState._(
    super.index,
    super.name,
    super.value,
  );

  const ReservedInstanceState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = ReservedInstanceState._(
    0,
    'active',
    'active',
  );

  static const paymentFailed = ReservedInstanceState._(
    1,
    'payment_failed',
    'payment-failed',
  );

  static const paymentPending = ReservedInstanceState._(
    2,
    'payment_pending',
    'payment-pending',
  );

  static const queued = ReservedInstanceState._(
    3,
    'queued',
    'queued',
  );

  static const queuedDeleted = ReservedInstanceState._(
    4,
    'queued_deleted',
    'queued-deleted',
  );

  static const retired = ReservedInstanceState._(
    5,
    'retired',
    'retired',
  );

  /// All values of [ReservedInstanceState].
  static const values = <ReservedInstanceState>[
    ReservedInstanceState.active,
    ReservedInstanceState.paymentFailed,
    ReservedInstanceState.paymentPending,
    ReservedInstanceState.queued,
    ReservedInstanceState.queuedDeleted,
    ReservedInstanceState.retired,
  ];

  static const List<_i1.SmithySerializer<ReservedInstanceState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReservedInstanceState',
      values: values,
      sdkUnknown: ReservedInstanceState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReservedInstanceStateHelpers on List<ReservedInstanceState> {
  /// Returns the value of [ReservedInstanceState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReservedInstanceState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReservedInstanceState] whose value matches [value].
  ReservedInstanceState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
