// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.constant_query_string_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'constant_query_string_input.g.dart';

abstract class ConstantQueryStringInput
    with
        _i1.HttpInput<ConstantQueryStringInputPayload>,
        _i2.AWSEquatable<ConstantQueryStringInput>
    implements
        Built<ConstantQueryStringInput, ConstantQueryStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ConstantQueryStringInputPayload> {
  factory ConstantQueryStringInput({required String hello}) {
    return _$ConstantQueryStringInput._(hello: hello);
  }

  factory ConstantQueryStringInput.build(
          [void Function(ConstantQueryStringInputBuilder) updates]) =
      _$ConstantQueryStringInput;

  const ConstantQueryStringInput._();

  factory ConstantQueryStringInput.fromRequest(
    ConstantQueryStringInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ConstantQueryStringInput.build((b) {
        if (labels['hello'] != null) {
          b.hello = labels['hello']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ConstantQueryStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantQueryStringInputBuilder b) {}
  String get hello;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'hello':
        return hello;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  ConstantQueryStringInputPayload getPayload() =>
      ConstantQueryStringInputPayload();
  @override
  List<Object?> get props => [hello];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConstantQueryStringInput');
    helper.add(
      'hello',
      hello,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class ConstantQueryStringInputPayload
    with
        _i2.AWSEquatable<ConstantQueryStringInputPayload>
    implements
        Built<ConstantQueryStringInputPayload,
            ConstantQueryStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory ConstantQueryStringInputPayload(
          [void Function(ConstantQueryStringInputPayloadBuilder) updates]) =
      _$ConstantQueryStringInputPayload;

  const ConstantQueryStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantQueryStringInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConstantQueryStringInputPayload');
    return helper.toString();
  }
}

class ConstantQueryStringInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<ConstantQueryStringInputPayload> {
  const ConstantQueryStringInputRestJson1Serializer()
      : super('ConstantQueryStringInput');

  @override
  Iterable<Type> get types => const [
        ConstantQueryStringInput,
        _$ConstantQueryStringInput,
        ConstantQueryStringInputPayload,
        _$ConstantQueryStringInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ConstantQueryStringInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ConstantQueryStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConstantQueryStringInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
