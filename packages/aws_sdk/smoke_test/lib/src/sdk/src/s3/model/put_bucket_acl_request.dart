// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_bucket_acl_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_policy.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_canned_acl.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i8;

part 'put_bucket_acl_request.g.dart';

abstract class PutBucketAclRequest
    with
        _i1.HttpInput<_i2.AccessControlPolicy>,
        _i3.AWSEquatable<PutBucketAclRequest>
    implements
        Built<PutBucketAclRequest, PutBucketAclRequestBuilder>,
        _i1.HasPayload<_i2.AccessControlPolicy> {
  factory PutBucketAclRequest({
    _i4.BucketCannedAcl? acl,
    _i2.AccessControlPolicy? accessControlPolicy,
    required String bucket,
    String? contentMd5,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWrite,
    String? grantWriteAcp,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketAclRequest._(
      acl: acl,
      accessControlPolicy: accessControlPolicy,
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWrite: grantWrite,
      grantWriteAcp: grantWriteAcp,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketAclRequest.build(
          [void Function(PutBucketAclRequestBuilder) updates]) =
      _$PutBucketAclRequest;

  const PutBucketAclRequest._();

  factory PutBucketAclRequest.fromRequest(
    _i2.AccessControlPolicy? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketAclRequest.build((b) {
        if (payload != null) {
          b.accessControlPolicy.replace(payload);
        }
        if (request.headers['x-amz-acl'] != null) {
          b.acl =
              _i4.BucketCannedAcl.values.byValue(request.headers['x-amz-acl']!);
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
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.AccessControlPolicy?>>
      serializers = [PutBucketAclRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketAclRequestBuilder b) {}

  /// The canned ACL to apply to the bucket.
  _i4.BucketCannedAcl? get acl;

  /// Contains the elements that set the ACL permissions for an object per grantee.
  _i2.AccessControlPolicy? get accessControlPolicy;

  /// The bucket to which to apply the ACL.
  String get bucket;

  /// The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to [RFC 1864.](http://www.ietf.org/rfc/rfc1864.txt)
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;

  /// Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
  String? get grantFullControl;

  /// Allows grantee to list the objects in the bucket.
  String? get grantRead;

  /// Allows grantee to read the bucket ACL.
  String? get grantReadAcp;

  /// Allows grantee to create new objects in the bucket.
  ///
  /// For the bucket and object owners of existing objects, also allows deletions and overwrites of those objects.
  String? get grantWrite;

  /// Allows grantee to write the ACL for the applicable bucket.
  String? get grantWriteAcp;

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
  _i2.AccessControlPolicy? getPayload() =>
      accessControlPolicy ?? _i2.AccessControlPolicy();
  @override
  List<Object?> get props => [
        acl,
        accessControlPolicy,
        bucket,
        contentMd5,
        checksumAlgorithm,
        grantFullControl,
        grantRead,
        grantReadAcp,
        grantWrite,
        grantWriteAcp,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketAclRequest')
      ..add(
        'acl',
        acl,
      )
      ..add(
        'accessControlPolicy',
        accessControlPolicy,
      )
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
        'grantFullControl',
        grantFullControl,
      )
      ..add(
        'grantRead',
        grantRead,
      )
      ..add(
        'grantReadAcp',
        grantReadAcp,
      )
      ..add(
        'grantWrite',
        grantWrite,
      )
      ..add(
        'grantWriteAcp',
        grantWriteAcp,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketAclRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.AccessControlPolicy> {
  const PutBucketAclRequestRestXmlSerializer() : super('PutBucketAclRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketAclRequest,
        _$PutBucketAclRequest,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessControlList':
          result.grants.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i7.Grant)],
            ),
          ) as _i6.BuiltList<_i7.Grant>));
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.Owner),
          ) as _i8.Owner));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.AccessControlPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AccessControlPolicy',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.AccessControlPolicy(:grants, :owner) = object;
    if (grants != null) {
      result$
        ..add(const _i1.XmlElementName('AccessControlList'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          grants,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i7.Grant)],
          ),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i1.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i8.Owner),
        ));
    }
    return result$;
  }
}
