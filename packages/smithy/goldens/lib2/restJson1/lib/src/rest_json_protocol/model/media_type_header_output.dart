// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.media_type_header_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:convert' as _i4;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;

part 'media_type_header_output.g.dart';

abstract class MediaTypeHeaderOutput
    with _i1.AWSEquatable<MediaTypeHeaderOutput>
    implements
        Built<MediaTypeHeaderOutput, MediaTypeHeaderOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<MediaTypeHeaderOutputPayload> {
  factory MediaTypeHeaderOutput({Object? json}) {
    return _$MediaTypeHeaderOutput._(
        json: json == null ? null : _i3.JsonObject(json));
  }

  factory MediaTypeHeaderOutput.build(
          [void Function(MediaTypeHeaderOutputBuilder) updates]) =
      _$MediaTypeHeaderOutput;

  const MediaTypeHeaderOutput._();

  /// Constructs a [MediaTypeHeaderOutput] from a [payload] and [response].
  factory MediaTypeHeaderOutput.fromResponse(
    MediaTypeHeaderOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      MediaTypeHeaderOutput.build((b) {
        if (response.headers['X-Json'] != null) {
          b.json = _i3.JsonObject(_i4.jsonDecode(
              _i4.utf8.decode(_i4.base64Decode(response.headers['X-Json']!))));
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    MediaTypeHeaderOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputBuilder b) {}
  _i3.JsonObject? get json;
  @override
  MediaTypeHeaderOutputPayload getPayload() => MediaTypeHeaderOutputPayload();
  @override
  List<Object?> get props => [json];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MediaTypeHeaderOutput');
    helper.add(
      'json',
      json,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class MediaTypeHeaderOutputPayload
    with
        _i1.AWSEquatable<MediaTypeHeaderOutputPayload>
    implements
        Built<MediaTypeHeaderOutputPayload,
            MediaTypeHeaderOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory MediaTypeHeaderOutputPayload(
          [void Function(MediaTypeHeaderOutputPayloadBuilder) updates]) =
      _$MediaTypeHeaderOutputPayload;

  const MediaTypeHeaderOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MediaTypeHeaderOutputPayload');
    return helper.toString();
  }
}

class MediaTypeHeaderOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MediaTypeHeaderOutputPayload> {
  const MediaTypeHeaderOutputRestJson1Serializer()
      : super('MediaTypeHeaderOutput');

  @override
  Iterable<Type> get types => const [
        MediaTypeHeaderOutput,
        _$MediaTypeHeaderOutput,
        MediaTypeHeaderOutputPayload,
        _$MediaTypeHeaderOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MediaTypeHeaderOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MediaTypeHeaderOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
