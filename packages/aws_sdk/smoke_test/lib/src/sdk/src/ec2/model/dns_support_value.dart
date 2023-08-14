// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dns_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DnsSupportValue extends _i1.SmithyEnum<DnsSupportValue> {
  const DnsSupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const DnsSupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = DnsSupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = DnsSupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [DnsSupportValue].
  static const values = <DnsSupportValue>[
    DnsSupportValue.disable,
    DnsSupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<DnsSupportValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'DnsSupportValue',
      values: values,
      sdkUnknown: DnsSupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DnsSupportValueHelpers on List<DnsSupportValue> {
  /// Returns the value of [DnsSupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DnsSupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DnsSupportValue] whose value matches [value].
  DnsSupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
