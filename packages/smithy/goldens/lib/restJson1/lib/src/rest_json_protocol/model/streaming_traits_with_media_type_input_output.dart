// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.streaming_traits_with_media_type_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_with_media_type_input_output.g.dart';

abstract class StreamingTraitsWithMediaTypeInputOutput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<StreamingTraitsWithMediaTypeInputOutput>
    implements
        Built<StreamingTraitsWithMediaTypeInputOutput,
            StreamingTraitsWithMediaTypeInputOutputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory StreamingTraitsWithMediaTypeInputOutput({
    String? foo,
    _i2.Stream<List<int>>? blob,
  }) {
    return _$StreamingTraitsWithMediaTypeInputOutput._(
      foo: foo,
      blob: blob,
    );
  }

  factory StreamingTraitsWithMediaTypeInputOutput.build(
      [void Function(StreamingTraitsWithMediaTypeInputOutputBuilder)
          updates]) = _$StreamingTraitsWithMediaTypeInputOutput;

  const StreamingTraitsWithMediaTypeInputOutput._();

  factory StreamingTraitsWithMediaTypeInputOutput.fromRequest(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      StreamingTraitsWithMediaTypeInputOutput.build((b) {
        b.blob = payload;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  /// Constructs a [StreamingTraitsWithMediaTypeInputOutput] from a [payload] and [response].
  factory StreamingTraitsWithMediaTypeInputOutput.fromResponse(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      StreamingTraitsWithMediaTypeInputOutput.build((b) {
        b.blob = payload;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.Stream<List<int>>?>> serializers =
      [StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamingTraitsWithMediaTypeInputOutputBuilder b) {}
  String? get foo;
  _i2.Stream<List<int>>? get blob;
  @override
  _i2.Stream<List<int>>? getPayload() => blob;
  @override
  List<Object?> get props => [
        foo,
        blob,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StreamingTraitsWithMediaTypeInputOutput')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'blob',
            blob,
          );
    return helper.toString();
  }
}

class StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('StreamingTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        StreamingTraitsWithMediaTypeInputOutput,
        _$StreamingTraitsWithMediaTypeInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Stream<List<int>> object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    )!;
  }
}
