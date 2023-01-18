// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.multipart_upload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/initiator.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart' as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;

part 'multipart_upload.g.dart';

/// Container for the `MultipartUpload` for the Amazon S3 object.
abstract class MultipartUpload
    with _i1.AWSEquatable<MultipartUpload>
    implements Built<MultipartUpload, MultipartUploadBuilder> {
  /// Container for the `MultipartUpload` for the Amazon S3 object.
  factory MultipartUpload({
    _i2.ChecksumAlgorithm? checksumAlgorithm,
    DateTime? initiated,
    _i3.Initiator? initiator,
    String? key,
    _i4.Owner? owner,
    _i5.StorageClass? storageClass,
    String? uploadId,
  }) {
    return _$MultipartUpload._(
      checksumAlgorithm: checksumAlgorithm,
      initiated: initiated,
      initiator: initiator,
      key: key,
      owner: owner,
      storageClass: storageClass,
      uploadId: uploadId,
    );
  }

  /// Container for the `MultipartUpload` for the Amazon S3 object.
  factory MultipartUpload.build(
      [void Function(MultipartUploadBuilder) updates]) = _$MultipartUpload;

  const MultipartUpload._();

  static const List<_i6.SmithySerializer> serializers = [
    MultipartUploadRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MultipartUploadBuilder b) {}

  /// The algorithm that was used to create a checksum of the object.
  _i2.ChecksumAlgorithm? get checksumAlgorithm;

  /// Date and time at which the multipart upload was initiated.
  DateTime? get initiated;

  /// Identifies who initiated the multipart upload.
  _i3.Initiator? get initiator;

  /// Key of the object for which the multipart upload was initiated.
  String? get key;

  /// Specifies the owner of the object that is part of the multipart upload.
  _i4.Owner? get owner;

  /// The class of storage used to store the object.
  _i5.StorageClass? get storageClass;

  /// Upload ID that identifies the multipart upload.
  String? get uploadId;
  @override
  List<Object?> get props => [
        checksumAlgorithm,
        initiated,
        initiator,
        key,
        owner,
        storageClass,
        uploadId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MultipartUpload');
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'initiated',
      initiated,
    );
    helper.add(
      'initiator',
      initiator,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'owner',
      owner,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'uploadId',
      uploadId,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChecksumAlgorithm':
          if (value != null) {
            result.checksumAlgorithm = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ChecksumAlgorithm),
            ) as _i2.ChecksumAlgorithm);
          }
          break;
        case 'Initiated':
          if (value != null) {
            result.initiated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Initiator':
          if (value != null) {
            result.initiator.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Initiator),
            ) as _i3.Initiator));
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
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Owner),
            ) as _i4.Owner));
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.StorageClass),
            ) as _i5.StorageClass);
          }
          break;
        case 'UploadId':
          if (value != null) {
            result.uploadId = (serializers.deserialize(
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
    final payload = (object as MultipartUpload);
    final result = <Object?>[
      const _i6.XmlElementName(
        'MultipartUpload',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.checksumAlgorithm != null) {
      result
        ..add(const _i6.XmlElementName('ChecksumAlgorithm'))
        ..add(serializers.serialize(
          payload.checksumAlgorithm!,
          specifiedType: const FullType.nullable(_i2.ChecksumAlgorithm),
        ));
    }
    if (payload.initiated != null) {
      result
        ..add(const _i6.XmlElementName('Initiated'))
        ..add(serializers.serialize(
          payload.initiated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.initiator != null) {
      result
        ..add(const _i6.XmlElementName('Initiator'))
        ..add(serializers.serialize(
          payload.initiator!,
          specifiedType: const FullType(_i3.Initiator),
        ));
    }
    if (payload.key != null) {
      result
        ..add(const _i6.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i6.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i4.Owner),
        ));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i6.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i5.StorageClass),
        ));
    }
    if (payload.uploadId != null) {
      result
        ..add(const _i6.XmlElementName('UploadId'))
        ..add(serializers.serialize(
          payload.uploadId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
