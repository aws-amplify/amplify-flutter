// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_cidr_reservation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SubnetCidrReservationType
    extends _i1.SmithyEnum<SubnetCidrReservationType> {
  const SubnetCidrReservationType._(
    super.index,
    super.name,
    super.value,
  );

  const SubnetCidrReservationType._sdkUnknown(super.value) : super.sdkUnknown();

  static const explicit = SubnetCidrReservationType._(
    0,
    'explicit',
    'explicit',
  );

  static const prefix = SubnetCidrReservationType._(
    1,
    'prefix',
    'prefix',
  );

  /// All values of [SubnetCidrReservationType].
  static const values = <SubnetCidrReservationType>[
    SubnetCidrReservationType.explicit,
    SubnetCidrReservationType.prefix,
  ];

  static const List<_i1.SmithySerializer<SubnetCidrReservationType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'SubnetCidrReservationType',
      values: values,
      sdkUnknown: SubnetCidrReservationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SubnetCidrReservationTypeHelpers on List<SubnetCidrReservationType> {
  /// Returns the value of [SubnetCidrReservationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SubnetCidrReservationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SubnetCidrReservationType] whose value matches [value].
  SubnetCidrReservationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
