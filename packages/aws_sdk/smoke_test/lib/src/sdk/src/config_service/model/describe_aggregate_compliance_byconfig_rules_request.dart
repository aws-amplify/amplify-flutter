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

library smoke_test.config_service.model.describe_aggregate_compliance_byconfig_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_filters.dart'
    as _i3;

part 'describe_aggregate_compliance_byconfig_rules_request.g.dart';

abstract class DescribeAggregateComplianceByconfigRulesRequest
    with
        _i1.HttpInput<DescribeAggregateComplianceByconfigRulesRequest>,
        _i2.AWSEquatable<DescribeAggregateComplianceByconfigRulesRequest>
    implements
        Built<DescribeAggregateComplianceByconfigRulesRequest,
            DescribeAggregateComplianceByconfigRulesRequestBuilder> {
  factory DescribeAggregateComplianceByconfigRulesRequest({
    required String configurationAggregatorName,
    _i3.ConfigRuleComplianceFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeAggregateComplianceByconfigRulesRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByconfigRulesRequest.build(
      [void Function(DescribeAggregateComplianceByconfigRulesRequestBuilder)
          updates]) = _$DescribeAggregateComplianceByconfigRulesRequest;

  const DescribeAggregateComplianceByconfigRulesRequest._();

  factory DescribeAggregateComplianceByconfigRulesRequest.fromRequest(
    DescribeAggregateComplianceByconfigRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeAggregateComplianceByconfigRulesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregateComplianceByconfigRulesRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results by ConfigRuleComplianceFilters object.
  _i3.ConfigRuleComplianceFilters? get filters;

  /// The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeAggregateComplianceByconfigRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByconfigRulesRequest');
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByconfigRulesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeAggregateComplianceByconfigRulesRequest> {
  const DescribeAggregateComplianceByconfigRulesRequestAwsJson11Serializer()
      : super('DescribeAggregateComplianceByconfigRulesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByconfigRulesRequest,
        _$DescribeAggregateComplianceByconfigRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByconfigRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateComplianceByconfigRulesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ConfigRuleComplianceFilters),
            ) as _i3.ConfigRuleComplianceFilters));
          }
          break;
        case 'Limit':
          result.limit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as DescribeAggregateComplianceByconfigRulesRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        payload.limit,
        specifiedType: const FullType(int),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.ConfigRuleComplianceFilters),
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
