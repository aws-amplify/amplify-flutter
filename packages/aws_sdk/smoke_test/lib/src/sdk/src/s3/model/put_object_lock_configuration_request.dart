// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_lock_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;

part 'put_object_lock_configuration_request.g.dart';

abstract class PutObjectLockConfigurationRequest
    with
        _i1.HttpInput<_i2.ObjectLockConfiguration>,
        _i3.AWSEquatable<PutObjectLockConfigurationRequest>
    implements
        Built<PutObjectLockConfigurationRequest,
            PutObjectLockConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.ObjectLockConfiguration> {
  factory PutObjectLockConfigurationRequest({
    required String bucket,
    _i2.ObjectLockConfiguration? objectLockConfiguration,
    _i4.RequestPayer? requestPayer,
    String? token,
    String? contentMd5,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutObjectLockConfigurationRequest._(
      bucket: bucket,
      objectLockConfiguration: objectLockConfiguration,
      requestPayer: requestPayer,
      token: token,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutObjectLockConfigurationRequest.build(
          [void Function(PutObjectLockConfigurationRequestBuilder) updates]) =
      _$PutObjectLockConfigurationRequest;

  const PutObjectLockConfigurationRequest._();

  factory PutObjectLockConfigurationRequest.fromRequest(
    _i2.ObjectLockConfiguration? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutObjectLockConfigurationRequest.build((b) {
        if (payload != null) {
          b.objectLockConfiguration.replace(payload);
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-bucket-object-lock-token'] != null) {
          b.token = request.headers['x-amz-bucket-object-lock-token']!;
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
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.ObjectLockConfiguration?>>
      serializers = [PutObjectLockConfigurationRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLockConfigurationRequestBuilder b) {}

  /// The bucket whose Object Lock configuration you want to create or replace.
  String get bucket;

  /// The Object Lock configuration that you want to apply to the specified bucket.
  _i2.ObjectLockConfiguration? get objectLockConfiguration;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

  /// A token to allow Object Lock to be enabled for an existing bucket.
  String? get token;

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
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.ObjectLockConfiguration? getPayload() =>
      objectLockConfiguration ?? _i2.ObjectLockConfiguration();
  @override
  List<Object?> get props => [
        bucket,
        objectLockConfiguration,
        requestPayer,
        token,
        contentMd5,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutObjectLockConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'objectLockConfiguration',
            objectLockConfiguration,
          )
          ..add(
            'requestPayer',
            requestPayer,
          )
          ..add(
            'token',
            token,
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

class PutObjectLockConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.ObjectLockConfiguration> {
  const PutObjectLockConfigurationRequestRestXmlSerializer()
      : super('PutObjectLockConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutObjectLockConfigurationRequest,
        _$PutObjectLockConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.ObjectLockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.ObjectLockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ObjectLockEnabled':
          result.objectLockEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ObjectLockEnabled),
          ) as _i6.ObjectLockEnabled);
        case 'Rule':
          result.rule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ObjectLockRule),
          ) as _i7.ObjectLockRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.ObjectLockConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ObjectLockConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.ObjectLockConfiguration(:objectLockEnabled, :rule) = object;
    if (objectLockEnabled != null) {
      result$
        ..add(const _i1.XmlElementName('ObjectLockEnabled'))
        ..add(serializers.serialize(
          objectLockEnabled,
          specifiedType: const FullType.nullable(_i6.ObjectLockEnabled),
        ));
    }
    if (rule != null) {
      result$
        ..add(const _i1.XmlElementName('Rule'))
        ..add(serializers.serialize(
          rule,
          specifiedType: const FullType(_i7.ObjectLockRule),
        ));
    }
    return result$;
  }
}
