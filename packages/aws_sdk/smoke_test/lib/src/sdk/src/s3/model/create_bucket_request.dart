// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.create_bucket_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_canned_acl.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/create_bucket_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_ownership.dart' as _i5;

part 'create_bucket_request.g.dart';

abstract class CreateBucketRequest
    with
        _i1.HttpInput<_i2.CreateBucketConfiguration>,
        _i3.AWSEquatable<CreateBucketRequest>
    implements
        Built<CreateBucketRequest, CreateBucketRequestBuilder>,
        _i1.HasPayload<_i2.CreateBucketConfiguration> {
  factory CreateBucketRequest({
    _i4.BucketCannedAcl? acl,
    required String bucket,
    _i2.CreateBucketConfiguration? createBucketConfiguration,
    String? grantFullControl,
    String? grantRead,
    String? grantReadAcp,
    String? grantWrite,
    String? grantWriteAcp,
    bool? objectLockEnabledForBucket,
    _i5.ObjectOwnership? objectOwnership,
  }) {
    return _$CreateBucketRequest._(
      acl: acl,
      bucket: bucket,
      createBucketConfiguration: createBucketConfiguration,
      grantFullControl: grantFullControl,
      grantRead: grantRead,
      grantReadAcp: grantReadAcp,
      grantWrite: grantWrite,
      grantWriteAcp: grantWriteAcp,
      objectLockEnabledForBucket: objectLockEnabledForBucket,
      objectOwnership: objectOwnership,
    );
  }

  factory CreateBucketRequest.build(
          [void Function(CreateBucketRequestBuilder) updates]) =
      _$CreateBucketRequest;

  const CreateBucketRequest._();

  factory CreateBucketRequest.fromRequest(
    _i2.CreateBucketConfiguration? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateBucketRequest.build((b) {
        if (payload != null) {
          b.createBucketConfiguration.replace(payload);
        }
        if (request.headers['x-amz-acl'] != null) {
          b.acl =
              _i4.BucketCannedAcl.values.byValue(request.headers['x-amz-acl']!);
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
        if (request.headers['x-amz-bucket-object-lock-enabled'] != null) {
          b.objectLockEnabledForBucket =
              request.headers['x-amz-bucket-object-lock-enabled']! == 'true';
        }
        if (request.headers['x-amz-object-ownership'] != null) {
          b.objectOwnership = _i5.ObjectOwnership.values
              .byValue(request.headers['x-amz-object-ownership']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.CreateBucketConfiguration?>>
      serializers = [CreateBucketRequestRestXmlSerializer()];

  /// The canned ACL to apply to the bucket.
  _i4.BucketCannedAcl? get acl;

  /// The name of the bucket to create.
  String get bucket;

  /// The configuration information for the bucket.
  _i2.CreateBucketConfiguration? get createBucketConfiguration;

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

  /// Specifies whether you want S3 Object Lock to be enabled for the new bucket.
  bool? get objectLockEnabledForBucket;

  /// The container element for object ownership for a bucket's ownership controls.
  ///
  /// BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// ObjectWriter - The uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect permissions. The bucket owner automatically owns and has full control over every object in the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
  _i5.ObjectOwnership? get objectOwnership;
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
  _i2.CreateBucketConfiguration? getPayload() =>
      createBucketConfiguration ?? _i2.CreateBucketConfiguration();
  @override
  List<Object?> get props => [
        acl,
        bucket,
        createBucketConfiguration,
        grantFullControl,
        grantRead,
        grantReadAcp,
        grantWrite,
        grantWriteAcp,
        objectLockEnabledForBucket,
        objectOwnership,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBucketRequest')
      ..add(
        'acl',
        acl,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'createBucketConfiguration',
        createBucketConfiguration,
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
        'objectLockEnabledForBucket',
        objectLockEnabledForBucket,
      )
      ..add(
        'objectOwnership',
        objectOwnership,
      );
    return helper.toString();
  }
}

class CreateBucketRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.CreateBucketConfiguration> {
  const CreateBucketRequestRestXmlSerializer() : super('CreateBucketRequest');

  @override
  Iterable<Type> get types => const [
        CreateBucketRequest,
        _$CreateBucketRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.CreateBucketConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.CreateBucketConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocationConstraint':
          result.locationConstraint = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.BucketLocationConstraint),
          ) as _i6.BucketLocationConstraint);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.CreateBucketConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateBucketConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.CreateBucketConfiguration(:locationConstraint) = object;
    if (locationConstraint != null) {
      result$
        ..add(const _i1.XmlElementName('LocationConstraint'))
        ..add(serializers.serialize(
          locationConstraint,
          specifiedType: const FullType.nullable(_i6.BucketLocationConstraint),
        ));
    }
    return result$;
  }
}
