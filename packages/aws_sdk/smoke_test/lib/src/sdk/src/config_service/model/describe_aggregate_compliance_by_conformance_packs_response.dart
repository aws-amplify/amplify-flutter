// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_aggregate_compliance_by_conformance_packs_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart';

part 'describe_aggregate_compliance_by_conformance_packs_response.g.dart';

abstract class DescribeAggregateComplianceByConformancePacksResponse
    with
        _i1.AWSEquatable<DescribeAggregateComplianceByConformancePacksResponse>
    implements
        Built<DescribeAggregateComplianceByConformancePacksResponse,
            DescribeAggregateComplianceByConformancePacksResponseBuilder> {
  factory DescribeAggregateComplianceByConformancePacksResponse({
    List<AggregateComplianceByConformancePack>?
        aggregateComplianceByConformancePacks,
    String? nextToken,
  }) {
    return _$DescribeAggregateComplianceByConformancePacksResponse._(
      aggregateComplianceByConformancePacks:
          aggregateComplianceByConformancePacks == null
              ? null
              : _i2.BuiltList(aggregateComplianceByConformancePacks),
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByConformancePacksResponse.build(
      [void Function(
              DescribeAggregateComplianceByConformancePacksResponseBuilder)
          updates]) = _$DescribeAggregateComplianceByConformancePacksResponse;

  const DescribeAggregateComplianceByConformancePacksResponse._();

  /// Constructs a [DescribeAggregateComplianceByConformancePacksResponse] from a [payload] and [response].
  factory DescribeAggregateComplianceByConformancePacksResponse.fromResponse(
    DescribeAggregateComplianceByConformancePacksResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<
              DescribeAggregateComplianceByConformancePacksResponse>>
      serializers = [
    DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer()
  ];

  /// Returns the `AggregateComplianceByConformancePack` object.
  _i2.BuiltList<AggregateComplianceByConformancePack>?
      get aggregateComplianceByConformancePacks;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateComplianceByConformancePacks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByConformancePacksResponse')
      ..add(
        'aggregateComplianceByConformancePacks',
        aggregateComplianceByConformancePacks,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<
        DescribeAggregateComplianceByConformancePacksResponse> {
  const DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer()
      : super('DescribeAggregateComplianceByConformancePacksResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByConformancePacksResponse,
        _$DescribeAggregateComplianceByConformancePacksResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByConformancePacksResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeAggregateComplianceByConformancePacksResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AggregateComplianceByConformancePacks':
          result.aggregateComplianceByConformancePacks
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AggregateComplianceByConformancePack)],
            ),
          ) as _i2.BuiltList<AggregateComplianceByConformancePack>));
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
    DescribeAggregateComplianceByConformancePacksResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeAggregateComplianceByConformancePacksResponse(
      :aggregateComplianceByConformancePacks,
      :nextToken
    ) = object;
    if (aggregateComplianceByConformancePacks != null) {
      result$
        ..add('AggregateComplianceByConformancePacks')
        ..add(serializers.serialize(
          aggregateComplianceByConformancePacks,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AggregateComplianceByConformancePack)],
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
