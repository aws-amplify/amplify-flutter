// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.delete_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_object_request.g.dart';

abstract class DeleteObjectRequest
    with
        _i1.HttpInput<DeleteObjectRequestPayload>,
        _i2.AWSEquatable<DeleteObjectRequest>
    implements
        Built<DeleteObjectRequest, DeleteObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteObjectRequestPayload> {
  factory DeleteObjectRequest({
    required String bucket,
    required String key,
    String? mfa,
    String? versionId,
    RequestPayer? requestPayer,
    bool? bypassGovernanceRetention,
    String? expectedBucketOwner,
  }) {
    return _$DeleteObjectRequest._(
      bucket: bucket,
      key: key,
      mfa: mfa,
      versionId: versionId,
      requestPayer: requestPayer,
      bypassGovernanceRetention: bypassGovernanceRetention,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteObjectRequest.build([
    void Function(DeleteObjectRequestBuilder) updates,
  ]) = _$DeleteObjectRequest;

  const DeleteObjectRequest._();

  factory DeleteObjectRequest.fromRequest(
    DeleteObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => DeleteObjectRequest.build((b) {
    if (request.headers['x-amz-mfa'] != null) {
      b.mfa = request.headers['x-amz-mfa']!;
    }
    if (request.headers['x-amz-request-payer'] != null) {
      b.requestPayer = RequestPayer.values.byValue(
        request.headers['x-amz-request-payer']!,
      );
    }
    if (request.headers['x-amz-bypass-governance-retention'] != null) {
      b.bypassGovernanceRetention =
          request.headers['x-amz-bypass-governance-retention']! == 'true';
    }
    if (request.headers['x-amz-expected-bucket-owner'] != null) {
      b.expectedBucketOwner = request.headers['x-amz-expected-bucket-owner']!;
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

  static const List<_i1.SmithySerializer<DeleteObjectRequestPayload>>
  serializers = [DeleteObjectRequestRestXmlSerializer()];

  /// The bucket name of the bucket containing the object.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Key name of the object to delete.
  String get key;

  /// The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
  ///
  /// This functionality is not supported for directory buckets.
  String? get mfa;

  /// Version ID used to reference a specific version of the object.
  ///
  /// For directory buckets in this API operation, only the `null` value of the version ID is supported.
  String? get versionId;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process this operation. To use this header, you must have the `s3:BypassGovernanceRetention` permission.
  ///
  /// This functionality is not supported for directory buckets.
  bool? get bypassGovernanceRetention;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  DeleteObjectRequestPayload getPayload() => DeleteObjectRequestPayload();

  @override
  List<Object?> get props => [
    bucket,
    key,
    mfa,
    versionId,
    requestPayer,
    bypassGovernanceRetention,
    expectedBucketOwner,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectRequest')
      ..add('bucket', bucket)
      ..add('key', key)
      ..add('mfa', mfa)
      ..add('versionId', versionId)
      ..add('requestPayer', requestPayer)
      ..add('bypassGovernanceRetention', bypassGovernanceRetention)
      ..add('expectedBucketOwner', expectedBucketOwner);
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteObjectRequestPayload
    with _i2.AWSEquatable<DeleteObjectRequestPayload>
    implements
        Built<DeleteObjectRequestPayload, DeleteObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteObjectRequestPayload([
    void Function(DeleteObjectRequestPayloadBuilder) updates,
  ]) = _$DeleteObjectRequestPayload;

  const DeleteObjectRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectRequestPayload');
    return helper.toString();
  }
}

class DeleteObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<DeleteObjectRequestPayload> {
  const DeleteObjectRequestRestXmlSerializer() : super('DeleteObjectRequest');

  @override
  Iterable<Type> get types => const [
    DeleteObjectRequest,
    _$DeleteObjectRequest,
    DeleteObjectRequestPayload,
    _$DeleteObjectRequestPayload,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  DeleteObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteObjectRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];

    return result$;
  }
}
