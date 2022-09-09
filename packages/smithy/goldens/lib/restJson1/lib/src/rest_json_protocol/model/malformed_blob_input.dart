// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_blob_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_blob_input.g.dart';

abstract class MalformedBlobInput
    with _i1.HttpInput<MalformedBlobInput>, _i2.AWSEquatable<MalformedBlobInput>
    implements Built<MalformedBlobInput, MalformedBlobInputBuilder> {
  factory MalformedBlobInput({_i3.Uint8List? blob}) {
    return _$MalformedBlobInput._(blob: blob);
  }

  factory MalformedBlobInput.build(
          [void Function(MalformedBlobInputBuilder) updates]) =
      _$MalformedBlobInput;

  const MalformedBlobInput._();

  factory MalformedBlobInput.fromRequest(
          MalformedBlobInput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedBlobInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBlobInputBuilder b) {}
  _i3.Uint8List? get blob;
  @override
  MalformedBlobInput getPayload() => this;
  @override
  List<Object?> get props => [blob];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedBlobInput');
    helper.add('blob', blob);
    return helper.toString();
  }
}

class MalformedBlobInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedBlobInput> {
  const MalformedBlobInputRestJson1Serializer() : super('MalformedBlobInput');

  @override
  Iterable<Type> get types => const [MalformedBlobInput, _$MalformedBlobInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedBlobInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedBlobInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.Uint8List)) as _i3.Uint8List);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedBlobInput);
    final result = <Object?>[];
    if (payload.blob != null) {
      result
        ..add('blob')
        ..add(serializers.serialize(payload.blob!,
            specifiedType: const FullType(_i3.Uint8List)));
    }
    return result;
  }
}
