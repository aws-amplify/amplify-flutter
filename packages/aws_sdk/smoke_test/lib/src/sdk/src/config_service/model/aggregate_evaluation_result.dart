// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_evaluation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart'
    as _i2;

part 'aggregate_evaluation_result.g.dart';

/// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
abstract class AggregateEvaluationResult
    with _i1.AWSEquatable<AggregateEvaluationResult>
    implements
        Built<AggregateEvaluationResult, AggregateEvaluationResultBuilder> {
  /// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory AggregateEvaluationResult({
    _i2.EvaluationResultIdentifier? evaluationResultIdentifier,
    _i3.ComplianceType? complianceType,
    DateTime? resultRecordedTime,
    DateTime? configRuleInvokedTime,
    String? annotation,
    String? accountId,
    String? awsRegion,
  }) {
    return _$AggregateEvaluationResult._(
      evaluationResultIdentifier: evaluationResultIdentifier,
      complianceType: complianceType,
      resultRecordedTime: resultRecordedTime,
      configRuleInvokedTime: configRuleInvokedTime,
      annotation: annotation,
      accountId: accountId,
      awsRegion: awsRegion,
    );
  }

  /// The details of an Config evaluation for an account ID and region in an aggregator. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory AggregateEvaluationResult.build(
          [void Function(AggregateEvaluationResultBuilder) updates]) =
      _$AggregateEvaluationResult;

  const AggregateEvaluationResult._();

  static const List<_i4.SmithySerializer<AggregateEvaluationResult>>
      serializers = [AggregateEvaluationResultAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateEvaluationResultBuilder b) {}

  /// Uniquely identifies the evaluation result.
  _i2.EvaluationResultIdentifier? get evaluationResultIdentifier;

  /// The resource compliance status.
  ///
  /// For the `AggregationEvaluationResult` data type, Config supports only the `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` value.
  _i3.ComplianceType? get complianceType;

  /// The time when Config recorded the aggregate evaluation result.
  DateTime? get resultRecordedTime;

  /// The time when the Config rule evaluated the Amazon Web Services resource.
  DateTime? get configRuleInvokedTime;

  /// Supplementary information about how the agrregate evaluation determined the compliance.
  String? get annotation;

  /// The 12-digit account ID of the source account.
  String? get accountId;

  /// The source region from where the data is aggregated.
  String? get awsRegion;
  @override
  List<Object?> get props => [
        evaluationResultIdentifier,
        complianceType,
        resultRecordedTime,
        configRuleInvokedTime,
        annotation,
        accountId,
        awsRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateEvaluationResult')
      ..add(
        'evaluationResultIdentifier',
        evaluationResultIdentifier,
      )
      ..add(
        'complianceType',
        complianceType,
      )
      ..add(
        'resultRecordedTime',
        resultRecordedTime,
      )
      ..add(
        'configRuleInvokedTime',
        configRuleInvokedTime,
      )
      ..add(
        'annotation',
        annotation,
      )
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'awsRegion',
        awsRegion,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvaluationResultIdentifier':
          result.evaluationResultIdentifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationResultIdentifier),
          ) as _i2.EvaluationResultIdentifier));
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ComplianceType),
          ) as _i3.ComplianceType);
        case 'ResultRecordedTime':
          result.resultRecordedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ConfigRuleInvokedTime':
          result.configRuleInvokedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Annotation':
          result.annotation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AggregateEvaluationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateEvaluationResult(
      :evaluationResultIdentifier,
      :complianceType,
      :resultRecordedTime,
      :configRuleInvokedTime,
      :annotation,
      :accountId,
      :awsRegion
    ) = object;
    if (evaluationResultIdentifier != null) {
      result$
        ..add('EvaluationResultIdentifier')
        ..add(serializers.serialize(
          evaluationResultIdentifier,
          specifiedType: const FullType(_i2.EvaluationResultIdentifier),
        ));
    }
    if (complianceType != null) {
      result$
        ..add('ComplianceType')
        ..add(serializers.serialize(
          complianceType,
          specifiedType: const FullType(_i3.ComplianceType),
        ));
    }
    if (resultRecordedTime != null) {
      result$
        ..add('ResultRecordedTime')
        ..add(serializers.serialize(
          resultRecordedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (configRuleInvokedTime != null) {
      result$
        ..add('ConfigRuleInvokedTime')
        ..add(serializers.serialize(
          configRuleInvokedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (annotation != null) {
      result$
        ..add('Annotation')
        ..add(serializers.serialize(
          annotation,
          specifiedType: const FullType(String),
        ));
    }
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('AwsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
