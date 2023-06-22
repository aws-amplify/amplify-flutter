// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.delete_objects_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/delete.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_objects_request.g.dart';

abstract class DeleteObjectsRequest
    with _i1.HttpInput<_i2.Delete>, _i3.AWSEquatable<DeleteObjectsRequest>
    implements
        Built<DeleteObjectsRequest, DeleteObjectsRequestBuilder>,
        _i1.HasPayload<_i2.Delete> {
  factory DeleteObjectsRequest({
    required String bucket,
    required _i2.Delete delete,
    String? mfa,
    _i4.RequestPayer? requestPayer,
    bool? bypassGovernanceRetention,
    String? expectedBucketOwner,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
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
    _i2.Delete payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteObjectsRequest.build((b) {
        b.delete.replace(payload);
        if (request.headers['x-amz-mfa'] != null) {
          b.mfa = request.headers['x-amz-mfa']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
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
          b.checksumAlgorithm = _i5.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.Delete>> serializers = [
    DeleteObjectsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteObjectsRequestBuilder b) {}

  /// The bucket name containing the objects to delete.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Container for the request.
  _i2.Delete get delete;

  /// The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
  String? get mfa;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

  /// Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. To use this header, you must have the `s3:BypassGovernanceRetention` permission.
  bool? get bypassGovernanceRetention;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  ///
  /// This checksum algorithm must be the same for all parts and it match the checksum value supplied in the `CreateMultipartUpload` request.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;
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
  _i2.Delete getPayload() => delete;
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
    extends _i1.StructuredSmithySerializer<_i2.Delete> {
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
  _i2.Delete deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.DeleteBuilder();
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
            specifiedType: const FullType(_i6.ObjectIdentifier),
          ) as _i6.ObjectIdentifier));
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
    _i2.Delete object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'Delete',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.Delete(:objects, :quiet) = object;
    result$.addAll(
        const _i1.XmlBuiltListSerializer(memberName: 'Object').serialize(
      serializers,
      objects,
      specifiedType: const FullType.nullable(
        _i7.BuiltList,
        [FullType(_i6.ObjectIdentifier)],
      ),
    ));
    if (quiet != null) {
      result$
        ..add(const _i1.XmlElementName('Quiet'))
        ..add(serializers.serialize(
          quiet,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
