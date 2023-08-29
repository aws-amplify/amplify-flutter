// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifiedAccessEndpointType
    extends _i1.SmithyEnum<VerifiedAccessEndpointType> {
  const VerifiedAccessEndpointType._(
    super.index,
    super.name,
    super.value,
  );

  const VerifiedAccessEndpointType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const loadBalancer = VerifiedAccessEndpointType._(
    0,
    'load_balancer',
    'load-balancer',
  );

  static const networkInterface = VerifiedAccessEndpointType._(
    1,
    'network_interface',
    'network-interface',
  );

  /// All values of [VerifiedAccessEndpointType].
  static const values = <VerifiedAccessEndpointType>[
    VerifiedAccessEndpointType.loadBalancer,
    VerifiedAccessEndpointType.networkInterface,
  ];

  static const List<_i1.SmithySerializer<VerifiedAccessEndpointType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VerifiedAccessEndpointType',
      values: values,
      sdkUnknown: VerifiedAccessEndpointType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VerifiedAccessEndpointTypeHelpers
    on List<VerifiedAccessEndpointType> {
  /// Returns the value of [VerifiedAccessEndpointType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifiedAccessEndpointType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifiedAccessEndpointType] whose value matches [value].
  VerifiedAccessEndpointType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
