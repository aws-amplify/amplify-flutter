// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NetworkInterfaceAttribute
    extends _i1.SmithyEnum<NetworkInterfaceAttribute> {
  const NetworkInterfaceAttribute._(
    super.index,
    super.name,
    super.value,
  );

  const NetworkInterfaceAttribute._sdkUnknown(super.value) : super.sdkUnknown();

  static const attachment = NetworkInterfaceAttribute._(
    0,
    'attachment',
    'attachment',
  );

  static const description = NetworkInterfaceAttribute._(
    1,
    'description',
    'description',
  );

  static const groupSet = NetworkInterfaceAttribute._(
    2,
    'groupSet',
    'groupSet',
  );

  static const sourceDestCheck = NetworkInterfaceAttribute._(
    3,
    'sourceDestCheck',
    'sourceDestCheck',
  );

  /// All values of [NetworkInterfaceAttribute].
  static const values = <NetworkInterfaceAttribute>[
    NetworkInterfaceAttribute.attachment,
    NetworkInterfaceAttribute.description,
    NetworkInterfaceAttribute.groupSet,
    NetworkInterfaceAttribute.sourceDestCheck,
  ];

  static const List<_i1.SmithySerializer<NetworkInterfaceAttribute>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'NetworkInterfaceAttribute',
      values: values,
      sdkUnknown: NetworkInterfaceAttribute._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NetworkInterfaceAttributeHelpers on List<NetworkInterfaceAttribute> {
  /// Returns the value of [NetworkInterfaceAttribute] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NetworkInterfaceAttribute byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NetworkInterfaceAttribute] whose value matches [value].
  NetworkInterfaceAttribute byValue(String value) =>
      firstWhere((el) => el.value == value);
}
