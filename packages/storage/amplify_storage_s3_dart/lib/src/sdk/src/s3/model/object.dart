// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_storage_class.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart' as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i7;

part 'object.g.dart';

/// An object consists of data and its descriptive metadata.
abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  /// An object consists of data and its descriptive metadata.
  factory S3Object({
    List<_i2.ChecksumAlgorithm>? checksumAlgorithm,
    String? eTag,
    String? key,
    DateTime? lastModified,
    _i3.Owner? owner,
    _i4.Int64? size,
    _i5.ObjectStorageClass? storageClass,
  }) {
    size ??= _i4.Int64.ZERO;
    return _$S3Object._(
      checksumAlgorithm:
          checksumAlgorithm == null ? null : _i6.BuiltList(checksumAlgorithm),
      eTag: eTag,
      key: key,
      lastModified: lastModified,
      owner: owner,
      size: size,
      storageClass: storageClass,
    );
  }

  /// An object consists of data and its descriptive metadata.
  factory S3Object.build([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i7.SmithySerializer> serializers = [
    ObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ObjectBuilder b) {
    b.size = _i4.Int64.ZERO;
  }

  /// The algorithm that was used to create a checksum of the object.
  _i6.BuiltList<_i2.ChecksumAlgorithm>? get checksumAlgorithm;

  /// The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object, not its metadata. The ETag may or may not be an MD5 digest of the object data. Whether or not it is depends on how the object was created and how it is encrypted as described below:
  ///
  /// *   Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services Management Console, and are encrypted by SSE-S3 or plaintext, have ETags that are an MD5 digest of their object data.
  ///
  /// *   Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services Management Console, and are encrypted by SSE-C or SSE-KMS, have ETags that are not an MD5 digest of their object data.
  ///
  /// *   If an object is created by either the Multipart Upload or Part Copy operation, the ETag is not an MD5 digest, regardless of the method of encryption. If an object is larger than 16 MB, the Amazon Web Services Management Console will upload or copy that object as a Multipart Upload, and therefore the ETag will not be an MD5 digest.
  String? get eTag;

  /// The name that you assign to an object. You use the object key to retrieve the object.
  String? get key;

  /// Creation date of the object.
  DateTime? get lastModified;

  /// The owner of the object
  _i3.Owner? get owner;

  /// Size in bytes of the object
  _i4.Int64 get size;

  /// The class of storage used to store the object.
  _i5.ObjectStorageClass? get storageClass;
  @override
  List<Object?> get props => [
        checksumAlgorithm,
        eTag,
        key,
        lastModified,
        owner,
        size,
        storageClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Object');
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'eTag',
      eTag,
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
    return helper.toString();
  }
}

class ObjectRestXmlSerializer extends _i7.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [
        S3Object,
        _$S3Object,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  S3Object deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ObjectBuilder();
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
          result.size = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ObjectStorageClass),
            ) as _i5.ObjectStorageClass);
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
    final payload = (object as S3Object);
    final result = <Object?>[
      const _i7.XmlElementName(
        'Object',
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
    result
      ..add(const _i7.XmlElementName('Size'))
      ..add(serializers.serialize(
        payload.size,
        specifiedType: const FullType(_i4.Int64),
      ));
    if (payload.storageClass != null) {
      result
        ..add(const _i7.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i5.ObjectStorageClass),
        ));
    }
    return result;
  }
}
