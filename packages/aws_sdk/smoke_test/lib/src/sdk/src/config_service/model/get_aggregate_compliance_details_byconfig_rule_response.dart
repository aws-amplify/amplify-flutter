// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.config_service.model.get_aggregate_compliance_details_byconfig_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_evaluation_result.dart'
    as _i3;

part 'get_aggregate_compliance_details_byconfig_rule_response.g.dart';

abstract class GetAggregateComplianceDetailsByconfigRuleResponse
    with
        _i1.AWSEquatable<GetAggregateComplianceDetailsByconfigRuleResponse>
    implements
        Built<GetAggregateComplianceDetailsByconfigRuleResponse,
            GetAggregateComplianceDetailsByconfigRuleResponseBuilder> {
  factory GetAggregateComplianceDetailsByconfigRuleResponse({
    _i2.BuiltList<_i3.AggregateEvaluationResult>? aggregateEvaluationResults,
    String? nextToken,
  }) {
    return _$GetAggregateComplianceDetailsByconfigRuleResponse._(
      aggregateEvaluationResults: aggregateEvaluationResults,
      nextToken: nextToken,
    );
  }

  factory GetAggregateComplianceDetailsByconfigRuleResponse.build(
      [void Function(GetAggregateComplianceDetailsByconfigRuleResponseBuilder)
          updates]) = _$GetAggregateComplianceDetailsByconfigRuleResponse;

  const GetAggregateComplianceDetailsByconfigRuleResponse._();

  /// Constructs a [GetAggregateComplianceDetailsByconfigRuleResponse] from a [payload] and [response].
  factory GetAggregateComplianceDetailsByconfigRuleResponse.fromResponse(
    GetAggregateComplianceDetailsByconfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAggregateComplianceDetailsByconfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetAggregateComplianceDetailsByconfigRuleResponseBuilder b) {}

  /// Returns an AggregateEvaluationResults object.
  _i2.BuiltList<_i3.AggregateEvaluationResult>? get aggregateEvaluationResults;

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
        'GetAggregateComplianceDetailsByconfigRuleResponse');
    helper.add(
      'aggregateEvaluationResults',
      aggregateEvaluationResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetAggregateComplianceDetailsByconfigRuleResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetAggregateComplianceDetailsByconfigRuleResponse> {
  const GetAggregateComplianceDetailsByconfigRuleResponseAwsJson11Serializer()
      : super('GetAggregateComplianceDetailsByconfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateComplianceDetailsByconfigRuleResponse,
        _$GetAggregateComplianceDetailsByconfigRuleResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateComplianceDetailsByconfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateComplianceDetailsByconfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateEvaluationResults':
          if (value != null) {
            result.aggregateEvaluationResults.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.AggregateEvaluationResult)],
              ),
            ) as _i2.BuiltList<_i3.AggregateEvaluationResult>));
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
    final payload =
        (object as GetAggregateComplianceDetailsByconfigRuleResponse);
    final result = <Object?>[];
    if (payload.aggregateEvaluationResults != null) {
      result
        ..add('AggregateEvaluationResults')
        ..add(serializers.serialize(
          payload.aggregateEvaluationResults!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.AggregateEvaluationResult)],
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
