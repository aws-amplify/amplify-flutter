// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_accelerate_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/accelerate_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart';

part 'put_bucket_accelerate_configuration_request.g.dart';

abstract class PutBucketAccelerateConfigurationRequest
    with
        _i1.HttpInput<AccelerateConfiguration>,
        _i2.AWSEquatable<PutBucketAccelerateConfigurationRequest>
    implements
        Built<PutBucketAccelerateConfigurationRequest,
            PutBucketAccelerateConfigurationRequestBuilder>,
        _i1.HasPayload<AccelerateConfiguration> {
  factory PutBucketAccelerateConfigurationRequest({
    required String bucket,
    required AccelerateConfiguration accelerateConfiguration,
    String? expectedBucketOwner,
    ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$PutBucketAccelerateConfigurationRequest._(
      bucket: bucket,
      accelerateConfiguration: accelerateConfiguration,
      expectedBucketOwner: expectedBucketOwner,
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  factory PutBucketAccelerateConfigurationRequest.build(
      [void Function(PutBucketAccelerateConfigurationRequestBuilder)
          updates]) = _$PutBucketAccelerateConfigurationRequest;

  const PutBucketAccelerateConfigurationRequest._();

  factory PutBucketAccelerateConfigurationRequest.fromRequest(
    AccelerateConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketAccelerateConfigurationRequest.build((b) {
        b.accelerateConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer<AccelerateConfiguration>> serializers =
      [PutBucketAccelerateConfigurationRequestRestXmlSerializer()];

  /// The name of the bucket for which the accelerate configuration is set.
  String get bucket;

  /// Container for setting the transfer acceleration state.
  AccelerateConfiguration get accelerateConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
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
  AccelerateConfiguration getPayload() => accelerateConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        accelerateConfiguration,
        expectedBucketOwner,
        checksumAlgorithm,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketAccelerateConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'accelerateConfiguration',
            accelerateConfiguration,
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

class PutBucketAccelerateConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AccelerateConfiguration> {
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
  AccelerateConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccelerateConfigurationBuilder();
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
            specifiedType: const FullType(BucketAccelerateStatus),
          ) as BucketAccelerateStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccelerateConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AccelerateConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AccelerateConfiguration(:status) = object;
    if (status != null) {
      result$
        ..add(const _i1.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(BucketAccelerateStatus),
        ));
    }
    return result$;
  }
}
