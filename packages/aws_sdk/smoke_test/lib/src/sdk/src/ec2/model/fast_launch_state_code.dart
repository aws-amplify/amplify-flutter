// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fast_launch_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FastLaunchStateCode extends _i1.SmithyEnum<FastLaunchStateCode> {
  const FastLaunchStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const FastLaunchStateCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabling = FastLaunchStateCode._(
    0,
    'disabling',
    'disabling',
  );

  static const disablingFailed = FastLaunchStateCode._(
    1,
    'disabling_failed',
    'disabling-failed',
  );

  static const enabled = FastLaunchStateCode._(
    2,
    'enabled',
    'enabled',
  );

  static const enabledFailed = FastLaunchStateCode._(
    3,
    'enabled_failed',
    'enabled-failed',
  );

  static const enabling = FastLaunchStateCode._(
    4,
    'enabling',
    'enabling',
  );

  static const enablingFailed = FastLaunchStateCode._(
    5,
    'enabling_failed',
    'enabling-failed',
  );

  /// All values of [FastLaunchStateCode].
  static const values = <FastLaunchStateCode>[
    FastLaunchStateCode.disabling,
    FastLaunchStateCode.disablingFailed,
    FastLaunchStateCode.enabled,
    FastLaunchStateCode.enabledFailed,
    FastLaunchStateCode.enabling,
    FastLaunchStateCode.enablingFailed,
  ];

  static const List<_i1.SmithySerializer<FastLaunchStateCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'FastLaunchStateCode',
      values: values,
      sdkUnknown: FastLaunchStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FastLaunchStateCodeHelpers on List<FastLaunchStateCode> {
  /// Returns the value of [FastLaunchStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FastLaunchStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FastLaunchStateCode] whose value matches [value].
  FastLaunchStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
