// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.custom_service.model.http_checksum_required_with_member_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom_service/model/checksum_algorithm.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_required_with_member_input.g.dart';

abstract class HttpChecksumRequiredWithMemberInput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpChecksumRequiredWithMemberInput>
    implements
        Built<HttpChecksumRequiredWithMemberInput,
            HttpChecksumRequiredWithMemberInputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpChecksumRequiredWithMemberInput({
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    _i2.Uint8List? content,
  }) {
    return _$HttpChecksumRequiredWithMemberInput._(
      checksumAlgorithm: checksumAlgorithm,
      content: content,
    );
  }

  factory HttpChecksumRequiredWithMemberInput.build(
          [void Function(HttpChecksumRequiredWithMemberInputBuilder) updates]) =
      _$HttpChecksumRequiredWithMemberInput;

  const HttpChecksumRequiredWithMemberInput._();

  factory HttpChecksumRequiredWithMemberInput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpChecksumRequiredWithMemberInput.build((b) {
        b.content = payload;
        if (request.headers['x-amz-request-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-request-algorithm']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpChecksumRequiredWithMemberInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredWithMemberInputBuilder b) {}
  _i4.ChecksumAlgorithm? get checksumAlgorithm;
  _i2.Uint8List? get content;
  @override
  _i2.Uint8List? getPayload() => content;
  @override
  List<Object?> get props => [
        checksumAlgorithm,
        content,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpChecksumRequiredWithMemberInput');
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'content',
      content,
    );
    return helper.toString();
  }
}

class HttpChecksumRequiredWithMemberInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const HttpChecksumRequiredWithMemberInputRestJson1Serializer()
      : super('HttpChecksumRequiredWithMemberInput');

  @override
  Iterable<Type> get types => const [
        HttpChecksumRequiredWithMemberInput,
        _$HttpChecksumRequiredWithMemberInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.Uint8List),
    ) as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is HttpChecksumRequiredWithMemberInput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.Uint8List),
    ) as Object);
  }
}
