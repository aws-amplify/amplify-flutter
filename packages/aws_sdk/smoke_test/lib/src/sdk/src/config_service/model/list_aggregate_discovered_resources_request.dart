// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_aggregate_discovered_resources_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i4;

part 'list_aggregate_discovered_resources_request.g.dart';

abstract class ListAggregateDiscoveredResourcesRequest
    with
        _i1.HttpInput<ListAggregateDiscoveredResourcesRequest>,
        _i2.AWSEquatable<ListAggregateDiscoveredResourcesRequest>
    implements
        Built<ListAggregateDiscoveredResourcesRequest,
            ListAggregateDiscoveredResourcesRequestBuilder> {
  factory ListAggregateDiscoveredResourcesRequest({
    required String configurationAggregatorName,
    _i3.ResourceFilters? filters,
    int? limit,
    String? nextToken,
    required _i4.ResourceType resourceType,
  }) {
    return _$ListAggregateDiscoveredResourcesRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
      resourceType: resourceType,
    );
  }

  factory ListAggregateDiscoveredResourcesRequest.build(
      [void Function(ListAggregateDiscoveredResourcesRequestBuilder)
          updates]) = _$ListAggregateDiscoveredResourcesRequest;

  const ListAggregateDiscoveredResourcesRequest._();

  factory ListAggregateDiscoveredResourcesRequest.fromRequest(
    ListAggregateDiscoveredResourcesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListAggregateDiscoveredResourcesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAggregateDiscoveredResourcesRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results based on the `ResourceFilters` object.
  _i3.ResourceFilters? get filters;

  /// The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The type of resources that you want Config to list in the response.
  _i4.ResourceType get resourceType;
  @override
  ListAggregateDiscoveredResourcesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        filters,
        limit,
        nextToken,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListAggregateDiscoveredResourcesRequest');
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
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ListAggregateDiscoveredResourcesRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<ListAggregateDiscoveredResourcesRequest> {
  const ListAggregateDiscoveredResourcesRequestAwsJson11Serializer()
      : super('ListAggregateDiscoveredResourcesRequest');

  @override
  Iterable<Type> get types => const [
        ListAggregateDiscoveredResourcesRequest,
        _$ListAggregateDiscoveredResourcesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListAggregateDiscoveredResourcesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAggregateDiscoveredResourcesRequestBuilder();
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
              specifiedType: const FullType(_i3.ResourceFilters),
            ) as _i3.ResourceFilters));
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.ResourceType),
          ) as _i4.ResourceType);
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
    final payload = (object as ListAggregateDiscoveredResourcesRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(_i4.ResourceType),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.ResourceFilters),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
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
