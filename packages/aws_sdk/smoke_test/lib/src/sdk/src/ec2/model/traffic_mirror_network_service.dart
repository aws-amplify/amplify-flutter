// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_network_service; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorNetworkService
    extends _i1.SmithyEnum<TrafficMirrorNetworkService> {
  const TrafficMirrorNetworkService._(
    super.index,
    super.name,
    super.value,
  );

  const TrafficMirrorNetworkService._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const amazonDns = TrafficMirrorNetworkService._(
    0,
    'amazon_dns',
    'amazon-dns',
  );

  /// All values of [TrafficMirrorNetworkService].
  static const values = <TrafficMirrorNetworkService>[
    TrafficMirrorNetworkService.amazonDns
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorNetworkService>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorNetworkService',
      values: values,
      sdkUnknown: TrafficMirrorNetworkService._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorNetworkServiceHelpers
    on List<TrafficMirrorNetworkService> {
  /// Returns the value of [TrafficMirrorNetworkService] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorNetworkService byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorNetworkService] whose value matches [value].
  TrafficMirrorNetworkService byValue(String value) =>
      firstWhere((el) => el.value == value);
}
