// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.membership_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MembershipType extends _i1.SmithyEnum<MembershipType> {
  const MembershipType._(
    super.index,
    super.name,
    super.value,
  );

  const MembershipType._sdkUnknown(super.value) : super.sdkUnknown();

  static const igmp = MembershipType._(
    0,
    'igmp',
    'igmp',
  );

  static const static = MembershipType._(
    1,
    'static',
    'static',
  );

  /// All values of [MembershipType].
  static const values = <MembershipType>[
    MembershipType.igmp,
    MembershipType.static,
  ];

  static const List<_i1.SmithySerializer<MembershipType>> serializers = [
    _i1.SmithyEnumSerializer(
      'MembershipType',
      values: values,
      sdkUnknown: MembershipType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MembershipTypeHelpers on List<MembershipType> {
  /// Returns the value of [MembershipType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MembershipType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MembershipType] whose value matches [value].
  MembershipType byValue(String value) => firstWhere((el) => el.value == value);
}
