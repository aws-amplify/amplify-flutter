// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_objects_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i7;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/deleted_object.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/error.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i5;

part 'delete_objects_output.g.dart';

abstract class DeleteObjectsOutput
    with _i1.AWSEquatable<DeleteObjectsOutput>
    implements
        Built<DeleteObjectsOutput, DeleteObjectsOutputBuilder>,
        _i2.HasPayload<DeleteObjectsOutputPayload> {
  factory DeleteObjectsOutput({
    List<_i3.DeletedObject>? deleted,
    List<_i4.Error>? errors,
    _i5.RequestCharged? requestCharged,
  }) {
    return _$DeleteObjectsOutput._(
      deleted: deleted == null ? null : _i6.BuiltList(deleted),
      errors: errors == null ? null : _i6.BuiltList(errors),
      requestCharged: requestCharged,
    );
  }

  factory DeleteObjectsOutput.build(
          [void Function(DeleteObjectsOutputBuilder) updates]) =
      _$DeleteObjectsOutput;

  const DeleteObjectsOutput._();

  /// Constructs a [DeleteObjectsOutput] from a [payload] and [response].
  factory DeleteObjectsOutput.fromResponse(
    DeleteObjectsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      DeleteObjectsOutput.build((b) {
        if (payload.deleted != null) {
          b.deleted.replace(payload.deleted!);
        }
        if (payload.errors != null) {
          b.errors.replace(payload.errors!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i5.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    DeleteObjectsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectsOutputBuilder b) {}

  /// Container element for a successful delete. It identifies the object that was successfully deleted.
  _i6.BuiltList<_i3.DeletedObject>? get deleted;

  /// Container for a failed delete action that describes the object that Amazon S3 attempted to delete and the error it encountered.
  _i6.BuiltList<_i4.Error>? get errors;

  /// If present, indicates that the requester was successfully charged for the request.
  _i5.RequestCharged? get requestCharged;
  @override
  DeleteObjectsOutputPayload getPayload() => DeleteObjectsOutputPayload((b) {
        if (deleted != null) {
          b.deleted.replace(deleted!);
        }
        if (errors != null) {
          b.errors.replace(errors!);
        }
      });
  @override
  List<Object?> get props => [
        deleted,
        errors,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectsOutput');
    helper.add(
      'deleted',
      deleted,
    );
    helper.add(
      'errors',
      errors,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

@_i7.internal
abstract class DeleteObjectsOutputPayload
    with _i1.AWSEquatable<DeleteObjectsOutputPayload>
    implements
        Built<DeleteObjectsOutputPayload, DeleteObjectsOutputPayloadBuilder> {
  factory DeleteObjectsOutputPayload(
          [void Function(DeleteObjectsOutputPayloadBuilder) updates]) =
      _$DeleteObjectsOutputPayload;

  const DeleteObjectsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectsOutputPayloadBuilder b) {}

  /// Container element for a successful delete. It identifies the object that was successfully deleted.
  _i6.BuiltList<_i3.DeletedObject>? get deleted;

  /// Container for a failed delete action that describes the object that Amazon S3 attempted to delete and the error it encountered.
  _i6.BuiltList<_i4.Error>? get errors;
  @override
  List<Object?> get props => [
        deleted,
        errors,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectsOutputPayload');
    helper.add(
      'deleted',
      deleted,
    );
    helper.add(
      'errors',
      errors,
    );
    return helper.toString();
  }
}

class DeleteObjectsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<DeleteObjectsOutputPayload> {
  const DeleteObjectsOutputRestXmlSerializer() : super('DeleteObjectsOutput');

  @override
  Iterable<Type> get types => const [
        DeleteObjectsOutput,
        _$DeleteObjectsOutput,
        DeleteObjectsOutputPayload,
        _$DeleteObjectsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteObjectsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteObjectsOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Deleted':
          if (value != null) {
            result.deleted.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DeletedObject),
            ) as _i3.DeletedObject));
          }
          break;
        case 'Error':
          if (value != null) {
            result.errors.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Error),
            ) as _i4.Error));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is DeleteObjectsOutput
        ? object.getPayload()
        : (object as DeleteObjectsOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.deleted != null) {
      result.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Deleted').serialize(
        serializers,
        payload.deleted!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.DeletedObject)],
        ),
      ));
    }
    if (payload.errors != null) {
      result.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Error').serialize(
        serializers,
        payload.errors!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.Error)],
        ),
      ));
    }
    return result;
  }
}
