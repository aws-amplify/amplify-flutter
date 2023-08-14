// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_endpoint_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcEndpointType extends _i1.SmithyEnum<VpcEndpointType> {
  const VpcEndpointType._(
    super.index,
    super.name,
    super.value,
  );

  const VpcEndpointType._sdkUnknown(super.value) : super.sdkUnknown();

  static const gateway = VpcEndpointType._(
    0,
    'Gateway',
    'Gateway',
  );

  static const gatewayLoadBalancer = VpcEndpointType._(
    1,
    'GatewayLoadBalancer',
    'GatewayLoadBalancer',
  );

  static const interface = VpcEndpointType._(
    2,
    'Interface',
    'Interface',
  );

  /// All values of [VpcEndpointType].
  static const values = <VpcEndpointType>[
    VpcEndpointType.gateway,
    VpcEndpointType.gatewayLoadBalancer,
    VpcEndpointType.interface,
  ];

  static const List<_i1.SmithySerializer<VpcEndpointType>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcEndpointType',
      values: values,
      sdkUnknown: VpcEndpointType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcEndpointTypeHelpers on List<VpcEndpointType> {
  /// Returns the value of [VpcEndpointType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcEndpointType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcEndpointType] whose value matches [value].
  VpcEndpointType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
