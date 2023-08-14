// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.address_family; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AddressFamily extends _i1.SmithyEnum<AddressFamily> {
  const AddressFamily._(
    super.index,
    super.name,
    super.value,
  );

  const AddressFamily._sdkUnknown(super.value) : super.sdkUnknown();

  static const ipv4 = AddressFamily._(
    0,
    'ipv4',
    'ipv4',
  );

  static const ipv6 = AddressFamily._(
    1,
    'ipv6',
    'ipv6',
  );

  /// All values of [AddressFamily].
  static const values = <AddressFamily>[
    AddressFamily.ipv4,
    AddressFamily.ipv6,
  ];

  static const List<_i1.SmithySerializer<AddressFamily>> serializers = [
    _i1.SmithyEnumSerializer(
      'AddressFamily',
      values: values,
      sdkUnknown: AddressFamily._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AddressFamilyHelpers on List<AddressFamily> {
  /// Returns the value of [AddressFamily] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AddressFamily byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AddressFamily] whose value matches [value].
  AddressFamily byValue(String value) => firstWhere((el) => el.value == value);
}
