// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_intelligent_tiering_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'list_bucket_intelligent_tiering_configurations_request.g.dart';

abstract class ListBucketIntelligentTieringConfigurationsRequest
    with
        _i1.HttpInput<ListBucketIntelligentTieringConfigurationsRequestPayload>,
        _i2.AWSEquatable<ListBucketIntelligentTieringConfigurationsRequest>
    implements
        Built<ListBucketIntelligentTieringConfigurationsRequest,
            ListBucketIntelligentTieringConfigurationsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<
            ListBucketIntelligentTieringConfigurationsRequestPayload> {
  factory ListBucketIntelligentTieringConfigurationsRequest({
    required String bucket,
    String? continuationToken,
  }) {
    return _$ListBucketIntelligentTieringConfigurationsRequest._(
      bucket: bucket,
      continuationToken: continuationToken,
    );
  }

  factory ListBucketIntelligentTieringConfigurationsRequest.build(
      [void Function(ListBucketIntelligentTieringConfigurationsRequestBuilder)
          updates]) = _$ListBucketIntelligentTieringConfigurationsRequest;

  const ListBucketIntelligentTieringConfigurationsRequest._();

  factory ListBucketIntelligentTieringConfigurationsRequest.fromRequest(
    ListBucketIntelligentTieringConfigurationsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListBucketIntelligentTieringConfigurationsRequest.build((b) {
        if (request.queryParameters['continuation-token'] != null) {
          b.continuationToken = request.queryParameters['continuation-token']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ListBucketIntelligentTieringConfigurationsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ListBucketIntelligentTieringConfigurationsRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
  String get bucket;

  /// The `ContinuationToken` that represents a placeholder from where this request should begin.
  String? get continuationToken;
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
  ListBucketIntelligentTieringConfigurationsRequestPayload getPayload() =>
      ListBucketIntelligentTieringConfigurationsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        continuationToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketIntelligentTieringConfigurationsRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'continuationToken',
      continuationToken,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class ListBucketIntelligentTieringConfigurationsRequestPayload
    with
        _i2.AWSEquatable<
            ListBucketIntelligentTieringConfigurationsRequestPayload>
    implements
        Built<ListBucketIntelligentTieringConfigurationsRequestPayload,
            ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListBucketIntelligentTieringConfigurationsRequestPayload(
      [void Function(
              ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder)
          updates]) = _$ListBucketIntelligentTieringConfigurationsRequestPayload;

  const ListBucketIntelligentTieringConfigurationsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketIntelligentTieringConfigurationsRequestPayload');
    return helper.toString();
  }
}

class ListBucketIntelligentTieringConfigurationsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        ListBucketIntelligentTieringConfigurationsRequestPayload> {
  const ListBucketIntelligentTieringConfigurationsRequestRestXmlSerializer()
      : super('ListBucketIntelligentTieringConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        ListBucketIntelligentTieringConfigurationsRequest,
        _$ListBucketIntelligentTieringConfigurationsRequest,
        ListBucketIntelligentTieringConfigurationsRequestPayload,
        _$ListBucketIntelligentTieringConfigurationsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketIntelligentTieringConfigurationsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder()
        .build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListBucketIntelligentTieringConfigurationsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
