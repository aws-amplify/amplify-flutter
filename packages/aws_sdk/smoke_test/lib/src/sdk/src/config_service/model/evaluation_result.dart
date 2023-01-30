// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.evaluation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart'
    as _i3;

part 'evaluation_result.g.dart';

/// The details of an Config evaluation. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
abstract class EvaluationResult
    with _i1.AWSEquatable<EvaluationResult>
    implements Built<EvaluationResult, EvaluationResultBuilder> {
  /// The details of an Config evaluation. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory EvaluationResult({
    String? annotation,
    _i2.ComplianceType? complianceType,
    DateTime? configRuleInvokedTime,
    _i3.EvaluationResultIdentifier? evaluationResultIdentifier,
    DateTime? resultRecordedTime,
    String? resultToken,
  }) {
    return _$EvaluationResult._(
      annotation: annotation,
      complianceType: complianceType,
      configRuleInvokedTime: configRuleInvokedTime,
      evaluationResultIdentifier: evaluationResultIdentifier,
      resultRecordedTime: resultRecordedTime,
      resultToken: resultToken,
    );
  }

  /// The details of an Config evaluation. Provides the Amazon Web Services resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
  factory EvaluationResult.build(
      [void Function(EvaluationResultBuilder) updates]) = _$EvaluationResult;

  const EvaluationResult._();

  static const List<_i4.SmithySerializer> serializers = [
    EvaluationResultAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationResultBuilder b) {}

  /// Supplementary information about how the evaluation determined the compliance.
  String? get annotation;

  /// Indicates whether the Amazon Web Services resource complies with the Config rule that evaluated it.
  ///
  /// For the `EvaluationResult` data type, Config supports only the `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. Config does not support the `INSUFFICIENT_DATA` value for the `EvaluationResult` data type.
  _i2.ComplianceType? get complianceType;

  /// The time when the Config rule evaluated the Amazon Web Services resource.
  DateTime? get configRuleInvokedTime;

  /// Uniquely identifies the evaluation result.
  _i3.EvaluationResultIdentifier? get evaluationResultIdentifier;

  /// The time when Config recorded the evaluation result.
  DateTime? get resultRecordedTime;

  /// An encrypted token that associates an evaluation with an Config rule. The token identifies the rule, the Amazon Web Services resource being evaluated, and the event that triggered the evaluation.
  String? get resultToken;
  @override
  List<Object?> get props => [
        annotation,
        complianceType,
        configRuleInvokedTime,
        evaluationResultIdentifier,
        resultRecordedTime,
        resultToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationResult');
    helper.add(
      'annotation',
      annotation,
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
    helper.add(
      'resultToken',
      resultToken,
    );
    return helper.toString();
  }
}

class EvaluationResultAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<EvaluationResult> {
  const EvaluationResultAwsJson11Serializer() : super('EvaluationResult');

  @override
  Iterable<Type> get types => const [
        EvaluationResult,
        _$EvaluationResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Annotation':
          if (value != null) {
            result.annotation = (serializers.deserialize(
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
        case 'ResultToken':
          if (value != null) {
            result.resultToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as EvaluationResult);
    final result = <Object?>[];
    if (payload.annotation != null) {
      result
        ..add('Annotation')
        ..add(serializers.serialize(
          payload.annotation!,
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
    if (payload.resultToken != null) {
      result
        ..add('ResultToken')
        ..add(serializers.serialize(
          payload.resultToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
