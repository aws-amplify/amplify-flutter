// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.conformance_pack_evaluation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_identifier.dart'
    as _i3;

part 'conformance_pack_evaluation_result.g.dart';

/// The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information.
abstract class ConformancePackEvaluationResult
    with
        _i1.AWSEquatable<ConformancePackEvaluationResult>
    implements
        Built<ConformancePackEvaluationResult,
            ConformancePackEvaluationResultBuilder> {
  /// The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information.
  factory ConformancePackEvaluationResult({
    required _i2.ConformancePackComplianceType complianceType,
    required _i3.EvaluationResultIdentifier evaluationResultIdentifier,
    required DateTime configRuleInvokedTime,
    required DateTime resultRecordedTime,
    String? annotation,
  }) {
    return _$ConformancePackEvaluationResult._(
      complianceType: complianceType,
      evaluationResultIdentifier: evaluationResultIdentifier,
      configRuleInvokedTime: configRuleInvokedTime,
      resultRecordedTime: resultRecordedTime,
      annotation: annotation,
    );
  }

  /// The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information.
  factory ConformancePackEvaluationResult.build(
          [void Function(ConformancePackEvaluationResultBuilder) updates]) =
      _$ConformancePackEvaluationResult;

  const ConformancePackEvaluationResult._();

  static const List<_i4.SmithySerializer<ConformancePackEvaluationResult>>
      serializers = [ConformancePackEvaluationResultAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackEvaluationResultBuilder b) {}

  /// The compliance type. The allowed values are `COMPLIANT` and `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
  _i2.ConformancePackComplianceType get complianceType;

  /// Uniquely identifies an evaluation result.
  _i3.EvaluationResultIdentifier get evaluationResultIdentifier;

  /// The time when Config rule evaluated Amazon Web Services resource.
  DateTime get configRuleInvokedTime;

  /// The time when Config recorded the evaluation result.
  DateTime get resultRecordedTime;

  /// Supplementary information about how the evaluation determined the compliance.
  String? get annotation;
  @override
  List<Object?> get props => [
        complianceType,
        evaluationResultIdentifier,
        configRuleInvokedTime,
        resultRecordedTime,
        annotation,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackEvaluationResult')
          ..add(
            'complianceType',
            complianceType,
          )
          ..add(
            'evaluationResultIdentifier',
            evaluationResultIdentifier,
          )
          ..add(
            'configRuleInvokedTime',
            configRuleInvokedTime,
          )
          ..add(
            'resultRecordedTime',
            resultRecordedTime,
          )
          ..add(
            'annotation',
            annotation,
          );
    return helper.toString();
  }
}

class ConformancePackEvaluationResultAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ConformancePackEvaluationResult> {
  const ConformancePackEvaluationResultAwsJson11Serializer()
      : super('ConformancePackEvaluationResult');

  @override
  Iterable<Type> get types => const [
        ConformancePackEvaluationResult,
        _$ConformancePackEvaluationResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackEvaluationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackEvaluationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
        case 'EvaluationResultIdentifier':
          result.evaluationResultIdentifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EvaluationResultIdentifier),
          ) as _i3.EvaluationResultIdentifier));
        case 'ConfigRuleInvokedTime':
          result.configRuleInvokedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ResultRecordedTime':
          result.resultRecordedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Annotation':
          result.annotation = (serializers.deserialize(
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
    ConformancePackEvaluationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackEvaluationResult(
      :complianceType,
      :evaluationResultIdentifier,
      :configRuleInvokedTime,
      :resultRecordedTime,
      :annotation
    ) = object;
    result$.addAll([
      'ComplianceType',
      serializers.serialize(
        complianceType,
        specifiedType: const FullType(_i2.ConformancePackComplianceType),
      ),
      'EvaluationResultIdentifier',
      serializers.serialize(
        evaluationResultIdentifier,
        specifiedType: const FullType(_i3.EvaluationResultIdentifier),
      ),
      'ConfigRuleInvokedTime',
      serializers.serialize(
        configRuleInvokedTime,
        specifiedType: const FullType(DateTime),
      ),
      'ResultRecordedTime',
      serializers.serialize(
        resultRecordedTime,
        specifiedType: const FullType(DateTime),
      ),
    ]);
    if (annotation != null) {
      result$
        ..add('Annotation')
        ..add(serializers.serialize(
          annotation,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
