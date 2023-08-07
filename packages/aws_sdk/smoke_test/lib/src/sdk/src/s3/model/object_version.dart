// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_version_storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_status.dart';

part 'object_version.g.dart';

/// The version of an object.
abstract class ObjectVersion
    with _i1.AWSEquatable<ObjectVersion>
    implements Built<ObjectVersion, ObjectVersionBuilder> {
  /// The version of an object.
  factory ObjectVersion({
    String? eTag,
    List<ChecksumAlgorithm>? checksumAlgorithm,
    _i2.Int64? size,
    ObjectVersionStorageClass? storageClass,
    String? key,
    String? versionId,
    bool? isLatest,
    DateTime? lastModified,
    Owner? owner,
    RestoreStatus? restoreStatus,
  }) {
    return _$ObjectVersion._(
      eTag: eTag,
      checksumAlgorithm:
          checksumAlgorithm == null ? null : _i3.BuiltList(checksumAlgorithm),
      size: size,
      storageClass: storageClass,
      key: key,
      versionId: versionId,
      isLatest: isLatest,
      lastModified: lastModified,
      owner: owner,
      restoreStatus: restoreStatus,
    );
  }

  /// The version of an object.
  factory ObjectVersion.build([void Function(ObjectVersionBuilder) updates]) =
      _$ObjectVersion;

  const ObjectVersion._();

  static const List<_i4.SmithySerializer<ObjectVersion>> serializers = [
    ObjectVersionRestXmlSerializer()
  ];

  /// The entity tag is an MD5 hash of that version of the object.
  String? get eTag;

  /// The algorithm that was used to create a checksum of the object.
  _i3.BuiltList<ChecksumAlgorithm>? get checksumAlgorithm;

  /// Size in bytes of the object.
  _i2.Int64? get size;

  /// The class of storage used to store the object.
  ObjectVersionStorageClass? get storageClass;

  /// The object key.
  String? get key;

  /// Version ID of an object.
  String? get versionId;

  /// Specifies whether the object is (true) or is not (false) the latest version of an object.
  bool? get isLatest;

  /// Date and time the object was last modified.
  DateTime? get lastModified;

  /// Specifies the owner of the object.
  Owner? get owner;

  /// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see [Working with archived objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html) in the _Amazon S3 User Guide_.
  RestoreStatus? get restoreStatus;
  @override
  List<Object?> get props => [
        eTag,
        checksumAlgorithm,
        size,
        storageClass,
        key,
        versionId,
        isLatest,
        lastModified,
        owner,
        restoreStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectVersion')
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
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'isLatest',
        isLatest,
      )
      ..add(
        'lastModified',
        lastModified,
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

class ObjectVersionRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ObjectVersion> {
  const ObjectVersionRestXmlSerializer() : super('ObjectVersion');

  @override
  Iterable<Type> get types => const [
        ObjectVersion,
        _$ObjectVersion,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
        case 'IsLatest':
          result.isLatest = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
            specifiedType: const FullType(ObjectVersionStorageClass),
          ) as ObjectVersionStorageClass);
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
    ObjectVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ObjectVersion',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectVersion(
      :checksumAlgorithm,
      :eTag,
      :isLatest,
      :key,
      :lastModified,
      :owner,
      :restoreStatus,
      :size,
      :storageClass,
      :versionId
    ) = object;
    if (checksumAlgorithm != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'ChecksumAlgorithm')
              .serialize(
        serializers,
        checksumAlgorithm,
        specifiedType: const FullType.nullable(
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
    if (isLatest != null) {
      result$
        ..add(const _i4.XmlElementName('IsLatest'))
        ..add(serializers.serialize(
          isLatest,
          specifiedType: const FullType.nullable(bool),
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
          specifiedType: const FullType.nullable(DateTime),
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
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i4.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(ObjectVersionStorageClass),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i4.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
