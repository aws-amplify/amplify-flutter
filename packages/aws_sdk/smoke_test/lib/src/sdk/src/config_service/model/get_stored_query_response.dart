// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.get_stored_query_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query.dart'
    as _i2;

part 'get_stored_query_response.g.dart';

abstract class GetStoredQueryResponse
    with _i1.AWSEquatable<GetStoredQueryResponse>
    implements Built<GetStoredQueryResponse, GetStoredQueryResponseBuilder> {
  factory GetStoredQueryResponse({_i2.StoredQuery? storedQuery}) {
    return _$GetStoredQueryResponse._(storedQuery: storedQuery);
  }

  factory GetStoredQueryResponse.build(
          [void Function(GetStoredQueryResponseBuilder) updates]) =
      _$GetStoredQueryResponse;

  const GetStoredQueryResponse._();

  /// Constructs a [GetStoredQueryResponse] from a [payload] and [response].
  factory GetStoredQueryResponse.fromResponse(
    GetStoredQueryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetStoredQueryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStoredQueryResponseBuilder b) {}

  /// Returns a `StoredQuery` object.
  _i2.StoredQuery? get storedQuery;
  @override
  List<Object?> get props => [storedQuery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStoredQueryResponse');
    helper.add(
      'storedQuery',
      storedQuery,
    );
    return helper.toString();
  }
}

class GetStoredQueryResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetStoredQueryResponse> {
  const GetStoredQueryResponseAwsJson11Serializer()
      : super('GetStoredQueryResponse');

  @override
  Iterable<Type> get types => const [
        GetStoredQueryResponse,
        _$GetStoredQueryResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetStoredQueryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStoredQueryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'StoredQuery':
          if (value != null) {
            result.storedQuery.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StoredQuery),
            ) as _i2.StoredQuery));
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
    final payload = (object as GetStoredQueryResponse);
    final result = <Object?>[];
    if (payload.storedQuery != null) {
      result
        ..add('StoredQuery')
        ..add(serializers.serialize(
          payload.storedQuery!,
          specifiedType: const FullType(_i2.StoredQuery),
        ));
    }
    return result;
  }
}
