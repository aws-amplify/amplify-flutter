// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.static_sources_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StaticSourcesSupportValue
    extends _i1.SmithyEnum<StaticSourcesSupportValue> {
  const StaticSourcesSupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const StaticSourcesSupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = StaticSourcesSupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = StaticSourcesSupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [StaticSourcesSupportValue].
  static const values = <StaticSourcesSupportValue>[
    StaticSourcesSupportValue.disable,
    StaticSourcesSupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<StaticSourcesSupportValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StaticSourcesSupportValue',
      values: values,
      sdkUnknown: StaticSourcesSupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StaticSourcesSupportValueHelpers on List<StaticSourcesSupportValue> {
  /// Returns the value of [StaticSourcesSupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StaticSourcesSupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StaticSourcesSupportValue] whose value matches [value].
  StaticSourcesSupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
