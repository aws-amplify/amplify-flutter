// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.delete_objects_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_objects_request.g.dart';

abstract class DeleteObjectsRequest
    with _i1.HttpInput<Delete>, _i2.AWSEquatable<DeleteObjectsRequest>
    implements
        Built<DeleteObjectsRequest, DeleteObjectsRequestBuilder>,
        _i1.HasPayload<Delete> {
  factory DeleteObjectsRequest({
    required String bucket,
    required Delete delete,
    String? mfa,
    RequestPayer? requestPayer,
    bool? bypassGovernanceRetention,
    String? expectedBucketOwner,
    ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$DeleteObjectsRequest._(
      bucket: bucket,
      delete: delete,
      mfa: mfa,
      requestPayer: requestPayer,
      bypassGovernanceRetention: bypassGovernanceRetention,
      expectedBucketOwner: expectedBucketOwner,
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  factory DeleteObjectsRequest.build(
          [void Function(DeleteObjectsRequestBuilder) updates]) =
      _$DeleteObjectsRequest;

  const DeleteObjectsRequest._();

  factory DeleteObjectsRequest.fromRequest(
    Delete payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteObjectsRequest.build((b) {
        b.delete.replace(payload);
        if (request.headers['x-amz-mfa'] != null) {
          b.mfa = request.headers['x-amz-mfa']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-bypass-governance-retention'] != null) {
          b.bypassGovernanceRetention =
              request.headers['x-amz-bypass-governance-retention']! == 'true';
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<Delete>> serializers = [
    DeleteObjectsRequestRestXmlSerializer()
  ];

  /// The bucket name containing the objects to delete.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Container for the request.
  Delete get delete;

  /// The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
  ///
  /// When performing the `DeleteObjects` operation on an MFA delete enabled bucket, which attempts to delete the specified versioned objects, you must include an MFA token. If you don't provide an MFA token, the entire request will fail, even if there are non-versioned objects that you are trying to delete. If you provide an invalid token, whether there are versioned object keys in the request or not, the entire Multi-Object Delete request will fail. For information about MFA Delete, see [MFA Delete](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  String? get mfa;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;

  /// Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. To use this header, you must have the `s3:BypassGovernanceRetention` permission.
  ///
  /// This functionality is not supported for directory buckets.
  bool? get bypassGovernanceRetention;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any additional functionality if you don't use the SDK. When you send this header, there must be a corresponding `x-amz-checksum-_algorithm_` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`.
  ///
  /// For the `x-amz-checksum-_algorithm_` header, replace `_algorithm_` with the supported algorithm from the following list:
  ///
  /// *   CRC32
  ///
  /// *   CRC32C
  ///
  /// *   SHA1
  ///
  /// *   SHA256
  ///
  ///
  /// For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If the individual checksum value you provide through `x-amz-checksum-_algorithm_` doesn't match the checksum algorithm you set through `x-amz-sdk-checksum-algorithm`, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter and uses the checksum algorithm that matches the provided value in `x-amz-checksum-_algorithm_` .
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ChecksumAlgorithm? get checksumAlgorithm;
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
  Delete getPayload() => delete;

  @override
  List<Object?> get props => [
        bucket,
        delete,
        mfa,
        requestPayer,
        bypassGovernanceRetention,
        expectedBucketOwner,
        checksumAlgorithm,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteObjectsRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'delete',
        delete,
      )
      ..add(
        'mfa',
        mfa,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'bypassGovernanceRetention',
        bypassGovernanceRetention,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      );
    return helper.toString();
  }
}

class DeleteObjectsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<Delete> {
  const DeleteObjectsRequestRestXmlSerializer() : super('DeleteObjectsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteObjectsRequest,
        _$DeleteObjectsRequest,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  Delete deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Object':
          result.objects.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectIdentifier),
          ) as ObjectIdentifier));
        case 'Quiet':
          result.quiet = (serializers.deserialize(
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
    Delete object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'Delete',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Delete(:objects, :quiet) = object;
    result$.addAll(
        const _i1.XmlBuiltListSerializer(memberName: 'Object').serialize(
      serializers,
      objects,
      specifiedType: const FullType(
        _i3.BuiltList,
        [FullType(ObjectIdentifier)],
      ),
    ));
    if (quiet != null) {
      result$
        ..add(const _i1.XmlElementName('Quiet'))
        ..add(serializers.serialize(
          quiet,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
