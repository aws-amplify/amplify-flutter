// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.part; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'part.g.dart';

/// Container for elements related to a part.
abstract class Part
    with _i1.AWSEquatable<Part>
    implements Built<Part, PartBuilder> {
  /// Container for elements related to a part.
  factory Part({
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    String? eTag,
    DateTime? lastModified,
    int? partNumber,
    _i2.Int64? size,
  }) {
    return _$Part._(
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      eTag: eTag,
      lastModified: lastModified,
      partNumber: partNumber,
      size: size,
    );
  }

  /// Container for elements related to a part.
  factory Part.build([void Function(PartBuilder) updates]) = _$Part;

  const Part._();

  static const List<_i3.SmithySerializer> serializers = [
    PartRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PartBuilder b) {}

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// Entity tag returned when the part was uploaded.
  String? get eTag;

  /// Date and time at which the part was uploaded.
  DateTime? get lastModified;

  /// Part number identifying the part. This is a positive integer between 1 and 10,000.
  int? get partNumber;

  /// Size in bytes of the uploaded part data.
  _i2.Int64? get size;
  @override
  List<Object?> get props => [
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        eTag,
        lastModified,
        partNumber,
        size,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Part');
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
      'lastModified',
      lastModified,
    );
    helper.add(
      'partNumber',
      partNumber,
    );
    helper.add(
      'size',
      size,
    );
    return helper.toString();
  }
}

class PartRestXmlSerializer extends _i3.StructuredSmithySerializer<Part> {
  const PartRestXmlSerializer() : super('Part');

  @override
  Iterable<Type> get types => const [
        Part,
        _$Part,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Part deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PartBuilder();
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
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
        case 'Size':
          if (value != null) {
            result.size = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
    final payload = (object as Part);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Part',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.checksumCrc32 != null) {
      result
        ..add(const _i3.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(
          payload.checksumCrc32!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumCrc32C != null) {
      result
        ..add(const _i3.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(
          payload.checksumCrc32C!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha1 != null) {
      result
        ..add(const _i3.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(
          payload.checksumSha1!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.checksumSha256 != null) {
      result
        ..add(const _i3.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(
          payload.checksumSha256!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i3.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i3.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          payload.lastModified!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.partNumber != null) {
      result
        ..add(const _i3.XmlElementName('PartNumber'))
        ..add(serializers.serialize(
          payload.partNumber!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.size != null) {
      result
        ..add(const _i3.XmlElementName('Size'))
        ..add(serializers.serialize(
          payload.size!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    return result;
  }
}
