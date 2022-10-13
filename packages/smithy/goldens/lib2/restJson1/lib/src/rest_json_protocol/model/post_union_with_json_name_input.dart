// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.post_union_with_json_name_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_with_json_name.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'post_union_with_json_name_input.g.dart';

abstract class PostUnionWithJsonNameInput
    with
        _i1.HttpInput<PostUnionWithJsonNameInput>,
        _i2.AWSEquatable<PostUnionWithJsonNameInput>
    implements
        Built<PostUnionWithJsonNameInput, PostUnionWithJsonNameInputBuilder> {
  factory PostUnionWithJsonNameInput({_i3.UnionWithJsonName? value}) {
    return _$PostUnionWithJsonNameInput._(value: value);
  }

  factory PostUnionWithJsonNameInput.build(
          [void Function(PostUnionWithJsonNameInputBuilder) updates]) =
      _$PostUnionWithJsonNameInput;

  const PostUnionWithJsonNameInput._();

  factory PostUnionWithJsonNameInput.fromRequest(
    PostUnionWithJsonNameInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PostUnionWithJsonNameInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostUnionWithJsonNameInputBuilder b) {}
  _i3.UnionWithJsonName? get value;
  @override
  PostUnionWithJsonNameInput getPayload() => this;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostUnionWithJsonNameInput');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class PostUnionWithJsonNameInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PostUnionWithJsonNameInput> {
  const PostUnionWithJsonNameInputRestJson1Serializer()
      : super('PostUnionWithJsonNameInput');

  @override
  Iterable<Type> get types => const [
        PostUnionWithJsonNameInput,
        _$PostUnionWithJsonNameInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PostUnionWithJsonNameInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostUnionWithJsonNameInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.UnionWithJsonName),
            ) as _i3.UnionWithJsonName);
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
    final payload = (object as PostUnionWithJsonNameInput);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(_i3.UnionWithJsonName),
        ));
    }
    return result;
  }
}
