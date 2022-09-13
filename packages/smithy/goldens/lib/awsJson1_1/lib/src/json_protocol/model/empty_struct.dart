// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.empty_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'empty_struct.g.dart';

abstract class EmptyStruct
    with _i1.AWSEquatable<EmptyStruct>
    implements Built<EmptyStruct, EmptyStructBuilder>, _i2.EmptyPayload {
  factory EmptyStruct() {
    return _$EmptyStruct._();
  }

  factory EmptyStruct.build([void Function(EmptyStructBuilder) updates]) =
      _$EmptyStruct;

  const EmptyStruct._();

  static const List<_i2.SmithySerializer> serializers = [
    EmptyStructAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyStructBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EmptyStruct');
    return helper.toString();
  }
}

class EmptyStructAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EmptyStruct> {
  const EmptyStructAwsJson11Serializer() : super('EmptyStruct');

  @override
  Iterable<Type> get types => const [EmptyStruct, _$EmptyStruct];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  EmptyStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyStructBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
