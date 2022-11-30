// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_lifecycle_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_lifecycle_configuration_request.g.dart';

abstract class GetBucketLifecycleConfigurationRequest
    with
        _i1.HttpInput<GetBucketLifecycleConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketLifecycleConfigurationRequest>
    implements
        Built<GetBucketLifecycleConfigurationRequest,
            GetBucketLifecycleConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketLifecycleConfigurationRequestPayload> {
  factory GetBucketLifecycleConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketLifecycleConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketLifecycleConfigurationRequest.build(
      [void Function(GetBucketLifecycleConfigurationRequestBuilder)
          updates]) = _$GetBucketLifecycleConfigurationRequest;

  const GetBucketLifecycleConfigurationRequest._();

  factory GetBucketLifecycleConfigurationRequest.fromRequest(
    GetBucketLifecycleConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketLifecycleConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketLifecycleConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLifecycleConfigurationRequestBuilder b) {}

  /// The name of the bucket for which to get the lifecycle information.
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
  GetBucketLifecycleConfigurationRequestPayload getPayload() =>
      GetBucketLifecycleConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketLifecycleConfigurationRequest');
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
abstract class GetBucketLifecycleConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketLifecycleConfigurationRequestPayload>
    implements
        Built<GetBucketLifecycleConfigurationRequestPayload,
            GetBucketLifecycleConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketLifecycleConfigurationRequestPayload(
      [void Function(GetBucketLifecycleConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketLifecycleConfigurationRequestPayload;

  const GetBucketLifecycleConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLifecycleConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketLifecycleConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketLifecycleConfigurationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketLifecycleConfigurationRequestPayload> {
  const GetBucketLifecycleConfigurationRequestRestXmlSerializer()
      : super('GetBucketLifecycleConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketLifecycleConfigurationRequest,
        _$GetBucketLifecycleConfigurationRequest,
        GetBucketLifecycleConfigurationRequestPayload,
        _$GetBucketLifecycleConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketLifecycleConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketLifecycleConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketLifecycleConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
