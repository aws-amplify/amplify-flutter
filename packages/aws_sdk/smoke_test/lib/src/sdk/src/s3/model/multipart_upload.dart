// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.multipart_upload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/initiator.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i2;

part 'multipart_upload.g.dart';

/// Container for the `MultipartUpload` for the Amazon S3 object.
abstract class MultipartUpload
    with _i1.AWSEquatable<MultipartUpload>
    implements Built<MultipartUpload, MultipartUploadBuilder> {
  /// Container for the `MultipartUpload` for the Amazon S3 object.
  factory MultipartUpload({
    String? uploadId,
    String? key,
    DateTime? initiated,
    _i2.StorageClass? storageClass,
    _i3.Owner? owner,
    _i4.Initiator? initiator,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$MultipartUpload._(
      uploadId: uploadId,
      key: key,
      initiated: initiated,
      storageClass: storageClass,
      owner: owner,
      initiator: initiator,
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  /// Container for the `MultipartUpload` for the Amazon S3 object.
  factory MultipartUpload.build(
      [void Function(MultipartUploadBuilder) updates]) = _$MultipartUpload;

  const MultipartUpload._();

  static const List<_i6.SmithySerializer<MultipartUpload>> serializers = [
    MultipartUploadRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MultipartUploadBuilder b) {}

  /// Upload ID that identifies the multipart upload.
  String? get uploadId;

  /// Key of the object for which the multipart upload was initiated.
  String? get key;

  /// Date and time at which the multipart upload was initiated.
  DateTime? get initiated;

  /// The class of storage used to store the object.
  _i2.StorageClass? get storageClass;

  /// Specifies the owner of the object that is part of the multipart upload.
  _i3.Owner? get owner;

  /// Identifies who initiated the multipart upload.
  _i4.Initiator? get initiator;

  /// The algorithm that was used to create a checksum of the object.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;
  @override
  List<Object?> get props => [
        uploadId,
        key,
        initiated,
        storageClass,
        owner,
        initiator,
        checksumAlgorithm,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MultipartUpload')
      ..add(
        'uploadId',
        uploadId,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'initiated',
        initiated,
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
        'initiator',
        initiator,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      );
    return helper.toString();
  }
}

class MultipartUploadRestXmlSerializer
    extends _i6.StructuredSmithySerializer<MultipartUpload> {
  const MultipartUploadRestXmlSerializer() : super('MultipartUpload');

  @override
  Iterable<Type> get types => const [
        MultipartUpload,
        _$MultipartUpload,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MultipartUpload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultipartUploadBuilder();
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
          result.checksumAlgorithm = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ChecksumAlgorithm),
          ) as _i5.ChecksumAlgorithm);
        case 'Initiated':
          result.initiated = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Initiator':
          result.initiator.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Initiator),
          ) as _i4.Initiator));
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Owner),
          ) as _i3.Owner));
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StorageClass),
          ) as _i2.StorageClass);
        case 'UploadId':
          result.uploadId = (serializers.deserialize(
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
    MultipartUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'MultipartUpload',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final MultipartUpload(
      :checksumAlgorithm,
      :initiated,
      :initiator,
      :key,
      :owner,
      :storageClass,
      :uploadId
    ) = object;
    if (checksumAlgorithm != null) {
      result$
        ..add(const _i6.XmlElementName('ChecksumAlgorithm'))
        ..add(serializers.serialize(
          checksumAlgorithm,
          specifiedType: const FullType.nullable(_i5.ChecksumAlgorithm),
        ));
    }
    if (initiated != null) {
      result$
        ..add(const _i6.XmlElementName('Initiated'))
        ..add(serializers.serialize(
          initiated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (initiator != null) {
      result$
        ..add(const _i6.XmlElementName('Initiator'))
        ..add(serializers.serialize(
          initiator,
          specifiedType: const FullType(_i4.Initiator),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i6.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i6.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i3.Owner),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i6.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i2.StorageClass),
        ));
    }
    if (uploadId != null) {
      result$
        ..add(const _i6.XmlElementName('UploadId'))
        ..add(serializers.serialize(
          uploadId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
