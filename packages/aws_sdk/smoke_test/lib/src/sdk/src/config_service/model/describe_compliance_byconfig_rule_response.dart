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

library smoke_test.config_service.model.describe_compliance_byconfig_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_byconfig_rule.dart'
    as _i3;

part 'describe_compliance_byconfig_rule_response.g.dart';

abstract class DescribeComplianceByconfigRuleResponse
    with
        _i1.AWSEquatable<DescribeComplianceByconfigRuleResponse>
    implements
        Built<DescribeComplianceByconfigRuleResponse,
            DescribeComplianceByconfigRuleResponseBuilder> {
  factory DescribeComplianceByconfigRuleResponse({
    _i2.BuiltList<_i3.ComplianceByconfigRule>? complianceByconfigRules,
    String? nextToken,
  }) {
    return _$DescribeComplianceByconfigRuleResponse._(
      complianceByconfigRules: complianceByconfigRules,
      nextToken: nextToken,
    );
  }

  factory DescribeComplianceByconfigRuleResponse.build(
      [void Function(DescribeComplianceByconfigRuleResponseBuilder)
          updates]) = _$DescribeComplianceByconfigRuleResponse;

  const DescribeComplianceByconfigRuleResponse._();

  /// Constructs a [DescribeComplianceByconfigRuleResponse] from a [payload] and [response].
  factory DescribeComplianceByconfigRuleResponse.fromResponse(
    DescribeComplianceByconfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeComplianceByconfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByconfigRuleResponseBuilder b) {}

  /// Indicates whether each of the specified Config rules is compliant.
  _i2.BuiltList<_i3.ComplianceByconfigRule>? get complianceByconfigRules;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        complianceByconfigRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByconfigRuleResponse');
    helper.add(
      'complianceByconfigRules',
      complianceByconfigRules,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeComplianceByconfigRuleResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeComplianceByconfigRuleResponse> {
  const DescribeComplianceByconfigRuleResponseAwsJson11Serializer()
      : super('DescribeComplianceByconfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByconfigRuleResponse,
        _$DescribeComplianceByconfigRuleResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByconfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByconfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceByConfigRules':
          if (value != null) {
            result.complianceByconfigRules.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.ComplianceByconfigRule)],
              ),
            ) as _i2.BuiltList<_i3.ComplianceByconfigRule>));
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
    final payload = (object as DescribeComplianceByconfigRuleResponse);
    final result = <Object?>[];
    if (payload.complianceByconfigRules != null) {
      result
        ..add('ComplianceByConfigRules')
        ..add(serializers.serialize(
          payload.complianceByconfigRules!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.ComplianceByconfigRule)],
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
