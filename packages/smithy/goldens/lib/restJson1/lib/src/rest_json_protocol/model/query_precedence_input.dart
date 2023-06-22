// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.query_precedence_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'query_precedence_input.g.dart';

abstract class QueryPrecedenceInput
    with
        _i1.HttpInput<QueryPrecedenceInputPayload>,
        _i2.AWSEquatable<QueryPrecedenceInput>
    implements
        Built<QueryPrecedenceInput, QueryPrecedenceInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<QueryPrecedenceInputPayload> {
  factory QueryPrecedenceInput({
    String? foo,
    Map<String, String>? baz,
  }) {
    return _$QueryPrecedenceInput._(
      foo: foo,
      baz: baz == null ? null : _i3.BuiltMap(baz),
    );
  }

  factory QueryPrecedenceInput.build(
          [void Function(QueryPrecedenceInputBuilder) updates]) =
      _$QueryPrecedenceInput;

  const QueryPrecedenceInput._();

  factory QueryPrecedenceInput.fromRequest(
    QueryPrecedenceInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      QueryPrecedenceInput.build((b) {
        if (request.queryParameters['bar'] != null) {
          b.foo = request.queryParameters['bar']!;
        }
      });

  static const List<_i1.SmithySerializer<QueryPrecedenceInputPayload>>
      serializers = [QueryPrecedenceInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryPrecedenceInputBuilder b) {}
  String? get foo;
  _i3.BuiltMap<String, String>? get baz;
  @override
  QueryPrecedenceInputPayload getPayload() => QueryPrecedenceInputPayload();
  @override
  List<Object?> get props => [
        foo,
        baz,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryPrecedenceInput')
      ..add(
        'foo',
        foo,
      )
      ..add(
        'baz',
        baz,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class QueryPrecedenceInputPayload
    with _i2.AWSEquatable<QueryPrecedenceInputPayload>
    implements
        Built<QueryPrecedenceInputPayload, QueryPrecedenceInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryPrecedenceInputPayload(
          [void Function(QueryPrecedenceInputPayloadBuilder) updates]) =
      _$QueryPrecedenceInputPayload;

  const QueryPrecedenceInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryPrecedenceInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryPrecedenceInputPayload');
    return helper.toString();
  }
}

class QueryPrecedenceInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<QueryPrecedenceInputPayload> {
  const QueryPrecedenceInputRestJson1Serializer()
      : super('QueryPrecedenceInput');

  @override
  Iterable<Type> get types => const [
        QueryPrecedenceInput,
        _$QueryPrecedenceInput,
        QueryPrecedenceInputPayload,
        _$QueryPrecedenceInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  QueryPrecedenceInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return QueryPrecedenceInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryPrecedenceInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
