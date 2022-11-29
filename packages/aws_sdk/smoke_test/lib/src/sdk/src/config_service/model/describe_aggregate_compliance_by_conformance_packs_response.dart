// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_aggregate_compliance_by_conformance_packs_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart'
    as _i2;

part 'describe_aggregate_compliance_by_conformance_packs_response.g.dart';

abstract class DescribeAggregateComplianceByConformancePacksResponse
    with
        _i1.AWSEquatable<DescribeAggregateComplianceByConformancePacksResponse>
    implements
        Built<DescribeAggregateComplianceByConformancePacksResponse,
            DescribeAggregateComplianceByConformancePacksResponseBuilder> {
  factory DescribeAggregateComplianceByConformancePacksResponse({
    List<_i2.AggregateComplianceByConformancePack>?
        aggregateComplianceByConformancePacks,
    String? nextToken,
  }) {
    return _$DescribeAggregateComplianceByConformancePacksResponse._(
      aggregateComplianceByConformancePacks:
          aggregateComplianceByConformancePacks == null
              ? null
              : _i3.BuiltList(aggregateComplianceByConformancePacks),
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

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAggregateComplianceByConformancePacksResponseBuilder b) {}

  /// Returns the `AggregateComplianceByConformancePack` object.
  _i3.BuiltList<_i2.AggregateComplianceByConformancePack>?
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
        'DescribeAggregateComplianceByConformancePacksResponse');
    helper.add(
      'aggregateComplianceByConformancePacks',
      aggregateComplianceByConformancePacks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeAggregateComplianceByConformancePacksResponse> {
  const DescribeAggregateComplianceByConformancePacksResponseAwsJson11Serializer()
      : super('DescribeAggregateComplianceByConformancePacksResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByConformancePacksResponse,
        _$DescribeAggregateComplianceByConformancePacksResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'AggregateComplianceByConformancePacks':
          if (value != null) {
            result.aggregateComplianceByConformancePacks
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregateComplianceByConformancePack)],
              ),
            ) as _i3.BuiltList<_i2.AggregateComplianceByConformancePack>));
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
        (object as DescribeAggregateComplianceByConformancePacksResponse);
    final result = <Object?>[];
    if (payload.aggregateComplianceByConformancePacks != null) {
      result
        ..add('AggregateComplianceByConformancePacks')
        ..add(serializers.serialize(
          payload.aggregateComplianceByConformancePacks!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateComplianceByConformancePack)],
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
