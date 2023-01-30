// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_ownership_controls_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_ownership_controls_request.g.dart';

abstract class GetBucketOwnershipControlsRequest
    with
        _i1.HttpInput<GetBucketOwnershipControlsRequestPayload>,
        _i2.AWSEquatable<GetBucketOwnershipControlsRequest>
    implements
        Built<GetBucketOwnershipControlsRequest,
            GetBucketOwnershipControlsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketOwnershipControlsRequestPayload> {
  factory GetBucketOwnershipControlsRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketOwnershipControlsRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketOwnershipControlsRequest.build(
          [void Function(GetBucketOwnershipControlsRequestBuilder) updates]) =
      _$GetBucketOwnershipControlsRequest;

  const GetBucketOwnershipControlsRequest._();

  factory GetBucketOwnershipControlsRequest.fromRequest(
    GetBucketOwnershipControlsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketOwnershipControlsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketOwnershipControlsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketOwnershipControlsRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose `OwnershipControls` you want to retrieve.
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
  GetBucketOwnershipControlsRequestPayload getPayload() =>
      GetBucketOwnershipControlsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketOwnershipControlsRequest');
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
abstract class GetBucketOwnershipControlsRequestPayload
    with
        _i2.AWSEquatable<GetBucketOwnershipControlsRequestPayload>
    implements
        Built<GetBucketOwnershipControlsRequestPayload,
            GetBucketOwnershipControlsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketOwnershipControlsRequestPayload(
      [void Function(GetBucketOwnershipControlsRequestPayloadBuilder)
          updates]) = _$GetBucketOwnershipControlsRequestPayload;

  const GetBucketOwnershipControlsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketOwnershipControlsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketOwnershipControlsRequestPayload');
    return helper.toString();
  }
}

class GetBucketOwnershipControlsRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketOwnershipControlsRequestPayload> {
  const GetBucketOwnershipControlsRequestRestXmlSerializer()
      : super('GetBucketOwnershipControlsRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketOwnershipControlsRequest,
        _$GetBucketOwnershipControlsRequest,
        GetBucketOwnershipControlsRequestPayload,
        _$GetBucketOwnershipControlsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketOwnershipControlsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketOwnershipControlsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketOwnershipControlsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
