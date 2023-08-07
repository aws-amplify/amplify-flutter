// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_cors_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/cors_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart';

part 'put_bucket_cors_request.g.dart';

abstract class PutBucketCorsRequest
    with
        _i1.HttpInput<CorsConfiguration>,
        _i2.AWSEquatable<PutBucketCorsRequest>
    implements
        Built<PutBucketCorsRequest, PutBucketCorsRequestBuilder>,
        _i1.HasPayload<CorsConfiguration> {
  factory PutBucketCorsRequest({
    required String bucket,
    required CorsConfiguration corsConfiguration,
    String? contentMd5,
    ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketCorsRequest._(
      bucket: bucket,
      corsConfiguration: corsConfiguration,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketCorsRequest.build(
          [void Function(PutBucketCorsRequestBuilder) updates]) =
      _$PutBucketCorsRequest;

  const PutBucketCorsRequest._();

  factory PutBucketCorsRequest.fromRequest(
    CorsConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketCorsRequest.build((b) {
        b.corsConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer<CorsConfiguration>> serializers = [
    PutBucketCorsRequestRestXmlSerializer()
  ];

  /// Specifies the bucket impacted by the `cors`configuration.
  String get bucket;

  /// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
  CorsConfiguration get corsConfiguration;

  /// The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to [RFC 1864.](http://www.ietf.org/rfc/rfc1864.txt)
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ChecksumAlgorithm? get checksumAlgorithm;

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
  CorsConfiguration getPayload() => corsConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        corsConfiguration,
        contentMd5,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketCorsRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'corsConfiguration',
        corsConfiguration,
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

class PutBucketCorsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<CorsConfiguration> {
  const PutBucketCorsRequestRestXmlSerializer() : super('PutBucketCorsRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketCorsRequest,
        _$PutBucketCorsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CorsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CORSRule':
          result.corsRules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(CorsRule),
          ) as CorsRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CorsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CORSConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CorsConfiguration(:corsRules) = object;
    result$.addAll(
        const _i1.XmlBuiltListSerializer(memberName: 'CORSRule').serialize(
      serializers,
      corsRules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(CorsRule)],
      ),
    ));
    return result$;
  }
}
