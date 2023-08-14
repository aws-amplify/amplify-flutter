// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.bundle_task_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BundleTaskState extends _i1.SmithyEnum<BundleTaskState> {
  const BundleTaskState._(
    super.index,
    super.name,
    super.value,
  );

  const BundleTaskState._sdkUnknown(super.value) : super.sdkUnknown();

  static const bundling = BundleTaskState._(
    0,
    'bundling',
    'bundling',
  );

  static const cancelling = BundleTaskState._(
    1,
    'cancelling',
    'cancelling',
  );

  static const complete = BundleTaskState._(
    2,
    'complete',
    'complete',
  );

  static const failed = BundleTaskState._(
    3,
    'failed',
    'failed',
  );

  static const pending = BundleTaskState._(
    4,
    'pending',
    'pending',
  );

  static const storing = BundleTaskState._(
    5,
    'storing',
    'storing',
  );

  static const waitingForShutdown = BundleTaskState._(
    6,
    'waiting_for_shutdown',
    'waiting-for-shutdown',
  );

  /// All values of [BundleTaskState].
  static const values = <BundleTaskState>[
    BundleTaskState.bundling,
    BundleTaskState.cancelling,
    BundleTaskState.complete,
    BundleTaskState.failed,
    BundleTaskState.pending,
    BundleTaskState.storing,
    BundleTaskState.waitingForShutdown,
  ];

  static const List<_i1.SmithySerializer<BundleTaskState>> serializers = [
    _i1.SmithyEnumSerializer(
      'BundleTaskState',
      values: values,
      sdkUnknown: BundleTaskState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BundleTaskStateHelpers on List<BundleTaskState> {
  /// Returns the value of [BundleTaskState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BundleTaskState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BundleTaskState] whose value matches [value].
  BundleTaskState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
