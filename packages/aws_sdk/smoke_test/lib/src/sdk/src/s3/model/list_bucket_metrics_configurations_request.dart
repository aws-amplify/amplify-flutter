// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_metrics_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'list_bucket_metrics_configurations_request.g.dart';

abstract class ListBucketMetricsConfigurationsRequest
    with
        _i1.HttpInput<ListBucketMetricsConfigurationsRequestPayload>,
        _i2.AWSEquatable<ListBucketMetricsConfigurationsRequest>
    implements
        Built<ListBucketMetricsConfigurationsRequest,
            ListBucketMetricsConfigurationsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListBucketMetricsConfigurationsRequestPayload> {
  factory ListBucketMetricsConfigurationsRequest({
    required String bucket,
    String? continuationToken,
    String? expectedBucketOwner,
  }) {
    return _$ListBucketMetricsConfigurationsRequest._(
      bucket: bucket,
      continuationToken: continuationToken,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory ListBucketMetricsConfigurationsRequest.build(
      [void Function(ListBucketMetricsConfigurationsRequestBuilder)
          updates]) = _$ListBucketMetricsConfigurationsRequest;

  const ListBucketMetricsConfigurationsRequest._();

  factory ListBucketMetricsConfigurationsRequest.fromRequest(
    ListBucketMetricsConfigurationsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListBucketMetricsConfigurationsRequest.build((b) {
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
    ListBucketMetricsConfigurationsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketMetricsConfigurationsRequestBuilder b) {}

  /// The name of the bucket containing the metrics configurations to retrieve.
  String get bucket;

  /// The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
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
  ListBucketMetricsConfigurationsRequestPayload getPayload() =>
      ListBucketMetricsConfigurationsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        continuationToken,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketMetricsConfigurationsRequest');
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
abstract class ListBucketMetricsConfigurationsRequestPayload
    with
        _i2.AWSEquatable<ListBucketMetricsConfigurationsRequestPayload>
    implements
        Built<ListBucketMetricsConfigurationsRequestPayload,
            ListBucketMetricsConfigurationsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListBucketMetricsConfigurationsRequestPayload(
      [void Function(ListBucketMetricsConfigurationsRequestPayloadBuilder)
          updates]) = _$ListBucketMetricsConfigurationsRequestPayload;

  const ListBucketMetricsConfigurationsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketMetricsConfigurationsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketMetricsConfigurationsRequestPayload');
    return helper.toString();
  }
}

class ListBucketMetricsConfigurationsRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<ListBucketMetricsConfigurationsRequestPayload> {
  const ListBucketMetricsConfigurationsRequestRestXmlSerializer()
      : super('ListBucketMetricsConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        ListBucketMetricsConfigurationsRequest,
        _$ListBucketMetricsConfigurationsRequest,
        ListBucketMetricsConfigurationsRequestPayload,
        _$ListBucketMetricsConfigurationsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketMetricsConfigurationsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListBucketMetricsConfigurationsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListBucketMetricsConfigurationsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
