// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_request_body_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_request_body_input.g.dart';

abstract class MalformedRequestBodyInput
    with
        _i1.HttpInput<MalformedRequestBodyInput>,
        _i2.AWSEquatable<MalformedRequestBodyInput>
    implements
        Built<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  factory MalformedRequestBodyInput({double? float, int? int_}) {
    return _$MalformedRequestBodyInput._(float: float, int_: int_);
  }

  factory MalformedRequestBodyInput.build(
          [void Function(MalformedRequestBodyInputBuilder) updates]) =
      _$MalformedRequestBodyInput;

  const MalformedRequestBodyInput._();

  factory MalformedRequestBodyInput.fromRequest(
          MalformedRequestBodyInput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedRequestBodyInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequestBodyInputBuilder b) {}
  double? get float;
  int? get int_;
  @override
  MalformedRequestBodyInput getPayload() => this;
  @override
  List<Object?> get props => [float, int_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRequestBodyInput');
    helper.add('float', float);
    helper.add('int_', int_);
    return helper.toString();
  }
}

class MalformedRequestBodyInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequestBodyInput> {
  const MalformedRequestBodyInputRestJson1Serializer()
      : super('MalformedRequestBodyInput');

  @override
  Iterable<Type> get types =>
      const [MalformedRequestBodyInput, _$MalformedRequestBodyInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRequestBodyInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRequestBodyInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'float':
          if (value != null) {
            result.float = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'int':
          if (value != null) {
            result.int_ = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedRequestBodyInput);
    final result = <Object?>[];
    if (payload.float != null) {
      result
        ..add('float')
        ..add(serializers.serialize(payload.float!,
            specifiedType: const FullType(double)));
    }
    if (payload.int_ != null) {
      result
        ..add('int')
        ..add(serializers.serialize(payload.int_!,
            specifiedType: const FullType(int)));
    }
    return result;
  }
}
