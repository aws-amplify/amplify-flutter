// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.delete_object_tagging_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'delete_object_tagging_output.g.dart';

abstract class DeleteObjectTaggingOutput
    with _i1.AWSEquatable<DeleteObjectTaggingOutput>
    implements
        Built<DeleteObjectTaggingOutput, DeleteObjectTaggingOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<DeleteObjectTaggingOutputPayload> {
  factory DeleteObjectTaggingOutput({String? versionId}) {
    return _$DeleteObjectTaggingOutput._(versionId: versionId);
  }

  factory DeleteObjectTaggingOutput.build(
          [void Function(DeleteObjectTaggingOutputBuilder) updates]) =
      _$DeleteObjectTaggingOutput;

  const DeleteObjectTaggingOutput._();

  /// Constructs a [DeleteObjectTaggingOutput] from a [payload] and [response].
  factory DeleteObjectTaggingOutput.fromResponse(
    DeleteObjectTaggingOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      DeleteObjectTaggingOutput.build((b) {
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    DeleteObjectTaggingOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectTaggingOutputBuilder b) {}

  /// The versionId of the object the tag-set was removed from.
  String? get versionId;
  @override
  DeleteObjectTaggingOutputPayload getPayload() =>
      DeleteObjectTaggingOutputPayload();
  @override
  List<Object?> get props => [versionId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectTaggingOutput');
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteObjectTaggingOutputPayload
    with
        _i1.AWSEquatable<DeleteObjectTaggingOutputPayload>
    implements
        Built<DeleteObjectTaggingOutputPayload,
            DeleteObjectTaggingOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory DeleteObjectTaggingOutputPayload(
          [void Function(DeleteObjectTaggingOutputPayloadBuilder) updates]) =
      _$DeleteObjectTaggingOutputPayload;

  const DeleteObjectTaggingOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectTaggingOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteObjectTaggingOutputPayload');
    return helper.toString();
  }
}

class DeleteObjectTaggingOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<DeleteObjectTaggingOutputPayload> {
  const DeleteObjectTaggingOutputRestXmlSerializer()
      : super('DeleteObjectTaggingOutput');

  @override
  Iterable<Type> get types => const [
        DeleteObjectTaggingOutput,
        _$DeleteObjectTaggingOutput,
        DeleteObjectTaggingOutputPayload,
        _$DeleteObjectTaggingOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteObjectTaggingOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteObjectTaggingOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteObjectTaggingOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
