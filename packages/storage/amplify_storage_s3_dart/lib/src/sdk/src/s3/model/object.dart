// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_storage_class.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/restore_status.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'object.g.dart';

/// An object consists of data and its descriptive metadata.
abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  /// An object consists of data and its descriptive metadata.
  factory S3Object({
    String? key,
    DateTime? lastModified,
    String? eTag,
    List<ChecksumAlgorithm>? checksumAlgorithm,
    _i2.Int64? size,
    ObjectStorageClass? storageClass,
    Owner? owner,
    RestoreStatus? restoreStatus,
  }) {
    return _$S3Object._(
      key: key,
      lastModified: lastModified,
      eTag: eTag,
      checksumAlgorithm:
          checksumAlgorithm == null ? null : _i3.BuiltList(checksumAlgorithm),
      size: size,
      storageClass: storageClass,
      owner: owner,
      restoreStatus: restoreStatus,
    );
  }

  /// An object consists of data and its descriptive metadata.
  factory S3Object.build([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i4.SmithySerializer<S3Object>> serializers = [
    ObjectRestXmlSerializer()
  ];

  /// The name that you assign to an object. You use the object key to retrieve the object.
  String? get key;

  /// Creation date of the object.
  DateTime? get lastModified;

  /// The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object, not its metadata. The ETag may or may not be an MD5 digest of the object data. Whether or not it is depends on how the object was created and how it is encrypted as described below:
  ///
  /// *   Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services Management Console, and are encrypted by SSE-S3 or plaintext, have ETags that are an MD5 digest of their object data.
  ///
  /// *   Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services Management Console, and are encrypted by SSE-C or SSE-KMS, have ETags that are not an MD5 digest of their object data.
  ///
  /// *   If an object is created by either the Multipart Upload or Part Copy operation, the ETag is not an MD5 digest, regardless of the method of encryption. If an object is larger than 16 MB, the Amazon Web Services Management Console will upload or copy that object as a Multipart Upload, and therefore the ETag will not be an MD5 digest.
  ///
  ///
  /// **Directory buckets** \- MD5 is not supported by directory buckets.
  String? get eTag;

  /// The algorithm that was used to create a checksum of the object.
  _i3.BuiltList<ChecksumAlgorithm>? get checksumAlgorithm;

  /// Size in bytes of the object
  _i2.Int64? get size;

  /// The class of storage used to store the object.
  ///
  /// **Directory buckets** \- Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  ObjectStorageClass? get storageClass;

  /// The owner of the object
  ///
  /// **Directory buckets** \- The bucket owner is returned as the object owner.
  Owner? get owner;

  /// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see [Working with archived objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  RestoreStatus? get restoreStatus;
  @override
  List<Object?> get props => [
        key,
        lastModified,
        eTag,
        checksumAlgorithm,
        size,
        storageClass,
        owner,
        restoreStatus,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Object')
      ..add(
        'key',
        key,
      )
      ..add(
        'lastModified',
        lastModified,
      )
      ..add(
        'eTag',
        eTag,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      )
      ..add(
        'size',
        size,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'owner',
        owner,
      )
      ..add(
        'restoreStatus',
        restoreStatus,
      );
    return helper.toString();
  }
}

class ObjectRestXmlSerializer extends _i4.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [
        S3Object,
        _$S3Object,
      ];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChecksumAlgorithm':
          result.checksumAlgorithm.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ChecksumAlgorithm),
          ) as ChecksumAlgorithm));
        case 'ETag':
          result.eTag = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastModified':
          result.lastModified = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Owner),
          ) as Owner));
        case 'RestoreStatus':
          result.restoreStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RestoreStatus),
          ) as RestoreStatus));
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectStorageClass),
          ) as ObjectStorageClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    S3Object object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'Object',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3Object(
      :checksumAlgorithm,
      :eTag,
      :key,
      :lastModified,
      :owner,
      :restoreStatus,
      :size,
      :storageClass
    ) = object;
    if (checksumAlgorithm != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'ChecksumAlgorithm')
              .serialize(
        serializers,
        checksumAlgorithm,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(ChecksumAlgorithm)],
        ),
      ));
    }
    if (eTag != null) {
      result$
        ..add(const _i4.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i4.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i4.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i4.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(Owner),
        ));
    }
    if (restoreStatus != null) {
      result$
        ..add(const _i4.XmlElementName('RestoreStatus'))
        ..add(serializers.serialize(
          restoreStatus,
          specifiedType: const FullType(RestoreStatus),
        ));
    }
    if (size != null) {
      result$
        ..add(const _i4.XmlElementName('Size'))
        ..add(serializers.serialize(
          size,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i4.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType(ObjectStorageClass),
        ));
    }
    return result$;
  }
}
