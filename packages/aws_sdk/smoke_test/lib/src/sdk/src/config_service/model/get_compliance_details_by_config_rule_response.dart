// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_compliance_details_by_config_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart'
    as _i2;

part 'get_compliance_details_by_config_rule_response.g.dart';

abstract class GetComplianceDetailsByConfigRuleResponse
    with
        _i1.AWSEquatable<GetComplianceDetailsByConfigRuleResponse>
    implements
        Built<GetComplianceDetailsByConfigRuleResponse,
            GetComplianceDetailsByConfigRuleResponseBuilder> {
  factory GetComplianceDetailsByConfigRuleResponse({
    List<_i2.EvaluationResult>? evaluationResults,
    String? nextToken,
  }) {
    return _$GetComplianceDetailsByConfigRuleResponse._(
      evaluationResults:
          evaluationResults == null ? null : _i3.BuiltList(evaluationResults),
      nextToken: nextToken,
    );
  }

  factory GetComplianceDetailsByConfigRuleResponse.build(
      [void Function(GetComplianceDetailsByConfigRuleResponseBuilder)
          updates]) = _$GetComplianceDetailsByConfigRuleResponse;

  const GetComplianceDetailsByConfigRuleResponse._();

  /// Constructs a [GetComplianceDetailsByConfigRuleResponse] from a [payload] and [response].
  factory GetComplianceDetailsByConfigRuleResponse.fromResponse(
    GetComplianceDetailsByConfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetComplianceDetailsByConfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByConfigRuleResponseBuilder b) {}

  /// Indicates whether the Amazon Web Services resource complies with the specified Config rule.
  _i3.BuiltList<_i2.EvaluationResult>? get evaluationResults;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        evaluationResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByConfigRuleResponse');
    helper.add(
      'evaluationResults',
      evaluationResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetComplianceDetailsByConfigRuleResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetComplianceDetailsByConfigRuleResponse> {
  const GetComplianceDetailsByConfigRuleResponseAwsJson11Serializer()
      : super('GetComplianceDetailsByConfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByConfigRuleResponse,
        _$GetComplianceDetailsByConfigRuleResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByConfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByConfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EvaluationResults':
          if (value != null) {
            result.evaluationResults.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.EvaluationResult)],
              ),
            ) as _i3.BuiltList<_i2.EvaluationResult>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetComplianceDetailsByConfigRuleResponse);
    final result = <Object?>[];
    if (payload.evaluationResults != null) {
      result
        ..add('EvaluationResults')
        ..add(serializers.serialize(
          payload.evaluationResults!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.EvaluationResult)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
