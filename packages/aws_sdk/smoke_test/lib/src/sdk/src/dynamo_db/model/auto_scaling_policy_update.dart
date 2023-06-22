// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.auto_scaling_policy_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_target_tracking_scaling_policy_configuration_update.dart'
    as _i2;

part 'auto_scaling_policy_update.g.dart';

/// Represents the auto scaling policy to be modified.
abstract class AutoScalingPolicyUpdate
    with _i1.AWSEquatable<AutoScalingPolicyUpdate>
    implements Built<AutoScalingPolicyUpdate, AutoScalingPolicyUpdateBuilder> {
  /// Represents the auto scaling policy to be modified.
  factory AutoScalingPolicyUpdate({
    String? policyName,
    required _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
        targetTrackingScalingPolicyConfiguration,
  }) {
    return _$AutoScalingPolicyUpdate._(
      policyName: policyName,
      targetTrackingScalingPolicyConfiguration:
          targetTrackingScalingPolicyConfiguration,
    );
  }

  /// Represents the auto scaling policy to be modified.
  factory AutoScalingPolicyUpdate.build(
          [void Function(AutoScalingPolicyUpdateBuilder) updates]) =
      _$AutoScalingPolicyUpdate;

  const AutoScalingPolicyUpdate._();

  static const List<_i3.SmithySerializer<AutoScalingPolicyUpdate>> serializers =
      [AutoScalingPolicyUpdateAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingPolicyUpdateBuilder b) {}

  /// The name of the scaling policy.
  String? get policyName;

  /// Represents a target tracking scaling policy configuration.
  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      get targetTrackingScalingPolicyConfiguration;
  @override
  List<Object?> get props => [
        policyName,
        targetTrackingScalingPolicyConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoScalingPolicyUpdate')
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

class AutoScalingPolicyUpdateAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<AutoScalingPolicyUpdate> {
  const AutoScalingPolicyUpdateAwsJson10Serializer()
      : super('AutoScalingPolicyUpdate');

  @override
  Iterable<Type> get types => const [
        AutoScalingPolicyUpdate,
        _$AutoScalingPolicyUpdate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AutoScalingPolicyUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoScalingPolicyUpdateBuilder();
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
          result.targetTrackingScalingPolicyConfiguration
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate),
          ) as _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AutoScalingPolicyUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AutoScalingPolicyUpdate(
      :policyName,
      :targetTrackingScalingPolicyConfiguration
    ) = object;
    result$.addAll([
      'TargetTrackingScalingPolicyConfiguration',
      serializers.serialize(
        targetTrackingScalingPolicyConfiguration,
        specifiedType: const FullType(
            _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate),
      ),
    ]);
    if (policyName != null) {
      result$
        ..add('PolicyName')
        ..add(serializers.serialize(
          policyName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
