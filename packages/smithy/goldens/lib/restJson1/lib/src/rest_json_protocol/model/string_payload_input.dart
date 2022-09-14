// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.string_payload_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'string_payload_input.g.dart';

abstract class StringPayloadInput
    with _i1.HttpInput<String>, _i2.AWSEquatable<StringPayloadInput>
    implements
        Built<StringPayloadInput, StringPayloadInputBuilder>,
        _i1.HasPayload<String> {
  factory StringPayloadInput({String? payload}) {
    return _$StringPayloadInput._(payload: payload);
  }

  factory StringPayloadInput.build(
          [void Function(StringPayloadInputBuilder) updates]) =
      _$StringPayloadInput;

  const StringPayloadInput._();

  factory StringPayloadInput.fromRequest(
          String? payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      StringPayloadInput.build((b) {
        b.payload = payload;
      });

  /// Constructs a [StringPayloadInput] from a [payload] and [response].
  factory StringPayloadInput.fromResponse(
          String? payload, _i2.AWSBaseHttpResponse response) =>
      StringPayloadInput.build((b) {
        b.payload = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    StringPayloadInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringPayloadInputBuilder b) {}
  String? get payload;
  @override
  String? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StringPayloadInput');
    helper.add('payload', payload);
    return helper.toString();
  }
}

class StringPayloadInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<String> {
  const StringPayloadInputRestJson1Serializer() : super('StringPayloadInput');

  @override
  Iterable<Type> get types => const [StringPayloadInput, _$StringPayloadInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  String deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(String)) as String);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is StringPayloadInput
        ? object.getPayload()
        : (object as String?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(String)) as Object);
  }
}
