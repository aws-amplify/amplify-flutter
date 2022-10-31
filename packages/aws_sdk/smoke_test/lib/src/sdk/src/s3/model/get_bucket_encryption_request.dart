// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_encryption_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_encryption_request.g.dart';

abstract class GetBucketEncryptionRequest
    with
        _i1.HttpInput<GetBucketEncryptionRequestPayload>,
        _i2.AWSEquatable<GetBucketEncryptionRequest>
    implements
        Built<GetBucketEncryptionRequest, GetBucketEncryptionRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketEncryptionRequestPayload> {
  factory GetBucketEncryptionRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketEncryptionRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketEncryptionRequest.build(
          [void Function(GetBucketEncryptionRequestBuilder) updates]) =
      _$GetBucketEncryptionRequest;

  const GetBucketEncryptionRequest._();

  factory GetBucketEncryptionRequest.fromRequest(
    GetBucketEncryptionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketEncryptionRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketEncryptionRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketEncryptionRequestBuilder b) {}

  /// The name of the bucket from which the server-side encryption configuration is retrieved.
  String get bucket;

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
  GetBucketEncryptionRequestPayload getPayload() =>
      GetBucketEncryptionRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketEncryptionRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketEncryptionRequestPayload
    with
        _i2.AWSEquatable<GetBucketEncryptionRequestPayload>
    implements
        Built<GetBucketEncryptionRequestPayload,
            GetBucketEncryptionRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketEncryptionRequestPayload(
          [void Function(GetBucketEncryptionRequestPayloadBuilder) updates]) =
      _$GetBucketEncryptionRequestPayload;

  const GetBucketEncryptionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketEncryptionRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketEncryptionRequestPayload');
    return helper.toString();
  }
}

class GetBucketEncryptionRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketEncryptionRequestPayload> {
  const GetBucketEncryptionRequestRestXmlSerializer()
      : super('GetBucketEncryptionRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketEncryptionRequest,
        _$GetBucketEncryptionRequest,
        GetBucketEncryptionRequestPayload,
        _$GetBucketEncryptionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketEncryptionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketEncryptionRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketEncryptionRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
