// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_capacity_rebalance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/replacement_strategy.dart';

part 'spot_capacity_rebalance.g.dart';

/// The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide for Linux Instances_.
abstract class SpotCapacityRebalance
    with _i1.AWSEquatable<SpotCapacityRebalance>
    implements Built<SpotCapacityRebalance, SpotCapacityRebalanceBuilder> {
  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide for Linux Instances_.
  factory SpotCapacityRebalance({
    ReplacementStrategy? replacementStrategy,
    int? terminationDelay,
  }) {
    terminationDelay ??= 0;
    return _$SpotCapacityRebalance._(
      replacementStrategy: replacementStrategy,
      terminationDelay: terminationDelay,
    );
  }

  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide for Linux Instances_.
  factory SpotCapacityRebalance.build(
          [void Function(SpotCapacityRebalanceBuilder) updates]) =
      _$SpotCapacityRebalance;

  const SpotCapacityRebalance._();

  static const List<_i2.SmithySerializer<SpotCapacityRebalance>> serializers = [
    SpotCapacityRebalanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotCapacityRebalanceBuilder b) {
    b.terminationDelay = 0;
  }

  /// The replacement strategy to use. Only available for fleets of type `maintain`.
  ///
  /// `launch` \- Spot Fleet launches a new replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet. Spot Fleet does not terminate the instances that receive a rebalance notification. You can terminate the old instances, or you can leave them running. You are charged for all instances while they are running.
  ///
  /// `launch-before-terminate` \- Spot Fleet launches a new replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet, and then, after a delay that you specify (in `TerminationDelay`), terminates the instances that received a rebalance notification.
  ReplacementStrategy? get replacementStrategy;

  /// The amount of time (in seconds) that Amazon EC2 waits before terminating the old Spot Instance after launching a new replacement Spot Instance.
  ///
  /// Required when `ReplacementStrategy` is set to `launch-before-terminate`.
  ///
  /// Not valid when `ReplacementStrategy` is set to `launch`.
  ///
  /// Valid values: Minimum value of `120` seconds. Maximum value of `7200` seconds.
  int get terminationDelay;
  @override
  List<Object?> get props => [
        replacementStrategy,
        terminationDelay,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotCapacityRebalance')
      ..add(
        'replacementStrategy',
        replacementStrategy,
      )
      ..add(
        'terminationDelay',
        terminationDelay,
      );
    return helper.toString();
  }
}

class SpotCapacityRebalanceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotCapacityRebalance> {
  const SpotCapacityRebalanceEc2QuerySerializer()
      : super('SpotCapacityRebalance');

  @override
  Iterable<Type> get types => const [
        SpotCapacityRebalance,
        _$SpotCapacityRebalance,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotCapacityRebalance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotCapacityRebalanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'replacementStrategy':
          result.replacementStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReplacementStrategy),
          ) as ReplacementStrategy);
        case 'terminationDelay':
          result.terminationDelay = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotCapacityRebalance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotCapacityRebalanceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotCapacityRebalance(:replacementStrategy, :terminationDelay) =
        object;
    if (replacementStrategy != null) {
      result$
        ..add(const _i2.XmlElementName('ReplacementStrategy'))
        ..add(serializers.serialize(
          replacementStrategy,
          specifiedType: const FullType(ReplacementStrategy),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('TerminationDelay'))
      ..add(serializers.serialize(
        terminationDelay,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
