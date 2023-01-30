// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_discovered_resources_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

part 'list_discovered_resources_request.g.dart';

abstract class ListDiscoveredResourcesRequest
    with
        _i1.HttpInput<ListDiscoveredResourcesRequest>,
        _i2.AWSEquatable<ListDiscoveredResourcesRequest>
    implements
        Built<ListDiscoveredResourcesRequest,
            ListDiscoveredResourcesRequestBuilder> {
  factory ListDiscoveredResourcesRequest({
    bool? includeDeletedResources,
    int? limit,
    String? nextToken,
    List<String>? resourceIds,
    String? resourceName,
    required _i3.ResourceType resourceType,
  }) {
    return _$ListDiscoveredResourcesRequest._(
      includeDeletedResources: includeDeletedResources,
      limit: limit,
      nextToken: nextToken,
      resourceIds: resourceIds == null ? null : _i4.BuiltList(resourceIds),
      resourceName: resourceName,
      resourceType: resourceType,
    );
  }

  factory ListDiscoveredResourcesRequest.build(
          [void Function(ListDiscoveredResourcesRequestBuilder) updates]) =
      _$ListDiscoveredResourcesRequest;

  const ListDiscoveredResourcesRequest._();

  factory ListDiscoveredResourcesRequest.fromRequest(
    ListDiscoveredResourcesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListDiscoveredResourcesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListDiscoveredResourcesRequestBuilder b) {}

  /// Specifies whether Config includes deleted resources in the results. By default, deleted resources are not included.
  bool? get includeDeletedResources;

  /// The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The IDs of only those resources that you want Config to list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has discovered.
  _i4.BuiltList<String>? get resourceIds;

  /// The custom name of only those resources that you want Config to list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has discovered.
  String? get resourceName;

  /// The type of resources that you want Config to list in the response.
  _i3.ResourceType get resourceType;
  @override
  ListDiscoveredResourcesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        includeDeletedResources,
        limit,
        nextToken,
        resourceIds,
        resourceName,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListDiscoveredResourcesRequest');
    helper.add(
      'includeDeletedResources',
      includeDeletedResources,
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
      'resourceIds',
      resourceIds,
    );
    helper.add(
      'resourceName',
      resourceName,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ListDiscoveredResourcesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ListDiscoveredResourcesRequest> {
  const ListDiscoveredResourcesRequestAwsJson11Serializer()
      : super('ListDiscoveredResourcesRequest');

  @override
  Iterable<Type> get types => const [
        ListDiscoveredResourcesRequest,
        _$ListDiscoveredResourcesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListDiscoveredResourcesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDiscoveredResourcesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'includeDeletedResources':
          if (value != null) {
            result.includeDeletedResources = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceIds':
          if (value != null) {
            result.resourceIds.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'resourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ResourceType),
          ) as _i3.ResourceType);
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
    final payload = (object as ListDiscoveredResourcesRequest);
    final result = <Object?>[
      'resourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(_i3.ResourceType),
      ),
    ];
    if (payload.includeDeletedResources != null) {
      result
        ..add('includeDeletedResources')
        ..add(serializers.serialize(
          payload.includeDeletedResources!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('nextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceIds != null) {
      result
        ..add('resourceIds')
        ..add(serializers.serialize(
          payload.resourceIds!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.resourceName != null) {
      result
        ..add('resourceName')
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
