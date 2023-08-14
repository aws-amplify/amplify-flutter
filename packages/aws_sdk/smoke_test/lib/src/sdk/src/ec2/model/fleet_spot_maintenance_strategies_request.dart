// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_spot_maintenance_strategies_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance_request.dart';

part 'fleet_spot_maintenance_strategies_request.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class FleetSpotMaintenanceStrategiesRequest
    with
        _i1.AWSEquatable<FleetSpotMaintenanceStrategiesRequest>
    implements
        Built<FleetSpotMaintenanceStrategiesRequest,
            FleetSpotMaintenanceStrategiesRequestBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategiesRequest(
      {FleetSpotCapacityRebalanceRequest? capacityRebalance}) {
    return _$FleetSpotMaintenanceStrategiesRequest._(
        capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategiesRequest.build(
      [void Function(FleetSpotMaintenanceStrategiesRequestBuilder)
          updates]) = _$FleetSpotMaintenanceStrategiesRequest;

  const FleetSpotMaintenanceStrategiesRequest._();

  static const List<_i2.SmithySerializer<FleetSpotMaintenanceStrategiesRequest>>
      serializers = [FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer()];

  /// The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted.
  FleetSpotCapacityRebalanceRequest? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetSpotMaintenanceStrategiesRequest')
          ..add(
            'capacityRebalance',
            capacityRebalance,
          );
    return helper.toString();
  }
}

class FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FleetSpotMaintenanceStrategiesRequest> {
  const FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer()
      : super('FleetSpotMaintenanceStrategiesRequest');

  @override
  Iterable<Type> get types => const [
        FleetSpotMaintenanceStrategiesRequest,
        _$FleetSpotMaintenanceStrategiesRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetSpotMaintenanceStrategiesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetSpotMaintenanceStrategiesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityRebalance':
          result.capacityRebalance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FleetSpotCapacityRebalanceRequest),
          ) as FleetSpotCapacityRebalanceRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetSpotMaintenanceStrategiesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetSpotMaintenanceStrategiesRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetSpotMaintenanceStrategiesRequest(:capacityRebalance) = object;
    if (capacityRebalance != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          capacityRebalance,
          specifiedType: const FullType(FleetSpotCapacityRebalanceRequest),
        ));
    }
    return result$;
  }
}
