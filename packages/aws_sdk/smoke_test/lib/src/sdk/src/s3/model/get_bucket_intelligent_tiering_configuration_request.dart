// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_intelligent_tiering_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_intelligent_tiering_configuration_request.g.dart';

abstract class GetBucketIntelligentTieringConfigurationRequest
    with
        _i1.HttpInput<GetBucketIntelligentTieringConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketIntelligentTieringConfigurationRequest>
    implements
        Built<GetBucketIntelligentTieringConfigurationRequest,
            GetBucketIntelligentTieringConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketIntelligentTieringConfigurationRequestPayload> {
  factory GetBucketIntelligentTieringConfigurationRequest({
    required String bucket,
    required String id,
  }) {
    return _$GetBucketIntelligentTieringConfigurationRequest._(
      bucket: bucket,
      id: id,
    );
  }

  factory GetBucketIntelligentTieringConfigurationRequest.build(
      [void Function(GetBucketIntelligentTieringConfigurationRequestBuilder)
          updates]) = _$GetBucketIntelligentTieringConfigurationRequest;

  const GetBucketIntelligentTieringConfigurationRequest._();

  factory GetBucketIntelligentTieringConfigurationRequest.fromRequest(
    GetBucketIntelligentTieringConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketIntelligentTieringConfigurationRequest.build((b) {
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketIntelligentTieringConfigurationRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
  String get bucket;

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
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
  GetBucketIntelligentTieringConfigurationRequestPayload getPayload() =>
      GetBucketIntelligentTieringConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketIntelligentTieringConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketIntelligentTieringConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketIntelligentTieringConfigurationRequestPayload>
    implements
        Built<GetBucketIntelligentTieringConfigurationRequestPayload,
            GetBucketIntelligentTieringConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketIntelligentTieringConfigurationRequestPayload(
      [void Function(
              GetBucketIntelligentTieringConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketIntelligentTieringConfigurationRequestPayload;

  const GetBucketIntelligentTieringConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetBucketIntelligentTieringConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketIntelligentTieringConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketIntelligentTieringConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        GetBucketIntelligentTieringConfigurationRequestPayload> {
  const GetBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
      : super('GetBucketIntelligentTieringConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketIntelligentTieringConfigurationRequest,
        _$GetBucketIntelligentTieringConfigurationRequest,
        GetBucketIntelligentTieringConfigurationRequestPayload,
        _$GetBucketIntelligentTieringConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketIntelligentTieringConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketIntelligentTieringConfigurationRequestPayloadBuilder()
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
        'GetBucketIntelligentTieringConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
