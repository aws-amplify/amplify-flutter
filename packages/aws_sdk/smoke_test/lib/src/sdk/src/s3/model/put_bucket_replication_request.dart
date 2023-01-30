// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_replication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/replication_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule.dart' as _i5;

part 'put_bucket_replication_request.g.dart';

abstract class PutBucketReplicationRequest
    with
        _i1.HttpInput<_i2.ReplicationConfiguration>,
        _i3.AWSEquatable<PutBucketReplicationRequest>
    implements
        Built<PutBucketReplicationRequest, PutBucketReplicationRequestBuilder>,
        _i1.HasPayload<_i2.ReplicationConfiguration> {
  factory PutBucketReplicationRequest({
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    String? contentMd5,
    String? expectedBucketOwner,
    required _i2.ReplicationConfiguration replicationConfiguration,
    String? token,
  }) {
    return _$PutBucketReplicationRequest._(
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      replicationConfiguration: replicationConfiguration,
      token: token,
    );
  }

  factory PutBucketReplicationRequest.build(
          [void Function(PutBucketReplicationRequestBuilder) updates]) =
      _$PutBucketReplicationRequest;

  const PutBucketReplicationRequest._();

  factory PutBucketReplicationRequest.fromRequest(
    _i2.ReplicationConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketReplicationRequest.build((b) {
        b.replicationConfiguration.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-bucket-object-lock-token'] != null) {
          b.token = request.headers['x-amz-bucket-object-lock-token']!;
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketReplicationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketReplicationRequestBuilder b) {}

  /// The name of the bucket
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see [RFC 1864](http://www.ietf.org/rfc/rfc1864.txt).
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
  _i2.ReplicationConfiguration get replicationConfiguration;

  /// A token to allow Object Lock to be enabled for an existing bucket.
  String? get token;
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
  _i2.ReplicationConfiguration getPayload() => replicationConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        contentMd5,
        expectedBucketOwner,
        replicationConfiguration,
        token,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketReplicationRequest');
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
      'replicationConfiguration',
      replicationConfiguration,
    );
    helper.add(
      'token',
      token,
    );
    return helper.toString();
  }
}

class PutBucketReplicationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.ReplicationConfiguration> {
  const PutBucketReplicationRequestRestXmlSerializer()
      : super('PutBucketReplicationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketReplicationRequest,
        _$PutBucketReplicationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.ReplicationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.ReplicationConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Role':
          result.role = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ReplicationRule),
          ) as _i5.ReplicationRule));
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
    final payload = object is PutBucketReplicationRequest
        ? object.getPayload()
        : (object as _i2.ReplicationConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ReplicationConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Role'))
      ..add(serializers.serialize(
        payload.role,
        specifiedType: const FullType(String),
      ));
    result
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i6.BuiltList,
        [FullType(_i5.ReplicationRule)],
      ),
    ));
    return result;
  }
}
