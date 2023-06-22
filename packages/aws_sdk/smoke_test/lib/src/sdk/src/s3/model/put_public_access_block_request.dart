// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_public_access_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/public_access_block_configuration.dart'
    as _i2;

part 'put_public_access_block_request.g.dart';

abstract class PutPublicAccessBlockRequest
    with
        _i1.HttpInput<_i2.PublicAccessBlockConfiguration>,
        _i3.AWSEquatable<PutPublicAccessBlockRequest>
    implements
        Built<PutPublicAccessBlockRequest, PutPublicAccessBlockRequestBuilder>,
        _i1.HasPayload<_i2.PublicAccessBlockConfiguration> {
  factory PutPublicAccessBlockRequest({
    required String bucket,
    String? contentMd5,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    required _i2.PublicAccessBlockConfiguration publicAccessBlockConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutPublicAccessBlockRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      publicAccessBlockConfiguration: publicAccessBlockConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutPublicAccessBlockRequest.build(
          [void Function(PutPublicAccessBlockRequestBuilder) updates]) =
      _$PutPublicAccessBlockRequest;

  const PutPublicAccessBlockRequest._();

  factory PutPublicAccessBlockRequest.fromRequest(
    _i2.PublicAccessBlockConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutPublicAccessBlockRequest.build((b) {
        b.publicAccessBlockConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer<_i2.PublicAccessBlockConfiguration>>
      serializers = [PutPublicAccessBlockRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutPublicAccessBlockRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose `PublicAccessBlock` configuration you want to set.
  String get bucket;

  /// The MD5 hash of the `PutPublicAccessBlock` request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// The `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the _Amazon S3 User Guide_.
  _i2.PublicAccessBlockConfiguration get publicAccessBlockConfiguration;

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
  _i2.PublicAccessBlockConfiguration getPayload() =>
      publicAccessBlockConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        checksumAlgorithm,
        publicAccessBlockConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutPublicAccessBlockRequest')
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
        'publicAccessBlockConfiguration',
        publicAccessBlockConfiguration,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutPublicAccessBlockRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.PublicAccessBlockConfiguration> {
  const PutPublicAccessBlockRequestRestXmlSerializer()
      : super('PutPublicAccessBlockRequest');

  @override
  Iterable<Type> get types => const [
        PutPublicAccessBlockRequest,
        _$PutPublicAccessBlockRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.PublicAccessBlockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.PublicAccessBlockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BlockPublicAcls':
          result.blockPublicAcls = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IgnorePublicAcls':
          result.ignorePublicAcls = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'BlockPublicPolicy':
          result.blockPublicPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RestrictPublicBuckets':
          result.restrictPublicBuckets = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.PublicAccessBlockConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PublicAccessBlockConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.PublicAccessBlockConfiguration(
      :blockPublicAcls,
      :ignorePublicAcls,
      :blockPublicPolicy,
      :restrictPublicBuckets
    ) = object;
    if (blockPublicAcls != null) {
      result$
        ..add(const _i1.XmlElementName('BlockPublicAcls'))
        ..add(serializers.serialize(
          blockPublicAcls,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (ignorePublicAcls != null) {
      result$
        ..add(const _i1.XmlElementName('IgnorePublicAcls'))
        ..add(serializers.serialize(
          ignorePublicAcls,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (blockPublicPolicy != null) {
      result$
        ..add(const _i1.XmlElementName('BlockPublicPolicy'))
        ..add(serializers.serialize(
          blockPublicPolicy,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (restrictPublicBuckets != null) {
      result$
        ..add(const _i1.XmlElementName('RestrictPublicBuckets'))
        ..add(serializers.serialize(
          restrictPublicBuckets,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
