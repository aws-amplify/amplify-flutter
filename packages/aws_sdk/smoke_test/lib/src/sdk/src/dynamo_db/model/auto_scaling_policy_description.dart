// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.auto_scaling_policy_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_description.dart'
    as _i2;

part 'auto_scaling_policy_description.g.dart';

/// Represents the properties of the scaling policy.
abstract class AutoScalingPolicyDescription
    with
        _i1.AWSEquatable<AutoScalingPolicyDescription>
    implements
        Built<AutoScalingPolicyDescription,
            AutoScalingPolicyDescriptionBuilder> {
  /// Represents the properties of the scaling policy.
  factory AutoScalingPolicyDescription({
    String? policyName,
    _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescription?
        targetTrackingScalingPolicyConfiguration,
  }) {
    return _$AutoScalingPolicyDescription._(
      policyName: policyName,
      targetTrackingScalingPolicyConfiguration:
          targetTrackingScalingPolicyConfiguration,
    );
  }

  /// Represents the properties of the scaling policy.
  factory AutoScalingPolicyDescription.build(
          [void Function(AutoScalingPolicyDescriptionBuilder) updates]) =
      _$AutoScalingPolicyDescription;

  const AutoScalingPolicyDescription._();

  static const List<_i3.SmithySerializer<AutoScalingPolicyDescription>>
      serializers = [AutoScalingPolicyDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingPolicyDescriptionBuilder b) {}

  /// The name of the scaling policy.
  String? get policyName;

  /// Represents a target tracking scaling policy configuration.
  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescription?
      get targetTrackingScalingPolicyConfiguration;
  @override
  List<Object?> get props => [
        policyName,
        targetTrackingScalingPolicyConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoScalingPolicyDescription')
      ..add(
        'policyName',
        policyName,
      )
      ..add(
        'targetTrackingScalingPolicyConfiguration',
        targetTrackingScalingPolicyConfiguration,
      );
    return helper.toString();
  }
}

class AutoScalingPolicyDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<AutoScalingPolicyDescription> {
  const AutoScalingPolicyDescriptionAwsJson10Serializer()
      : super('AutoScalingPolicyDescription');

  @override
  Iterable<Type> get types => const [
        AutoScalingPolicyDescription,
        _$AutoScalingPolicyDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AutoScalingPolicyDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoScalingPolicyDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetTrackingScalingPolicyConfiguration':
          result.targetTrackingScalingPolicyConfiguration.replace((serializers
              .deserialize(
            value,
            specifiedType: const FullType(_i2
                .AutoScalingTargetTrackingScalingPolicyConfigurationDescription),
          ) as _i2
              .AutoScalingTargetTrackingScalingPolicyConfigurationDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AutoScalingPolicyDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AutoScalingPolicyDescription(
      :policyName,
      :targetTrackingScalingPolicyConfiguration
    ) = object;
    if (policyName != null) {
      result$
        ..add('PolicyName')
        ..add(serializers.serialize(
          policyName,
          specifiedType: const FullType(String),
        ));
    }
    if (targetTrackingScalingPolicyConfiguration != null) {
      result$
        ..add('TargetTrackingScalingPolicyConfiguration')
        ..add(serializers.serialize(
          targetTrackingScalingPolicyConfiguration,
          specifiedType: const FullType(_i2
              .AutoScalingTargetTrackingScalingPolicyConfigurationDescription),
        ));
    }
    return result$;
  }
}
