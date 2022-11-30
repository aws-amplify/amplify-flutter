// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    bool? autoScalingDisabled,
    String? autoScalingRoleArn,
    _i2.Int64? maximumUnits,
    _i2.Int64? minimumUnits,
    _i3.AutoScalingPolicyUpdate? scalingPolicyUpdate,
  }) {
    return _$AutoScalingSettingsUpdate._(
      autoScalingDisabled: autoScalingDisabled,
      autoScalingRoleArn: autoScalingRoleArn,
      maximumUnits: maximumUnits,
      minimumUnits: minimumUnits,
      scalingPolicyUpdate: scalingPolicyUpdate,
    );
  }

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  factory AutoScalingSettingsUpdate.build(
          [void Function(AutoScalingSettingsUpdateBuilder) updates]) =
      _$AutoScalingSettingsUpdate;

  const AutoScalingSettingsUpdate._();

  static const List<_i4.SmithySerializer> serializers = [
    AutoScalingSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingSettingsUpdateBuilder b) {}

  /// Disabled auto scaling for this global table or global secondary index.
  bool? get autoScalingDisabled;

  /// Role ARN used for configuring auto scaling policy.
  String? get autoScalingRoleArn;

  /// The maximum capacity units that a global table or global secondary index should be scaled up to.
  _i2.Int64? get maximumUnits;

  /// The minimum capacity units that a global table or global secondary index should be scaled down to.
  _i2.Int64? get minimumUnits;

  /// The scaling policy to apply for scaling target global table or global secondary index capacity units.
  _i3.AutoScalingPolicyUpdate? get scalingPolicyUpdate;
  @override
  List<Object?> get props => [
        autoScalingDisabled,
        autoScalingRoleArn,
        maximumUnits,
        minimumUnits,
        scalingPolicyUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoScalingSettingsUpdate');
    helper.add(
      'autoScalingDisabled',
      autoScalingDisabled,
    );
    helper.add(
      'autoScalingRoleArn',
      autoScalingRoleArn,
    );
    helper.add(
      'maximumUnits',
      maximumUnits,
    );
    helper.add(
      'minimumUnits',
      minimumUnits,
    );
    helper.add(
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
      switch (key) {
        case 'AutoScalingDisabled':
          if (value != null) {
            result.autoScalingDisabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'AutoScalingRoleArn':
          if (value != null) {
            result.autoScalingRoleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaximumUnits':
          if (value != null) {
            result.maximumUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'MinimumUnits':
          if (value != null) {
            result.minimumUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'ScalingPolicyUpdate':
          if (value != null) {
            result.scalingPolicyUpdate.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingPolicyUpdate),
            ) as _i3.AutoScalingPolicyUpdate));
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
    final payload = (object as AutoScalingSettingsUpdate);
    final result = <Object?>[];
    if (payload.autoScalingDisabled != null) {
      result
        ..add('AutoScalingDisabled')
        ..add(serializers.serialize(
          payload.autoScalingDisabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.autoScalingRoleArn != null) {
      result
        ..add('AutoScalingRoleArn')
        ..add(serializers.serialize(
          payload.autoScalingRoleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maximumUnits != null) {
      result
        ..add('MaximumUnits')
        ..add(serializers.serialize(
          payload.maximumUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.minimumUnits != null) {
      result
        ..add('MinimumUnits')
        ..add(serializers.serialize(
          payload.minimumUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.scalingPolicyUpdate != null) {
      result
        ..add('ScalingPolicyUpdate')
        ..add(serializers.serialize(
          payload.scalingPolicyUpdate!,
          specifiedType: const FullType(_i3.AutoScalingPolicyUpdate),
        ));
    }
    return result;
  }
}
