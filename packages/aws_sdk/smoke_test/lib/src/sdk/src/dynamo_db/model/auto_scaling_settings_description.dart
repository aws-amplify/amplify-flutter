// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.Int64? minimumUnits,
    _i2.Int64? maximumUnits,
    bool? autoScalingDisabled,
    String? autoScalingRoleArn,
    List<_i3.AutoScalingPolicyDescription>? scalingPolicies,
  }) {
    return _$AutoScalingSettingsDescription._(
      minimumUnits: minimumUnits,
      maximumUnits: maximumUnits,
      autoScalingDisabled: autoScalingDisabled,
      autoScalingRoleArn: autoScalingRoleArn,
      scalingPolicies:
          scalingPolicies == null ? null : _i4.BuiltList(scalingPolicies),
    );
  }

  /// Represents the auto scaling settings for a global table or global secondary index.
  factory AutoScalingSettingsDescription.build(
          [void Function(AutoScalingSettingsDescriptionBuilder) updates]) =
      _$AutoScalingSettingsDescription;

  const AutoScalingSettingsDescription._();

  static const List<_i5.SmithySerializer<AutoScalingSettingsDescription>>
      serializers = [AutoScalingSettingsDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoScalingSettingsDescriptionBuilder b) {}

  /// The minimum capacity units that a global table or global secondary index should be scaled down to.
  _i2.Int64? get minimumUnits;

  /// The maximum capacity units that a global table or global secondary index should be scaled up to.
  _i2.Int64? get maximumUnits;

  /// Disabled auto scaling for this global table or global secondary index.
  bool? get autoScalingDisabled;

  /// Role ARN used for configuring the auto scaling policy.
  String? get autoScalingRoleArn;

  /// Information about the scaling policies.
  _i4.BuiltList<_i3.AutoScalingPolicyDescription>? get scalingPolicies;
  @override
  List<Object?> get props => [
        minimumUnits,
        maximumUnits,
        autoScalingDisabled,
        autoScalingRoleArn,
        scalingPolicies,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoScalingSettingsDescription')
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
        case 'ScalingPolicies':
          result.scalingPolicies.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AutoScalingPolicyDescription)],
            ),
          ) as _i4.BuiltList<_i3.AutoScalingPolicyDescription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AutoScalingSettingsDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AutoScalingSettingsDescription(
      :minimumUnits,
      :maximumUnits,
      :autoScalingDisabled,
      :autoScalingRoleArn,
      :scalingPolicies
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
    if (scalingPolicies != null) {
      result$
        ..add('ScalingPolicies')
        ..add(serializers.serialize(
          scalingPolicies,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AutoScalingPolicyDescription)],
          ),
        ));
    }
    return result$;
  }
}
