// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_bucket_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i3;

part 'put_bucket_policy_request.g.dart';

abstract class PutBucketPolicyRequest
    with _i1.HttpInput<String>, _i2.AWSEquatable<PutBucketPolicyRequest>
    implements
        Built<PutBucketPolicyRequest, PutBucketPolicyRequestBuilder>,
        _i1.HasPayload<String> {
  factory PutBucketPolicyRequest({
    required String bucket,
    String? contentMd5,
    _i3.ChecksumAlgorithm? checksumAlgorithm,
    bool? confirmRemoveSelfBucketAccess,
    required String policy,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketPolicyRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      checksumAlgorithm: checksumAlgorithm,
      confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
      policy: policy,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketPolicyRequest.build(
          [void Function(PutBucketPolicyRequestBuilder) updates]) =
      _$PutBucketPolicyRequest;

  const PutBucketPolicyRequest._();

  factory PutBucketPolicyRequest.fromRequest(
    String payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketPolicyRequest.build((b) {
        b.policy = payload;
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i3.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-confirm-remove-self-bucket-access'] !=
            null) {
          b.confirmRemoveSelfBucketAccess =
              request.headers['x-amz-confirm-remove-self-bucket-access']! ==
                  'true';
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<String>> serializers = [
    PutBucketPolicyRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketPolicyRequestBuilder b) {}

  /// The name of the bucket.
  String get bucket;

  /// The MD5 hash of the request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i3.ChecksumAlgorithm? get checksumAlgorithm;

  /// Set this parameter to true to confirm that you want to remove your permissions to change this bucket policy in the future.
  bool? get confirmRemoveSelfBucketAccess;

  /// The bucket policy as a JSON document.
  String get policy;

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
  String getPayload() => policy;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        checksumAlgorithm,
        confirmRemoveSelfBucketAccess,
        policy,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutBucketPolicyRequest')
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
        'confirmRemoveSelfBucketAccess',
        confirmRemoveSelfBucketAccess,
      )
      ..add(
        'policy',
        policy,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

class PutBucketPolicyRequestRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<String> {
  const PutBucketPolicyRequestRestXmlSerializer()
      : super('PutBucketPolicyRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketPolicyRequest,
        _$PutBucketPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  String deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(String),
    ) as String);
  }

  @override
  Object serialize(
    Serializers serializers,
    String object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PutBucketPolicyRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    result$.add(serializers.serialize(
      object,
      specifiedType: const FullType(String),
    ));
    return result$;
  }
}
