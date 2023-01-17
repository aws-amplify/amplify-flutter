// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_request_payment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_request_payment_request.g.dart';

abstract class GetBucketRequestPaymentRequest
    with
        _i1.HttpInput<GetBucketRequestPaymentRequestPayload>,
        _i2.AWSEquatable<GetBucketRequestPaymentRequest>
    implements
        Built<GetBucketRequestPaymentRequest,
            GetBucketRequestPaymentRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketRequestPaymentRequestPayload> {
  factory GetBucketRequestPaymentRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketRequestPaymentRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketRequestPaymentRequest.build(
          [void Function(GetBucketRequestPaymentRequestBuilder) updates]) =
      _$GetBucketRequestPaymentRequest;

  const GetBucketRequestPaymentRequest._();

  factory GetBucketRequestPaymentRequest.fromRequest(
    GetBucketRequestPaymentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketRequestPaymentRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketRequestPaymentRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketRequestPaymentRequestBuilder b) {}

  /// The name of the bucket for which to get the payment request configuration
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
  GetBucketRequestPaymentRequestPayload getPayload() =>
      GetBucketRequestPaymentRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketRequestPaymentRequest');
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
abstract class GetBucketRequestPaymentRequestPayload
    with
        _i2.AWSEquatable<GetBucketRequestPaymentRequestPayload>
    implements
        Built<GetBucketRequestPaymentRequestPayload,
            GetBucketRequestPaymentRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketRequestPaymentRequestPayload(
      [void Function(GetBucketRequestPaymentRequestPayloadBuilder)
          updates]) = _$GetBucketRequestPaymentRequestPayload;

  const GetBucketRequestPaymentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketRequestPaymentRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketRequestPaymentRequestPayload');
    return helper.toString();
  }
}

class GetBucketRequestPaymentRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketRequestPaymentRequestPayload> {
  const GetBucketRequestPaymentRequestRestXmlSerializer()
      : super('GetBucketRequestPaymentRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketRequestPaymentRequest,
        _$GetBucketRequestPaymentRequest,
        GetBucketRequestPaymentRequestPayload,
        _$GetBucketRequestPaymentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketRequestPaymentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketRequestPaymentRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketRequestPaymentRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
