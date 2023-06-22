// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_bucket_logging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logging_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart' as _i5;

part 'put_bucket_logging_request.g.dart';

abstract class PutBucketLoggingRequest
    with
        _i1.HttpInput<_i2.BucketLoggingStatus>,
        _i3.AWSEquatable<PutBucketLoggingRequest>
    implements
        Built<PutBucketLoggingRequest, PutBucketLoggingRequestBuilder>,
        _i1.HasPayload<_i2.BucketLoggingStatus> {
  factory PutBucketLoggingRequest({
    required String bucket,
    required _i2.BucketLoggingStatus bucketLoggingStatus,
    String? contentMd5,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketLoggingRequest._(
      bucket: bucket,
      bucketLoggingStatus: bucketLoggingStatus,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketLoggingRequest.build(
          [void Function(PutBucketLoggingRequestBuilder) updates]) =
      _$PutBucketLoggingRequest;

  const PutBucketLoggingRequest._();

  factory PutBucketLoggingRequest.fromRequest(
    _i2.BucketLoggingStatus payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketLoggingRequest.build((b) {
        b.bucketLoggingStatus.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
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

  static const List<_i1.SmithySerializer<_i2.BucketLoggingStatus>> serializers =
      [PutBucketLoggingRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketLoggingRequestBuilder b) {}

  /// The name of the bucket for which to set the logging parameters.
  String get bucket;

  /// Container for logging status information.
  _i2.BucketLoggingStatus get bucketLoggingStatus;

  /// The MD5 hash of the `PutBucketLogging` request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

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
  _i2.BucketLoggingStatus getPayload() => bucketLoggingStatus;
  @override
  List<Object?> get props => [
        bucket,
        bucketLoggingStatus,
        contentMd5,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketLoggingRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'bucketLoggingStatus',
        bucketLoggingStatus,
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
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketLoggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.BucketLoggingStatus> {
  const PutBucketLoggingRequestRestXmlSerializer()
      : super('PutBucketLoggingRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketLoggingRequest,
        _$PutBucketLoggingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.BucketLoggingStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.BucketLoggingStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LoggingEnabled':
          result.loggingEnabled.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.LoggingEnabled),
          ) as _i5.LoggingEnabled));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.BucketLoggingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'BucketLoggingStatus',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.BucketLoggingStatus(:loggingEnabled) = object;
    if (loggingEnabled != null) {
      result$
        ..add(const _i1.XmlElementName('LoggingEnabled'))
        ..add(serializers.serialize(
          loggingEnabled,
          specifiedType: const FullType(_i5.LoggingEnabled),
        ));
    }
    return result$;
  }
}
