// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.address_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AddressAttributeName extends _i1.SmithyEnum<AddressAttributeName> {
  const AddressAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const AddressAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const domainName = AddressAttributeName._(
    0,
    'domain_name',
    'domain-name',
  );

  /// All values of [AddressAttributeName].
  static const values = <AddressAttributeName>[AddressAttributeName.domainName];

  static const List<_i1.SmithySerializer<AddressAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'AddressAttributeName',
      values: values,
      sdkUnknown: AddressAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AddressAttributeNameHelpers on List<AddressAttributeName> {
  /// Returns the value of [AddressAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AddressAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AddressAttributeName] whose value matches [value].
  AddressAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
