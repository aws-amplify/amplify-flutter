// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_website_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart';
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart';
import 'package:smoke_test/src/sdk/src/s3/model/website_configuration.dart';

part 'put_bucket_website_request.g.dart';

abstract class PutBucketWebsiteRequest
    with
        _i1.HttpInput<WebsiteConfiguration>,
        _i2.AWSEquatable<PutBucketWebsiteRequest>
    implements
        Built<PutBucketWebsiteRequest, PutBucketWebsiteRequestBuilder>,
        _i1.HasPayload<WebsiteConfiguration> {
  factory PutBucketWebsiteRequest({
    required String bucket,
    String? contentMd5,
    ChecksumAlgorithm? checksumAlgorithm,
    required WebsiteConfiguration websiteConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketWebsiteRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      websiteConfiguration: websiteConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketWebsiteRequest.build(
          [void Function(PutBucketWebsiteRequestBuilder) updates]) =
      _$PutBucketWebsiteRequest;

  const PutBucketWebsiteRequest._();

  factory PutBucketWebsiteRequest.fromRequest(
    WebsiteConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketWebsiteRequest.build((b) {
        b.websiteConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer<WebsiteConfiguration>> serializers = [
    PutBucketWebsiteRequestRestXmlSerializer()
  ];

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

  /// Container for the request.
  WebsiteConfiguration get websiteConfiguration;

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
  WebsiteConfiguration getPayload() => websiteConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        checksumAlgorithm,
        websiteConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketWebsiteRequest')
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
        'websiteConfiguration',
        websiteConfiguration,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketWebsiteRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<WebsiteConfiguration> {
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
  WebsiteConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebsiteConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ErrorDocument':
          result.errorDocument.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorDocument),
          ) as ErrorDocument));
        case 'IndexDocument':
          result.indexDocument.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IndexDocument),
          ) as IndexDocument));
        case 'RedirectAllRequestsTo':
          result.redirectAllRequestsTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RedirectAllRequestsTo),
          ) as RedirectAllRequestsTo));
        case 'RoutingRules':
          result.routingRules.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'RoutingRule')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(RoutingRule)],
            ),
          ) as _i3.BuiltList<RoutingRule>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    WebsiteConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'WebsiteConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final WebsiteConfiguration(
      :errorDocument,
      :indexDocument,
      :redirectAllRequestsTo,
      :routingRules
    ) = object;
    if (errorDocument != null) {
      result$
        ..add(const _i1.XmlElementName('ErrorDocument'))
        ..add(serializers.serialize(
          errorDocument,
          specifiedType: const FullType(ErrorDocument),
        ));
    }
    if (indexDocument != null) {
      result$
        ..add(const _i1.XmlElementName('IndexDocument'))
        ..add(serializers.serialize(
          indexDocument,
          specifiedType: const FullType(IndexDocument),
        ));
    }
    if (redirectAllRequestsTo != null) {
      result$
        ..add(const _i1.XmlElementName('RedirectAllRequestsTo'))
        ..add(serializers.serialize(
          redirectAllRequestsTo,
          specifiedType: const FullType(RedirectAllRequestsTo),
        ));
    }
    if (routingRules != null) {
      result$
        ..add(const _i1.XmlElementName('RoutingRules'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'RoutingRule')
            .serialize(
          serializers,
          routingRules,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(RoutingRule)],
          ),
        ));
    }
    return result$;
  }
}
