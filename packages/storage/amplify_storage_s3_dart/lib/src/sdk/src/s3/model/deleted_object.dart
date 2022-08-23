// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.deleted_object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'deleted_object.g.dart';

/// Information about the deleted object.
abstract class DeletedObject
    with _i1.AWSEquatable<DeletedObject>
    implements Built<DeletedObject, DeletedObjectBuilder> {
  /// Information about the deleted object.
  factory DeletedObject(
      {bool? deleteMarker,
      String? deleteMarkerVersionId,
      String? key,
      String? versionId}) {
    return _$DeletedObject._(
        deleteMarker: deleteMarker,
        deleteMarkerVersionId: deleteMarkerVersionId,
        key: key,
        versionId: versionId);
  }

  /// Information about the deleted object.
  factory DeletedObject.build([void Function(DeletedObjectBuilder) updates]) =
      _$DeletedObject;

  const DeletedObject._();

  static const List<_i2.SmithySerializer> serializers = [
    DeletedObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletedObjectBuilder b) {}

  /// Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or not (false) a delete marker was created.
  bool? get deleteMarker;

  /// The version ID of the delete marker created as a result of the DELETE operation. If you delete a specific object version, the value returned by this header is the version ID of the object version deleted.
  String? get deleteMarkerVersionId;

  /// The name of the deleted object.
  String? get key;

  /// The version ID of the deleted object.
  String? get versionId;
  @override
  List<Object?> get props =>
      [deleteMarker, deleteMarkerVersionId, key, versionId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletedObject');
    helper.add('deleteMarker', deleteMarker);
    helper.add('deleteMarkerVersionId', deleteMarkerVersionId);
    helper.add('key', key);
    helper.add('versionId', versionId);
    return helper.toString();
  }
}

class DeletedObjectRestXmlSerializer
    extends _i2.StructuredSmithySerializer<DeletedObject> {
  const DeletedObjectRestXmlSerializer() : super('DeletedObject');

  @override
  Iterable<Type> get types => const [DeletedObject, _$DeletedObject];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  DeletedObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DeletedObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DeleteMarker':
          if (value != null) {
            result.deleteMarker = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'DeleteMarkerVersionId':
          if (value != null) {
            result.deleteMarkerVersionId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as DeletedObject);
    final result = <Object?>[
      const _i2.XmlElementName('DeletedObject',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.deleteMarker != null) {
      result
        ..add(const _i2.XmlElementName('DeleteMarker'))
        ..add(serializers.serialize(payload.deleteMarker!,
            specifiedType: const FullType.nullable(bool)));
    }
    if (payload.deleteMarkerVersionId != null) {
      result
        ..add(const _i2.XmlElementName('DeleteMarkerVersionId'))
        ..add(serializers.serialize(payload.deleteMarkerVersionId!,
            specifiedType: const FullType(String)));
    }
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(payload.key!,
            specifiedType: const FullType(String)));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(payload.versionId!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
