// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_request_payment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/payer.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_payment_configuration.dart';

part 'put_bucket_request_payment_request.g.dart';

abstract class PutBucketRequestPaymentRequest
    with
        _i1.HttpInput<RequestPaymentConfiguration>,
        _i2.AWSEquatable<PutBucketRequestPaymentRequest>
    implements
        Built<PutBucketRequestPaymentRequest,
            PutBucketRequestPaymentRequestBuilder>,
        _i1.HasPayload<RequestPaymentConfiguration> {
  factory PutBucketRequestPaymentRequest({
    required String bucket,
    String? contentMd5,
    ChecksumAlgorithm? checksumAlgorithm,
    required RequestPaymentConfiguration requestPaymentConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketRequestPaymentRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      requestPaymentConfiguration: requestPaymentConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketRequestPaymentRequest.build(
          [void Function(PutBucketRequestPaymentRequestBuilder) updates]) =
      _$PutBucketRequestPaymentRequest;

  const PutBucketRequestPaymentRequest._();

  factory PutBucketRequestPaymentRequest.fromRequest(
    RequestPaymentConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketRequestPaymentRequest.build((b) {
        b.requestPaymentConfiguration.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<RequestPaymentConfiguration>>
      serializers = [PutBucketRequestPaymentRequestRestXmlSerializer()];

  /// The bucket name.
  String get bucket;

  /// The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see [RFC 1864](http://www.ietf.org/rfc/rfc1864.txt).
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ChecksumAlgorithm? get checksumAlgorithm;

  /// Container for Payer.
  RequestPaymentConfiguration get requestPaymentConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  RequestPaymentConfiguration getPayload() => requestPaymentConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        checksumAlgorithm,
        requestPaymentConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketRequestPaymentRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'contentMd5',
        contentMd5,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      )
      ..add(
        'requestPaymentConfiguration',
        requestPaymentConfiguration,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketRequestPaymentRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<RequestPaymentConfiguration> {
  const PutBucketRequestPaymentRequestRestXmlSerializer()
      : super('PutBucketRequestPaymentRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketRequestPaymentRequest,
        _$PutBucketRequestPaymentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RequestPaymentConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestPaymentConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Payer':
          result.payer = (serializers.deserialize(
            value,
            specifiedType: const FullType(Payer),
          ) as Payer);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestPaymentConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RequestPaymentConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final RequestPaymentConfiguration(:payer) = object;
    result$
      ..add(const _i1.XmlElementName('Payer'))
      ..add(serializers.serialize(
        payer,
        specifiedType: const FullType.nullable(Payer),
      ));
    return result$;
  }
}
