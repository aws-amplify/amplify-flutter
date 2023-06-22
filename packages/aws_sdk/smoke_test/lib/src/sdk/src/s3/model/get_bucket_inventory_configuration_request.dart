// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_inventory_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_inventory_configuration_request.g.dart';

abstract class GetBucketInventoryConfigurationRequest
    with
        _i1.HttpInput<GetBucketInventoryConfigurationRequestPayload>,
        _i2.AWSEquatable<GetBucketInventoryConfigurationRequest>
    implements
        Built<GetBucketInventoryConfigurationRequest,
            GetBucketInventoryConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketInventoryConfigurationRequestPayload> {
  factory GetBucketInventoryConfigurationRequest({
    required String bucket,
    required String id,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketInventoryConfigurationRequest._(
      bucket: bucket,
      id: id,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketInventoryConfigurationRequest.build(
      [void Function(GetBucketInventoryConfigurationRequestBuilder)
          updates]) = _$GetBucketInventoryConfigurationRequest;

  const GetBucketInventoryConfigurationRequest._();

  factory GetBucketInventoryConfigurationRequest.fromRequest(
    GetBucketInventoryConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketInventoryConfigurationRequest.build((b) {
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

  static const List<
          _i1.SmithySerializer<GetBucketInventoryConfigurationRequestPayload>>
      serializers = [GetBucketInventoryConfigurationRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketInventoryConfigurationRequestBuilder b) {}

  /// The name of the bucket containing the inventory configuration to retrieve.
  String get bucket;

  /// The ID used to identify the inventory configuration.
  String get id;

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
  GetBucketInventoryConfigurationRequestPayload getPayload() =>
      GetBucketInventoryConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        id,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketInventoryConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'id',
            id,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketInventoryConfigurationRequestPayload
    with
        _i2.AWSEquatable<GetBucketInventoryConfigurationRequestPayload>
    implements
        Built<GetBucketInventoryConfigurationRequestPayload,
            GetBucketInventoryConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketInventoryConfigurationRequestPayload(
      [void Function(GetBucketInventoryConfigurationRequestPayloadBuilder)
          updates]) = _$GetBucketInventoryConfigurationRequestPayload;

  const GetBucketInventoryConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketInventoryConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketInventoryConfigurationRequestPayload');
    return helper.toString();
  }
}

class GetBucketInventoryConfigurationRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketInventoryConfigurationRequestPayload> {
  const GetBucketInventoryConfigurationRequestRestXmlSerializer()
      : super('GetBucketInventoryConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketInventoryConfigurationRequest,
        _$GetBucketInventoryConfigurationRequest,
        GetBucketInventoryConfigurationRequestPayload,
        _$GetBucketInventoryConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketInventoryConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketInventoryConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketInventoryConfigurationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketInventoryConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
