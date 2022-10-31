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

library smoke_test.config_service.model.get_compliance_summary_byconfig_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i2;

part 'get_compliance_summary_byconfig_rule_response.g.dart';

abstract class GetComplianceSummaryByconfigRuleResponse
    with
        _i1.AWSEquatable<GetComplianceSummaryByconfigRuleResponse>
    implements
        Built<GetComplianceSummaryByconfigRuleResponse,
            GetComplianceSummaryByconfigRuleResponseBuilder> {
  factory GetComplianceSummaryByconfigRuleResponse(
      {_i2.ComplianceSummary? complianceSummary}) {
    return _$GetComplianceSummaryByconfigRuleResponse._(
        complianceSummary: complianceSummary);
  }

  factory GetComplianceSummaryByconfigRuleResponse.build(
      [void Function(GetComplianceSummaryByconfigRuleResponseBuilder)
          updates]) = _$GetComplianceSummaryByconfigRuleResponse;

  const GetComplianceSummaryByconfigRuleResponse._();

  /// Constructs a [GetComplianceSummaryByconfigRuleResponse] from a [payload] and [response].
  factory GetComplianceSummaryByconfigRuleResponse.fromResponse(
    GetComplianceSummaryByconfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetComplianceSummaryByconfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByconfigRuleResponseBuilder b) {}

  /// The number of Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.
  _i2.ComplianceSummary? get complianceSummary;
  @override
  List<Object?> get props => [complianceSummary];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceSummaryByconfigRuleResponse');
    helper.add(
      'complianceSummary',
      complianceSummary,
    );
    return helper.toString();
  }
}

class GetComplianceSummaryByconfigRuleResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<GetComplianceSummaryByconfigRuleResponse> {
  const GetComplianceSummaryByconfigRuleResponseAwsJson11Serializer()
      : super('GetComplianceSummaryByconfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByconfigRuleResponse,
        _$GetComplianceSummaryByconfigRuleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByconfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByconfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceSummary':
          if (value != null) {
            result.complianceSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceSummary),
            ) as _i2.ComplianceSummary));
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
    final payload = (object as GetComplianceSummaryByconfigRuleResponse);
    final result = <Object?>[];
    if (payload.complianceSummary != null) {
      result
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          payload.complianceSummary!,
          specifiedType: const FullType(_i2.ComplianceSummary),
        ));
    }
    return result;
  }
}
