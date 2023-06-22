// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_retention_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;

part 'put_object_retention_request.g.dart';

abstract class PutObjectRetentionRequest
    with
        _i1.HttpInput<_i2.ObjectLockRetention>,
        _i3.AWSEquatable<PutObjectRetentionRequest>
    implements
        Built<PutObjectRetentionRequest, PutObjectRetentionRequestBuilder>,
        _i1.HasPayload<_i2.ObjectLockRetention> {
  factory PutObjectRetentionRequest({
    required String bucket,
    required String key,
    _i2.ObjectLockRetention? retention,
    _i4.RequestPayer? requestPayer,
    String? versionId,
    bool? bypassGovernanceRetention,
    String? contentMd5,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutObjectRetentionRequest._(
      bucket: bucket,
      key: key,
      retention: retention,
      requestPayer: requestPayer,
      versionId: versionId,
      bypassGovernanceRetention: bypassGovernanceRetention,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutObjectRetentionRequest.build(
          [void Function(PutObjectRetentionRequestBuilder) updates]) =
      _$PutObjectRetentionRequest;

  const PutObjectRetentionRequest._();

  factory PutObjectRetentionRequest.fromRequest(
    _i2.ObjectLockRetention? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectRetentionRequest.build((b) {
        if (payload != null) {
          b.retention.replace(payload);
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-bypass-governance-retention'] != null) {
          b.bypassGovernanceRetention =
              request.headers['x-amz-bypass-governance-retention']! == 'true';
        }
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i5.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
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

  static const List<_i1.SmithySerializer<_i2.ObjectLockRetention?>>
      serializers = [PutObjectRetentionRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectRetentionRequestBuilder b) {}

  /// The bucket name that contains the object you want to apply this Object Retention configuration to.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The key name for the object that you want to apply this Object Retention configuration to.
  String get key;

  /// The container element for the Object Retention configuration.
  _i2.ObjectLockRetention? get retention;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

  /// The version ID for the object that you want to apply this Object Retention configuration to.
  String? get versionId;

  /// Indicates whether this action should bypass Governance-mode restrictions.
  bool? get bypassGovernanceRetention;

  /// The MD5 hash for the request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i5.ChecksumAlgorithm? get checksumAlgorithm;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
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
  _i2.ObjectLockRetention? getPayload() =>
      retention ?? _i2.ObjectLockRetention();
  @override
  List<Object?> get props => [
        bucket,
        key,
        retention,
        requestPayer,
        versionId,
        bypassGovernanceRetention,
        contentMd5,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectRetentionRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'retention',
        retention,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'bypassGovernanceRetention',
        bypassGovernanceRetention,
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
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutObjectRetentionRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.ObjectLockRetention> {
  const PutObjectRetentionRequestRestXmlSerializer()
      : super('PutObjectRetentionRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectRetentionRequest,
        _$PutObjectRetentionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.ObjectLockRetention deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.ObjectLockRetentionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ObjectLockRetentionMode),
          ) as _i6.ObjectLockRetentionMode);
        case 'RetainUntilDate':
          result.retainUntilDate = _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.ObjectLockRetention object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'Retention',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.ObjectLockRetention(:mode, :retainUntilDate) = object;
    if (mode != null) {
      result$
        ..add(const _i1.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType.nullable(_i6.ObjectLockRetentionMode),
        ));
    }
    if (retainUntilDate != null) {
      result$
        ..add(const _i1.XmlElementName('RetainUntilDate'))
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          retainUntilDate,
        ));
    }
    return result$;
  }
}
