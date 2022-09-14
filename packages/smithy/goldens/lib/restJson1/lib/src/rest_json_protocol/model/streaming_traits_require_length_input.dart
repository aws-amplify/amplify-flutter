// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.streaming_traits_require_length_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_require_length_input.g.dart';

abstract class StreamingTraitsRequireLengthInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<StreamingTraitsRequireLengthInput>
    implements
        Built<StreamingTraitsRequireLengthInput,
            StreamingTraitsRequireLengthInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory StreamingTraitsRequireLengthInput(
      {_i2.Stream<List<int>>? blob, String? foo}) {
    return _$StreamingTraitsRequireLengthInput._(blob: blob, foo: foo);
  }

  factory StreamingTraitsRequireLengthInput.build(
          [void Function(StreamingTraitsRequireLengthInputBuilder) updates]) =
      _$StreamingTraitsRequireLengthInput;

  const StreamingTraitsRequireLengthInput._();

  factory StreamingTraitsRequireLengthInput.fromRequest(
          _i2.Stream<List<int>>? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      StreamingTraitsRequireLengthInput.build((b) {
        b.blob = payload;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    StreamingTraitsRequireLengthInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamingTraitsRequireLengthInputBuilder b) {}
  _i2.Stream<List<int>>? get blob;
  String? get foo;
  @override
  _i2.Stream<List<int>>? getPayload() => blob;
  @override
  List<Object?> get props => [blob, foo];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StreamingTraitsRequireLengthInput');
    helper.add('blob', blob);
    helper.add('foo', foo);
    return helper.toString();
  }
}

class StreamingTraitsRequireLengthInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const StreamingTraitsRequireLengthInputRestJson1Serializer()
      : super('StreamingTraitsRequireLengthInput');

  @override
  Iterable<Type> get types => const [
        StreamingTraitsRequireLengthInput,
        _$StreamingTraitsRequireLengthInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Stream<List<int>> deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is StreamingTraitsRequireLengthInput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}
