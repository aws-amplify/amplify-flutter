// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.auto_scaling_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_update.dart'
    as _i3;

part 'auto_scaling_settings_update.g.dart';

/// Represents the auto scaling settings to be modified for a global table or global secondary index.
abstract class AutoScalingSettingsUpdate
    with _i1.AWSEquatable<AutoScalingSettingsUpdate>
    implements
        Built<AutoScalingSettingsUpdate, AutoScalingSettingsUpdateBuilder> {
  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  factory AutoScalingSettingsUpdate({
    _i2.Int64? minimumUnits,
    _i2.Int64? maximumUnits,
    bool? autoScalingDisabled,
    String? autoScalingRoleArn,
    _i3.AutoScalingPolicyUpdate? scalingPolicyUpdate,
  }) {
    return _$AutoScalingSettingsUpdate._(
      minimumUnits: minimumUnits,
      maximumUnits: maximumUnits,
      autoScalingDisabled: autoScalingDisabled,
      autoScalingRoleArn: autoScalingRoleArn,
      scalingPolicyUpdate: scalingPolicyUpdate,
    );
  }

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  factory AutoScalingSettingsUpdate.build(
          [void Function(AutoScalingSettingsUpdateBuilder) updates]) =
      _$AutoScalingSettingsUpdate;

  const AutoScalingSettingsUpdate._();

  static const List<_i4.SmithySerializer<AutoScalingSettingsUpdate>>
      serializers = [AutoScalingSettingsUpdateAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingSettingsUpdateBuilder b) {}

  /// The minimum capacity units that a global table or global secondary index should be scaled down to.
  _i2.Int64? get minimumUnits;

  /// The maximum capacity units that a global table or global secondary index should be scaled up to.
  _i2.Int64? get maximumUnits;

  /// Disabled auto scaling for this global table or global secondary index.
  bool? get autoScalingDisabled;

  /// Role ARN used for configuring auto scaling policy.
  String? get autoScalingRoleArn;

  /// The scaling policy to apply for scaling target global table or global secondary index capacity units.
  _i3.AutoScalingPolicyUpdate? get scalingPolicyUpdate;
  @override
  List<Object?> get props => [
        minimumUnits,
        maximumUnits,
        autoScalingDisabled,
        autoScalingRoleArn,
        scalingPolicyUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoScalingSettingsUpdate')
      ..add(
        'minimumUnits',
        minimumUnits,
      )
      ..add(
        'maximumUnits',
        maximumUnits,
      )
      ..add(
        'autoScalingDisabled',
        autoScalingDisabled,
      )
      ..add(
        'autoScalingRoleArn',
        autoScalingRoleArn,
      )
      ..add(
        'scalingPolicyUpdate',
        scalingPolicyUpdate,
      );
    return helper.toString();
  }
}

class AutoScalingSettingsUpdateAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<AutoScalingSettingsUpdate> {
  const AutoScalingSettingsUpdateAwsJson10Serializer()
      : super('AutoScalingSettingsUpdate');

  @override
  Iterable<Type> get types => const [
        AutoScalingSettingsUpdate,
        _$AutoScalingSettingsUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AutoScalingSettingsUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoScalingSettingsUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MinimumUnits':
          result.minimumUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'MaximumUnits':
          result.maximumUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'AutoScalingDisabled':
          result.autoScalingDisabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AutoScalingRoleArn':
          result.autoScalingRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ScalingPolicyUpdate':
          result.scalingPolicyUpdate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoScalingPolicyUpdate),
          ) as _i3.AutoScalingPolicyUpdate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AutoScalingSettingsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AutoScalingSettingsUpdate(
      :minimumUnits,
      :maximumUnits,
      :autoScalingDisabled,
      :autoScalingRoleArn,
      :scalingPolicyUpdate
    ) = object;
    if (minimumUnits != null) {
      result$
        ..add('MinimumUnits')
        ..add(serializers.serialize(
          minimumUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (maximumUnits != null) {
      result$
        ..add('MaximumUnits')
        ..add(serializers.serialize(
          maximumUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (autoScalingDisabled != null) {
      result$
        ..add('AutoScalingDisabled')
        ..add(serializers.serialize(
          autoScalingDisabled,
          specifiedType: const FullType(bool),
        ));
    }
    if (autoScalingRoleArn != null) {
      result$
        ..add('AutoScalingRoleArn')
        ..add(serializers.serialize(
          autoScalingRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (scalingPolicyUpdate != null) {
      result$
        ..add('ScalingPolicyUpdate')
        ..add(serializers.serialize(
          scalingPolicyUpdate,
          specifiedType: const FullType(_i3.AutoScalingPolicyUpdate),
        ));
    }
    return result$;
  }
}
