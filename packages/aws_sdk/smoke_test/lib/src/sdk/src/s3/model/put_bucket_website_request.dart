// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_website_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/website_configuration.dart'
    as _i2;

part 'put_bucket_website_request.g.dart';

abstract class PutBucketWebsiteRequest
    with
        _i1.HttpInput<_i2.WebsiteConfiguration>,
        _i3.AWSEquatable<PutBucketWebsiteRequest>
    implements
        Built<PutBucketWebsiteRequest, PutBucketWebsiteRequestBuilder>,
        _i1.HasPayload<_i2.WebsiteConfiguration> {
  factory PutBucketWebsiteRequest({
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentMd5,
    String? expectedBucketOwner,
    required _i2.WebsiteConfiguration websiteConfiguration,
  }) {
    return _$PutBucketWebsiteRequest._(
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      websiteConfiguration: websiteConfiguration,
    );
  }

  factory PutBucketWebsiteRequest.build(
          [void Function(PutBucketWebsiteRequestBuilder) updates]) =
      _$PutBucketWebsiteRequest;

  const PutBucketWebsiteRequest._();

  factory PutBucketWebsiteRequest.fromRequest(
    _i2.WebsiteConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketWebsiteRequest.build((b) {
        b.websiteConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketWebsiteRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketWebsiteRequestBuilder b) {}

  /// The bucket name.
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see [RFC 1864](http://www.ietf.org/rfc/rfc1864.txt).
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Container for the request.
  _i2.WebsiteConfiguration get websiteConfiguration;
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
  _i2.WebsiteConfiguration getPayload() => websiteConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        contentMd5,
        expectedBucketOwner,
        websiteConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketWebsiteRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'checksumAlgorithm',
      checksumAlgorithm,
    );
    helper.add(
      'contentMd5',
      contentMd5,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'websiteConfiguration',
      websiteConfiguration,
    );
    return helper.toString();
  }
}

class PutBucketWebsiteRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.WebsiteConfiguration> {
  const PutBucketWebsiteRequestRestXmlSerializer()
      : super('PutBucketWebsiteRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketWebsiteRequest,
        _$PutBucketWebsiteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.WebsiteConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.WebsiteConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ErrorDocument':
          if (value != null) {
            result.errorDocument.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ErrorDocument),
            ) as _i5.ErrorDocument));
          }
          break;
        case 'IndexDocument':
          if (value != null) {
            result.indexDocument.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IndexDocument),
            ) as _i6.IndexDocument));
          }
          break;
        case 'RedirectAllRequestsTo':
          if (value != null) {
            result.redirectAllRequestsTo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.RedirectAllRequestsTo),
            ) as _i7.RedirectAllRequestsTo));
          }
          break;
        case 'RoutingRules':
          if (value != null) {
            result.routingRules.replace(
                (const _i1.XmlBuiltListSerializer(memberName: 'RoutingRule')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i9.RoutingRule)],
              ),
            ) as _i8.BuiltList<_i9.RoutingRule>));
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
    final payload = object is PutBucketWebsiteRequest
        ? object.getPayload()
        : (object as _i2.WebsiteConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'WebsiteConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.errorDocument != null) {
      result
        ..add(const _i1.XmlElementName('ErrorDocument'))
        ..add(serializers.serialize(
          payload.errorDocument!,
          specifiedType: const FullType(_i5.ErrorDocument),
        ));
    }
    if (payload.indexDocument != null) {
      result
        ..add(const _i1.XmlElementName('IndexDocument'))
        ..add(serializers.serialize(
          payload.indexDocument!,
          specifiedType: const FullType(_i6.IndexDocument),
        ));
    }
    if (payload.redirectAllRequestsTo != null) {
      result
        ..add(const _i1.XmlElementName('RedirectAllRequestsTo'))
        ..add(serializers.serialize(
          payload.redirectAllRequestsTo!,
          specifiedType: const FullType(_i7.RedirectAllRequestsTo),
        ));
    }
    if (payload.routingRules != null) {
      result
        ..add(const _i1.XmlElementName('RoutingRules'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'RoutingRule')
            .serialize(
          serializers,
          payload.routingRules!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i9.RoutingRule)],
          ),
        ));
    }
    return result;
  }
}
