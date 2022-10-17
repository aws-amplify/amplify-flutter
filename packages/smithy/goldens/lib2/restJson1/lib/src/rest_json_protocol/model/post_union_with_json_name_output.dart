// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.post_union_with_json_name_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_with_json_name.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'post_union_with_json_name_output.g.dart';

abstract class PostUnionWithJsonNameOutput
    with _i1.AWSEquatable<PostUnionWithJsonNameOutput>
    implements
        Built<PostUnionWithJsonNameOutput, PostUnionWithJsonNameOutputBuilder> {
  factory PostUnionWithJsonNameOutput({required _i2.UnionWithJsonName value}) {
    return _$PostUnionWithJsonNameOutput._(value: value);
  }

  factory PostUnionWithJsonNameOutput.build(
          [void Function(PostUnionWithJsonNameOutputBuilder) updates]) =
      _$PostUnionWithJsonNameOutput;

  const PostUnionWithJsonNameOutput._();

  /// Constructs a [PostUnionWithJsonNameOutput] from a [payload] and [response].
  factory PostUnionWithJsonNameOutput.fromResponse(
    PostUnionWithJsonNameOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    PostUnionWithJsonNameOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostUnionWithJsonNameOutputBuilder b) {}
  _i2.UnionWithJsonName get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostUnionWithJsonNameOutput');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class PostUnionWithJsonNameOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PostUnionWithJsonNameOutput> {
  const PostUnionWithJsonNameOutputRestJson1Serializer()
      : super('PostUnionWithJsonNameOutput');

  @override
  Iterable<Type> get types => const [
        PostUnionWithJsonNameOutput,
        _$PostUnionWithJsonNameOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PostUnionWithJsonNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostUnionWithJsonNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.UnionWithJsonName),
          ) as _i2.UnionWithJsonName);
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
    final payload = (object as PostUnionWithJsonNameOutput);
    final result = <Object?>[
      'value',
      serializers.serialize(
        payload.value,
        specifiedType: const FullType(_i2.UnionWithJsonName),
      ),
    ];
    return result;
  }
}
