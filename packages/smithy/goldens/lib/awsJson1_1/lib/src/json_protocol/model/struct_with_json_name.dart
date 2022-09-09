// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.struct_with_json_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'struct_with_json_name.g.dart';

abstract class StructWithJsonName
    with _i1.AWSEquatable<StructWithJsonName>
    implements Built<StructWithJsonName, StructWithJsonNameBuilder> {
  factory StructWithJsonName({String? value}) {
    return _$StructWithJsonName._(value: value);
  }

  factory StructWithJsonName.build(
          [void Function(StructWithJsonNameBuilder) updates]) =
      _$StructWithJsonName;

  const StructWithJsonName._();

  static const List<_i2.SmithySerializer> serializers = [
    StructWithJsonNameAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructWithJsonNameBuilder b) {}
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StructWithJsonName');
    helper.add('value', value);
    return helper.toString();
  }
}

class StructWithJsonNameAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StructWithJsonName> {
  const StructWithJsonNameAwsJson11Serializer() : super('StructWithJsonName');

  @override
  Iterable<Type> get types => const [StructWithJsonName, _$StructWithJsonName];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  StructWithJsonName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = StructWithJsonNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(value,
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
    final payload = (object as StructWithJsonName);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(payload.value!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
