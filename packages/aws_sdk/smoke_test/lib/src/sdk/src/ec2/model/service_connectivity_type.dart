// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_connectivity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ServiceConnectivityType extends _i1.SmithyEnum<ServiceConnectivityType> {
  const ServiceConnectivityType._(
    super.index,
    super.name,
    super.value,
  );

  const ServiceConnectivityType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ipv4 = ServiceConnectivityType._(
    0,
    'ipv4',
    'ipv4',
  );

  static const ipv6 = ServiceConnectivityType._(
    1,
    'ipv6',
    'ipv6',
  );

  /// All values of [ServiceConnectivityType].
  static const values = <ServiceConnectivityType>[
    ServiceConnectivityType.ipv4,
    ServiceConnectivityType.ipv6,
  ];

  static const List<_i1.SmithySerializer<ServiceConnectivityType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ServiceConnectivityType',
      values: values,
      sdkUnknown: ServiceConnectivityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ServiceConnectivityTypeHelpers on List<ServiceConnectivityType> {
  /// Returns the value of [ServiceConnectivityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ServiceConnectivityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ServiceConnectivityType] whose value matches [value].
  ServiceConnectivityType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
