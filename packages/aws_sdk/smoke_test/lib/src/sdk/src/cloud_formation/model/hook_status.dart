// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.hook_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HookStatus extends _i1.SmithyEnum<HookStatus> {
  const HookStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HookStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const hookCompleteFailed = HookStatus._(
    0,
    'HOOK_COMPLETE_FAILED',
    'HOOK_COMPLETE_FAILED',
  );

  static const hookCompleteSucceeded = HookStatus._(
    1,
    'HOOK_COMPLETE_SUCCEEDED',
    'HOOK_COMPLETE_SUCCEEDED',
  );

  static const hookFailed = HookStatus._(
    2,
    'HOOK_FAILED',
    'HOOK_FAILED',
  );

  static const hookInProgress = HookStatus._(
    3,
    'HOOK_IN_PROGRESS',
    'HOOK_IN_PROGRESS',
  );

  /// All values of [HookStatus].
  static const values = <HookStatus>[
    HookStatus.hookCompleteFailed,
    HookStatus.hookCompleteSucceeded,
    HookStatus.hookFailed,
    HookStatus.hookInProgress,
  ];

  static const List<_i1.SmithySerializer<HookStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'HookStatus',
      values: values,
      sdkUnknown: HookStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension HookStatusHelpers on List<HookStatus> {
  /// Returns the value of [HookStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HookStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HookStatus] whose value matches [value].
  HookStatus byValue(String value) => firstWhere((el) => el.value == value);
}
