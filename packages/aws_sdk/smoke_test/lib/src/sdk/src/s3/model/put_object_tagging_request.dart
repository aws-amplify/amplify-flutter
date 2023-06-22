// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart' as _i2;

part 'put_object_tagging_request.g.dart';

abstract class PutObjectTaggingRequest
    with _i1.HttpInput<_i2.Tagging>, _i3.AWSEquatable<PutObjectTaggingRequest>
    implements
        Built<PutObjectTaggingRequest, PutObjectTaggingRequestBuilder>,
        _i1.HasPayload<_i2.Tagging> {
  factory PutObjectTaggingRequest({
    required String bucket,
    required String key,
    String? versionId,
    String? contentMd5,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    required _i2.Tagging tagging,
    String? expectedBucketOwner,
    _i5.RequestPayer? requestPayer,
  }) {
    return _$PutObjectTaggingRequest._(
      bucket: bucket,
      key: key,
      versionId: versionId,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      tagging: tagging,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
    );
  }

  factory PutObjectTaggingRequest.build(
          [void Function(PutObjectTaggingRequestBuilder) updates]) =
      _$PutObjectTaggingRequest;

  const PutObjectTaggingRequest._();

  factory PutObjectTaggingRequest.fromRequest(
    _i2.Tagging payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectTaggingRequest.build((b) {
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
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i5.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.queryParameters['versionId'] != null) {
          b.versionId = request.queryParameters['versionId']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.Tagging>> serializers = [
    PutObjectTaggingRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectTaggingRequestBuilder b) {}

  /// The bucket name containing the object.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Name of the object key.
  String get key;

  /// The versionId of the object that the tag-set will be added to.
  String? get versionId;

  /// The MD5 hash for the request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// Container for the `TagSet` and `Tag` elements
  _i2.Tagging get tagging;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i5.RequestPayer? get requestPayer;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
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
        key,
        versionId,
        contentMd5,
        checksumAlgorithm,
        tagging,
        expectedBucketOwner,
        requestPayer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectTaggingRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
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
        'tagging',
        tagging,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'requestPayer',
        requestPayer,
      );
    return helper.toString();
  }
}

class PutObjectTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.Tagging> {
  const PutObjectTaggingRequestRestXmlSerializer()
      : super('PutObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectTaggingRequest,
        _$PutObjectTaggingRequest,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TagSet':
          result.tagSet.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'Tag').deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i7.Tag)],
            ),
          ) as _i6.BuiltList<_i7.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.Tagging object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'Tagging',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.Tagging(:tagSet) = object;
    result$
      ..add(const _i1.XmlElementName('TagSet'))
      ..add(const _i1.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        tagSet,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i7.Tag)],
        ),
      ));
    return result$;
  }
}
