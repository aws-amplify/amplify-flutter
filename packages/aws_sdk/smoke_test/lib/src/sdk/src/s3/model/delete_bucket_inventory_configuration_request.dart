// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.delete_bucket_inventory_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_bucket_inventory_configuration_request.g.dart';

abstract class DeleteBucketInventoryConfigurationRequest
    with
        _i1.HttpInput<DeleteBucketInventoryConfigurationRequestPayload>,
        _i2.AWSEquatable<DeleteBucketInventoryConfigurationRequest>
    implements
        Built<DeleteBucketInventoryConfigurationRequest,
            DeleteBucketInventoryConfigurationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBucketInventoryConfigurationRequestPayload> {
  factory DeleteBucketInventoryConfigurationRequest({
    required String bucket,
    required String id,
    String? expectedBucketOwner,
  }) {
    return _$DeleteBucketInventoryConfigurationRequest._(
      bucket: bucket,
      id: id,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory DeleteBucketInventoryConfigurationRequest.build(
      [void Function(DeleteBucketInventoryConfigurationRequestBuilder)
          updates]) = _$DeleteBucketInventoryConfigurationRequest;

  const DeleteBucketInventoryConfigurationRequest._();

  factory DeleteBucketInventoryConfigurationRequest.fromRequest(
    DeleteBucketInventoryConfigurationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBucketInventoryConfigurationRequest.build((b) {
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
      _i1.SmithySerializer<
          DeleteBucketInventoryConfigurationRequestPayload>> serializers = [
    DeleteBucketInventoryConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBucketInventoryConfigurationRequestBuilder b) {}

  /// The name of the bucket containing the inventory configuration to delete.
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
  DeleteBucketInventoryConfigurationRequestPayload getPayload() =>
      DeleteBucketInventoryConfigurationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        id,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBucketInventoryConfigurationRequest')
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
abstract class DeleteBucketInventoryConfigurationRequestPayload
    with
        _i2.AWSEquatable<DeleteBucketInventoryConfigurationRequestPayload>
    implements
        Built<DeleteBucketInventoryConfigurationRequestPayload,
            DeleteBucketInventoryConfigurationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBucketInventoryConfigurationRequestPayload(
      [void Function(DeleteBucketInventoryConfigurationRequestPayloadBuilder)
          updates]) = _$DeleteBucketInventoryConfigurationRequestPayload;

  const DeleteBucketInventoryConfigurationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteBucketInventoryConfigurationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteBucketInventoryConfigurationRequestPayload');
    return helper.toString();
  }
}

class DeleteBucketInventoryConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<
        DeleteBucketInventoryConfigurationRequestPayload> {
  const DeleteBucketInventoryConfigurationRequestRestXmlSerializer()
      : super('DeleteBucketInventoryConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBucketInventoryConfigurationRequest,
        _$DeleteBucketInventoryConfigurationRequest,
        DeleteBucketInventoryConfigurationRequestPayload,
        _$DeleteBucketInventoryConfigurationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteBucketInventoryConfigurationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBucketInventoryConfigurationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBucketInventoryConfigurationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteBucketInventoryConfigurationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
