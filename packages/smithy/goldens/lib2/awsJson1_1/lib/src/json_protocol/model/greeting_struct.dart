// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.greeting_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    with _i1.AWSEquatable<GreetingStruct>
    implements Built<GreetingStruct, GreetingStructBuilder> {
  factory GreetingStruct({String? hi}) {
    return _$GreetingStruct._(hi: hi);
  }

  factory GreetingStruct.build([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  static const List<_i2.SmithySerializer> serializers = [
    GreetingStructAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructBuilder b) {}
  String? get hi;
  @override
  List<Object?> get props => [hi];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingStruct');
    helper.add('hi', hi);
    return helper.toString();
  }
}

class GreetingStructAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructAwsJson11Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct, _$GreetingStruct];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GreetingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GreetingStruct);
    final result = <Object?>[];
    if (payload.hi != null) {
      result
        ..add('hi')
        ..add(serializers.serialize(payload.hi!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
