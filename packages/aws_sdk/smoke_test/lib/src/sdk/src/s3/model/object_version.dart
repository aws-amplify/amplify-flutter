// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.object_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_version_storage_class.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i3;

part 'object_version.g.dart';

/// The version of an object.
abstract class ObjectVersion
    with _i1.AWSEquatable<ObjectVersion>
    implements Built<ObjectVersion, ObjectVersionBuilder> {
  /// The version of an object.
  factory ObjectVersion({
    List<_i2.ChecksumAlgorithm>? checksumAlgorithm,
    String? eTag,
    bool? isLatest,
    String? key,
    DateTime? lastModified,
    _i3.Owner? owner,
    _i4.Int64? size,
    _i5.ObjectVersionStorageClass? storageClass,
    String? versionId,
  }) {
    return _$ObjectVersion._(
      checksumAlgorithm:
          checksumAlgorithm == null ? null : _i6.BuiltList(checksumAlgorithm),
      eTag: eTag,
      isLatest: isLatest,
      key: key,
      lastModified: lastModified,
      owner: owner,
      size: size,
      storageClass: storageClass,
      versionId: versionId,
    );
  }

  /// The version of an object.
  factory ObjectVersion.build([void Function(ObjectVersionBuilder) updates]) =
      _$ObjectVersion;

  const ObjectVersion._();

  static const List<_i7.SmithySerializer> serializers = [
    ObjectVersionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectVersionBuilder b) {}

  /// The algorithm that was used to create a checksum of the object.
  _i6.BuiltList<_i2.ChecksumAlgorithm>? get checksumAlgorithm;

  /// The entity tag is an MD5 hash of that version of the object.
  String? get eTag;

  /// Specifies whether the object is (true) or is not (false) the latest version of an object.
  bool? get isLatest;

  /// The object key.
  String? get key;

  /// Date and time the object was last modified.
  DateTime? get lastModified;

  /// Specifies the owner of the object.
  _i3.Owner? get owner;

  /// Size in bytes of the object.
  _i4.Int64? get size;

  /// The class of storage used to store the object.
  _i5.ObjectVersionStorageClass? get storageClass;

  /// Version ID of an object.
  String? get versionId;
  @override
  List<Object?> get props => [
        checksumAlgorithm,
        eTag,
        isLatest,
        key,
        lastModified,
        owner,
        size,
        storageClass,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectVersion');
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'isLatest',
      isLatest,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'lastModified',
      lastModified,
    );
    helper.add(
      'owner',
      owner,
    );
    helper.add(
      'size',
      size,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class ObjectVersionRestXmlSerializer
    extends _i7.StructuredSmithySerializer<ObjectVersion> {
  const ObjectVersionRestXmlSerializer() : super('ObjectVersion');

  @override
  Iterable<Type> get types => const [
        ObjectVersion,
        _$ObjectVersion,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectVersion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectVersionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChecksumAlgorithm':
          if (value != null) {
            result.checksumAlgorithm.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ChecksumAlgorithm),
            ) as _i2.ChecksumAlgorithm));
          }
          break;
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsLatest':
          if (value != null) {
            result.isLatest = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Owner),
            ) as _i3.Owner));
          }
          break;
        case 'Size':
          if (value != null) {
            result.size = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ObjectVersionStorageClass),
            ) as _i5.ObjectVersionStorageClass);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ObjectVersion);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ObjectVersion',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.checksumAlgorithm != null) {
      result.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'ChecksumAlgorithm')
              .serialize(
        serializers,
        payload.checksumAlgorithm!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i2.ChecksumAlgorithm)],
        ),
      ));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i7.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isLatest != null) {
      result
        ..add(const _i7.XmlElementName('IsLatest'))
        ..add(serializers.serialize(
          payload.isLatest!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.key != null) {
      result
        ..add(const _i7.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i7.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          payload.lastModified!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i7.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i3.Owner),
        ));
    }
    if (payload.size != null) {
      result
        ..add(const _i7.XmlElementName('Size'))
        ..add(serializers.serialize(
          payload.size!,
          specifiedType: const FullType.nullable(_i4.Int64),
        ));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i7.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i5.ObjectVersionStorageClass),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i7.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
