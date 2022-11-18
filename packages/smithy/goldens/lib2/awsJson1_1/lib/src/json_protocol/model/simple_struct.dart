// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.simple_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'simple_struct.g.dart';

abstract class SimpleStruct
    with _i1.AWSEquatable<SimpleStruct>
    implements Built<SimpleStruct, SimpleStructBuilder> {
  factory SimpleStruct({String? value}) {
    return _$SimpleStruct._(value: value);
  }

  factory SimpleStruct.build([void Function(SimpleStructBuilder) updates]) =
      _$SimpleStruct;

  const SimpleStruct._();

  static const List<_i2.SmithySerializer> serializers = [
    SimpleStructAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleStructBuilder b) {}
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleStruct');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class SimpleStructAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SimpleStruct> {
  const SimpleStructAwsJson11Serializer() : super('SimpleStruct');

  @override
  Iterable<Type> get types => const [
        SimpleStruct,
        _$SimpleStruct,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SimpleStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as SimpleStruct);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
