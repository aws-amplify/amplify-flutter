// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_aggregate_discovered_resources_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i2;

part 'list_aggregate_discovered_resources_response.g.dart';

abstract class ListAggregateDiscoveredResourcesResponse
    with
        _i1.AWSEquatable<ListAggregateDiscoveredResourcesResponse>
    implements
        Built<ListAggregateDiscoveredResourcesResponse,
            ListAggregateDiscoveredResourcesResponseBuilder> {
  factory ListAggregateDiscoveredResourcesResponse({
    String? nextToken,
    List<_i2.AggregateResourceIdentifier>? resourceIdentifiers,
  }) {
    return _$ListAggregateDiscoveredResourcesResponse._(
      nextToken: nextToken,
      resourceIdentifiers: resourceIdentifiers == null
          ? null
          : _i3.BuiltList(resourceIdentifiers),
    );
  }

  factory ListAggregateDiscoveredResourcesResponse.build(
      [void Function(ListAggregateDiscoveredResourcesResponseBuilder)
          updates]) = _$ListAggregateDiscoveredResourcesResponse;

  const ListAggregateDiscoveredResourcesResponse._();

  /// Constructs a [ListAggregateDiscoveredResourcesResponse] from a [payload] and [response].
  factory ListAggregateDiscoveredResourcesResponse.fromResponse(
    ListAggregateDiscoveredResourcesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListAggregateDiscoveredResourcesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAggregateDiscoveredResourcesResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a list of `ResourceIdentifiers` objects.
  _i3.BuiltList<_i2.AggregateResourceIdentifier>? get resourceIdentifiers;
  @override
  List<Object?> get props => [
        nextToken,
        resourceIdentifiers,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListAggregateDiscoveredResourcesResponse');
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

class ListAggregateDiscoveredResourcesResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<ListAggregateDiscoveredResourcesResponse> {
  const ListAggregateDiscoveredResourcesResponseAwsJson11Serializer()
      : super('ListAggregateDiscoveredResourcesResponse');

  @override
  Iterable<Type> get types => const [
        ListAggregateDiscoveredResourcesResponse,
        _$ListAggregateDiscoveredResourcesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListAggregateDiscoveredResourcesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAggregateDiscoveredResourcesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceIdentifiers':
          if (value != null) {
            result.resourceIdentifiers.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregateResourceIdentifier)],
              ),
            ) as _i3.BuiltList<_i2.AggregateResourceIdentifier>));
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
    final payload = (object as ListAggregateDiscoveredResourcesResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceIdentifiers != null) {
      result
        ..add('ResourceIdentifiers')
        ..add(serializers.serialize(
          payload.resourceIdentifiers!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateResourceIdentifier)],
          ),
        ));
    }
    return result;
  }
}
