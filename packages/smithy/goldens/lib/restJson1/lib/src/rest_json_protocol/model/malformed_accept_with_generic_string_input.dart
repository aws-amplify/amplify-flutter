// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_accept_with_generic_string_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_accept_with_generic_string_input.g.dart';

abstract class MalformedAcceptWithGenericStringInput
    with
        _i1.HttpInput<String>,
        _i2.AWSEquatable<MalformedAcceptWithGenericStringInput>
    implements
        Built<MalformedAcceptWithGenericStringInput,
            MalformedAcceptWithGenericStringInputBuilder>,
        _i1.HasPayload<String> {
  factory MalformedAcceptWithGenericStringInput({String? payload}) {
    return _$MalformedAcceptWithGenericStringInput._(payload: payload);
  }

  factory MalformedAcceptWithGenericStringInput.build(
      [void Function(MalformedAcceptWithGenericStringInputBuilder)
          updates]) = _$MalformedAcceptWithGenericStringInput;

  const MalformedAcceptWithGenericStringInput._();

  factory MalformedAcceptWithGenericStringInput.fromRequest(
    String? payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedAcceptWithGenericStringInput.build((b) {
        b.payload = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedAcceptWithGenericStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithGenericStringInputBuilder b) {}
  String? get payload;
  @override
  String? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedAcceptWithGenericStringInput');
    helper.add(
      'payload',
      payload,
    );
    return helper.toString();
  }
}

class MalformedAcceptWithGenericStringInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<String> {
  const MalformedAcceptWithGenericStringInputRestJson1Serializer()
      : super('MalformedAcceptWithGenericStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithGenericStringInput,
        _$MalformedAcceptWithGenericStringInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  String deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(String),
    ) as String);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is MalformedAcceptWithGenericStringInput
        ? object.getPayload()
        : (object as String?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(String),
    ) as Object);
  }
}
