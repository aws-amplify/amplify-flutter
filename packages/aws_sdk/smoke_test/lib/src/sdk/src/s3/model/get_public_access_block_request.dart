// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_public_access_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_public_access_block_request.g.dart';

abstract class GetPublicAccessBlockRequest
    with
        _i1.HttpInput<GetPublicAccessBlockRequestPayload>,
        _i2.AWSEquatable<GetPublicAccessBlockRequest>
    implements
        Built<GetPublicAccessBlockRequest, GetPublicAccessBlockRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetPublicAccessBlockRequestPayload> {
  factory GetPublicAccessBlockRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetPublicAccessBlockRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetPublicAccessBlockRequest.build(
          [void Function(GetPublicAccessBlockRequestBuilder) updates]) =
      _$GetPublicAccessBlockRequest;

  const GetPublicAccessBlockRequest._();

  factory GetPublicAccessBlockRequest.fromRequest(
    GetPublicAccessBlockRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetPublicAccessBlockRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetPublicAccessBlockRequestPayload>>
      serializers = [GetPublicAccessBlockRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPublicAccessBlockRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose `PublicAccessBlock` configuration you want to retrieve.
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
  GetPublicAccessBlockRequestPayload getPayload() =>
      GetPublicAccessBlockRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPublicAccessBlockRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetPublicAccessBlockRequestPayload
    with
        _i2.AWSEquatable<GetPublicAccessBlockRequestPayload>
    implements
        Built<GetPublicAccessBlockRequestPayload,
            GetPublicAccessBlockRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetPublicAccessBlockRequestPayload(
          [void Function(GetPublicAccessBlockRequestPayloadBuilder) updates]) =
      _$GetPublicAccessBlockRequestPayload;

  const GetPublicAccessBlockRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPublicAccessBlockRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetPublicAccessBlockRequestPayload');
    return helper.toString();
  }
}

class GetPublicAccessBlockRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetPublicAccessBlockRequestPayload> {
  const GetPublicAccessBlockRequestRestXmlSerializer()
      : super('GetPublicAccessBlockRequest');

  @override
  Iterable<Type> get types => const [
        GetPublicAccessBlockRequest,
        _$GetPublicAccessBlockRequest,
        GetPublicAccessBlockRequestPayload,
        _$GetPublicAccessBlockRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetPublicAccessBlockRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetPublicAccessBlockRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetPublicAccessBlockRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetPublicAccessBlockRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
