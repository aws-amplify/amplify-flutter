// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.nested_payload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'nested_payload.g.dart';

abstract class NestedPayload
    with _i1.AWSEquatable<NestedPayload>
    implements Built<NestedPayload, NestedPayloadBuilder> {
  factory NestedPayload({
    String? greeting,
    String? name,
  }) {
    return _$NestedPayload._(
      greeting: greeting,
      name: name,
    );
  }

  factory NestedPayload.build([void Function(NestedPayloadBuilder) updates]) =
      _$NestedPayload;

  const NestedPayload._();

  static const List<_i2.SmithySerializer> serializers = [
    NestedPayloadRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedPayloadBuilder b) {}
  String? get greeting;
  String? get name;
  @override
  List<Object?> get props => [
        greeting,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedPayload');
    helper.add(
      'greeting',
      greeting,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class NestedPayloadRestJson1Serializer
    extends _i2.StructuredSmithySerializer<NestedPayload> {
  const NestedPayloadRestJson1Serializer() : super('NestedPayload');

  @override
  Iterable<Type> get types => const [
        NestedPayload,
        _$NestedPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  NestedPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as NestedPayload);
    final result = <Object?>[];
    if (payload.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(
          payload.greeting!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
