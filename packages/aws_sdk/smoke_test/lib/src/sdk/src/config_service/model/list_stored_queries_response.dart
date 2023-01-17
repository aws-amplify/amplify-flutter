// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_stored_queries_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query_metadata.dart'
    as _i2;

part 'list_stored_queries_response.g.dart';

abstract class ListStoredQueriesResponse
    with _i1.AWSEquatable<ListStoredQueriesResponse>
    implements
        Built<ListStoredQueriesResponse, ListStoredQueriesResponseBuilder> {
  factory ListStoredQueriesResponse({
    String? nextToken,
    List<_i2.StoredQueryMetadata>? storedQueryMetadata,
  }) {
    return _$ListStoredQueriesResponse._(
      nextToken: nextToken,
      storedQueryMetadata: storedQueryMetadata == null
          ? null
          : _i3.BuiltList(storedQueryMetadata),
    );
  }

  factory ListStoredQueriesResponse.build(
          [void Function(ListStoredQueriesResponseBuilder) updates]) =
      _$ListStoredQueriesResponse;

  const ListStoredQueriesResponse._();

  /// Constructs a [ListStoredQueriesResponse] from a [payload] and [response].
  factory ListStoredQueriesResponse.fromResponse(
    ListStoredQueriesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListStoredQueriesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStoredQueriesResponseBuilder b) {}

  /// If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// A list of `StoredQueryMetadata` objects.
  _i3.BuiltList<_i2.StoredQueryMetadata>? get storedQueryMetadata;
  @override
  List<Object?> get props => [
        nextToken,
        storedQueryMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStoredQueriesResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'storedQueryMetadata',
      storedQueryMetadata,
    );
    return helper.toString();
  }
}

class ListStoredQueriesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ListStoredQueriesResponse> {
  const ListStoredQueriesResponseAwsJson11Serializer()
      : super('ListStoredQueriesResponse');

  @override
  Iterable<Type> get types => const [
        ListStoredQueriesResponse,
        _$ListStoredQueriesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListStoredQueriesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStoredQueriesResponseBuilder();
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
        case 'StoredQueryMetadata':
          if (value != null) {
            result.storedQueryMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.StoredQueryMetadata)],
              ),
            ) as _i3.BuiltList<_i2.StoredQueryMetadata>));
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
    final payload = (object as ListStoredQueriesResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.storedQueryMetadata != null) {
      result
        ..add('StoredQueryMetadata')
        ..add(serializers.serialize(
          payload.storedQueryMetadata!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.StoredQueryMetadata)],
          ),
        ));
    }
    return result;
  }
}
