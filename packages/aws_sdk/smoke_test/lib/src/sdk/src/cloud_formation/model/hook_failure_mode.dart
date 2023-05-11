// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.hook_failure_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HookFailureMode extends _i1.SmithyEnum<HookFailureMode> {
  const HookFailureMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HookFailureMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const fail = HookFailureMode._(
    0,
    'FAIL',
    'FAIL',
  );

  static const warn = HookFailureMode._(
    1,
    'WARN',
    'WARN',
  );

  /// All values of [HookFailureMode].
  static const values = <HookFailureMode>[
    HookFailureMode.fail,
    HookFailureMode.warn,
  ];

  static const List<_i1.SmithySerializer<HookFailureMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'HookFailureMode',
      values: values,
      sdkUnknown: HookFailureMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension HookFailureModeHelpers on List<HookFailureMode> {
  /// Returns the value of [HookFailureMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HookFailureMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HookFailureMode] whose value matches [value].
  HookFailureMode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
