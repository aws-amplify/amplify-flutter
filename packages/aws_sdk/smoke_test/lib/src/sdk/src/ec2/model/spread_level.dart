// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spread_level; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpreadLevel extends _i1.SmithyEnum<SpreadLevel> {
  const SpreadLevel._(
    super.index,
    super.name,
    super.value,
  );

  const SpreadLevel._sdkUnknown(super.value) : super.sdkUnknown();

  static const host = SpreadLevel._(
    0,
    'host',
    'host',
  );

  static const rack = SpreadLevel._(
    1,
    'rack',
    'rack',
  );

  /// All values of [SpreadLevel].
  static const values = <SpreadLevel>[
    SpreadLevel.host,
    SpreadLevel.rack,
  ];

  static const List<_i1.SmithySerializer<SpreadLevel>> serializers = [
    _i1.SmithyEnumSerializer(
      'SpreadLevel',
      values: values,
      sdkUnknown: SpreadLevel._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpreadLevelHelpers on List<SpreadLevel> {
  /// Returns the value of [SpreadLevel] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpreadLevel byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpreadLevel] whose value matches [value].
  SpreadLevel byValue(String value) => firstWhere((el) => el.value == value);
}
