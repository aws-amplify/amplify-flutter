// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_website_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_website_request.g.dart';

abstract class GetBucketWebsiteRequest
    with
        _i1.HttpInput<GetBucketWebsiteRequestPayload>,
        _i2.AWSEquatable<GetBucketWebsiteRequest>
    implements
        Built<GetBucketWebsiteRequest, GetBucketWebsiteRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketWebsiteRequestPayload> {
  factory GetBucketWebsiteRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketWebsiteRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketWebsiteRequest.build(
          [void Function(GetBucketWebsiteRequestBuilder) updates]) =
      _$GetBucketWebsiteRequest;

  const GetBucketWebsiteRequest._();

  factory GetBucketWebsiteRequest.fromRequest(
    GetBucketWebsiteRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketWebsiteRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketWebsiteRequestPayload>>
      serializers = [GetBucketWebsiteRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketWebsiteRequestBuilder b) {}

  /// The bucket name for which to get the website configuration.
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
  GetBucketWebsiteRequestPayload getPayload() =>
      GetBucketWebsiteRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketWebsiteRequest')
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
abstract class GetBucketWebsiteRequestPayload
    with
        _i2.AWSEquatable<GetBucketWebsiteRequestPayload>
    implements
        Built<GetBucketWebsiteRequestPayload,
            GetBucketWebsiteRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketWebsiteRequestPayload(
          [void Function(GetBucketWebsiteRequestPayloadBuilder) updates]) =
      _$GetBucketWebsiteRequestPayload;

  const GetBucketWebsiteRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketWebsiteRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketWebsiteRequestPayload');
    return helper.toString();
  }
}

class GetBucketWebsiteRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketWebsiteRequestPayload> {
  const GetBucketWebsiteRequestRestXmlSerializer()
      : super('GetBucketWebsiteRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketWebsiteRequest,
        _$GetBucketWebsiteRequest,
        GetBucketWebsiteRequestPayload,
        _$GetBucketWebsiteRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketWebsiteRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketWebsiteRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketWebsiteRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketWebsiteRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
