// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.part; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    int? partNumber,
    DateTime? lastModified,
    String? eTag,
    _i2.Int64? size,
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
  }) {
    return _$Part._(
      partNumber: partNumber,
      lastModified: lastModified,
      eTag: eTag,
      size: size,
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
    );
  }

  /// Container for elements related to a part.
  factory Part.build([void Function(PartBuilder) updates]) = _$Part;

  const Part._();

  static const List<_i3.SmithySerializer<Part>> serializers = [
    PartRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PartBuilder b) {}

  /// Part number identifying the part. This is a positive integer between 1 and 10,000.
  int? get partNumber;

  /// Date and time at which the part was uploaded.
  DateTime? get lastModified;

  /// Entity tag returned when the part was uploaded.
  String? get eTag;

  /// Size in bytes of the uploaded part data.
  _i2.Int64? get size;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumSha256;
  @override
  List<Object?> get props => [
        partNumber,
        lastModified,
        eTag,
        size,
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Part')
      ..add(
        'partNumber',
        partNumber,
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
        'size',
        size,
      )
      ..add(
        'checksumCrc32',
        checksumCrc32,
      )
      ..add(
        'checksumCrc32C',
        checksumCrc32C,
      )
      ..add(
        'checksumSha1',
        checksumSha1,
      )
      ..add(
        'checksumSha256',
        checksumSha256,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChecksumCRC32':
          result.checksumCrc32 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumCRC32C':
          result.checksumCrc32C = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumSHA1':
          result.checksumSha1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChecksumSHA256':
          result.checksumSha256 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ETag':
          result.eTag = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastModified':
          result.lastModified = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'PartNumber':
          result.partNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Part object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'Part',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Part(
      :checksumCrc32,
      :checksumCrc32C,
      :checksumSha1,
      :checksumSha256,
      :eTag,
      :lastModified,
      :partNumber,
      :size
    ) = object;
    if (checksumCrc32 != null) {
      result$
        ..add(const _i3.XmlElementName('ChecksumCRC32'))
        ..add(serializers.serialize(
          checksumCrc32,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumCrc32C != null) {
      result$
        ..add(const _i3.XmlElementName('ChecksumCRC32C'))
        ..add(serializers.serialize(
          checksumCrc32C,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumSha1 != null) {
      result$
        ..add(const _i3.XmlElementName('ChecksumSHA1'))
        ..add(serializers.serialize(
          checksumSha1,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumSha256 != null) {
      result$
        ..add(const _i3.XmlElementName('ChecksumSHA256'))
        ..add(serializers.serialize(
          checksumSha256,
          specifiedType: const FullType(String),
        ));
    }
    if (eTag != null) {
      result$
        ..add(const _i3.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i3.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (partNumber != null) {
      result$
        ..add(const _i3.XmlElementName('PartNumber'))
        ..add(serializers.serialize(
          partNumber,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (size != null) {
      result$
        ..add(const _i3.XmlElementName('Size'))
        ..add(serializers.serialize(
          size,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    return result$;
  }
}
