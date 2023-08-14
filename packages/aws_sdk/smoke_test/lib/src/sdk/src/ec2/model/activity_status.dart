// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.activity_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ActivityStatus extends _i1.SmithyEnum<ActivityStatus> {
  const ActivityStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ActivityStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const error = ActivityStatus._(
    0,
    'ERROR',
    'error',
  );

  static const fulfilled = ActivityStatus._(
    1,
    'FULFILLED',
    'fulfilled',
  );

  static const pendingFulfillment = ActivityStatus._(
    2,
    'PENDING_FULFILLMENT',
    'pending_fulfillment',
  );

  static const pendingTermination = ActivityStatus._(
    3,
    'PENDING_TERMINATION',
    'pending_termination',
  );

  /// All values of [ActivityStatus].
  static const values = <ActivityStatus>[
    ActivityStatus.error,
    ActivityStatus.fulfilled,
    ActivityStatus.pendingFulfillment,
    ActivityStatus.pendingTermination,
  ];

  static const List<_i1.SmithySerializer<ActivityStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ActivityStatus',
      values: values,
      sdkUnknown: ActivityStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ActivityStatusHelpers on List<ActivityStatus> {
  /// Returns the value of [ActivityStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ActivityStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ActivityStatus] whose value matches [value].
  ActivityStatus byValue(String value) => firstWhere((el) => el.value == value);
}
