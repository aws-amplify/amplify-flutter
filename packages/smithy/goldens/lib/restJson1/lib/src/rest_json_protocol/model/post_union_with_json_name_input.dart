// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.rest_json_protocol.model.post_union_with_json_name_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_with_json_name.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'post_union_with_json_name_input.g.dart';

abstract class PostUnionWithJsonNameInput
    with
        _i1.HttpInput<PostUnionWithJsonNameInput>,
        _i2.AWSEquatable<PostUnionWithJsonNameInput>
    implements
        Built<PostUnionWithJsonNameInput, PostUnionWithJsonNameInputBuilder> {
  factory PostUnionWithJsonNameInput({UnionWithJsonName? value}) {
    return _$PostUnionWithJsonNameInput._(value: value);
  }

  factory PostUnionWithJsonNameInput.build([
    void Function(PostUnionWithJsonNameInputBuilder) updates,
  ]) = _$PostUnionWithJsonNameInput;

  const PostUnionWithJsonNameInput._();

  factory PostUnionWithJsonNameInput.fromRequest(
    PostUnionWithJsonNameInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<PostUnionWithJsonNameInput>>
  serializers = [PostUnionWithJsonNameInputRestJson1Serializer()];

  UnionWithJsonName? get value;
  @override
  PostUnionWithJsonNameInput getPayload() => this;

  @override
  List<Object?> get props => [value];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostUnionWithJsonNameInput')
      ..add('value', value);
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
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(UnionWithJsonName),
                  )
                  as UnionWithJsonName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostUnionWithJsonNameInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PostUnionWithJsonNameInput(:value) = object;
    if (value != null) {
      result$
        ..add('value')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(UnionWithJsonName),
          ),
        );
    }
    return result$;
  }
}
