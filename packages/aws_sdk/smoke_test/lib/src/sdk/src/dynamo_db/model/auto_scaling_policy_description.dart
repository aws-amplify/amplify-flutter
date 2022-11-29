// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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

  static const List<_i3.SmithySerializer> serializers = [
    AutoScalingPolicyDescriptionAwsJson10Serializer()
  ];

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
    final helper = newBuiltValueToStringHelper('AutoScalingPolicyDescription');
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
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
      switch (key) {
        case 'PolicyName':
          if (value != null) {
            result.policyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TargetTrackingScalingPolicyConfiguration':
          if (value != null) {
            result.targetTrackingScalingPolicyConfiguration.replace((serializers
                .deserialize(
              value,
              specifiedType: const FullType(_i2
                  .AutoScalingTargetTrackingScalingPolicyConfigurationDescription),
            ) as _i2
                .AutoScalingTargetTrackingScalingPolicyConfigurationDescription));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AutoScalingPolicyDescription);
    final result = <Object?>[];
    if (payload.policyName != null) {
      result
        ..add('PolicyName')
        ..add(serializers.serialize(
          payload.policyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetTrackingScalingPolicyConfiguration != null) {
      result
        ..add('TargetTrackingScalingPolicyConfiguration')
        ..add(serializers.serialize(
          payload.targetTrackingScalingPolicyConfiguration!,
          specifiedType: const FullType(_i2
              .AutoScalingTargetTrackingScalingPolicyConfigurationDescription),
        ));
    }
    return result;
  }
}
