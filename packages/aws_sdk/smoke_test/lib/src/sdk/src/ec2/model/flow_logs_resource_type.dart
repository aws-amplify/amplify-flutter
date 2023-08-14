// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.flow_logs_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FlowLogsResourceType extends _i1.SmithyEnum<FlowLogsResourceType> {
  const FlowLogsResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const FlowLogsResourceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const networkInterface = FlowLogsResourceType._(
    0,
    'NetworkInterface',
    'NetworkInterface',
  );

  static const subnet = FlowLogsResourceType._(
    1,
    'Subnet',
    'Subnet',
  );

  static const transitGateway = FlowLogsResourceType._(
    2,
    'TransitGateway',
    'TransitGateway',
  );

  static const transitGatewayAttachment = FlowLogsResourceType._(
    3,
    'TransitGatewayAttachment',
    'TransitGatewayAttachment',
  );

  static const vpc = FlowLogsResourceType._(
    4,
    'VPC',
    'VPC',
  );

  /// All values of [FlowLogsResourceType].
  static const values = <FlowLogsResourceType>[
    FlowLogsResourceType.networkInterface,
    FlowLogsResourceType.subnet,
    FlowLogsResourceType.transitGateway,
    FlowLogsResourceType.transitGatewayAttachment,
    FlowLogsResourceType.vpc,
  ];

  static const List<_i1.SmithySerializer<FlowLogsResourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'FlowLogsResourceType',
      values: values,
      sdkUnknown: FlowLogsResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FlowLogsResourceTypeHelpers on List<FlowLogsResourceType> {
  /// Returns the value of [FlowLogsResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FlowLogsResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FlowLogsResourceType] whose value matches [value].
  FlowLogsResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
