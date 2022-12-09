// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.object_part; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'object_part.g.dart';

/// A container for elements related to an individual part.
abstract class ObjectPart
    with _i1.AWSEquatable<ObjectPart>
    implements Built<ObjectPart, ObjectPartBuilder> {
  /// A container for elements related to an individual part.
  factory ObjectPart({
    String? checksumCrc32,
    String? checksumCrc32C,
    String? checksumSha1,
    String? checksumSha256,
    int? partNumber,
    _i2.Int64? size,
  }) {
    return _$ObjectPart._(
      checksumCrc32: checksumCrc32,
      checksumCrc32C: checksumCrc32C,
      checksumSha1: checksumSha1,
      checksumSha256: checksumSha256,
      partNumber: partNumber,
      size: size,
    );
  }

  /// A container for elements related to an individual part.
  factory ObjectPart.build([void Function(ObjectPartBuilder) updates]) =
      _$ObjectPart;

  const ObjectPart._();

  static const List<_i3.SmithySerializer> serializers = [
    ObjectPartRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectPartBuilder b) {}

  /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  String? get checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumCrc32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the _Amazon S3 User Guide_.
  String? get checksumSha256;

  /// The part number identifying the part. This value is a positive integer between 1 and 10,000.
  int? get partNumber;

  /// The size of the uploaded part in bytes.
  _i2.Int64? get size;
  @override
  List<Object?> get props => [
        checksumCrc32,
        checksumCrc32C,
        checksumSha1,
        checksumSha256,
        partNumber,
        size,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectPart');
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

class ObjectPartRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ObjectPart> {
  const ObjectPartRestXmlSerializer() : super('ObjectPart');

  @override
  Iterable<Type> get types => const [
        ObjectPart,
        _$ObjectPart,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectPart deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectPartBuilder();
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
    final payload = (object as ObjectPart);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ObjectPart',
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
