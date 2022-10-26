// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? configRuleArn,
    String? configRuleId,
    String? configRuleName,
    DateTime? firstActivatedTime,
    bool? firstEvaluationStarted,
    DateTime? lastDeactivatedTime,
    String? lastDebugLogDeliveryStatus,
    String? lastDebugLogDeliveryStatusReason,
    DateTime? lastDebugLogDeliveryTime,
    String? lastErrorCode,
    String? lastErrorMessage,
    DateTime? lastFailedEvaluationTime,
    DateTime? lastFailedInvocationTime,
    DateTime? lastSuccessfulEvaluationTime,
    DateTime? lastSuccessfulInvocationTime,
  }) {
    return _$ConfigRuleEvaluationStatus._(
      configRuleArn: configRuleArn,
      configRuleId: configRuleId,
      configRuleName: configRuleName,
      firstActivatedTime: firstActivatedTime,
      firstEvaluationStarted: firstEvaluationStarted,
      lastDeactivatedTime: lastDeactivatedTime,
      lastDebugLogDeliveryStatus: lastDebugLogDeliveryStatus,
      lastDebugLogDeliveryStatusReason: lastDebugLogDeliveryStatusReason,
      lastDebugLogDeliveryTime: lastDebugLogDeliveryTime,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastFailedEvaluationTime: lastFailedEvaluationTime,
      lastFailedInvocationTime: lastFailedInvocationTime,
      lastSuccessfulEvaluationTime: lastSuccessfulEvaluationTime,
      lastSuccessfulInvocationTime: lastSuccessfulInvocationTime,
    );
  }

  /// Status information for your Config Managed rules and Config Custom Policy rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.
  ///
  /// This action does not return status information about Config Custom Lambda rules.
  factory ConfigRuleEvaluationStatus.build(
          [void Function(ConfigRuleEvaluationStatusBuilder) updates]) =
      _$ConfigRuleEvaluationStatus;

  const ConfigRuleEvaluationStatus._();

  static const List<_i2.SmithySerializer> serializers = [
    ConfigRuleEvaluationStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleEvaluationStatusBuilder b) {}

  /// The Amazon Resource Name (ARN) of the Config rule.
  String? get configRuleArn;

  /// The ID of the Config rule.
  String? get configRuleId;

  /// The name of the Config rule.
  String? get configRuleName;

  /// The time that you first activated the Config rule.
  DateTime? get firstActivatedTime;

  /// Indicates whether Config has evaluated your resources against the rule at least once.
  ///
  /// *   `true` \- Config has evaluated your Amazon Web Services resources against the rule at least once.
  ///
  /// *   `false` \- Config has not finished evaluating your Amazon Web Services resources against the rule at least once.
  bool? get firstEvaluationStarted;

  /// The time that you last turned off the Config rule.
  DateTime? get lastDeactivatedTime;

  /// The status of the last attempted delivery of a debug log for your Config Custom Policy rules. Either `Successful` or `Failed`.
  String? get lastDebugLogDeliveryStatus;

  /// The reason Config was not able to deliver a debug log. This is for the last failed attempt to retrieve a debug log for your Config Custom Policy rules.
  String? get lastDebugLogDeliveryStatusReason;

  /// The time Config last attempted to deliver a debug log for your Config Custom Policy rules.
  DateTime? get lastDebugLogDeliveryTime;

  /// The error code that Config returned when the rule last failed.
  String? get lastErrorCode;

  /// The error message that Config returned when the rule last failed.
  String? get lastErrorMessage;

  /// The time that Config last failed to evaluate your Amazon Web Services resources against the rule.
  DateTime? get lastFailedEvaluationTime;

  /// The time that Config last failed to invoke the Config rule to evaluate your Amazon Web Services resources.
  DateTime? get lastFailedInvocationTime;

  /// The time that Config last successfully evaluated your Amazon Web Services resources against the rule.
  DateTime? get lastSuccessfulEvaluationTime;

  /// The time that Config last successfully invoked the Config rule to evaluate your Amazon Web Services resources.
  DateTime? get lastSuccessfulInvocationTime;
  @override
  List<Object?> get props => [
        configRuleArn,
        configRuleId,
        configRuleName,
        firstActivatedTime,
        firstEvaluationStarted,
        lastDeactivatedTime,
        lastDebugLogDeliveryStatus,
        lastDebugLogDeliveryStatusReason,
        lastDebugLogDeliveryTime,
        lastErrorCode,
        lastErrorMessage,
        lastFailedEvaluationTime,
        lastFailedInvocationTime,
        lastSuccessfulEvaluationTime,
        lastSuccessfulInvocationTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRuleEvaluationStatus');
    helper.add(
      'configRuleArn',
      configRuleArn,
    );
    helper.add(
      'configRuleId',
      configRuleId,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'firstActivatedTime',
      firstActivatedTime,
    );
    helper.add(
      'firstEvaluationStarted',
      firstEvaluationStarted,
    );
    helper.add(
      'lastDeactivatedTime',
      lastDeactivatedTime,
    );
    helper.add(
      'lastDebugLogDeliveryStatus',
      lastDebugLogDeliveryStatus,
    );
    helper.add(
      'lastDebugLogDeliveryStatusReason',
      lastDebugLogDeliveryStatusReason,
    );
    helper.add(
      'lastDebugLogDeliveryTime',
      lastDebugLogDeliveryTime,
    );
    helper.add(
      'lastErrorCode',
      lastErrorCode,
    );
    helper.add(
      'lastErrorMessage',
      lastErrorMessage,
    );
    helper.add(
      'lastFailedEvaluationTime',
      lastFailedEvaluationTime,
    );
    helper.add(
      'lastFailedInvocationTime',
      lastFailedInvocationTime,
    );
    helper.add(
      'lastSuccessfulEvaluationTime',
      lastSuccessfulEvaluationTime,
    );
    helper.add(
      'lastSuccessfulInvocationTime',
      lastSuccessfulInvocationTime,
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
      switch (key) {
        case 'ConfigRuleArn':
          if (value != null) {
            result.configRuleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigRuleId':
          if (value != null) {
            result.configRuleId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FirstActivatedTime':
          if (value != null) {
            result.firstActivatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'FirstEvaluationStarted':
          if (value != null) {
            result.firstEvaluationStarted = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'LastDeactivatedTime':
          if (value != null) {
            result.lastDeactivatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastDebugLogDeliveryStatus':
          if (value != null) {
            result.lastDebugLogDeliveryStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastDebugLogDeliveryStatusReason':
          if (value != null) {
            result.lastDebugLogDeliveryStatusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastDebugLogDeliveryTime':
          if (value != null) {
            result.lastDebugLogDeliveryTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastErrorCode':
          if (value != null) {
            result.lastErrorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastErrorMessage':
          if (value != null) {
            result.lastErrorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastFailedEvaluationTime':
          if (value != null) {
            result.lastFailedEvaluationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastFailedInvocationTime':
          if (value != null) {
            result.lastFailedInvocationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastSuccessfulEvaluationTime':
          if (value != null) {
            result.lastSuccessfulEvaluationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastSuccessfulInvocationTime':
          if (value != null) {
            result.lastSuccessfulInvocationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as ConfigRuleEvaluationStatus);
    final result = <Object?>[];
    if (payload.configRuleArn != null) {
      result
        ..add('ConfigRuleArn')
        ..add(serializers.serialize(
          payload.configRuleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configRuleId != null) {
      result
        ..add('ConfigRuleId')
        ..add(serializers.serialize(
          payload.configRuleId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.firstActivatedTime != null) {
      result
        ..add('FirstActivatedTime')
        ..add(serializers.serialize(
          payload.firstActivatedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.firstEvaluationStarted != null) {
      result
        ..add('FirstEvaluationStarted')
        ..add(serializers.serialize(
          payload.firstEvaluationStarted!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.lastDeactivatedTime != null) {
      result
        ..add('LastDeactivatedTime')
        ..add(serializers.serialize(
          payload.lastDeactivatedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastDebugLogDeliveryStatus != null) {
      result
        ..add('LastDebugLogDeliveryStatus')
        ..add(serializers.serialize(
          payload.lastDebugLogDeliveryStatus!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastDebugLogDeliveryStatusReason != null) {
      result
        ..add('LastDebugLogDeliveryStatusReason')
        ..add(serializers.serialize(
          payload.lastDebugLogDeliveryStatusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastDebugLogDeliveryTime != null) {
      result
        ..add('LastDebugLogDeliveryTime')
        ..add(serializers.serialize(
          payload.lastDebugLogDeliveryTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastErrorCode != null) {
      result
        ..add('LastErrorCode')
        ..add(serializers.serialize(
          payload.lastErrorCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastErrorMessage != null) {
      result
        ..add('LastErrorMessage')
        ..add(serializers.serialize(
          payload.lastErrorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastFailedEvaluationTime != null) {
      result
        ..add('LastFailedEvaluationTime')
        ..add(serializers.serialize(
          payload.lastFailedEvaluationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastFailedInvocationTime != null) {
      result
        ..add('LastFailedInvocationTime')
        ..add(serializers.serialize(
          payload.lastFailedInvocationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastSuccessfulEvaluationTime != null) {
      result
        ..add('LastSuccessfulEvaluationTime')
        ..add(serializers.serialize(
          payload.lastSuccessfulEvaluationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastSuccessfulInvocationTime != null) {
      result
        ..add('LastSuccessfulInvocationTime')
        ..add(serializers.serialize(
          payload.lastSuccessfulInvocationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
