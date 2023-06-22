// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_legal_hold_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;

part 'put_object_legal_hold_request.g.dart';

abstract class PutObjectLegalHoldRequest
    with
        _i1.HttpInput<_i2.ObjectLockLegalHold>,
        _i3.AWSEquatable<PutObjectLegalHoldRequest>
    implements
        Built<PutObjectLegalHoldRequest, PutObjectLegalHoldRequestBuilder>,
        _i1.HasPayload<_i2.ObjectLockLegalHold> {
  factory PutObjectLegalHoldRequest({
    required String bucket,
    required String key,
    _i2.ObjectLockLegalHold? legalHold,
    _i4.RequestPayer? requestPayer,
    String? versionId,
    String? contentMd5,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutObjectLegalHoldRequest._(
      bucket: bucket,
      key: key,
      legalHold: legalHold,
      requestPayer: requestPayer,
      versionId: versionId,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutObjectLegalHoldRequest.build(
          [void Function(PutObjectLegalHoldRequestBuilder) updates]) =
      _$PutObjectLegalHoldRequest;

  const PutObjectLegalHoldRequest._();

  factory PutObjectLegalHoldRequest.fromRequest(
    _i2.ObjectLockLegalHold? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectLegalHoldRequest.build((b) {
        if (payload != null) {
          b.legalHold.replace(payload);
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
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

  static const List<_i1.SmithySerializer<_i2.ObjectLockLegalHold?>>
      serializers = [PutObjectLegalHoldRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLegalHoldRequestBuilder b) {}

  /// The bucket name containing the object that you want to place a legal hold on.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// The key name for the object that you want to place a legal hold on.
  String get key;

  /// Container element for the legal hold configuration you want to apply to the specified object.
  _i2.ObjectLockLegalHold? get legalHold;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

  /// The version ID of the object that you want to place a legal hold on.
  String? get versionId;

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
  _i2.ObjectLockLegalHold? getPayload() =>
      legalHold ?? _i2.ObjectLockLegalHold();
  @override
  List<Object?> get props => [
        bucket,
        key,
        legalHold,
        requestPayer,
        versionId,
        contentMd5,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectLegalHoldRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'legalHold',
        legalHold,
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

class PutObjectLegalHoldRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.ObjectLockLegalHold> {
  const PutObjectLegalHoldRequestRestXmlSerializer()
      : super('PutObjectLegalHoldRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectLegalHoldRequest,
        _$PutObjectLegalHoldRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.ObjectLockLegalHold deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.ObjectLockLegalHoldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ObjectLockLegalHoldStatus),
          ) as _i6.ObjectLockLegalHoldStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.ObjectLockLegalHold object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'LegalHold',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.ObjectLockLegalHold(:status) = object;
    if (status != null) {
      result$
        ..add(const _i1.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i6.ObjectLockLegalHoldStatus),
        ));
    }
    return result$;
  }
}
