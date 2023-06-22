// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.deleted_object; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  factory DeletedObject({
    String? key,
    String? versionId,
    bool? deleteMarker,
    String? deleteMarkerVersionId,
  }) {
    return _$DeletedObject._(
      key: key,
      versionId: versionId,
      deleteMarker: deleteMarker,
      deleteMarkerVersionId: deleteMarkerVersionId,
    );
  }

  /// Information about the deleted object.
  factory DeletedObject.build([void Function(DeletedObjectBuilder) updates]) =
      _$DeletedObject;

  const DeletedObject._();

  static const List<_i2.SmithySerializer<DeletedObject>> serializers = [
    DeletedObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletedObjectBuilder b) {}

  /// The name of the deleted object.
  String? get key;

  /// The version ID of the deleted object.
  String? get versionId;

  /// Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or not (false) a delete marker was created.
  bool? get deleteMarker;

  /// The version ID of the delete marker created as a result of the DELETE operation. If you delete a specific object version, the value returned by this header is the version ID of the object version deleted.
  String? get deleteMarkerVersionId;
  @override
  List<Object?> get props => [
        key,
        versionId,
        deleteMarker,
        deleteMarkerVersionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletedObject')
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'deleteMarker',
        deleteMarker,
      )
      ..add(
        'deleteMarkerVersionId',
        deleteMarkerVersionId,
      );
    return helper.toString();
  }
}

class DeletedObjectRestXmlSerializer
    extends _i2.StructuredSmithySerializer<DeletedObject> {
  const DeletedObjectRestXmlSerializer() : super('DeletedObject');

  @override
  Iterable<Type> get types => const [
        DeletedObject,
        _$DeletedObject,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeletedObject deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletedObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeleteMarker':
          result.deleteMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DeleteMarkerVersionId':
          result.deleteMarkerVersionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeletedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeletedObject',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final DeletedObject(
      :deleteMarker,
      :deleteMarkerVersionId,
      :key,
      :versionId
    ) = object;
    if (deleteMarker != null) {
      result$
        ..add(const _i2.XmlElementName('DeleteMarker'))
        ..add(serializers.serialize(
          deleteMarker,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (deleteMarkerVersionId != null) {
      result$
        ..add(const _i2.XmlElementName('DeleteMarkerVersionId'))
        ..add(serializers.serialize(
          deleteMarkerVersionId,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
