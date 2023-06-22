// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_notification_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_notification_configuration_request.g.dart';

abstract class GetBucketNotificationConfigurationRequest
    with
        _i1.HttpInput<GetBucketNotificationConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketNotificationConfigurationRequest>
    implements
        Built<GetBucketNotificationConfigurationRequest,
            GetBucketNotificationConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketNotificationConfigurationRequestPayload> {
  factory GetBucketNotificationConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketNotificationConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketNotificationConfigurationRequest.build(
      [void Function(GetBucketNotificationConfigurationRequestBuilder)
          updates]) = _$GetBucketNotificationConfigurationRequest;

  const GetBucketNotificationConfigurationRequest._();

  factory GetBucketNotificationConfigurationRequest.fromRequest(
    GetBucketNotificationConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketNotificationConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<
      _i1.SmithySerializer<
          GetBucketNotificationConfigurationRequestPayload>> serializers = [
    GetBucketNotificationConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketNotificationConfigurationRequestBuilder b) {}

  /// The name of the bucket for which to get the notification configuration.
  ///
  /// To use this API operation against an access point, provide the alias of the access point in place of the bucket name.
  ///
  /// To use this API operation against an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name. If the Object Lambda access point alias in a request is not valid, the error code `InvalidAccessPointAliasError` is returned. For more information about `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).
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
  GetBucketNotificationConfigurationRequestPayload getPayload() =>
      GetBucketNotificationConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketNotificationConfigurationRequest')
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
abstract class GetBucketNotificationConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketNotificationConfigurationRequestPayload>
    implements
        Built<GetBucketNotificationConfigurationRequestPayload,
            GetBucketNotificationConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketNotificationConfigurationRequestPayload(
      [void Function(GetBucketNotificationConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketNotificationConfigurationRequestPayload;

  const GetBucketNotificationConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetBucketNotificationConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketNotificationConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketNotificationConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        GetBucketNotificationConfigurationRequestPayload> {
  const GetBucketNotificationConfigurationRequestRestXmlSerializer()
      : super('GetBucketNotificationConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketNotificationConfigurationRequest,
        _$GetBucketNotificationConfigurationRequest,
        GetBucketNotificationConfigurationRequestPayload,
        _$GetBucketNotificationConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketNotificationConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketNotificationConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketNotificationConfigurationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketNotificationConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
