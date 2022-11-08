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

library smoke_test.config_service.model.describe_aggregate_compliance_byconfig_rules_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_byconfig_rule.dart'
    as _i3;

part 'describe_aggregate_compliance_byconfig_rules_response.g.dart';

abstract class DescribeAggregateComplianceByconfigRulesResponse
    with
        _i1.AWSEquatable<DescribeAggregateComplianceByconfigRulesResponse>
    implements
        Built<DescribeAggregateComplianceByconfigRulesResponse,
            DescribeAggregateComplianceByconfigRulesResponseBuilder> {
  factory DescribeAggregateComplianceByconfigRulesResponse({
    _i2.BuiltList<_i3.AggregateComplianceByconfigRule>?
        aggregateComplianceByconfigRules,
    String? nextToken,
  }) {
    return _$DescribeAggregateComplianceByconfigRulesResponse._(
      aggregateComplianceByconfigRules: aggregateComplianceByconfigRules,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByconfigRulesResponse.build(
      [void Function(DescribeAggregateComplianceByconfigRulesResponseBuilder)
          updates]) = _$DescribeAggregateComplianceByconfigRulesResponse;

  const DescribeAggregateComplianceByconfigRulesResponse._();

  /// Constructs a [DescribeAggregateComplianceByconfigRulesResponse] from a [payload] and [response].
  factory DescribeAggregateComplianceByconfigRulesResponse.fromResponse(
    DescribeAggregateComplianceByconfigRulesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregateComplianceByconfigRulesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAggregateComplianceByconfigRulesResponseBuilder b) {}

  /// Returns a list of AggregateComplianceByConfigRule object.
  _i2.BuiltList<_i3.AggregateComplianceByconfigRule>?
      get aggregateComplianceByconfigRules;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateComplianceByconfigRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByconfigRulesResponse');
    helper.add(
      'aggregateComplianceByconfigRules',
      aggregateComplianceByconfigRules,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByconfigRulesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeAggregateComplianceByconfigRulesResponse> {
  const DescribeAggregateComplianceByconfigRulesResponseAwsJson11Serializer()
      : super('DescribeAggregateComplianceByconfigRulesResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByconfigRulesResponse,
        _$DescribeAggregateComplianceByconfigRulesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByconfigRulesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateComplianceByconfigRulesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateComplianceByConfigRules':
          if (value != null) {
            result.aggregateComplianceByconfigRules
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.AggregateComplianceByconfigRule)],
              ),
            ) as _i2.BuiltList<_i3.AggregateComplianceByconfigRule>));
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
        (object as DescribeAggregateComplianceByconfigRulesResponse);
    final result = <Object?>[];
    if (payload.aggregateComplianceByconfigRules != null) {
      result
        ..add('AggregateComplianceByConfigRules')
        ..add(serializers.serialize(
          payload.aggregateComplianceByconfigRules!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.AggregateComplianceByconfigRule)],
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
