// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.copy_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/copy_object_result.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i5;

part 'copy_object_output.g.dart';

abstract class CopyObjectOutput
    with _i1.AWSEquatable<CopyObjectOutput>
    implements
        Built<CopyObjectOutput, CopyObjectOutputBuilder>,
        _i2.HasPayload<_i3.CopyObjectResult> {
  factory CopyObjectOutput({
    bool? bucketKeyEnabled,
    _i3.CopyObjectResult? copyObjectResult,
    String? copySourceVersionId,
    String? expiration,
    _i4.RequestCharged? requestCharged,
    _i5.ServerSideEncryption? serverSideEncryption,
    String? sseCustomerAlgorithm,
    String? sseCustomerKeyMd5,
    String? ssekmsEncryptionContext,
    String? ssekmsKeyId,
    String? versionId,
  }) {
    return _$CopyObjectOutput._(
      bucketKeyEnabled: bucketKeyEnabled,
      copyObjectResult: copyObjectResult,
      copySourceVersionId: copySourceVersionId,
      expiration: expiration,
      requestCharged: requestCharged,
      serverSideEncryption: serverSideEncryption,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
      ssekmsEncryptionContext: ssekmsEncryptionContext,
      ssekmsKeyId: ssekmsKeyId,
      versionId: versionId,
    );
  }

  factory CopyObjectOutput.build(
      [void Function(CopyObjectOutputBuilder) updates]) = _$CopyObjectOutput;

  const CopyObjectOutput._();

  /// Constructs a [CopyObjectOutput] from a [payload] and [response].
  factory CopyObjectOutput.fromResponse(
    _i3.CopyObjectResult? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      CopyObjectOutput.build((b) {
        if (payload != null) {
          b.copyObjectResult.replace(payload);
        }
        if (response.headers['x-amz-expiration'] != null) {
          b.expiration = response.headers['x-amz-expiration']!;
        }
        if (response.headers['x-amz-copy-source-version-id'] != null) {
          b.copySourceVersionId =
              response.headers['x-amz-copy-source-version-id']!;
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response.headers['x-amz-server-side-encryption'] != null) {
          b.serverSideEncryption = _i5.ServerSideEncryption.values
              .byValue(response.headers['x-amz-server-side-encryption']!);
        }
        if (response
                .headers['x-amz-server-side-encryption-customer-algorithm'] !=
            null) {
          b.sseCustomerAlgorithm = response
              .headers['x-amz-server-side-encryption-customer-algorithm']!;
        }
        if (response.headers['x-amz-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.sseCustomerKeyMd5 = response
              .headers['x-amz-server-side-encryption-customer-key-MD5']!;
        }
        if (response.headers['x-amz-server-side-encryption-aws-kms-key-id'] !=
            null) {
          b.ssekmsKeyId =
              response.headers['x-amz-server-side-encryption-aws-kms-key-id']!;
        }
        if (response.headers['x-amz-server-side-encryption-context'] != null) {
          b.ssekmsEncryptionContext =
              response.headers['x-amz-server-side-encryption-context']!;
        }
        if (response
                .headers['x-amz-server-side-encryption-bucket-key-enabled'] !=
            null) {
          b.bucketKeyEnabled = response.headers[
                  'x-amz-server-side-encryption-bucket-key-enabled']! ==
              'true';
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    CopyObjectOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectOutputBuilder b) {}

  /// Indicates whether the copied object uses an S3 Bucket Key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
  bool? get bucketKeyEnabled;

  /// Container for all response elements.
  _i3.CopyObjectResult? get copyObjectResult;

  /// Version of the copied object in the destination bucket.
  String? get copySourceVersionId;

  /// If the object expiration is configured, the response includes this header.
  String? get expiration;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;

  /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
  _i5.ServerSideEncryption? get serverSideEncryption;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
  String? get sseCustomerAlgorithm;

  /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
  String? get sseCustomerKeyMd5;

  /// If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  String? get ssekmsEncryptionContext;

  /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for the object.
  String? get ssekmsKeyId;

  /// Version ID of the newly created copy.
  String? get versionId;
  @override
  _i3.CopyObjectResult? getPayload() =>
      copyObjectResult ?? _i3.CopyObjectResult();
  @override
  List<Object?> get props => [
        bucketKeyEnabled,
        copyObjectResult,
        copySourceVersionId,
        expiration,
        requestCharged,
        serverSideEncryption,
        sseCustomerAlgorithm,
        sseCustomerKeyMd5,
        ssekmsEncryptionContext,
        ssekmsKeyId,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectOutput');
    helper.add(
      'bucketKeyEnabled',
      bucketKeyEnabled,
    );
    helper.add(
      'copyObjectResult',
      copyObjectResult,
    );
    helper.add(
      'copySourceVersionId',
      copySourceVersionId,
    );
    helper.add(
      'expiration',
      expiration,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    helper.add(
      'serverSideEncryption',
      serverSideEncryption,
    );
    helper.add(
      'sseCustomerAlgorithm',
      sseCustomerAlgorithm,
    );
    helper.add(
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    helper.add(
      'ssekmsEncryptionContext',
      '***SENSITIVE***',
    );
    helper.add(
      'ssekmsKeyId',
      '***SENSITIVE***',
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class CopyObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.CopyObjectResult> {
  const CopyObjectOutputRestXmlSerializer() : super('CopyObjectOutput');

  @override
  Iterable<Type> get types => const [
        CopyObjectOutput,
        _$CopyObjectOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.CopyObjectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.CopyObjectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = object is CopyObjectOutput
        ? object.getPayload()
        : (object as _i3.CopyObjectResult?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CopyObjectResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          payload.lastModified!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
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
    return result;
  }
}
