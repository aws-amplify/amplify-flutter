// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.list_aggregate_discovered_resources_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_filters.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

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
    required _i3.ResourceType resourceType,
    _i4.ResourceFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$ListAggregateDiscoveredResourcesRequest._(
      configurationAggregatorName: configurationAggregatorName,
      resourceType: resourceType,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
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

  static const List<
          _i1.SmithySerializer<ListAggregateDiscoveredResourcesRequest>>
      serializers = [
    ListAggregateDiscoveredResourcesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAggregateDiscoveredResourcesRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// The type of resources that you want Config to list in the response.
  _i3.ResourceType get resourceType;

  /// Filters the results based on the `ResourceFilters` object.
  _i4.ResourceFilters? get filters;

  /// The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  ListAggregateDiscoveredResourcesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        resourceType,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListAggregateDiscoveredResourcesRequest')
          ..add(
            'configurationAggregatorName',
            configurationAggregatorName,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'limit',
            limit,
          )
          ..add(
            'nextToken',
            nextToken,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceType),
          ) as _i3.ResourceType);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ResourceFilters),
          ) as _i4.ResourceFilters));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    ListAggregateDiscoveredResourcesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListAggregateDiscoveredResourcesRequest(
      :configurationAggregatorName,
      :resourceType,
      :filters,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(_i3.ResourceType),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType: const FullType(_i4.ResourceFilters),
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
