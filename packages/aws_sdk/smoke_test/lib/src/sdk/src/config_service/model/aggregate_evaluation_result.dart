// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.aggregate_evaluation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart'
    as _i3;

part 'aggregate_evaluation_result.g.dart';

/// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
abstract class AggregateEvaluationResult
    with _i1.AWSEquatable<AggregateEvaluationResult>
    implements
        Built<AggregateEvaluationResult, AggregateEvaluationResultBuilder> {
  /// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory AggregateEvaluationResult({
    String? accountId,
    String? annotation,
    String? awsRegion,
    _i2.ComplianceType? complianceType,
    DateTime? configRuleInvokedTime,
    _i3.EvaluationResultIdentifier? evaluationResultIdentifier,
    DateTime? resultRecordedTime,
  }) {
    return _$AggregateEvaluationResult._(
      accountId: accountId,
      annotation: annotation,
      awsRegion: awsRegion,
      complianceType: complianceType,
      configRuleInvokedTime: configRuleInvokedTime,
      evaluationResultIdentifier: evaluationResultIdentifier,
      resultRecordedTime: resultRecordedTime,
    );
  }

  /// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory AggregateEvaluationResult.build(
          [void Function(AggregateEvaluationResultBuilder) updates]) =
      _$AggregateEvaluationResult;

  const AggregateEvaluationResult._();

  static const List<_i4.SmithySerializer> serializers = [
    AggregateEvaluationResultAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateEvaluationResultBuilder b) {}

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// Supplementary information about how the agrregate evaluation determined the compliance.
  String? get annotation;

  /// The source region from where the data is aggregated.
  String? get awsRegion;

  /// The resource compliance status.
  ///
  /// For the `AggregationEvaluationResult` data type, Config supports only the `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` value.
  _i2.ComplianceType? get complianceType;

  /// The time when the Config rule evaluated the Amazon Web Services resource.
  DateTime? get configRuleInvokedTime;

  /// Uniquely identifies the evaluation result.
  _i3.EvaluationResultIdentifier? get evaluationResultIdentifier;

  /// The time when Config recorded the aggregate evaluation result.
  DateTime? get resultRecordedTime;
  @override
  List<Object?> get props => [
        accountId,
        annotation,
        awsRegion,
        complianceType,
        configRuleInvokedTime,
        evaluationResultIdentifier,
        resultRecordedTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateEvaluationResult');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'annotation',
      annotation,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleInvokedTime',
      configRuleInvokedTime,
    );
    helper.add(
      'evaluationResultIdentifier',
      evaluationResultIdentifier,
    );
    helper.add(
      'resultRecordedTime',
      resultRecordedTime,
    );
    return helper.toString();
  }
}

class AggregateEvaluationResultAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<AggregateEvaluationResult> {
  const AggregateEvaluationResultAwsJson11Serializer()
      : super('AggregateEvaluationResult');

  @override
  Iterable<Type> get types => const [
        AggregateEvaluationResult,
        _$AggregateEvaluationResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateEvaluationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateEvaluationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Annotation':
          if (value != null) {
            result.annotation = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AwsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceType),
            ) as _i2.ComplianceType);
          }
          break;
        case 'ConfigRuleInvokedTime':
          if (value != null) {
            result.configRuleInvokedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EvaluationResultIdentifier':
          if (value != null) {
            result.evaluationResultIdentifier.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EvaluationResultIdentifier),
            ) as _i3.EvaluationResultIdentifier));
          }
          break;
        case 'ResultRecordedTime':
          if (value != null) {
            result.resultRecordedTime = (serializers.deserialize(
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
    final payload = (object as AggregateEvaluationResult);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.annotation != null) {
      result
        ..add('Annotation')
        ..add(serializers.serialize(
          payload.annotation!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRegion != null) {
      result
        ..add('AwsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i2.ComplianceType),
        ));
    }
    if (payload.configRuleInvokedTime != null) {
      result
        ..add('ConfigRuleInvokedTime')
        ..add(serializers.serialize(
          payload.configRuleInvokedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.evaluationResultIdentifier != null) {
      result
        ..add('EvaluationResultIdentifier')
        ..add(serializers.serialize(
          payload.evaluationResultIdentifier!,
          specifiedType: const FullType(_i3.EvaluationResultIdentifier),
        ));
    }
    if (payload.resultRecordedTime != null) {
      result
        ..add('ResultRecordedTime')
        ..add(serializers.serialize(
          payload.resultRecordedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
