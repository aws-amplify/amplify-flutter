// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.query_idempotency_token_auto_fill_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'query_idempotency_token_auto_fill_input.g.dart';

abstract class QueryIdempotencyTokenAutoFillInput
    with
        _i1.HttpInput<QueryIdempotencyTokenAutoFillInputPayload>,
        _i2.AWSEquatable<QueryIdempotencyTokenAutoFillInput>
    implements
        Built<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<QueryIdempotencyTokenAutoFillInputPayload> {
  factory QueryIdempotencyTokenAutoFillInput({String? token}) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      token ??= '00000000-0000-4000-8000-000000000000';
    } else {
      token ??= _i2.uuid(secure: true);
    }
    return _$QueryIdempotencyTokenAutoFillInput._(token: token);
  }

  factory QueryIdempotencyTokenAutoFillInput.build(
          [void Function(QueryIdempotencyTokenAutoFillInputBuilder) updates]) =
      _$QueryIdempotencyTokenAutoFillInput;

  const QueryIdempotencyTokenAutoFillInput._();

  factory QueryIdempotencyTokenAutoFillInput.fromRequest(
    QueryIdempotencyTokenAutoFillInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      QueryIdempotencyTokenAutoFillInput.build((b) {
        if (request.queryParameters['token'] != null) {
          b.token = request.queryParameters['token']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryIdempotencyTokenAutoFillInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.token = '00000000-0000-4000-8000-000000000000';
    } else {
      b.token = _i2.uuid(secure: true);
    }
  }

  String? get token;
  @override
  QueryIdempotencyTokenAutoFillInputPayload getPayload() =>
      QueryIdempotencyTokenAutoFillInputPayload();
  @override
  List<Object?> get props => [token];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('QueryIdempotencyTokenAutoFillInput');
    helper.add(
      'token',
      token,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class QueryIdempotencyTokenAutoFillInputPayload
    with
        _i2.AWSEquatable<QueryIdempotencyTokenAutoFillInputPayload>
    implements
        Built<QueryIdempotencyTokenAutoFillInputPayload,
            QueryIdempotencyTokenAutoFillInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryIdempotencyTokenAutoFillInputPayload(
      [void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)
          updates]) = _$QueryIdempotencyTokenAutoFillInputPayload;

  const QueryIdempotencyTokenAutoFillInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryIdempotencyTokenAutoFillInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'QueryIdempotencyTokenAutoFillInputPayload');
    return helper.toString();
  }
}

class QueryIdempotencyTokenAutoFillInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<QueryIdempotencyTokenAutoFillInputPayload> {
  const QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [
        QueryIdempotencyTokenAutoFillInput,
        _$QueryIdempotencyTokenAutoFillInput,
        QueryIdempotencyTokenAutoFillInputPayload,
        _$QueryIdempotencyTokenAutoFillInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  QueryIdempotencyTokenAutoFillInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return QueryIdempotencyTokenAutoFillInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
