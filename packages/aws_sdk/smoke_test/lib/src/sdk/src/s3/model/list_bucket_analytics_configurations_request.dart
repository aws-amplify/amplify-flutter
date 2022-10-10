// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_analytics_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'list_bucket_analytics_configurations_request.g.dart';

abstract class ListBucketAnalyticsConfigurationsRequest
    with
        _i1.HttpInput<ListBucketAnalyticsConfigurationsRequestPayload>,
        _i2.AWSEquatable<ListBucketAnalyticsConfigurationsRequest>
    implements
        Built<ListBucketAnalyticsConfigurationsRequest,
            ListBucketAnalyticsConfigurationsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListBucketAnalyticsConfigurationsRequestPayload> {
  factory ListBucketAnalyticsConfigurationsRequest({
    required String bucket,
    String? continuationToken,
    String? expectedBucketOwner,
  }) {
    return _$ListBucketAnalyticsConfigurationsRequest._(
      bucket: bucket,
      continuationToken: continuationToken,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory ListBucketAnalyticsConfigurationsRequest.build(
      [void Function(ListBucketAnalyticsConfigurationsRequestBuilder)
          updates]) = _$ListBucketAnalyticsConfigurationsRequest;

  const ListBucketAnalyticsConfigurationsRequest._();

  factory ListBucketAnalyticsConfigurationsRequest.fromRequest(
    ListBucketAnalyticsConfigurationsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListBucketAnalyticsConfigurationsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['continuation-token'] != null) {
          b.continuationToken = request.queryParameters['continuation-token']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ListBucketAnalyticsConfigurationsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketAnalyticsConfigurationsRequestBuilder b) {}

  /// The name of the bucket from which analytics configurations are retrieved.
  String get bucket;

  /// The ContinuationToken that represents a placeholder from where this request should begin.
  String? get continuationToken;

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
  ListBucketAnalyticsConfigurationsRequestPayload getPayload() =>
      ListBucketAnalyticsConfigurationsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        continuationToken,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketAnalyticsConfigurationsRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'continuationToken',
      continuationToken,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class ListBucketAnalyticsConfigurationsRequestPayload
    with
        _i2.AWSEquatable<ListBucketAnalyticsConfigurationsRequestPayload>
    implements
        Built<ListBucketAnalyticsConfigurationsRequestPayload,
            ListBucketAnalyticsConfigurationsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListBucketAnalyticsConfigurationsRequestPayload(
      [void Function(ListBucketAnalyticsConfigurationsRequestPayloadBuilder)
          updates]) = _$ListBucketAnalyticsConfigurationsRequestPayload;

  const ListBucketAnalyticsConfigurationsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketAnalyticsConfigurationsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketAnalyticsConfigurationsRequestPayload');
    return helper.toString();
  }
}

class ListBucketAnalyticsConfigurationsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        ListBucketAnalyticsConfigurationsRequestPayload> {
  const ListBucketAnalyticsConfigurationsRequestRestXmlSerializer()
      : super('ListBucketAnalyticsConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        ListBucketAnalyticsConfigurationsRequest,
        _$ListBucketAnalyticsConfigurationsRequest,
        ListBucketAnalyticsConfigurationsRequestPayload,
        _$ListBucketAnalyticsConfigurationsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketAnalyticsConfigurationsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListBucketAnalyticsConfigurationsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListBucketAnalyticsConfigurationsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
