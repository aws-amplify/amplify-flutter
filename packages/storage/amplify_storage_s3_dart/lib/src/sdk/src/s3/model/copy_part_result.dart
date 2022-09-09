// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.copy_part_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_part_result.g.dart';

/// Container for all response elements.
abstract class CopyPartResult
    with _i1.AWSEquatable<CopyPartResult>
    implements Built<CopyPartResult, CopyPartResultBuilder> {
  /// Container for all response elements.
  factory CopyPartResult(
      {String? checksumCrc32,
      String? checksumCrc32C,
      String? checksumSha1,
      String? checksumSha256,
      String? eTag,
      DateTime? lastModified}) {
    return _$CopyPartResult._(
        checksumCrc32: checksumCrc32,
        checksumCrc32C: checksumCrc32C,
        checksumSha1: checksumSha1,
        checksumSha256: checksumSha256,
        eTag: eTag,
        lastModified: lastModified);
  }

  /// Container for all response elements.
  factory CopyPartResult.build([void Function(CopyPartResultBuilder) updates]) =
      _$CopyPartResult;

  const CopyPartResult._();

  static const List<_i2.SmithySerializer> serializers = [
    CopyPartResultRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyPartResultBuilder b) {}

  /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Entity tag of the object.
  String? get eTag;

  /// Date and time at which the object was uploaded.
  DateTime? get lastModified;
  @override
  List<Object?> get props => [
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        lastModified
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyPartResult');
    helper.add('checksumCrc32', checksumCrc32);
    helper.add('checksumCrc32C', checksumCrc32C);
    helper.add('checksumSha1', checksumSha1);
    helper.add('checksumSha256', checksumSha256);
    helper.add('eTag', eTag);
    helper.add('lastModified', lastModified);
    return helper.toString();
  }
}

class CopyPartResultRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CopyPartResult> {
  const CopyPartResultRestXmlSerializer() : super('CopyPartResult');

  @override
  Iterable<Type> get types => const [CopyPartResult, _$CopyPartResult];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  CopyPartResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = CopyPartResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChecksumCRC32':
          if (value != null) {
            result.checksumCrc32 = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ChecksumCRC32C':
          if (value != null) {
            result.checksumCrc32C = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ChecksumSHA1':
          if (value != null) {
            result.checksumSha1 = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ChecksumSHA256':
          if (value != null) {
            result.checksumSha256 = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as CopyPartResult);
    final result = <Object?>[
      const _i2.XmlElementName('CopyPartResult',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.checksumCrc32 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(payload.checksumCrc32!,
            specifiedType: const FullType(String)));
    }
    if (payload.checksumCrc32C != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(payload.checksumCrc32C!,
            specifiedType: const FullType(String)));
    }
    if (payload.checksumSha1 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(payload.checksumSha1!,
            specifiedType: const FullType(String)));
    }
    if (payload.checksumSha256 != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(payload.checksumSha256!,
            specifiedType: const FullType(String)));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(payload.eTag!,
            specifiedType: const FullType(String)));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(payload.lastModified!,
            specifiedType: const FullType.nullable(DateTime)));
    }
    return result;
  }
}
