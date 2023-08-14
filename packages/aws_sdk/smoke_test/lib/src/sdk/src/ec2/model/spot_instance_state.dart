// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_instance_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpotInstanceState extends _i1.SmithyEnum<SpotInstanceState> {
  const SpotInstanceState._(
    super.index,
    super.name,
    super.value,
  );

  const SpotInstanceState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = SpotInstanceState._(
    0,
    'active',
    'active',
  );

  static const cancelled = SpotInstanceState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const closed = SpotInstanceState._(
    2,
    'closed',
    'closed',
  );

  static const disabled = SpotInstanceState._(
    3,
    'disabled',
    'disabled',
  );

  static const failed = SpotInstanceState._(
    4,
    'failed',
    'failed',
  );

  static const open = SpotInstanceState._(
    5,
    'open',
    'open',
  );

  /// All values of [SpotInstanceState].
  static const values = <SpotInstanceState>[
    SpotInstanceState.active,
    SpotInstanceState.cancelled,
    SpotInstanceState.closed,
    SpotInstanceState.disabled,
    SpotInstanceState.failed,
    SpotInstanceState.open,
  ];

  static const List<_i1.SmithySerializer<SpotInstanceState>> serializers = [
    _i1.SmithyEnumSerializer(
      'SpotInstanceState',
      values: values,
      sdkUnknown: SpotInstanceState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpotInstanceStateHelpers on List<SpotInstanceState> {
  /// Returns the value of [SpotInstanceState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpotInstanceState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpotInstanceState] whose value matches [value].
  SpotInstanceState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
