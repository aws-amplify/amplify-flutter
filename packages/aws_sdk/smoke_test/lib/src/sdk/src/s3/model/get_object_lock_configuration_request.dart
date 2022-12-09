// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_object_lock_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_object_lock_configuration_request.g.dart';

abstract class GetObjectLockConfigurationRequest
    with
        _i1.HttpInput<GetObjectLockConfigurationRequestPayload>,
        _i2.AWSEquatable<GetObjectLockConfigurationRequest>
    implements
        Built<GetObjectLockConfigurationRequest,
            GetObjectLockConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectLockConfigurationRequestPayload> {
  factory GetObjectLockConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetObjectLockConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetObjectLockConfigurationRequest.build(
          [void Function(GetObjectLockConfigurationRequestBuilder) updates]) =
      _$GetObjectLockConfigurationRequest;

  const GetObjectLockConfigurationRequest._();

  factory GetObjectLockConfigurationRequest.fromRequest(
    GetObjectLockConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectLockConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetObjectLockConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectLockConfigurationRequestBuilder b) {}

  /// The bucket whose Object Lock configuration you want to retrieve.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
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
  GetObjectLockConfigurationRequestPayload getPayload() =>
      GetObjectLockConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectLockConfigurationRequest');
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
abstract class GetObjectLockConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetObjectLockConfigurationRequestPayload>
    implements
        Built<GetObjectLockConfigurationRequestPayload,
            GetObjectLockConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectLockConfigurationRequestPayload(
      [void Function(GetObjectLockConfigurationRequestPayloadBuilder)
          updates]) = _$GetObjectLockConfigurationRequestPayload;

  const GetObjectLockConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectLockConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectLockConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetObjectLockConfigurationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetObjectLockConfigurationRequestPayload> {
  const GetObjectLockConfigurationRequestRestXmlSerializer()
      : super('GetObjectLockConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectLockConfigurationRequest,
        _$GetObjectLockConfigurationRequest,
        GetObjectLockConfigurationRequestPayload,
        _$GetObjectLockConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectLockConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectLockConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetObjectLockConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
