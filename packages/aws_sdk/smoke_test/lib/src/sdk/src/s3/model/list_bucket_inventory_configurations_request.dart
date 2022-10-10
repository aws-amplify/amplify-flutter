// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_inventory_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'list_bucket_inventory_configurations_request.g.dart';

abstract class ListBucketInventoryConfigurationsRequest
    with
        _i1.HttpInput<ListBucketInventoryConfigurationsRequestPayload>,
        _i2.AWSEquatable<ListBucketInventoryConfigurationsRequest>
    implements
        Built<ListBucketInventoryConfigurationsRequest,
            ListBucketInventoryConfigurationsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListBucketInventoryConfigurationsRequestPayload> {
  factory ListBucketInventoryConfigurationsRequest({
    required String bucket,
    String? continuationToken,
    String? expectedBucketOwner,
  }) {
    return _$ListBucketInventoryConfigurationsRequest._(
      bucket: bucket,
      continuationToken: continuationToken,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory ListBucketInventoryConfigurationsRequest.build(
      [void Function(ListBucketInventoryConfigurationsRequestBuilder)
          updates]) = _$ListBucketInventoryConfigurationsRequest;

  const ListBucketInventoryConfigurationsRequest._();

  factory ListBucketInventoryConfigurationsRequest.fromRequest(
    ListBucketInventoryConfigurationsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListBucketInventoryConfigurationsRequest.build((b) {
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
    ListBucketInventoryConfigurationsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketInventoryConfigurationsRequestBuilder b) {}

  /// The name of the bucket containing the inventory configurations to retrieve.
  String get bucket;

  /// The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
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
  ListBucketInventoryConfigurationsRequestPayload getPayload() =>
      ListBucketInventoryConfigurationsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        continuationToken,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketInventoryConfigurationsRequest');
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
abstract class ListBucketInventoryConfigurationsRequestPayload
    with
        _i2.AWSEquatable<ListBucketInventoryConfigurationsRequestPayload>
    implements
        Built<ListBucketInventoryConfigurationsRequestPayload,
            ListBucketInventoryConfigurationsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListBucketInventoryConfigurationsRequestPayload(
      [void Function(ListBucketInventoryConfigurationsRequestPayloadBuilder)
          updates]) = _$ListBucketInventoryConfigurationsRequestPayload;

  const ListBucketInventoryConfigurationsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketInventoryConfigurationsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketInventoryConfigurationsRequestPayload');
    return helper.toString();
  }
}

class ListBucketInventoryConfigurationsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        ListBucketInventoryConfigurationsRequestPayload> {
  const ListBucketInventoryConfigurationsRequestRestXmlSerializer()
      : super('ListBucketInventoryConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        ListBucketInventoryConfigurationsRequest,
        _$ListBucketInventoryConfigurationsRequest,
        ListBucketInventoryConfigurationsRequestPayload,
        _$ListBucketInventoryConfigurationsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketInventoryConfigurationsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListBucketInventoryConfigurationsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListBucketInventoryConfigurationsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
