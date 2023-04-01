// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_stored_queries_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_stored_queries_request.g.dart';

abstract class ListStoredQueriesRequest
    with
        _i1.HttpInput<ListStoredQueriesRequest>,
        _i2.AWSEquatable<ListStoredQueriesRequest>
    implements
        Built<ListStoredQueriesRequest, ListStoredQueriesRequestBuilder> {
  factory ListStoredQueriesRequest({
    String? nextToken,
    int? maxResults,
  }) {
    maxResults ??= 0;
    return _$ListStoredQueriesRequest._(
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory ListStoredQueriesRequest.build(
          [void Function(ListStoredQueriesRequestBuilder) updates]) =
      _$ListStoredQueriesRequest;

  const ListStoredQueriesRequest._();

  factory ListStoredQueriesRequest.fromRequest(
    ListStoredQueriesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListStoredQueriesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStoredQueriesRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call.
  int get maxResults;
  @override
  ListStoredQueriesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStoredQueriesRequest');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class ListStoredQueriesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ListStoredQueriesRequest> {
  const ListStoredQueriesRequestAwsJson11Serializer()
      : super('ListStoredQueriesRequest');

  @override
  Iterable<Type> get types => const [
        ListStoredQueriesRequest,
        _$ListStoredQueriesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListStoredQueriesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStoredQueriesRequestBuilder();
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as ListStoredQueriesRequest);
    final result = <Object?>[
      'MaxResults',
      serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ),
    ];
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
