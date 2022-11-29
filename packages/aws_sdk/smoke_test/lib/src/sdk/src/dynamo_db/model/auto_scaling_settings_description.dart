// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.auto_scaling_settings_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_policy_description.dart'
    as _i3;

part 'auto_scaling_settings_description.g.dart';

/// Represents the auto scaling settings for a global table or global secondary index.
abstract class AutoScalingSettingsDescription
    with
        _i1.AWSEquatable<AutoScalingSettingsDescription>
    implements
        Built<AutoScalingSettingsDescription,
            AutoScalingSettingsDescriptionBuilder> {
  /// Represents the auto scaling settings for a global table or global secondary index.
  factory AutoScalingSettingsDescription({
    bool? autoScalingDisabled,
    String? autoScalingRoleArn,
    _i2.Int64? maximumUnits,
    _i2.Int64? minimumUnits,
    List<_i3.AutoScalingPolicyDescription>? scalingPolicies,
  }) {
    return _$AutoScalingSettingsDescription._(
      autoScalingDisabled: autoScalingDisabled,
      autoScalingRoleArn: autoScalingRoleArn,
      maximumUnits: maximumUnits,
      minimumUnits: minimumUnits,
      scalingPolicies:
          scalingPolicies == null ? null : _i4.BuiltList(scalingPolicies),
    );
  }

  /// Represents the auto scaling settings for a global table or global secondary index.
  factory AutoScalingSettingsDescription.build(
          [void Function(AutoScalingSettingsDescriptionBuilder) updates]) =
      _$AutoScalingSettingsDescription;

  const AutoScalingSettingsDescription._();

  static const List<_i5.SmithySerializer> serializers = [
    AutoScalingSettingsDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingSettingsDescriptionBuilder b) {}

  /// Disabled auto scaling for this global table or global secondary index.
  bool? get autoScalingDisabled;

  /// Role ARN used for configuring the auto scaling policy.
  String? get autoScalingRoleArn;

  /// The maximum capacity units that a global table or global secondary index should be scaled up to.
  _i2.Int64? get maximumUnits;

  /// The minimum capacity units that a global table or global secondary index should be scaled down to.
  _i2.Int64? get minimumUnits;

  /// Information about the scaling policies.
  _i4.BuiltList<_i3.AutoScalingPolicyDescription>? get scalingPolicies;
  @override
  List<Object?> get props => [
        autoScalingDisabled,
        autoScalingRoleArn,
        maximumUnits,
        minimumUnits,
        scalingPolicies,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AutoScalingSettingsDescription');
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
      'scalingPolicies',
      scalingPolicies,
    );
    return helper.toString();
  }
}

class AutoScalingSettingsDescriptionAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<AutoScalingSettingsDescription> {
  const AutoScalingSettingsDescriptionAwsJson10Serializer()
      : super('AutoScalingSettingsDescription');

  @override
  Iterable<Type> get types => const [
        AutoScalingSettingsDescription,
        _$AutoScalingSettingsDescription,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AutoScalingSettingsDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoScalingSettingsDescriptionBuilder();
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
        case 'ScalingPolicies':
          if (value != null) {
            result.scalingPolicies.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.AutoScalingPolicyDescription)],
              ),
            ) as _i4.BuiltList<_i3.AutoScalingPolicyDescription>));
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
    final payload = (object as AutoScalingSettingsDescription);
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
    if (payload.scalingPolicies != null) {
      result
        ..add('ScalingPolicies')
        ..add(serializers.serialize(
          payload.scalingPolicies!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AutoScalingPolicyDescription)],
          ),
        ));
    }
    return result;
  }
}
