// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.bgp_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BgpStatus extends _i1.SmithyEnum<BgpStatus> {
  const BgpStatus._(
    super.index,
    super.name,
    super.value,
  );

  const BgpStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const down = BgpStatus._(
    0,
    'down',
    'down',
  );

  static const up = BgpStatus._(
    1,
    'up',
    'up',
  );

  /// All values of [BgpStatus].
  static const values = <BgpStatus>[
    BgpStatus.down,
    BgpStatus.up,
  ];

  static const List<_i1.SmithySerializer<BgpStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'BgpStatus',
      values: values,
      sdkUnknown: BgpStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BgpStatusHelpers on List<BgpStatus> {
  /// Returns the value of [BgpStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BgpStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BgpStatus] whose value matches [value].
  BgpStatus byValue(String value) => firstWhere((el) => el.value == value);
}
