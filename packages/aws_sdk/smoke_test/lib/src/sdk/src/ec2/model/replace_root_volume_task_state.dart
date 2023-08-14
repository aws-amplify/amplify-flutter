// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_root_volume_task_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplaceRootVolumeTaskState
    extends _i1.SmithyEnum<ReplaceRootVolumeTaskState> {
  const ReplaceRootVolumeTaskState._(
    super.index,
    super.name,
    super.value,
  );

  const ReplaceRootVolumeTaskState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const failed = ReplaceRootVolumeTaskState._(
    0,
    'failed',
    'failed',
  );

  static const failedDetached = ReplaceRootVolumeTaskState._(
    1,
    'failed_detached',
    'failed-detached',
  );

  static const failing = ReplaceRootVolumeTaskState._(
    2,
    'failing',
    'failing',
  );

  static const inProgress = ReplaceRootVolumeTaskState._(
    3,
    'in_progress',
    'in-progress',
  );

  static const pending = ReplaceRootVolumeTaskState._(
    4,
    'pending',
    'pending',
  );

  static const succeeded = ReplaceRootVolumeTaskState._(
    5,
    'succeeded',
    'succeeded',
  );

  /// All values of [ReplaceRootVolumeTaskState].
  static const values = <ReplaceRootVolumeTaskState>[
    ReplaceRootVolumeTaskState.failed,
    ReplaceRootVolumeTaskState.failedDetached,
    ReplaceRootVolumeTaskState.failing,
    ReplaceRootVolumeTaskState.inProgress,
    ReplaceRootVolumeTaskState.pending,
    ReplaceRootVolumeTaskState.succeeded,
  ];

  static const List<_i1.SmithySerializer<ReplaceRootVolumeTaskState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ReplaceRootVolumeTaskState',
      values: values,
      sdkUnknown: ReplaceRootVolumeTaskState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReplaceRootVolumeTaskStateHelpers
    on List<ReplaceRootVolumeTaskState> {
  /// Returns the value of [ReplaceRootVolumeTaskState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplaceRootVolumeTaskState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplaceRootVolumeTaskState] whose value matches [value].
  ReplaceRootVolumeTaskState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
