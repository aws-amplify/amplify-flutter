// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.start_config_rules_evaluation_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'start_config_rules_evaluation_response.g.dart';

/// The output when you start the evaluation for the specified Config rule.
abstract class StartConfigRulesEvaluationResponse
    with
        _i1.AWSEquatable<StartConfigRulesEvaluationResponse>
    implements
        Built<StartConfigRulesEvaluationResponse,
            StartConfigRulesEvaluationResponseBuilder>,
        _i2.EmptyPayload {
  /// The output when you start the evaluation for the specified Config rule.
  factory StartConfigRulesEvaluationResponse() {
    return _$StartConfigRulesEvaluationResponse._();
  }

  /// The output when you start the evaluation for the specified Config rule.
  factory StartConfigRulesEvaluationResponse.build(
          [void Function(StartConfigRulesEvaluationResponseBuilder) updates]) =
      _$StartConfigRulesEvaluationResponse;

  const StartConfigRulesEvaluationResponse._();

  /// Constructs a [StartConfigRulesEvaluationResponse] from a [payload] and [response].
  factory StartConfigRulesEvaluationResponse.fromResponse(
    StartConfigRulesEvaluationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    StartConfigRulesEvaluationResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartConfigRulesEvaluationResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartConfigRulesEvaluationResponse');
    return helper.toString();
  }
}

class StartConfigRulesEvaluationResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StartConfigRulesEvaluationResponse> {
  const StartConfigRulesEvaluationResponseAwsJson11Serializer()
      : super('StartConfigRulesEvaluationResponse');

  @override
  Iterable<Type> get types => const [
        StartConfigRulesEvaluationResponse,
        _$StartConfigRulesEvaluationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartConfigRulesEvaluationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return StartConfigRulesEvaluationResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
