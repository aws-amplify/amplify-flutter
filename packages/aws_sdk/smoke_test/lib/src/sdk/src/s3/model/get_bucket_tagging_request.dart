// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_tagging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_tagging_request.g.dart';

abstract class GetBucketTaggingRequest
    with
        _i1.HttpInput<GetBucketTaggingRequestPayload>,
        _i2.AWSEquatable<GetBucketTaggingRequest>
    implements
        Built<GetBucketTaggingRequest, GetBucketTaggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketTaggingRequestPayload> {
  factory GetBucketTaggingRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketTaggingRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketTaggingRequest.build(
          [void Function(GetBucketTaggingRequestBuilder) updates]) =
      _$GetBucketTaggingRequest;

  const GetBucketTaggingRequest._();

  factory GetBucketTaggingRequest.fromRequest(
    GetBucketTaggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketTaggingRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketTaggingRequestPayload>>
      serializers = [GetBucketTaggingRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketTaggingRequestBuilder b) {}

  /// The name of the bucket for which to get the tagging information.
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
  GetBucketTaggingRequestPayload getPayload() =>
      GetBucketTaggingRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketTaggingRequest')
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
abstract class GetBucketTaggingRequestPayload
    with
        _i2.AWSEquatable<GetBucketTaggingRequestPayload>
    implements
        Built<GetBucketTaggingRequestPayload,
            GetBucketTaggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketTaggingRequestPayload(
          [void Function(GetBucketTaggingRequestPayloadBuilder) updates]) =
      _$GetBucketTaggingRequestPayload;

  const GetBucketTaggingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketTaggingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketTaggingRequestPayload');
    return helper.toString();
  }
}

class GetBucketTaggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketTaggingRequestPayload> {
  const GetBucketTaggingRequestRestXmlSerializer()
      : super('GetBucketTaggingRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketTaggingRequest,
        _$GetBucketTaggingRequest,
        GetBucketTaggingRequestPayload,
        _$GetBucketTaggingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketTaggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketTaggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketTaggingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketTaggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
