// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? annotation,
    required _i2.ConformancePackComplianceType complianceType,
    required DateTime configRuleInvokedTime,
    required _i3.EvaluationResultIdentifier evaluationResultIdentifier,
    required DateTime resultRecordedTime,
  }) {
    return _$ConformancePackEvaluationResult._(
      annotation: annotation,
      complianceType: complianceType,
      configRuleInvokedTime: configRuleInvokedTime,
      evaluationResultIdentifier: evaluationResultIdentifier,
      resultRecordedTime: resultRecordedTime,
    );
  }

  /// The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information.
  factory ConformancePackEvaluationResult.build(
          [void Function(ConformancePackEvaluationResultBuilder) updates]) =
      _$ConformancePackEvaluationResult;

  const ConformancePackEvaluationResult._();

  static const List<_i4.SmithySerializer> serializers = [
    ConformancePackEvaluationResultAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackEvaluationResultBuilder b) {}

  /// Supplementary information about how the evaluation determined the compliance.
  String? get annotation;

  /// The compliance type. The allowed values are `COMPLIANT` and `NON_COMPLIANT`. `INSUFFICIENT_DATA` is not supported.
  _i2.ConformancePackComplianceType get complianceType;

  /// The time when Config rule evaluated Amazon Web Services resource.
  DateTime get configRuleInvokedTime;

  /// Uniquely identifies an evaluation result.
  _i3.EvaluationResultIdentifier get evaluationResultIdentifier;

  /// The time when Config recorded the evaluation result.
  DateTime get resultRecordedTime;
  @override
  List<Object?> get props => [
        annotation,
        complianceType,
        configRuleInvokedTime,
        evaluationResultIdentifier,
        resultRecordedTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackEvaluationResult');
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
          result.complianceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
          break;
        case 'ConfigRuleInvokedTime':
          result.configRuleInvokedTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'EvaluationResultIdentifier':
          result.evaluationResultIdentifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EvaluationResultIdentifier),
          ) as _i3.EvaluationResultIdentifier));
          break;
        case 'ResultRecordedTime':
          result.resultRecordedTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    final payload = (object as ConformancePackEvaluationResult);
    final result = <Object?>[
      'ComplianceType',
      serializers.serialize(
        payload.complianceType,
        specifiedType: const FullType(_i2.ConformancePackComplianceType),
      ),
      'ConfigRuleInvokedTime',
      serializers.serialize(
        payload.configRuleInvokedTime,
        specifiedType: const FullType(DateTime),
      ),
      'EvaluationResultIdentifier',
      serializers.serialize(
        payload.evaluationResultIdentifier,
        specifiedType: const FullType(_i3.EvaluationResultIdentifier),
      ),
      'ResultRecordedTime',
      serializers.serialize(
        payload.resultRecordedTime,
        specifiedType: const FullType(DateTime),
      ),
    ];
    if (payload.annotation != null) {
      result
        ..add('Annotation')
        ..add(serializers.serialize(
          payload.annotation!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
