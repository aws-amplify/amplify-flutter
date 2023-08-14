// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ServiceType extends _i1.SmithyEnum<ServiceType> {
  const ServiceType._(
    super.index,
    super.name,
    super.value,
  );

  const ServiceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const gateway = ServiceType._(
    0,
    'Gateway',
    'Gateway',
  );

  static const gatewayLoadBalancer = ServiceType._(
    1,
    'GatewayLoadBalancer',
    'GatewayLoadBalancer',
  );

  static const interface = ServiceType._(
    2,
    'Interface',
    'Interface',
  );

  /// All values of [ServiceType].
  static const values = <ServiceType>[
    ServiceType.gateway,
    ServiceType.gatewayLoadBalancer,
    ServiceType.interface,
  ];

  static const List<_i1.SmithySerializer<ServiceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ServiceType',
      values: values,
      sdkUnknown: ServiceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ServiceTypeHelpers on List<ServiceType> {
  /// Returns the value of [ServiceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ServiceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ServiceType] whose value matches [value].
  ServiceType byValue(String value) => firstWhere((el) => el.value == value);
}
