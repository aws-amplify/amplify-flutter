// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_objects_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i7;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/deleted_object.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/error.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;

part 'delete_objects_output.g.dart';

abstract class DeleteObjectsOutput
    with _i1.AWSEquatable<DeleteObjectsOutput>
    implements
        Built<DeleteObjectsOutput, DeleteObjectsOutputBuilder>,
        _i2.HasPayload<DeleteObjectsOutputPayload> {
  factory DeleteObjectsOutput({
    List<_i3.DeletedObject>? deleted,
    _i4.RequestCharged? requestCharged,
    List<_i5.Error>? errors,
  }) {
    return _$DeleteObjectsOutput._(
      deleted: deleted == null ? null : _i6.BuiltList(deleted),
      requestCharged: requestCharged,
      errors: errors == null ? null : _i6.BuiltList(errors),
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
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<DeleteObjectsOutputPayload>>
      serializers = [DeleteObjectsOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectsOutputBuilder b) {}

  /// Container element for a successful delete. It identifies the object that was successfully deleted.
  _i6.BuiltList<_i3.DeletedObject>? get deleted;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;

  /// Container for a failed delete action that describes the object that Amazon S3 attempted to delete and the error it encountered.
  _i6.BuiltList<_i5.Error>? get errors;
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
        requestCharged,
        errors,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectsOutput')
      ..add(
        'deleted',
        deleted,
      )
      ..add(
        'requestCharged',
        requestCharged,
      )
      ..add(
        'errors',
        errors,
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
  _i6.BuiltList<_i5.Error>? get errors;
  @override
  List<Object?> get props => [
        deleted,
        errors,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectsOutputPayload')
      ..add(
        'deleted',
        deleted,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Deleted':
          result.deleted.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeletedObject),
          ) as _i3.DeletedObject));
        case 'Error':
          result.errors.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Error),
          ) as _i5.Error));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteObjectsOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final DeleteObjectsOutputPayload(:deleted, :errors) = object;
    if (deleted != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Deleted').serialize(
        serializers,
        deleted,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.DeletedObject)],
        ),
      ));
    }
    if (errors != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Error').serialize(
        serializers,
        errors,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i5.Error)],
        ),
      ));
    }
    return result$;
  }
}
