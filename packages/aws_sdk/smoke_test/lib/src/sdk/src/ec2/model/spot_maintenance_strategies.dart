// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_maintenance_strategies; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_capacity_rebalance.dart';

part 'spot_maintenance_strategies.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class SpotMaintenanceStrategies
    with _i1.AWSEquatable<SpotMaintenanceStrategies>
    implements
        Built<SpotMaintenanceStrategies, SpotMaintenanceStrategiesBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory SpotMaintenanceStrategies(
      {SpotCapacityRebalance? capacityRebalance}) {
    return _$SpotMaintenanceStrategies._(capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory SpotMaintenanceStrategies.build(
          [void Function(SpotMaintenanceStrategiesBuilder) updates]) =
      _$SpotMaintenanceStrategies;

  const SpotMaintenanceStrategies._();

  static const List<_i2.SmithySerializer<SpotMaintenanceStrategies>>
      serializers = [SpotMaintenanceStrategiesEc2QuerySerializer()];

  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide for Linux Instances_.
  SpotCapacityRebalance? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotMaintenanceStrategies')
      ..add(
        'capacityRebalance',
        capacityRebalance,
      );
    return helper.toString();
  }
}

class SpotMaintenanceStrategiesEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotMaintenanceStrategies> {
  const SpotMaintenanceStrategiesEc2QuerySerializer()
      : super('SpotMaintenanceStrategies');

  @override
  Iterable<Type> get types => const [
        SpotMaintenanceStrategies,
        _$SpotMaintenanceStrategies,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotMaintenanceStrategies deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotMaintenanceStrategiesBuilder();
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
            specifiedType: const FullType(SpotCapacityRebalance),
          ) as SpotCapacityRebalance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotMaintenanceStrategies object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotMaintenanceStrategiesResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotMaintenanceStrategies(:capacityRebalance) = object;
    if (capacityRebalance != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          capacityRebalance,
          specifiedType: const FullType(SpotCapacityRebalance),
        ));
    }
    return result$;
  }
}
