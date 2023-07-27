// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.auto_scaling_target_tracking_scaling_policy_configuration_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'auto_scaling_target_tracking_scaling_policy_configuration_description.g.dart';

/// Represents the properties of a target tracking scaling policy.
abstract class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    with
        _i1.AWSEquatable<
            AutoScalingTargetTrackingScalingPolicyConfigurationDescription>
    implements
        Built<AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
            AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder> {
  /// Represents the properties of a target tracking scaling policy.
  factory AutoScalingTargetTrackingScalingPolicyConfigurationDescription({
    bool? disableScaleIn,
    int? scaleInCooldown,
    int? scaleOutCooldown,
    required double targetValue,
  }) {
    return _$AutoScalingTargetTrackingScalingPolicyConfigurationDescription._(
      disableScaleIn: disableScaleIn,
      scaleInCooldown: scaleInCooldown,
      scaleOutCooldown: scaleOutCooldown,
      targetValue: targetValue,
    );
  }

  /// Represents the properties of a target tracking scaling policy.
  factory AutoScalingTargetTrackingScalingPolicyConfigurationDescription.build(
          [void Function(
                  AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder)
              updates]) =
      _$AutoScalingTargetTrackingScalingPolicyConfigurationDescription;

  const AutoScalingTargetTrackingScalingPolicyConfigurationDescription._();

  static const List<
          _i2.SmithySerializer<
              AutoScalingTargetTrackingScalingPolicyConfigurationDescription>>
      serializers = [
    AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionAwsJson10Serializer()
  ];

  /// Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.
  bool? get disableScaleIn;

  /// The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application auto scaling scales out your scalable target immediately.
  int? get scaleInCooldown;

  /// The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.
  int? get scaleOutCooldown;

  /// The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
  double get targetValue;
  @override
  List<Object?> get props => [
        disableScaleIn,
        scaleInCooldown,
        scaleOutCooldown,
        targetValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AutoScalingTargetTrackingScalingPolicyConfigurationDescription')
      ..add(
        'disableScaleIn',
        disableScaleIn,
      )
      ..add(
        'scaleInCooldown',
        scaleInCooldown,
      )
      ..add(
        'scaleOutCooldown',
        scaleOutCooldown,
      )
      ..add(
        'targetValue',
        targetValue,
      );
    return helper.toString();
  }
}

class AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<
        AutoScalingTargetTrackingScalingPolicyConfigurationDescription> {
  const AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionAwsJson10Serializer()
      : super('AutoScalingTargetTrackingScalingPolicyConfigurationDescription');

  @override
  Iterable<Type> get types => const [
        AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
        _$AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AutoScalingTargetTrackingScalingPolicyConfigurationDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DisableScaleIn':
          result.disableScaleIn = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ScaleInCooldown':
          result.scaleInCooldown = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ScaleOutCooldown':
          result.scaleOutCooldown = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TargetValue':
          result.targetValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AutoScalingTargetTrackingScalingPolicyConfigurationDescription(
      :disableScaleIn,
      :scaleInCooldown,
      :scaleOutCooldown,
      :targetValue
    ) = object;
    result$.addAll([
      'TargetValue',
      serializers.serialize(
        targetValue,
        specifiedType: const FullType(double),
      ),
    ]);
    if (disableScaleIn != null) {
      result$
        ..add('DisableScaleIn')
        ..add(serializers.serialize(
          disableScaleIn,
          specifiedType: const FullType(bool),
        ));
    }
    if (scaleInCooldown != null) {
      result$
        ..add('ScaleInCooldown')
        ..add(serializers.serialize(
          scaleInCooldown,
          specifiedType: const FullType(int),
        ));
    }
    if (scaleOutCooldown != null) {
      result$
        ..add('ScaleOutCooldown')
        ..add(serializers.serialize(
          scaleOutCooldown,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
