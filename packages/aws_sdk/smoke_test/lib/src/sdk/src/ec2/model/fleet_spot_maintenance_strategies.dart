// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_spot_maintenance_strategies; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance.dart';

part 'fleet_spot_maintenance_strategies.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class FleetSpotMaintenanceStrategies
    with
        _i1.AWSEquatable<FleetSpotMaintenanceStrategies>
    implements
        Built<FleetSpotMaintenanceStrategies,
            FleetSpotMaintenanceStrategiesBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategies(
      {FleetSpotCapacityRebalance? capacityRebalance}) {
    return _$FleetSpotMaintenanceStrategies._(
        capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategies.build(
          [void Function(FleetSpotMaintenanceStrategiesBuilder) updates]) =
      _$FleetSpotMaintenanceStrategies;

  const FleetSpotMaintenanceStrategies._();

  static const List<_i2.SmithySerializer<FleetSpotMaintenanceStrategies>>
      serializers = [FleetSpotMaintenanceStrategiesEc2QuerySerializer()];

  /// The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted.
  FleetSpotCapacityRebalance? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetSpotMaintenanceStrategies')
      ..add(
        'capacityRebalance',
        capacityRebalance,
      );
    return helper.toString();
  }
}

class FleetSpotMaintenanceStrategiesEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FleetSpotMaintenanceStrategies> {
  const FleetSpotMaintenanceStrategiesEc2QuerySerializer()
      : super('FleetSpotMaintenanceStrategies');

  @override
  Iterable<Type> get types => const [
        FleetSpotMaintenanceStrategies,
        _$FleetSpotMaintenanceStrategies,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetSpotMaintenanceStrategies deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetSpotMaintenanceStrategiesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityRebalance':
          result.capacityRebalance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FleetSpotCapacityRebalance),
          ) as FleetSpotCapacityRebalance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetSpotMaintenanceStrategies object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetSpotMaintenanceStrategiesResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetSpotMaintenanceStrategies(:capacityRebalance) = object;
    if (capacityRebalance != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          capacityRebalance,
          specifiedType: const FullType(FleetSpotCapacityRebalance),
        ));
    }
    return result$;
  }
}
