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

library smoke_test.config_service.model.describe_aggregate_compliance_byconformance_packs_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_byconformance_pack.dart'
    as _i3;

part 'describe_aggregate_compliance_byconformance_packs_response.g.dart';

abstract class DescribeAggregateComplianceByconformancePacksResponse
    with
        _i1.AWSEquatable<DescribeAggregateComplianceByconformancePacksResponse>
    implements
        Built<DescribeAggregateComplianceByconformancePacksResponse,
            DescribeAggregateComplianceByconformancePacksResponseBuilder> {
  factory DescribeAggregateComplianceByconformancePacksResponse({
    _i2.BuiltList<_i3.AggregateComplianceByconformancePack>?
        aggregateComplianceByconformancePacks,
    String? nextToken,
  }) {
    return _$DescribeAggregateComplianceByconformancePacksResponse._(
      aggregateComplianceByconformancePacks:
          aggregateComplianceByconformancePacks,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByconformancePacksResponse.build(
      [void Function(
              DescribeAggregateComplianceByconformancePacksResponseBuilder)
          updates]) = _$DescribeAggregateComplianceByconformancePacksResponse;

  const DescribeAggregateComplianceByconformancePacksResponse._();

  /// Constructs a [DescribeAggregateComplianceByconformancePacksResponse] from a [payload] and [response].
  factory DescribeAggregateComplianceByconformancePacksResponse.fromResponse(
    DescribeAggregateComplianceByconformancePacksResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregateComplianceByconformancePacksResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAggregateComplianceByconformancePacksResponseBuilder b) {}

  /// Returns the `AggregateComplianceByConformancePack` object.
  _i2.BuiltList<_i3.AggregateComplianceByconformancePack>?
      get aggregateComplianceByconformancePacks;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateComplianceByconformancePacks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByconformancePacksResponse');
    helper.add(
      'aggregateComplianceByconformancePacks',
      aggregateComplianceByconformancePacks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByconformancePacksResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeAggregateComplianceByconformancePacksResponse> {
  const DescribeAggregateComplianceByconformancePacksResponseAwsJson11Serializer()
      : super('DescribeAggregateComplianceByconformancePacksResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByconformancePacksResponse,
        _$DescribeAggregateComplianceByconformancePacksResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByconformancePacksResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeAggregateComplianceByconformancePacksResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateComplianceByConformancePacks':
          if (value != null) {
            result.aggregateComplianceByconformancePacks
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.AggregateComplianceByconformancePack)],
              ),
            ) as _i2.BuiltList<_i3.AggregateComplianceByconformancePack>));
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
        (object as DescribeAggregateComplianceByconformancePacksResponse);
    final result = <Object?>[];
    if (payload.aggregateComplianceByconformancePacks != null) {
      result
        ..add('AggregateComplianceByConformancePacks')
        ..add(serializers.serialize(
          payload.aggregateComplianceByconformancePacks!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.AggregateComplianceByconformancePack)],
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
