// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_bucket_inventory_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart' as _i9;

part 'put_bucket_inventory_configuration_request.g.dart';

abstract class PutBucketInventoryConfigurationRequest
    with
        _i1.HttpInput<_i2.InventoryConfiguration>,
        _i3.AWSEquatable<PutBucketInventoryConfigurationRequest>
    implements
        Built<PutBucketInventoryConfigurationRequest,
            PutBucketInventoryConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.InventoryConfiguration> {
  factory PutBucketInventoryConfigurationRequest({
    required String bucket,
    required String id,
    required _i2.InventoryConfiguration inventoryConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketInventoryConfigurationRequest._(
      bucket: bucket,
      id: id,
      inventoryConfiguration: inventoryConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketInventoryConfigurationRequest.build(
      [void Function(PutBucketInventoryConfigurationRequestBuilder)
          updates]) = _$PutBucketInventoryConfigurationRequest;

  const PutBucketInventoryConfigurationRequest._();

  factory PutBucketInventoryConfigurationRequest.fromRequest(
    _i2.InventoryConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketInventoryConfigurationRequest.build((b) {
        b.inventoryConfiguration.replace(payload);
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

  static const List<_i1.SmithySerializer<_i2.InventoryConfiguration>>
      serializers = [PutBucketInventoryConfigurationRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketInventoryConfigurationRequestBuilder b) {}

  /// The name of the bucket where the inventory configuration will be stored.
  String get bucket;

  /// The ID used to identify the inventory configuration.
  String get id;

  /// Specifies the inventory configuration.
  _i2.InventoryConfiguration get inventoryConfiguration;

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
  _i2.InventoryConfiguration getPayload() => inventoryConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        id,
        inventoryConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketInventoryConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'id',
            id,
          )
          ..add(
            'inventoryConfiguration',
            inventoryConfiguration,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

class PutBucketInventoryConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.InventoryConfiguration> {
  const PutBucketInventoryConfigurationRequestRestXmlSerializer()
      : super('PutBucketInventoryConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketInventoryConfigurationRequest,
        _$PutBucketInventoryConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.InventoryConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.InventoryConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InventoryDestination),
          ) as _i4.InventoryDestination));
        case 'IsEnabled':
          result.isEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.InventoryFilter),
          ) as _i5.InventoryFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IncludedObjectVersions':
          result.includedObjectVersions = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.InventoryIncludedObjectVersions),
          ) as _i6.InventoryIncludedObjectVersions);
        case 'OptionalFields':
          result.optionalFields.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'Field')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i8.InventoryOptionalField)],
            ),
          ) as _i7.BuiltList<_i8.InventoryOptionalField>));
        case 'Schedule':
          result.schedule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.InventorySchedule),
          ) as _i9.InventorySchedule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.InventoryConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'InventoryConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.InventoryConfiguration(
      :destination,
      :isEnabled,
      :filter,
      :id,
      :includedObjectVersions,
      :optionalFields,
      :schedule
    ) = object;
    result$
      ..add(const _i1.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(_i4.InventoryDestination),
      ));
    if (isEnabled != null) {
      result$
        ..add(const _i1.XmlElementName('IsEnabled'))
        ..add(serializers.serialize(
          isEnabled,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i5.InventoryFilter),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('IncludedObjectVersions'))
      ..add(serializers.serialize(
        includedObjectVersions,
        specifiedType:
            const FullType.nullable(_i6.InventoryIncludedObjectVersions),
      ));
    if (optionalFields != null) {
      result$
        ..add(const _i1.XmlElementName('OptionalFields'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'Field').serialize(
          serializers,
          optionalFields,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i8.InventoryOptionalField)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Schedule'))
      ..add(serializers.serialize(
        schedule,
        specifiedType: const FullType(_i9.InventorySchedule),
      ));
    return result$;
  }
}
