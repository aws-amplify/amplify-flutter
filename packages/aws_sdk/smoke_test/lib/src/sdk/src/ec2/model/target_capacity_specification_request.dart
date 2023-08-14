// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_capacity_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/default_target_capacity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart';

part 'target_capacity_specification_request.g.dart';

/// The number of units to request. You can choose to set the target capacity as the number of instances. Or you can set the target capacity to a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
///
/// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptionsRequest) and [SpotOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptionsRequest).
abstract class TargetCapacitySpecificationRequest
    with
        _i1.AWSEquatable<TargetCapacitySpecificationRequest>
    implements
        Built<TargetCapacitySpecificationRequest,
            TargetCapacitySpecificationRequestBuilder> {
  /// The number of units to request. You can choose to set the target capacity as the number of instances. Or you can set the target capacity to a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  ///
  /// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptionsRequest) and [SpotOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptionsRequest).
  factory TargetCapacitySpecificationRequest({
    int? totalTargetCapacity,
    int? onDemandTargetCapacity,
    int? spotTargetCapacity,
    DefaultTargetCapacityType? defaultTargetCapacityType,
    TargetCapacityUnitType? targetCapacityUnitType,
  }) {
    totalTargetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    spotTargetCapacity ??= 0;
    return _$TargetCapacitySpecificationRequest._(
      totalTargetCapacity: totalTargetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      spotTargetCapacity: spotTargetCapacity,
      defaultTargetCapacityType: defaultTargetCapacityType,
      targetCapacityUnitType: targetCapacityUnitType,
    );
  }

  /// The number of units to request. You can choose to set the target capacity as the number of instances. Or you can set the target capacity to a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  ///
  /// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptionsRequest) and [SpotOptionsRequest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptionsRequest).
  factory TargetCapacitySpecificationRequest.build(
          [void Function(TargetCapacitySpecificationRequestBuilder) updates]) =
      _$TargetCapacitySpecificationRequest;

  const TargetCapacitySpecificationRequest._();

  static const List<_i2.SmithySerializer<TargetCapacitySpecificationRequest>>
      serializers = [TargetCapacitySpecificationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetCapacitySpecificationRequestBuilder b) {
    b
      ..totalTargetCapacity = 0
      ..onDemandTargetCapacity = 0
      ..spotTargetCapacity = 0;
  }

  /// The number of units to request, filled using `DefaultTargetCapacityType`.
  int get totalTargetCapacity;

  /// The number of On-Demand units to request.
  int get onDemandTargetCapacity;

  /// The number of Spot units to request.
  int get spotTargetCapacity;

  /// The default `TotalTargetCapacity`, which is either `Spot` or `On-Demand`.
  DefaultTargetCapacityType? get defaultTargetCapacityType;

  /// The unit for the target capacity. `TargetCapacityUnitType` can only be specified when `InstanceRequirements` is specified.
  ///
  /// Default: `units` (translates to number of instances)
  TargetCapacityUnitType? get targetCapacityUnitType;
  @override
  List<Object?> get props => [
        totalTargetCapacity,
        onDemandTargetCapacity,
        spotTargetCapacity,
        defaultTargetCapacityType,
        targetCapacityUnitType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TargetCapacitySpecificationRequest')
          ..add(
            'totalTargetCapacity',
            totalTargetCapacity,
          )
          ..add(
            'onDemandTargetCapacity',
            onDemandTargetCapacity,
          )
          ..add(
            'spotTargetCapacity',
            spotTargetCapacity,
          )
          ..add(
            'defaultTargetCapacityType',
            defaultTargetCapacityType,
          )
          ..add(
            'targetCapacityUnitType',
            targetCapacityUnitType,
          );
    return helper.toString();
  }
}

class TargetCapacitySpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TargetCapacitySpecificationRequest> {
  const TargetCapacitySpecificationRequestEc2QuerySerializer()
      : super('TargetCapacitySpecificationRequest');

  @override
  Iterable<Type> get types => const [
        TargetCapacitySpecificationRequest,
        _$TargetCapacitySpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetCapacitySpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetCapacitySpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TotalTargetCapacity':
          result.totalTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'OnDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SpotTargetCapacity':
          result.spotTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DefaultTargetCapacityType':
          result.defaultTargetCapacityType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultTargetCapacityType),
          ) as DefaultTargetCapacityType);
        case 'TargetCapacityUnitType':
          result.targetCapacityUnitType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TargetCapacityUnitType),
          ) as TargetCapacityUnitType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TargetCapacitySpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TargetCapacitySpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TargetCapacitySpecificationRequest(
      :totalTargetCapacity,
      :onDemandTargetCapacity,
      :spotTargetCapacity,
      :defaultTargetCapacityType,
      :targetCapacityUnitType
    ) = object;
    result$
      ..add(const _i2.XmlElementName('TotalTargetCapacity'))
      ..add(serializers.serialize(
        totalTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('SpotTargetCapacity'))
      ..add(serializers.serialize(
        spotTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (defaultTargetCapacityType != null) {
      result$
        ..add(const _i2.XmlElementName('DefaultTargetCapacityType'))
        ..add(serializers.serialize(
          defaultTargetCapacityType,
          specifiedType: const FullType.nullable(DefaultTargetCapacityType),
        ));
    }
    if (targetCapacityUnitType != null) {
      result$
        ..add(const _i2.XmlElementName('TargetCapacityUnitType'))
        ..add(serializers.serialize(
          targetCapacityUnitType,
          specifiedType: const FullType.nullable(TargetCapacityUnitType),
        ));
    }
    return result$;
  }
}
