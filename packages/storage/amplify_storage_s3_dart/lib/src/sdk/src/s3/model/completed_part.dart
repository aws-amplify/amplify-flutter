// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.completed_part; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'completed_part.g.dart';

/// Details of the parts that were uploaded.
abstract class CompletedPart
    with _i1.AWSEquatable<CompletedPart>
    implements Built<CompletedPart, CompletedPartBuilder> {
  /// Details of the parts that were uploaded.
  factory CompletedPart({
    String? eTag,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    int? partNumber,
  }) {
    return _$CompletedPart._(
      eTag: eTag,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      partNumber: partNumber,
    );
  }

  /// Details of the parts that were uploaded.
  factory CompletedPart.build([void Function(CompletedPartBuilder) updates]) =
      _$CompletedPart;

  const CompletedPart._();

  static const List<_i2.SmithySerializer<CompletedPart>> serializers = [
    CompletedPartRestXmlSerializer(),
  ];

  /// Entity tag returned when the part was uploaded.
  String? get eTag;

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Part number that identifies the part. This is a positive integer between 1 and 10,000.
  ///
  /// *   **General purpose buckets** \- In `CompleteMultipartUpload`, when a additional checksum (including `x-amz-checksum-crc32`, `x-amz-checksum-crc32c`, `x-amz-checksum-sha1`, or `x-amz-checksum-sha256`) is applied to each part, the `PartNumber` must start at 1 and the part numbers must be consecutive. Otherwise, Amazon S3 generates an HTTP `400 Bad Request` status code and an `InvalidPartOrder` error code.
  ///
  /// *   **Directory buckets** \- In `CompleteMultipartUpload`, the `PartNumber` must start at 1 and the part numbers must be consecutive.
  int? get partNumber;
  @override
  List<Object?> get props => [
    eTag,
    checksumCrc32,
    checksumCrc32C,
    checksumSha1,
    checksumSha256,
    partNumber,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CompletedPart')
      ..add('eTag', eTag)
      ..add('checksumCrc32', checksumCrc32)
      ..add('checksumCrc32C', checksumCrc32C)
      ..add('checksumSha1', checksumSha1)
      ..add('checksumSha256', checksumSha256)
      ..add('partNumber', partNumber);
    return helper.toString();
  }
}

class CompletedPartRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CompletedPart> {
  const CompletedPartRestXmlSerializer() : super('CompletedPart');

  @override
  Iterable<Type> get types => const [CompletedPart, _$CompletedPart];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  CompletedPart deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompletedPartBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChecksumCRC32':
          result.checksumCrc32 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ChecksumCRC32C':
          result.checksumCrc32C =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ChecksumSHA1':
          result.checksumSha1 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ChecksumSHA256':
          result.checksumSha256 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ETag':
          result.eTag =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'PartNumber':
          result.partNumber =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CompletedPart object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CompletedPart',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];
    final CompletedPart(
      :checksumCrc32,
      :checksumCrc32C,
      :checksumSha1,
      :checksumSha256,
      :eTag,
      :partNumber,
    ) = object;
    if (checksumCrc32 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumCRC32'))
        ..add(
          serializers.serialize(
            checksumCrc32,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (checksumCrc32C != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumCRC32C'))
        ..add(
          serializers.serialize(
            checksumCrc32C,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (checksumSha1 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumSHA1'))
        ..add(
          serializers.serialize(
            checksumSha1,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (checksumSha256 != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumSHA256'))
        ..add(
          serializers.serialize(
            checksumSha256,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(
          serializers.serialize(eTag, specifiedType: const FullType(String)),
        );
    }
    if (partNumber != null) {
      result$
        ..add(const _i2.XmlElementName('PartNumber'))
        ..add(
          serializers.serialize(partNumber, specifiedType: const FullType(int)),
        );
    }
    return result$;
  }
}
