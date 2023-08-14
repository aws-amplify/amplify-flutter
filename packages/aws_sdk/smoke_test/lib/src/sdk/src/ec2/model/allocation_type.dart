// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AllocationType extends _i1.SmithyEnum<AllocationType> {
  const AllocationType._(
    super.index,
    super.name,
    super.value,
  );

  const AllocationType._sdkUnknown(super.value) : super.sdkUnknown();

  static const used = AllocationType._(
    0,
    'used',
    'used',
  );

  /// All values of [AllocationType].
  static const values = <AllocationType>[AllocationType.used];

  static const List<_i1.SmithySerializer<AllocationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AllocationType',
      values: values,
      sdkUnknown: AllocationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AllocationTypeHelpers on List<AllocationType> {
  /// Returns the value of [AllocationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AllocationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AllocationType] whose value matches [value].
  AllocationType byValue(String value) => firstWhere((el) => el.value == value);
}
