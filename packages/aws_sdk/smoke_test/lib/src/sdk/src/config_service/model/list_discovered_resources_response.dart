// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.list_discovered_resources_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_identifier.dart'
    as _i2;

part 'list_discovered_resources_response.g.dart';

abstract class ListDiscoveredResourcesResponse
    with
        _i1.AWSEquatable<ListDiscoveredResourcesResponse>
    implements
        Built<ListDiscoveredResourcesResponse,
            ListDiscoveredResourcesResponseBuilder> {
  factory ListDiscoveredResourcesResponse({
    String? nextToken,
    List<_i2.ResourceIdentifier>? resourceIdentifiers,
  }) {
    return _$ListDiscoveredResourcesResponse._(
      nextToken: nextToken,
      resourceIdentifiers: resourceIdentifiers == null
          ? null
          : _i3.BuiltList(resourceIdentifiers),
    );
  }

  factory ListDiscoveredResourcesResponse.build(
          [void Function(ListDiscoveredResourcesResponseBuilder) updates]) =
      _$ListDiscoveredResourcesResponse;

  const ListDiscoveredResourcesResponse._();

  /// Constructs a [ListDiscoveredResourcesResponse] from a [payload] and [response].
  factory ListDiscoveredResourcesResponse.fromResponse(
    ListDiscoveredResourcesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListDiscoveredResourcesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListDiscoveredResourcesResponseBuilder b) {}

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;

  /// The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the custom resource name.
  _i3.BuiltList<_i2.ResourceIdentifier>? get resourceIdentifiers;
  @override
  List<Object?> get props => [
        nextToken,
        resourceIdentifiers,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListDiscoveredResourcesResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'resourceIdentifiers',
      resourceIdentifiers,
    );
    return helper.toString();
  }
}

class ListDiscoveredResourcesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ListDiscoveredResourcesResponse> {
  const ListDiscoveredResourcesResponseAwsJson11Serializer()
      : super('ListDiscoveredResourcesResponse');

  @override
  Iterable<Type> get types => const [
        ListDiscoveredResourcesResponse,
        _$ListDiscoveredResourcesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListDiscoveredResourcesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDiscoveredResourcesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceIdentifiers':
          if (value != null) {
            result.resourceIdentifiers.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ResourceIdentifier)],
              ),
            ) as _i3.BuiltList<_i2.ResourceIdentifier>));
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
    final payload = (object as ListDiscoveredResourcesResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('nextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceIdentifiers != null) {
      result
        ..add('resourceIdentifiers')
        ..add(serializers.serialize(
          payload.resourceIdentifiers!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ResourceIdentifier)],
          ),
        ));
    }
    return result;
  }
}
