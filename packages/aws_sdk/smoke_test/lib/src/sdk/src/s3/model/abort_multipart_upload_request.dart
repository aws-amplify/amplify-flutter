// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.abort_multipart_upload_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'abort_multipart_upload_request.g.dart';

abstract class AbortMultipartUploadRequest
    with
        _i1.HttpInput<AbortMultipartUploadRequestPayload>,
        _i2.AWSEquatable<AbortMultipartUploadRequest>
    implements
        Built<AbortMultipartUploadRequest, AbortMultipartUploadRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<AbortMultipartUploadRequestPayload> {
  factory AbortMultipartUploadRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String key,
    _i3.RequestPayer? requestPayer,
    required String uploadId,
  }) {
    return _$AbortMultipartUploadRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      key: key,
      requestPayer: requestPayer,
      uploadId: uploadId,
    );
  }

  factory AbortMultipartUploadRequest.build(
          [void Function(AbortMultipartUploadRequestBuilder) updates]) =
      _$AbortMultipartUploadRequest;

  const AbortMultipartUploadRequest._();

  factory AbortMultipartUploadRequest.fromRequest(
    AbortMultipartUploadRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      AbortMultipartUploadRequest.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['uploadId'] != null) {
          b.uploadId = request.queryParameters['uploadId']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    AbortMultipartUploadRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AbortMultipartUploadRequestBuilder b) {}

  /// The bucket name to which the upload was taking place.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Key of the object for which the multipart upload was initiated.
  String get key;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;

  /// Upload ID that identifies the multipart upload.
  String get uploadId;
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
  AbortMultipartUploadRequestPayload getPayload() =>
      AbortMultipartUploadRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        key,
        requestPayer,
        uploadId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AbortMultipartUploadRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'requestPayer',
      requestPayer,
    );
    helper.add(
      'uploadId',
      uploadId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class AbortMultipartUploadRequestPayload
    with
        _i2.AWSEquatable<AbortMultipartUploadRequestPayload>
    implements
        Built<AbortMultipartUploadRequestPayload,
            AbortMultipartUploadRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory AbortMultipartUploadRequestPayload(
          [void Function(AbortMultipartUploadRequestPayloadBuilder) updates]) =
      _$AbortMultipartUploadRequestPayload;

  const AbortMultipartUploadRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AbortMultipartUploadRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AbortMultipartUploadRequestPayload');
    return helper.toString();
  }
}

class AbortMultipartUploadRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AbortMultipartUploadRequestPayload> {
  const AbortMultipartUploadRequestRestXmlSerializer()
      : super('AbortMultipartUploadRequest');

  @override
  Iterable<Type> get types => const [
        AbortMultipartUploadRequest,
        _$AbortMultipartUploadRequest,
        AbortMultipartUploadRequestPayload,
        _$AbortMultipartUploadRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AbortMultipartUploadRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return AbortMultipartUploadRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'AbortMultipartUploadRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
