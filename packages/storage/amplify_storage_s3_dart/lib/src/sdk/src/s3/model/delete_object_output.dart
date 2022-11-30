// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.delete_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'delete_object_output.g.dart';

abstract class DeleteObjectOutput
    with _i1.AWSEquatable<DeleteObjectOutput>
    implements
        Built<DeleteObjectOutput, DeleteObjectOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<DeleteObjectOutputPayload> {
  factory DeleteObjectOutput({
    bool? deleteMarker,
    _i3.RequestCharged? requestCharged,
    String? versionId,
  }) {
    return _$DeleteObjectOutput._(
      deleteMarker: deleteMarker,
      requestCharged: requestCharged,
      versionId: versionId,
    );
  }

  factory DeleteObjectOutput.build(
          [void Function(DeleteObjectOutputBuilder) updates]) =
      _$DeleteObjectOutput;

  const DeleteObjectOutput._();

  /// Constructs a [DeleteObjectOutput] from a [payload] and [response].
  factory DeleteObjectOutput.fromResponse(
    DeleteObjectOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      DeleteObjectOutput.build((b) {
        if (response.headers['x-amz-delete-marker'] != null) {
          b.deleteMarker = response.headers['x-amz-delete-marker']! == 'true';
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    DeleteObjectOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectOutputBuilder b) {}

  /// Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.
  bool? get deleteMarker;

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;

  /// Returns the version ID of the delete marker created as a result of the DELETE operation.
  String? get versionId;
  @override
  DeleteObjectOutputPayload getPayload() => DeleteObjectOutputPayload();
  @override
  List<Object?> get props => [
        deleteMarker,
        requestCharged,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectOutput');
    helper.add(
      'deleteMarker',
      deleteMarker,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class DeleteObjectOutputPayload
    with _i1.AWSEquatable<DeleteObjectOutputPayload>
    implements
        Built<DeleteObjectOutputPayload, DeleteObjectOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory DeleteObjectOutputPayload(
          [void Function(DeleteObjectOutputPayloadBuilder) updates]) =
      _$DeleteObjectOutputPayload;

  const DeleteObjectOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectOutputPayload');
    return helper.toString();
  }
}

class DeleteObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<DeleteObjectOutputPayload> {
  const DeleteObjectOutputRestXmlSerializer() : super('DeleteObjectOutput');

  @override
  Iterable<Type> get types => const [
        DeleteObjectOutput,
        _$DeleteObjectOutput,
        DeleteObjectOutputPayload,
        _$DeleteObjectOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteObjectOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteObjectOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
