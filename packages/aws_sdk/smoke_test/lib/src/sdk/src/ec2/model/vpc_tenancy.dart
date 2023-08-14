// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_tenancy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcTenancy extends _i1.SmithyEnum<VpcTenancy> {
  const VpcTenancy._(
    super.index,
    super.name,
    super.value,
  );

  const VpcTenancy._sdkUnknown(super.value) : super.sdkUnknown();

  static const default$ = VpcTenancy._(
    0,
    'default',
    'default',
  );

  /// All values of [VpcTenancy].
  static const values = <VpcTenancy>[VpcTenancy.default$];

  static const List<_i1.SmithySerializer<VpcTenancy>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcTenancy',
      values: values,
      sdkUnknown: VpcTenancy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcTenancyHelpers on List<VpcTenancy> {
  /// Returns the value of [VpcTenancy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcTenancy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcTenancy] whose value matches [value].
  VpcTenancy byValue(String value) => firstWhere((el) => el.value == value);
}
