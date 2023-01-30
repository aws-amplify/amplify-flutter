// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_aggregate_discovered_resource_counts_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/grouped_resource_count.dart'
    as _i2;

part 'get_aggregate_discovered_resource_counts_response.g.dart';

abstract class GetAggregateDiscoveredResourceCountsResponse
    with
        _i1.AWSEquatable<GetAggregateDiscoveredResourceCountsResponse>
    implements
        Built<GetAggregateDiscoveredResourceCountsResponse,
            GetAggregateDiscoveredResourceCountsResponseBuilder> {
  factory GetAggregateDiscoveredResourceCountsResponse({
    String? groupByKey,
    List<_i2.GroupedResourceCount>? groupedResourceCounts,
    String? nextToken,
    _i3.Int64? totalDiscoveredResources,
  }) {
    totalDiscoveredResources ??= _i3.Int64.ZERO;
    return _$GetAggregateDiscoveredResourceCountsResponse._(
      groupByKey: groupByKey,
      groupedResourceCounts: groupedResourceCounts == null
          ? null
          : _i4.BuiltList(groupedResourceCounts),
      nextToken: nextToken,
      totalDiscoveredResources: totalDiscoveredResources,
    );
  }

  factory GetAggregateDiscoveredResourceCountsResponse.build(
      [void Function(GetAggregateDiscoveredResourceCountsResponseBuilder)
          updates]) = _$GetAggregateDiscoveredResourceCountsResponse;

  const GetAggregateDiscoveredResourceCountsResponse._();

  /// Constructs a [GetAggregateDiscoveredResourceCountsResponse] from a [payload] and [response].
  factory GetAggregateDiscoveredResourceCountsResponse.fromResponse(
    GetAggregateDiscoveredResourceCountsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    GetAggregateDiscoveredResourceCountsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateDiscoveredResourceCountsResponseBuilder b) {
    b.totalDiscoveredResources = _i3.Int64.ZERO;
  }

  /// The key passed into the request object. If `GroupByKey` is not provided, the result will be empty.
  String? get groupByKey;

  /// Returns a list of GroupedResourceCount objects.
  _i4.BuiltList<_i2.GroupedResourceCount>? get groupedResourceCounts;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The total number of resources that are present in an aggregator with the filters that you provide.
  _i3.Int64 get totalDiscoveredResources;
  @override
  List<Object?> get props => [
        groupByKey,
        groupedResourceCounts,
        nextToken,
        totalDiscoveredResources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateDiscoveredResourceCountsResponse');
    helper.add(
      'groupByKey',
      groupByKey,
    );
    helper.add(
      'groupedResourceCounts',
      groupedResourceCounts,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'totalDiscoveredResources',
      totalDiscoveredResources,
    );
    return helper.toString();
  }
}

class GetAggregateDiscoveredResourceCountsResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<
        GetAggregateDiscoveredResourceCountsResponse> {
  const GetAggregateDiscoveredResourceCountsResponseAwsJson11Serializer()
      : super('GetAggregateDiscoveredResourceCountsResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateDiscoveredResourceCountsResponse,
        _$GetAggregateDiscoveredResourceCountsResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateDiscoveredResourceCountsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateDiscoveredResourceCountsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GroupByKey':
          if (value != null) {
            result.groupByKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GroupedResourceCounts':
          if (value != null) {
            result.groupedResourceCounts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.GroupedResourceCount)],
              ),
            ) as _i4.BuiltList<_i2.GroupedResourceCount>));
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
        case 'TotalDiscoveredResources':
          result.totalDiscoveredResources = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    final payload = (object as GetAggregateDiscoveredResourceCountsResponse);
    final result = <Object?>[
      'TotalDiscoveredResources',
      serializers.serialize(
        payload.totalDiscoveredResources,
        specifiedType: const FullType(_i3.Int64),
      ),
    ];
    if (payload.groupByKey != null) {
      result
        ..add('GroupByKey')
        ..add(serializers.serialize(
          payload.groupByKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupedResourceCounts != null) {
      result
        ..add('GroupedResourceCounts')
        ..add(serializers.serialize(
          payload.groupedResourceCounts!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.GroupedResourceCount)],
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
