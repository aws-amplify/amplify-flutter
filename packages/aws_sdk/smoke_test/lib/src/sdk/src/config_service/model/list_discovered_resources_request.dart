// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required _i3.ResourceType resourceType,
    List<String>? resourceIds,
    String? resourceName,
    int? limit,
    bool? includeDeletedResources,
    String? nextToken,
  }) {
    limit ??= 0;
    includeDeletedResources ??= false;
    return _$ListDiscoveredResourcesRequest._(
      resourceType: resourceType,
      resourceIds: resourceIds == null ? null : _i4.BuiltList(resourceIds),
      resourceName: resourceName,
      limit: limit,
      includeDeletedResources: includeDeletedResources,
      nextToken: nextToken,
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

  static const List<_i1.SmithySerializer<ListDiscoveredResourcesRequest>>
      serializers = [ListDiscoveredResourcesRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListDiscoveredResourcesRequestBuilder b) {
    b.limit = 0;
    b.includeDeletedResources = false;
  }

  /// The type of resources that you want Config to list in the response.
  _i3.ResourceType get resourceType;

  /// The IDs of only those resources that you want Config to list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has discovered. You can list a minimum of 1 resourceID and a maximum of 20 resourceIds.
  _i4.BuiltList<String>? get resourceIds;

  /// The custom name of only those resources that you want Config to list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has discovered.
  String? get resourceName;

  /// The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// Specifies whether Config includes deleted resources in the results. By default, deleted resources are not included.
  bool get includeDeletedResources;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  ListDiscoveredResourcesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceType,
        resourceIds,
        resourceName,
        limit,
        includeDeletedResources,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListDiscoveredResourcesRequest')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceIds',
        resourceIds,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'includeDeletedResources',
        includeDeletedResources,
      )
      ..add(
        'nextToken',
        nextToken,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceType),
          ) as _i3.ResourceType);
        case 'resourceIds':
          result.resourceIds.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'resourceName':
          result.resourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'includeDeletedResources':
          result.includeDeletedResources = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'nextToken':
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
    ListDiscoveredResourcesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListDiscoveredResourcesRequest(
      :resourceType,
      :resourceIds,
      :resourceName,
      :limit,
      :includeDeletedResources,
      :nextToken
    ) = object;
    result$.addAll([
      'resourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(_i3.ResourceType),
      ),
      'limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
      'includeDeletedResources',
      serializers.serialize(
        includeDeletedResources,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (resourceIds != null) {
      result$
        ..add('resourceIds')
        ..add(serializers.serialize(
          resourceIds,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourceName != null) {
      result$
        ..add('resourceName')
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('nextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
