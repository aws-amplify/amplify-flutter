// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.put_object_acl_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_policy.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i6;

part 'put_object_acl_request.g.dart';

abstract class PutObjectAclRequest
    with
        _i1.HttpInput<_i2.AccessControlPolicy>,
        _i3.AWSEquatable<PutObjectAclRequest>
    implements
        Built<PutObjectAclRequest, PutObjectAclRequestBuilder>,
        _i1.HasPayload<_i2.AccessControlPolicy> {
  factory PutObjectAclRequest({
    _i2.AccessControlPolicy? accessControlPolicy,
    _i4.ObjectCannedAcl? acl,
    required String bucket,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? contentMd5,
    String? expectedBucketOwner,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWrite,
    String? grantWriteAcp,
    required String key,
    _i6.RequestPayer? requestPayer,
    String? versionId,
  }) {
    return _$PutObjectAclRequest._(
      accessControlPolicy: accessControlPolicy,
      acl: acl,
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWrite: grantWrite,
      grantWriteAcp: grantWriteAcp,
      key: key,
      requestPayer: requestPayer,
      versionId: versionId,
    );
  }

  factory PutObjectAclRequest.build(
          [void Function(PutObjectAclRequestBuilder) updates]) =
      _$PutObjectAclRequest;

  const PutObjectAclRequest._();

  factory PutObjectAclRequest.fromRequest(
    _i2.AccessControlPolicy? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectAclRequest.build((b) {
        if (payload != null) {
          b.accessControlPolicy.replace(payload);
        }
        if (request.headers['x-amz-acl'] != null) {
          b.acl =
              _i4.ObjectCannedAcl.values.byValue(request.headers['x-amz-acl']!);
        }
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i5.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-grant-full-control'] != null) {
          b.grantFullControl = request.headers['x-amz-grant-full-control']!;
        }
        if (request.headers['x-amz-grant-read'] != null) {
          b.grantRead = request.headers['x-amz-grant-read']!;
        }
        if (request.headers['x-amz-grant-read-acp'] != null) {
          b.grantReadAcp = request.headers['x-amz-grant-read-acp']!;
        }
        if (request.headers['x-amz-grant-write'] != null) {
          b.grantWrite = request.headers['x-amz-grant-write']!;
        }
        if (request.headers['x-amz-grant-write-acp'] != null) {
          b.grantWriteAcp = request.headers['x-amz-grant-write-acp']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i6.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
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

  static const List<_i1.SmithySerializer> serializers = [
    PutObjectAclRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectAclRequestBuilder b) {}

  /// Contains the elements that set the ACL permissions for an object per grantee.
  _i2.AccessControlPolicy? get accessControlPolicy;

  /// The canned ACL to apply to the object. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).
  _i4.ObjectCannedAcl? get acl;

  /// The bucket name that contains the object to which you want to attach the ACL.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;

  /// The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to [RFC 1864.>](http://www.ietf.org/rfc/rfc1864.txt)
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantFullControl;

  /// Allows grantee to list the objects in the bucket.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantRead;

  /// Allows grantee to read the bucket ACL.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantReadAcp;

  /// Allows grantee to create new objects in the bucket.
  ///
  /// For the bucket and object owners of existing objects, also allows deletions and overwrites of those objects.
  String? get grantWrite;

  /// Allows grantee to write the ACL for the applicable bucket.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  String? get grantWriteAcp;

  /// Key for which the PUT action was initiated.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get key;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i6.RequestPayer? get requestPayer;

  /// VersionId used to reference a specific version of the object.
  String? get versionId;
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
  _i2.AccessControlPolicy? getPayload() =>
      accessControlPolicy ?? _i2.AccessControlPolicy();
  @override
  List<Object?> get props => [
        accessControlPolicy,
        acl,
        bucket,
        checksumAlgorithm,
        contentMd5,
        expectedBucketOwner,
        grantFullControl,
        grantRead,
        grantReadAcp,
        grantWrite,
        grantWriteAcp,
        key,
        requestPayer,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectAclRequest');
    helper.add(
      'accessControlPolicy',
      accessControlPolicy,
    );
    helper.add(
      'acl',
      acl,
    );
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
      'grantFullControl',
      grantFullControl,
    );
    helper.add(
      'grantRead',
      grantRead,
    );
    helper.add(
      'grantReadAcp',
      grantReadAcp,
    );
    helper.add(
      'grantWrite',
      grantWrite,
    );
    helper.add(
      'grantWriteAcp',
      grantWriteAcp,
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
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class PutObjectAclRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.AccessControlPolicy> {
  const PutObjectAclRequestRestXmlSerializer() : super('PutObjectAclRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectAclRequest,
        _$PutObjectAclRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.AccessControlPolicy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.AccessControlPolicyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessControlList':
          if (value != null) {
            result.grants.replace(
                (const _i1.XmlBuiltListSerializer(memberName: 'Grant')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i8.Grant)],
              ),
            ) as _i7.BuiltList<_i8.Grant>));
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.Owner),
            ) as _i9.Owner));
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
    final payload = object is PutObjectAclRequest
        ? object.getPayload()
        : (object as _i2.AccessControlPolicy?);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AccessControlPolicy',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.grants != null) {
      result
        ..add(const _i1.XmlElementName('AccessControlList'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          payload.grants!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i8.Grant)],
          ),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i1.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i9.Owner),
        ));
    }
    return result;
  }
}
