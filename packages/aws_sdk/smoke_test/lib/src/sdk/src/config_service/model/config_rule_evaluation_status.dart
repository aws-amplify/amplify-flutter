// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.config_rule_evaluation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'config_rule_evaluation_status.g.dart';

/// Status information for your Config Managed rules and Config Custom Policy rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.
///
/// This action does not return status information about Config Custom Lambda rules.
abstract class ConfigRuleEvaluationStatus
    with _i1.AWSEquatable<ConfigRuleEvaluationStatus>
    implements
        Built<ConfigRuleEvaluationStatus, ConfigRuleEvaluationStatusBuilder> {
  /// Status information for your Config Managed rules and Config Custom Policy rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.
  ///
  /// This action does not return status information about Config Custom Lambda rules.
  factory ConfigRuleEvaluationStatus({
    String? configRuleName,
    String? configRuleArn,
    String? configRuleId,
    DateTime? lastSuccessfulInvocationTime,
    DateTime? lastFailedInvocationTime,
    DateTime? lastSuccessfulEvaluationTime,
    DateTime? lastFailedEvaluationTime,
    DateTime? firstActivatedTime,
    DateTime? lastDeactivatedTime,
    String? lastErrorCode,
    String? lastErrorMessage,
    bool? firstEvaluationStarted,
    String? lastDebugLogDeliveryStatus,
    String? lastDebugLogDeliveryStatusReason,
    DateTime? lastDebugLogDeliveryTime,
  }) {
    firstEvaluationStarted ??= false;
    return _$ConfigRuleEvaluationStatus._(
      configRuleName: configRuleName,
      configRuleArn: configRuleArn,
      configRuleId: configRuleId,
      lastSuccessfulInvocationTime: lastSuccessfulInvocationTime,
      lastFailedInvocationTime: lastFailedInvocationTime,
      lastSuccessfulEvaluationTime: lastSuccessfulEvaluationTime,
      lastFailedEvaluationTime: lastFailedEvaluationTime,
      firstActivatedTime: firstActivatedTime,
      lastDeactivatedTime: lastDeactivatedTime,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      firstEvaluationStarted: firstEvaluationStarted,
      lastDebugLogDeliveryStatus: lastDebugLogDeliveryStatus,
      lastDebugLogDeliveryStatusReason: lastDebugLogDeliveryStatusReason,
      lastDebugLogDeliveryTime: lastDebugLogDeliveryTime,
    );
  }

  /// Status information for your Config Managed rules and Config Custom Policy rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.
  ///
  /// This action does not return status information about Config Custom Lambda rules.
  factory ConfigRuleEvaluationStatus.build(
          [void Function(ConfigRuleEvaluationStatusBuilder) updates]) =
      _$ConfigRuleEvaluationStatus;

  const ConfigRuleEvaluationStatus._();

  static const List<_i2.SmithySerializer<ConfigRuleEvaluationStatus>>
      serializers = [ConfigRuleEvaluationStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleEvaluationStatusBuilder b) {
    b.firstEvaluationStarted = false;
  }

  /// The name of the Config rule.
  String? get configRuleName;

  /// The Amazon Resource Name (ARN) of the Config rule.
  String? get configRuleArn;

  /// The ID of the Config rule.
  String? get configRuleId;

  /// The time that Config last successfully invoked the Config rule to evaluate your Amazon Web Services resources.
  DateTime? get lastSuccessfulInvocationTime;

  /// The time that Config last failed to invoke the Config rule to evaluate your Amazon Web Services resources.
  DateTime? get lastFailedInvocationTime;

  /// The time that Config last successfully evaluated your Amazon Web Services resources against the rule.
  DateTime? get lastSuccessfulEvaluationTime;

  /// The time that Config last failed to evaluate your Amazon Web Services resources against the rule.
  DateTime? get lastFailedEvaluationTime;

  /// The time that you first activated the Config rule.
  DateTime? get firstActivatedTime;

  /// The time that you last turned off the Config rule.
  DateTime? get lastDeactivatedTime;

  /// The error code that Config returned when the rule last failed.
  String? get lastErrorCode;

  /// The error message that Config returned when the rule last failed.
  String? get lastErrorMessage;

  /// Indicates whether Config has evaluated your resources against the rule at least once.
  ///
  /// *   `true` \- Config has evaluated your Amazon Web Services resources against the rule at least once.
  ///
  /// *   `false` \- Config has not finished evaluating your Amazon Web Services resources against the rule at least once.
  bool get firstEvaluationStarted;

  /// The status of the last attempted delivery of a debug log for your Config Custom Policy rules. Either `Successful` or `Failed`.
  String? get lastDebugLogDeliveryStatus;

  /// The reason Config was not able to deliver a debug log. This is for the last failed attempt to retrieve a debug log for your Config Custom Policy rules.
  String? get lastDebugLogDeliveryStatusReason;

  /// The time Config last attempted to deliver a debug log for your Config Custom Policy rules.
  DateTime? get lastDebugLogDeliveryTime;
  @override
  List<Object?> get props => [
        configRuleName,
        configRuleArn,
        configRuleId,
        lastSuccessfulInvocationTime,
        lastFailedInvocationTime,
        lastSuccessfulEvaluationTime,
        lastFailedEvaluationTime,
        firstActivatedTime,
        lastDeactivatedTime,
        lastErrorCode,
        lastErrorMessage,
        firstEvaluationStarted,
        lastDebugLogDeliveryStatus,
        lastDebugLogDeliveryStatusReason,
        lastDebugLogDeliveryTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRuleEvaluationStatus')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'configRuleArn',
        configRuleArn,
      )
      ..add(
        'configRuleId',
        configRuleId,
      )
      ..add(
        'lastSuccessfulInvocationTime',
        lastSuccessfulInvocationTime,
      )
      ..add(
        'lastFailedInvocationTime',
        lastFailedInvocationTime,
      )
      ..add(
        'lastSuccessfulEvaluationTime',
        lastSuccessfulEvaluationTime,
      )
      ..add(
        'lastFailedEvaluationTime',
        lastFailedEvaluationTime,
      )
      ..add(
        'firstActivatedTime',
        firstActivatedTime,
      )
      ..add(
        'lastDeactivatedTime',
        lastDeactivatedTime,
      )
      ..add(
        'lastErrorCode',
        lastErrorCode,
      )
      ..add(
        'lastErrorMessage',
        lastErrorMessage,
      )
      ..add(
        'firstEvaluationStarted',
        firstEvaluationStarted,
      )
      ..add(
        'lastDebugLogDeliveryStatus',
        lastDebugLogDeliveryStatus,
      )
      ..add(
        'lastDebugLogDeliveryStatusReason',
        lastDebugLogDeliveryStatusReason,
      )
      ..add(
        'lastDebugLogDeliveryTime',
        lastDebugLogDeliveryTime,
      );
    return helper.toString();
  }
}

class ConfigRuleEvaluationStatusAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfigRuleEvaluationStatus> {
  const ConfigRuleEvaluationStatusAwsJson11Serializer()
      : super('ConfigRuleEvaluationStatus');

  @override
  Iterable<Type> get types => const [
        ConfigRuleEvaluationStatus,
        _$ConfigRuleEvaluationStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigRuleEvaluationStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigRuleEvaluationStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigRuleArn':
          result.configRuleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigRuleId':
          result.configRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastSuccessfulInvocationTime':
          result.lastSuccessfulInvocationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastFailedInvocationTime':
          result.lastFailedInvocationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastSuccessfulEvaluationTime':
          result.lastSuccessfulEvaluationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastFailedEvaluationTime':
          result.lastFailedEvaluationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'FirstActivatedTime':
          result.firstActivatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastDeactivatedTime':
          result.lastDeactivatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastErrorCode':
          result.lastErrorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastErrorMessage':
          result.lastErrorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FirstEvaluationStarted':
          result.firstEvaluationStarted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'LastDebugLogDeliveryStatus':
          result.lastDebugLogDeliveryStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastDebugLogDeliveryStatusReason':
          result.lastDebugLogDeliveryStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastDebugLogDeliveryTime':
          result.lastDebugLogDeliveryTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfigRuleEvaluationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigRuleEvaluationStatus(
      :configRuleName,
      :configRuleArn,
      :configRuleId,
      :lastSuccessfulInvocationTime,
      :lastFailedInvocationTime,
      :lastSuccessfulEvaluationTime,
      :lastFailedEvaluationTime,
      :firstActivatedTime,
      :lastDeactivatedTime,
      :lastErrorCode,
      :lastErrorMessage,
      :firstEvaluationStarted,
      :lastDebugLogDeliveryStatus,
      :lastDebugLogDeliveryStatusReason,
      :lastDebugLogDeliveryTime
    ) = object;
    result$.addAll([
      'FirstEvaluationStarted',
      serializers.serialize(
        firstEvaluationStarted,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    if (configRuleArn != null) {
      result$
        ..add('ConfigRuleArn')
        ..add(serializers.serialize(
          configRuleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (configRuleId != null) {
      result$
        ..add('ConfigRuleId')
        ..add(serializers.serialize(
          configRuleId,
          specifiedType: const FullType(String),
        ));
    }
    if (lastSuccessfulInvocationTime != null) {
      result$
        ..add('LastSuccessfulInvocationTime')
        ..add(serializers.serialize(
          lastSuccessfulInvocationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastFailedInvocationTime != null) {
      result$
        ..add('LastFailedInvocationTime')
        ..add(serializers.serialize(
          lastFailedInvocationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastSuccessfulEvaluationTime != null) {
      result$
        ..add('LastSuccessfulEvaluationTime')
        ..add(serializers.serialize(
          lastSuccessfulEvaluationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastFailedEvaluationTime != null) {
      result$
        ..add('LastFailedEvaluationTime')
        ..add(serializers.serialize(
          lastFailedEvaluationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (firstActivatedTime != null) {
      result$
        ..add('FirstActivatedTime')
        ..add(serializers.serialize(
          firstActivatedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastDeactivatedTime != null) {
      result$
        ..add('LastDeactivatedTime')
        ..add(serializers.serialize(
          lastDeactivatedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastErrorCode != null) {
      result$
        ..add('LastErrorCode')
        ..add(serializers.serialize(
          lastErrorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (lastErrorMessage != null) {
      result$
        ..add('LastErrorMessage')
        ..add(serializers.serialize(
          lastErrorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (lastDebugLogDeliveryStatus != null) {
      result$
        ..add('LastDebugLogDeliveryStatus')
        ..add(serializers.serialize(
          lastDebugLogDeliveryStatus,
          specifiedType: const FullType(String),
        ));
    }
    if (lastDebugLogDeliveryStatusReason != null) {
      result$
        ..add('LastDebugLogDeliveryStatusReason')
        ..add(serializers.serialize(
          lastDebugLogDeliveryStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (lastDebugLogDeliveryTime != null) {
      result$
        ..add('LastDebugLogDeliveryTime')
        ..add(serializers.serialize(
          lastDebugLogDeliveryTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
