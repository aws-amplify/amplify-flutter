// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart' as _i2;

part 'put_bucket_tagging_request.g.dart';

abstract class PutBucketTaggingRequest
    with _i1.HttpInput<_i2.Tagging>, _i3.AWSEquatable<PutBucketTaggingRequest>
    implements
        Built<PutBucketTaggingRequest, PutBucketTaggingRequestBuilder>,
        _i1.HasPayload<_i2.Tagging> {
  factory PutBucketTaggingRequest({
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentMd5,
    String? expectedBucketOwner,
    required _i2.Tagging tagging,
  }) {
    return _$PutBucketTaggingRequest._(
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      tagging: tagging,
    );
  }

  factory PutBucketTaggingRequest.build(
          [void Function(PutBucketTaggingRequestBuilder) updates]) =
      _$PutBucketTaggingRequest;

  const PutBucketTaggingRequest._();

  factory PutBucketTaggingRequest.fromRequest(
    _i2.Tagging payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketTaggingRequest.build((b) {
        b.tagging.replace(payload);
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
    PutBucketTaggingRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketTaggingRequestBuilder b) {}

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

  /// Container for the `TagSet` and `Tag` elements.
  _i2.Tagging get tagging;
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
  _i2.Tagging getPayload() => tagging;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        contentMd5,
        expectedBucketOwner,
        tagging,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketTaggingRequest');
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
      'tagging',
      tagging,
    );
    return helper.toString();
  }
}

class PutBucketTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.Tagging> {
  const PutBucketTaggingRequestRestXmlSerializer()
      : super('PutBucketTaggingRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketTaggingRequest,
        _$PutBucketTaggingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.Tagging deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.TaggingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TagSet':
          result.tagSet.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'Tag').deserialize(
            serializers,
            (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i5.BuiltList<_i6.Tag>));
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
    final payload = object is PutBucketTaggingRequest
        ? object.getPayload()
        : (object as _i2.Tagging);
    final result = <Object?>[
      const _i1.XmlElementName(
        'Tagging',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TagSet'))
      ..add(const _i1.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        payload.tagSet,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i6.Tag)],
        ),
      ));
    return result;
  }
}
