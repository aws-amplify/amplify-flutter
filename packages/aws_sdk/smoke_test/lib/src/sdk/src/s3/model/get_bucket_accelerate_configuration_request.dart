// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_accelerate_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'get_bucket_accelerate_configuration_request.g.dart';

abstract class GetBucketAccelerateConfigurationRequest
    with
        _i1.HttpInput<GetBucketAccelerateConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketAccelerateConfigurationRequest>
    implements
        Built<GetBucketAccelerateConfigurationRequest,
            GetBucketAccelerateConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketAccelerateConfigurationRequestPayload> {
  factory GetBucketAccelerateConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    _i3.RequestPayer? requestPayer,
  }) {
    return _$GetBucketAccelerateConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
    );
  }

  factory GetBucketAccelerateConfigurationRequest.build(
      [void Function(GetBucketAccelerateConfigurationRequestBuilder)
          updates]) = _$GetBucketAccelerateConfigurationRequest;

  const GetBucketAccelerateConfigurationRequest._();

  factory GetBucketAccelerateConfigurationRequest.fromRequest(
    GetBucketAccelerateConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketAccelerateConfigurationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<
          _i1.SmithySerializer<GetBucketAccelerateConfigurationRequestPayload>>
      serializers = [
    GetBucketAccelerateConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAccelerateConfigurationRequestBuilder b) {}

  /// The name of the bucket for which the accelerate configuration is retrieved.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;
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
  GetBucketAccelerateConfigurationRequestPayload getPayload() =>
      GetBucketAccelerateConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        requestPayer,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketAccelerateConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          )
          ..add(
            'requestPayer',
            requestPayer,
          );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetBucketAccelerateConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketAccelerateConfigurationRequestPayload>
    implements
        Built<GetBucketAccelerateConfigurationRequestPayload,
            GetBucketAccelerateConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketAccelerateConfigurationRequestPayload(
      [void Function(GetBucketAccelerateConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketAccelerateConfigurationRequestPayload;

  const GetBucketAccelerateConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAccelerateConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketAccelerateConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketAccelerateConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        GetBucketAccelerateConfigurationRequestPayload> {
  const GetBucketAccelerateConfigurationRequestRestXmlSerializer()
      : super('GetBucketAccelerateConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketAccelerateConfigurationRequest,
        _$GetBucketAccelerateConfigurationRequest,
        GetBucketAccelerateConfigurationRequestPayload,
        _$GetBucketAccelerateConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAccelerateConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketAccelerateConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketAccelerateConfigurationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketAccelerateConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
