// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.completed_part; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? eTag,
    int? partNumber,
  }) {
    return _$CompletedPart._(
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      eTag: eTag,
      partNumber: partNumber,
    );
  }

  /// Details of the parts that were uploaded.
  factory CompletedPart.build([void Function(CompletedPartBuilder) updates]) =
      _$CompletedPart;

  const CompletedPart._();

  static const List<_i2.SmithySerializer> serializers = [
    CompletedPartRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CompletedPartBuilder b) {}

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Entity tag returned when the part was uploaded.
  String? get eTag;

  /// Part number that identifies the part. This is a positive integer between 1 and 10,000.
  int? get partNumber;
  @override
  List<Object?> get props => [
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        partNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CompletedPart');
    helper.add(
      'checksumCrc32',
      checksumCrc32,
    );
    helper.add(
      'checksumCrc32C',
      checksumCrc32C,
    );
    helper.add(
      'checksumSha1',
      checksumSha1,
    );
    helper.add(
      'checksumSha256',
      checksumSha256,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'partNumber',
      partNumber,
    );
    return helper.toString();
  }
}

class CompletedPartRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CompletedPart> {
  const CompletedPartRestXmlSerializer() : super('CompletedPart');

  @override
  Iterable<Type> get types => const [
        CompletedPart,
        _$CompletedPart,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChecksumCRC32':
          if (value != null) {
            result.checksumCrc32 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumCRC32C':
          if (value != null) {
            result.checksumCrc32C = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumSHA1':
          if (value != null) {
            result.checksumSha1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChecksumSHA256':
          if (value != null) {
            result.checksumSha256 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'PartNumber':
          if (value != null) {
            result.partNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as CompletedPart);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CompletedPart',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.checksumCrc32 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(
          payload.checksumCrc32!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumCrc32C != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(
          payload.checksumCrc32C!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha1 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(
          payload.checksumSha1!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha256 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(
          payload.checksumSha256!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.partNumber != null) {
      result
        ..add(const _i2.XmlElementName('PartNumber'))
        ..add(serializers.serialize(
          payload.partNumber!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
