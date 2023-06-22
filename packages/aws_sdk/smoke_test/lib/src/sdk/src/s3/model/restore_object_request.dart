// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.restore_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart' as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart' as _i8;

part 'restore_object_request.g.dart';

abstract class RestoreObjectRequest
    with
        _i1.HttpInput<_i2.RestoreRequest>,
        _i3.AWSEquatable<RestoreObjectRequest>
    implements
        Built<RestoreObjectRequest, RestoreObjectRequestBuilder>,
        _i1.HasPayload<_i2.RestoreRequest> {
  factory RestoreObjectRequest({
    required String bucket,
    required String key,
    String? versionId,
    _i2.RestoreRequest? restoreRequest,
    _i4.RequestPayer? requestPayer,
    _i5.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$RestoreObjectRequest._(
      bucket: bucket,
      key: key,
      versionId: versionId,
      restoreRequest: restoreRequest,
      requestPayer: requestPayer,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory RestoreObjectRequest.build(
          [void Function(RestoreObjectRequestBuilder) updates]) =
      _$RestoreObjectRequest;

  const RestoreObjectRequest._();

  factory RestoreObjectRequest.fromRequest(
    _i2.RestoreRequest? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      RestoreObjectRequest.build((b) {
        if (payload != null) {
          b.restoreRequest.replace(payload);
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
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

  static const List<_i1.SmithySerializer<_i2.RestoreRequest?>> serializers = [
    RestoreObjectRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreObjectRequestBuilder b) {}

  /// The bucket name containing the object to restore.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Object key for which the action was initiated.
  String get key;

  /// VersionId used to reference a specific version of the object.
  String? get versionId;

  /// Container for restore job parameters.
  _i2.RestoreRequest? get restoreRequest;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i4.RequestPayer? get requestPayer;

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
  _i2.RestoreRequest? getPayload() => restoreRequest ?? _i2.RestoreRequest();
  @override
  List<Object?> get props => [
        bucket,
        key,
        versionId,
        restoreRequest,
        requestPayer,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreObjectRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'restoreRequest',
        restoreRequest,
      )
      ..add(
        'requestPayer',
        requestPayer,
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

class RestoreObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.RestoreRequest> {
  const RestoreObjectRequestRestXmlSerializer() : super('RestoreObjectRequest');

  @override
  Iterable<Type> get types => const [
        RestoreObjectRequest,
        _$RestoreObjectRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.RestoreRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.RestoreRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Days':
          result.days = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'GlacierJobParameters':
          result.glacierJobParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.GlacierJobParameters),
          ) as _i6.GlacierJobParameters));
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.RestoreRequestType),
          ) as _i7.RestoreRequestType);
        case 'Tier':
          result.tier = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.Tier),
          ) as _i8.Tier);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SelectParameters':
          result.selectParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.SelectParameters),
          ) as _i9.SelectParameters));
        case 'OutputLocation':
          result.outputLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.OutputLocation),
          ) as _i10.OutputLocation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.RestoreRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RestoreRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.RestoreRequest(
      :days,
      :glacierJobParameters,
      :type,
      :tier,
      :description,
      :selectParameters,
      :outputLocation
    ) = object;
    if (days != null) {
      result$
        ..add(const _i1.XmlElementName('Days'))
        ..add(serializers.serialize(
          days,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (glacierJobParameters != null) {
      result$
        ..add(const _i1.XmlElementName('GlacierJobParameters'))
        ..add(serializers.serialize(
          glacierJobParameters,
          specifiedType: const FullType(_i6.GlacierJobParameters),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i7.RestoreRequestType),
        ));
    }
    if (tier != null) {
      result$
        ..add(const _i1.XmlElementName('Tier'))
        ..add(serializers.serialize(
          tier,
          specifiedType: const FullType.nullable(_i8.Tier),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (selectParameters != null) {
      result$
        ..add(const _i1.XmlElementName('SelectParameters'))
        ..add(serializers.serialize(
          selectParameters,
          specifiedType: const FullType(_i9.SelectParameters),
        ));
    }
    if (outputLocation != null) {
      result$
        ..add(const _i1.XmlElementName('OutputLocation'))
        ..add(serializers.serialize(
          outputLocation,
          specifiedType: const FullType(_i10.OutputLocation),
        ));
    }
    return result$;
  }
}
