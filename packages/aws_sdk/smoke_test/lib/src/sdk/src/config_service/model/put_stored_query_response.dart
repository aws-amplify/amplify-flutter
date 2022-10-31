// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_stored_query_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_stored_query_response.g.dart';

abstract class PutStoredQueryResponse
    with _i1.AWSEquatable<PutStoredQueryResponse>
    implements Built<PutStoredQueryResponse, PutStoredQueryResponseBuilder> {
  factory PutStoredQueryResponse({String? queryArn}) {
    return _$PutStoredQueryResponse._(queryArn: queryArn);
  }

  factory PutStoredQueryResponse.build(
          [void Function(PutStoredQueryResponseBuilder) updates]) =
      _$PutStoredQueryResponse;

  const PutStoredQueryResponse._();

  /// Constructs a [PutStoredQueryResponse] from a [payload] and [response].
  factory PutStoredQueryResponse.fromResponse(
    PutStoredQueryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    PutStoredQueryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutStoredQueryResponseBuilder b) {}

  /// Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
  String? get queryArn;
  @override
  List<Object?> get props => [queryArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutStoredQueryResponse');
    helper.add(
      'queryArn',
      queryArn,
    );
    return helper.toString();
  }
}

class PutStoredQueryResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutStoredQueryResponse> {
  const PutStoredQueryResponseAwsJson11Serializer()
      : super('PutStoredQueryResponse');

  @override
  Iterable<Type> get types => const [
        PutStoredQueryResponse,
        _$PutStoredQueryResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutStoredQueryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutStoredQueryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'QueryArn':
          if (value != null) {
            result.queryArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as PutStoredQueryResponse);
    final result = <Object?>[];
    if (payload.queryArn != null) {
      result
        ..add('QueryArn')
        ..add(serializers.serialize(
          payload.queryArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
