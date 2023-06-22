// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_compliance_details_by_config_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart'
    as _i2;

part 'get_aggregate_compliance_details_by_config_rule_response.g.dart';

abstract class GetAggregateComplianceDetailsByConfigRuleResponse
    with
        _i1.AWSEquatable<GetAggregateComplianceDetailsByConfigRuleResponse>
    implements
        Built<GetAggregateComplianceDetailsByConfigRuleResponse,
            GetAggregateComplianceDetailsByConfigRuleResponseBuilder> {
  factory GetAggregateComplianceDetailsByConfigRuleResponse({
    List<_i2.AggregateEvaluationResult>? aggregateEvaluationResults,
    String? nextToken,
  }) {
    return _$GetAggregateComplianceDetailsByConfigRuleResponse._(
      aggregateEvaluationResults: aggregateEvaluationResults == null
          ? null
          : _i3.BuiltList(aggregateEvaluationResults),
      nextToken: nextToken,
    );
  }

  factory GetAggregateComplianceDetailsByConfigRuleResponse.build(
      [void Function(GetAggregateComplianceDetailsByConfigRuleResponseBuilder)
          updates]) = _$GetAggregateComplianceDetailsByConfigRuleResponse;

  const GetAggregateComplianceDetailsByConfigRuleResponse._();

  /// Constructs a [GetAggregateComplianceDetailsByConfigRuleResponse] from a [payload] and [response].
  factory GetAggregateComplianceDetailsByConfigRuleResponse.fromResponse(
    GetAggregateComplianceDetailsByConfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i4.SmithySerializer<
          GetAggregateComplianceDetailsByConfigRuleResponse>> serializers = [
    GetAggregateComplianceDetailsByConfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetAggregateComplianceDetailsByConfigRuleResponseBuilder b) {}

  /// Returns an AggregateEvaluationResults object.
  _i3.BuiltList<_i2.AggregateEvaluationResult>? get aggregateEvaluationResults;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateEvaluationResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateComplianceDetailsByConfigRuleResponse')
      ..add(
        'aggregateEvaluationResults',
        aggregateEvaluationResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetAggregateComplianceDetailsByConfigRuleResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetAggregateComplianceDetailsByConfigRuleResponse> {
  const GetAggregateComplianceDetailsByConfigRuleResponseAwsJson11Serializer()
      : super('GetAggregateComplianceDetailsByConfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateComplianceDetailsByConfigRuleResponse,
        _$GetAggregateComplianceDetailsByConfigRuleResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateComplianceDetailsByConfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateComplianceDetailsByConfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AggregateEvaluationResults':
          result.aggregateEvaluationResults.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AggregateEvaluationResult)],
            ),
          ) as _i3.BuiltList<_i2.AggregateEvaluationResult>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    GetAggregateComplianceDetailsByConfigRuleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateComplianceDetailsByConfigRuleResponse(
      :aggregateEvaluationResults,
      :nextToken
    ) = object;
    if (aggregateEvaluationResults != null) {
      result$
        ..add('AggregateEvaluationResults')
        ..add(serializers.serialize(
          aggregateEvaluationResults,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateEvaluationResult)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
