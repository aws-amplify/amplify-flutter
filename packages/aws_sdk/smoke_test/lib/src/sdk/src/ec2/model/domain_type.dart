// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.domain_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DomainType extends _i1.SmithyEnum<DomainType> {
  const DomainType._(
    super.index,
    super.name,
    super.value,
  );

  const DomainType._sdkUnknown(super.value) : super.sdkUnknown();

  static const standard = DomainType._(
    0,
    'standard',
    'standard',
  );

  static const vpc = DomainType._(
    1,
    'vpc',
    'vpc',
  );

  /// All values of [DomainType].
  static const values = <DomainType>[
    DomainType.standard,
    DomainType.vpc,
  ];

  static const List<_i1.SmithySerializer<DomainType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DomainType',
      values: values,
      sdkUnknown: DomainType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DomainTypeHelpers on List<DomainType> {
  /// Returns the value of [DomainType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DomainType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DomainType] whose value matches [value].
  DomainType byValue(String value) => firstWhere((el) => el.value == value);
}
