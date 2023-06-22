// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.model.query_idempotency_token_auto_fill_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'query_idempotency_token_auto_fill_input.g.dart';

abstract class QueryIdempotencyTokenAutoFillInput
    with
        _i1.HttpInput<QueryIdempotencyTokenAutoFillInput>,
        _i2.AWSEquatable<QueryIdempotencyTokenAutoFillInput>
    implements
        Built<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder> {
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
    QueryIdempotencyTokenAutoFillInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<QueryIdempotencyTokenAutoFillInput>>
      serializers = [QueryIdempotencyTokenAutoFillInputAwsQuerySerializer()];

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
  QueryIdempotencyTokenAutoFillInput getPayload() => this;
  @override
  List<Object?> get props => [token];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('QueryIdempotencyTokenAutoFillInput')
          ..add(
            'token',
            token,
          );
    return helper.toString();
  }
}

class QueryIdempotencyTokenAutoFillInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<QueryIdempotencyTokenAutoFillInput> {
  const QueryIdempotencyTokenAutoFillInputAwsQuerySerializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [
        QueryIdempotencyTokenAutoFillInput,
        _$QueryIdempotencyTokenAutoFillInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  QueryIdempotencyTokenAutoFillInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryIdempotencyTokenAutoFillInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'token':
          result.token = (serializers.deserialize(
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
    QueryIdempotencyTokenAutoFillInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'QueryIdempotencyTokenAutoFillInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final QueryIdempotencyTokenAutoFillInput(:token) = object;
    if (token != null) {
      result$
        ..add(const _i1.XmlElementName('token'))
        ..add(serializers.serialize(
          token,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
