// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_accelerate_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/accelerate_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;

part 'put_bucket_accelerate_configuration_request.g.dart';

abstract class PutBucketAccelerateConfigurationRequest
    with
        _i1.HttpInput<_i2.AccelerateConfiguration>,
        _i3.AWSEquatable<PutBucketAccelerateConfigurationRequest>
    implements
        Built<PutBucketAccelerateConfigurationRequest,
            PutBucketAccelerateConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.AccelerateConfiguration> {
  factory PutBucketAccelerateConfigurationRequest({
    required _i2.AccelerateConfiguration accelerateConfiguration,
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketAccelerateConfigurationRequest._(
      accelerateConfiguration: accelerateConfiguration,
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketAccelerateConfigurationRequest.build(
      [void Function(PutBucketAccelerateConfigurationRequestBuilder)
          updates]) = _$PutBucketAccelerateConfigurationRequest;

  const PutBucketAccelerateConfigurationRequest._();

  factory PutBucketAccelerateConfigurationRequest.fromRequest(
    _i2.AccelerateConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketAccelerateConfigurationRequest.build((b) {
        b.accelerateConfiguration.replace(payload);
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketAccelerateConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketAccelerateConfigurationRequestBuilder b) {}

  /// Container for setting the transfer acceleration state.
  _i2.AccelerateConfiguration get accelerateConfiguration;

  /// The name of the bucket for which the accelerate configuration is set.
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

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
  _i2.AccelerateConfiguration getPayload() => accelerateConfiguration;
  @override
  List<Object?> get props => [
        accelerateConfiguration,
        bucket,
        checksumAlgorithm,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketAccelerateConfigurationRequest');
    helper.add(
      'accelerateConfiguration',
      accelerateConfiguration,
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
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    return helper.toString();
  }
}

class PutBucketAccelerateConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.AccelerateConfiguration> {
  const PutBucketAccelerateConfigurationRequestRestXmlSerializer()
      : super('PutBucketAccelerateConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketAccelerateConfigurationRequest,
        _$PutBucketAccelerateConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.AccelerateConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.AccelerateConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.BucketAccelerateStatus),
            ) as _i5.BucketAccelerateStatus);
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
    final payload = object is PutBucketAccelerateConfigurationRequest
        ? object.getPayload()
        : (object as _i2.AccelerateConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AccelerateConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i1.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i5.BucketAccelerateStatus),
        ));
    }
    return result;
  }
}
