// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.glacier.model.upload_multipart_part_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'upload_multipart_part_output.g.dart';

abstract class UploadMultipartPartOutput
    with _i1.AWSEquatable<UploadMultipartPartOutput>
    implements
        Built<UploadMultipartPartOutput, UploadMultipartPartOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<UploadMultipartPartOutputPayload> {
  factory UploadMultipartPartOutput({String? checksum}) {
    return _$UploadMultipartPartOutput._(checksum: checksum);
  }

  factory UploadMultipartPartOutput.build(
          [void Function(UploadMultipartPartOutputBuilder) updates]) =
      _$UploadMultipartPartOutput;

  const UploadMultipartPartOutput._();

  /// Constructs a [UploadMultipartPartOutput] from a [payload] and [response].
  factory UploadMultipartPartOutput.fromResponse(
          UploadMultipartPartOutputPayload payload,
          _i1.AWSBaseHttpResponse response) =>
      UploadMultipartPartOutput.build((b) {
        if (response.headers['x-amz-sha256-tree-hash'] != null) {
          b.checksum = response.headers['x-amz-sha256-tree-hash']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    UploadMultipartPartOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadMultipartPartOutputBuilder b) {}
  String? get checksum;
  @override
  UploadMultipartPartOutputPayload getPayload() =>
      UploadMultipartPartOutputPayload();
  @override
  List<Object?> get props => [checksum];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadMultipartPartOutput');
    helper.add('checksum', checksum);
    return helper.toString();
  }
}

@_i3.internal
abstract class UploadMultipartPartOutputPayload
    with
        _i1.AWSEquatable<UploadMultipartPartOutputPayload>
    implements
        Built<UploadMultipartPartOutputPayload,
            UploadMultipartPartOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory UploadMultipartPartOutputPayload(
          [void Function(UploadMultipartPartOutputPayloadBuilder) updates]) =
      _$UploadMultipartPartOutputPayload;

  const UploadMultipartPartOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadMultipartPartOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UploadMultipartPartOutputPayload');
    return helper.toString();
  }
}

class UploadMultipartPartOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<UploadMultipartPartOutputPayload> {
  const UploadMultipartPartOutputRestJson1Serializer()
      : super('UploadMultipartPartOutput');

  @override
  Iterable<Type> get types => const [
        UploadMultipartPartOutput,
        _$UploadMultipartPartOutput,
        UploadMultipartPartOutputPayload,
        _$UploadMultipartPartOutputPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UploadMultipartPartOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return UploadMultipartPartOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
