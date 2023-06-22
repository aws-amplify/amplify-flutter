// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_0_v2.json_rpc_10.model.json_unions_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/my_union.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_unions_input.g.dart';

abstract class JsonUnionsInput
    with _i1.HttpInput<JsonUnionsInput>, _i2.AWSEquatable<JsonUnionsInput>
    implements Built<JsonUnionsInput, JsonUnionsInputBuilder> {
  factory JsonUnionsInput({_i3.MyUnion? contents}) {
    return _$JsonUnionsInput._(contents: contents);
  }

  factory JsonUnionsInput.build(
      [void Function(JsonUnionsInputBuilder) updates]) = _$JsonUnionsInput;

  const JsonUnionsInput._();

  factory JsonUnionsInput.fromRequest(
    JsonUnionsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<JsonUnionsInput>> serializers = [
    JsonUnionsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsInputBuilder b) {}

  /// A union with a representative set of types for members.
  _i3.MyUnion? get contents;
  @override
  JsonUnionsInput getPayload() => this;
  @override
  List<Object?> get props => [contents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonUnionsInput')
      ..add(
        'contents',
        contents,
      );
    return helper.toString();
  }
}

class JsonUnionsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<JsonUnionsInput> {
  const JsonUnionsInputAwsJson10Serializer() : super('JsonUnionsInput');

  @override
  Iterable<Type> get types => const [
        JsonUnionsInput,
        _$JsonUnionsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  JsonUnionsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonUnionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contents':
          result.contents = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MyUnion),
          ) as _i3.MyUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonUnionsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonUnionsInput(:contents) = object;
    if (contents != null) {
      result$
        ..add('contents')
        ..add(serializers.serialize(
          contents,
          specifiedType: const FullType(_i3.MyUnion),
        ));
    }
    return result$;
  }
}
