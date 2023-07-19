// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.model.malformed_string_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:convert' as _i4;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_string_input.g.dart';

abstract class MalformedStringInput
    with
        _i1.HttpInput<MalformedStringInputPayload>,
        _i2.AWSEquatable<MalformedStringInput>
    implements
        Built<MalformedStringInput, MalformedStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedStringInputPayload> {
  factory MalformedStringInput({Object? blob}) {
    return _$MalformedStringInput._(
        blob: blob == null ? null : _i3.JsonObject(blob));
  }

  factory MalformedStringInput.build(
          [void Function(MalformedStringInputBuilder) updates]) =
      _$MalformedStringInput;

  const MalformedStringInput._();

  factory MalformedStringInput.fromRequest(
    MalformedStringInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedStringInput.build((b) {
        if (request.headers['amz-media-typed-header'] != null) {
          b.blob = _i3.JsonObject(_i4.jsonDecode(_i4.utf8.decode(
              _i4.base64Decode(request.headers['amz-media-typed-header']!))));
        }
      });

  static const List<_i1.SmithySerializer<MalformedStringInputPayload>>
      serializers = [MalformedStringInputRestJson1Serializer()];

  _i3.JsonObject? get blob;
  @override
  MalformedStringInputPayload getPayload() => MalformedStringInputPayload();
  @override
  List<Object?> get props => [blob];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedStringInput')
      ..add(
        'blob',
        blob,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class MalformedStringInputPayload
    with _i2.AWSEquatable<MalformedStringInputPayload>
    implements
        Built<MalformedStringInputPayload, MalformedStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedStringInputPayload(
          [void Function(MalformedStringInputPayloadBuilder) updates]) =
      _$MalformedStringInputPayload;

  const MalformedStringInputPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedStringInputPayload');
    return helper.toString();
  }
}

class MalformedStringInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedStringInputPayload> {
  const MalformedStringInputRestJson1Serializer()
      : super('MalformedStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedStringInput,
        _$MalformedStringInput,
        MalformedStringInputPayload,
        _$MalformedStringInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedStringInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedStringInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
