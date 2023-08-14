// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.affinity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Affinity extends _i1.SmithyEnum<Affinity> {
  const Affinity._(
    super.index,
    super.name,
    super.value,
  );

  const Affinity._sdkUnknown(super.value) : super.sdkUnknown();

  static const default$ = Affinity._(
    0,
    'default',
    'default',
  );

  static const host = Affinity._(
    1,
    'host',
    'host',
  );

  /// All values of [Affinity].
  static const values = <Affinity>[
    Affinity.default$,
    Affinity.host,
  ];

  static const List<_i1.SmithySerializer<Affinity>> serializers = [
    _i1.SmithyEnumSerializer(
      'Affinity',
      values: values,
      sdkUnknown: Affinity._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AffinityHelpers on List<Affinity> {
  /// Returns the value of [Affinity] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Affinity byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Affinity] whose value matches [value].
  Affinity byValue(String value) => firstWhere((el) => el.value == value);
}
