// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_analytics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_analytics_configuration_request.g.dart';

abstract class GetBucketAnalyticsConfigurationRequest
    with
        _i1.HttpInput<GetBucketAnalyticsConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketAnalyticsConfigurationRequest>
    implements
        Built<GetBucketAnalyticsConfigurationRequest,
            GetBucketAnalyticsConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketAnalyticsConfigurationRequestPayload> {
  factory GetBucketAnalyticsConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String id,
  }) {
    return _$GetBucketAnalyticsConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
    );
  }

  factory GetBucketAnalyticsConfigurationRequest.build(
      [void Function(GetBucketAnalyticsConfigurationRequestBuilder)
          updates]) = _$GetBucketAnalyticsConfigurationRequest;

  const GetBucketAnalyticsConfigurationRequest._();

  factory GetBucketAnalyticsConfigurationRequest.fromRequest(
    GetBucketAnalyticsConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketAnalyticsConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketAnalyticsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAnalyticsConfigurationRequestBuilder b) {}

  /// The name of the bucket from which an analytics configuration is retrieved.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The ID that identifies the analytics configuration.
  String get id;
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
  GetBucketAnalyticsConfigurationRequestPayload getPayload() =>
      GetBucketAnalyticsConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        id,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketAnalyticsConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketAnalyticsConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketAnalyticsConfigurationRequestPayload>
    implements
        Built<GetBucketAnalyticsConfigurationRequestPayload,
            GetBucketAnalyticsConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketAnalyticsConfigurationRequestPayload(
      [void Function(GetBucketAnalyticsConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketAnalyticsConfigurationRequestPayload;

  const GetBucketAnalyticsConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAnalyticsConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketAnalyticsConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketAnalyticsConfigurationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketAnalyticsConfigurationRequestPayload> {
  const GetBucketAnalyticsConfigurationRequestRestXmlSerializer()
      : super('GetBucketAnalyticsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketAnalyticsConfigurationRequest,
        _$GetBucketAnalyticsConfigurationRequest,
        GetBucketAnalyticsConfigurationRequestPayload,
        _$GetBucketAnalyticsConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAnalyticsConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketAnalyticsConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketAnalyticsConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
