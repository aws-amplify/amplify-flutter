// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.put_object_tagging_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'put_object_tagging_output.g.dart';

abstract class PutObjectTaggingOutput
    with _i1.AWSEquatable<PutObjectTaggingOutput>
    implements
        Built<PutObjectTaggingOutput, PutObjectTaggingOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectTaggingOutputPayload> {
  factory PutObjectTaggingOutput({String? versionId}) {
    return _$PutObjectTaggingOutput._(versionId: versionId);
  }

  factory PutObjectTaggingOutput.build(
          [void Function(PutObjectTaggingOutputBuilder) updates]) =
      _$PutObjectTaggingOutput;

  const PutObjectTaggingOutput._();

  /// Constructs a [PutObjectTaggingOutput] from a [payload] and [response].
  factory PutObjectTaggingOutput.fromResponse(
    PutObjectTaggingOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectTaggingOutput.build((b) {
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    PutObjectTaggingOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectTaggingOutputBuilder b) {}

  /// The versionId of the object the tag-set was added to.
  String? get versionId;
  @override
  PutObjectTaggingOutputPayload getPayload() => PutObjectTaggingOutputPayload();
  @override
  List<Object?> get props => [versionId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectTaggingOutput');
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class PutObjectTaggingOutputPayload
    with
        _i1.AWSEquatable<PutObjectTaggingOutputPayload>
    implements
        Built<PutObjectTaggingOutputPayload,
            PutObjectTaggingOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectTaggingOutputPayload(
          [void Function(PutObjectTaggingOutputPayloadBuilder) updates]) =
      _$PutObjectTaggingOutputPayload;

  const PutObjectTaggingOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectTaggingOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectTaggingOutputPayload');
    return helper.toString();
  }
}

class PutObjectTaggingOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PutObjectTaggingOutputPayload> {
  const PutObjectTaggingOutputRestXmlSerializer()
      : super('PutObjectTaggingOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectTaggingOutput,
        _$PutObjectTaggingOutput,
        PutObjectTaggingOutputPayload,
        _$PutObjectTaggingOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectTaggingOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectTaggingOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'PutObjectTaggingOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
