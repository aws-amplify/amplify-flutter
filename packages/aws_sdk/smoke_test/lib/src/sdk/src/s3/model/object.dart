// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_storage_class.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i5;

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
    List<_i2.ChecksumAlgorithm>? checksumAlgorithm,
    _i3.Int64? size,
    _i4.ObjectStorageClass? storageClass,
    _i5.Owner? owner,
  }) {
    return _$S3Object._(
      key: key,
      lastModified: lastModified,
      eTag: eTag,
      checksumAlgorithm:
          checksumAlgorithm == null ? null : _i6.BuiltList(checksumAlgorithm),
      size: size,
      storageClass: storageClass,
      owner: owner,
    );
  }

  /// An object consists of data and its descriptive metadata.
  factory S3Object.build([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i7.SmithySerializer<S3Object>> serializers = [
    ObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ObjectBuilder b) {}

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
  String? get eTag;

  /// The algorithm that was used to create a checksum of the object.
  _i6.BuiltList<_i2.ChecksumAlgorithm>? get checksumAlgorithm;

  /// Size in bytes of the object
  _i3.Int64? get size;

  /// The class of storage used to store the object.
  _i4.ObjectStorageClass? get storageClass;

  /// The owner of the object
  _i5.Owner? get owner;
  @override
  List<Object?> get props => [
        key,
        lastModified,
        eTag,
        checksumAlgorithm,
        size,
        storageClass,
        owner,
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
            specifiedType: const FullType(_i2.ChecksumAlgorithm),
          ) as _i2.ChecksumAlgorithm));
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
            specifiedType: const FullType(_i5.Owner),
          ) as _i5.Owner));
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ObjectStorageClass),
          ) as _i4.ObjectStorageClass);
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
      const _i7.XmlElementName(
        'Object',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3Object(
      :checksumAlgorithm,
      :eTag,
      :key,
      :lastModified,
      :owner,
      :size,
      :storageClass
    ) = object;
    if (checksumAlgorithm != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'ChecksumAlgorithm')
              .serialize(
        serializers,
        checksumAlgorithm,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i2.ChecksumAlgorithm)],
        ),
      ));
    }
    if (eTag != null) {
      result$
        ..add(const _i7.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i7.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i7.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i7.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i5.Owner),
        ));
    }
    if (size != null) {
      result$
        ..add(const _i7.XmlElementName('Size'))
        ..add(serializers.serialize(
          size,
          specifiedType: const FullType.nullable(_i3.Int64),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i7.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i4.ObjectStorageClass),
        ));
    }
    return result$;
  }
}
