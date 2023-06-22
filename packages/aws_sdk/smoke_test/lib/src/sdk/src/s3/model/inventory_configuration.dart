// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.inventory_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart' as _i6;

part 'inventory_configuration.g.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
abstract class InventoryConfiguration
    with _i1.AWSEquatable<InventoryConfiguration>
    implements Built<InventoryConfiguration, InventoryConfigurationBuilder> {
  /// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
  factory InventoryConfiguration({
    required _i2.InventoryDestination destination,
    bool? isEnabled,
    _i3.InventoryFilter? filter,
    required String id,
    required _i4.InventoryIncludedObjectVersions includedObjectVersions,
    List<_i5.InventoryOptionalField>? optionalFields,
    required _i6.InventorySchedule schedule,
  }) {
    return _$InventoryConfiguration._(
      destination: destination,
      isEnabled: isEnabled,
      filter: filter,
      id: id,
      includedObjectVersions: includedObjectVersions,
      optionalFields:
          optionalFields == null ? null : _i7.BuiltList(optionalFields),
      schedule: schedule,
    );
  }

  /// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
  factory InventoryConfiguration.build(
          [void Function(InventoryConfigurationBuilder) updates]) =
      _$InventoryConfiguration;

  const InventoryConfiguration._();

  static const List<_i8.SmithySerializer<InventoryConfiguration>> serializers =
      [InventoryConfigurationRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryConfigurationBuilder b) {}

  /// Contains information about where to publish the inventory results.
  _i2.InventoryDestination get destination;

  /// Specifies whether the inventory is enabled or disabled. If set to `True`, an inventory list is generated. If set to `False`, no inventory list is generated.
  bool? get isEnabled;

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
  _i3.InventoryFilter? get filter;

  /// The ID used to identify the inventory configuration.
  String get id;

  /// Object versions to include in the inventory list. If set to `All`, the list includes all the object versions, which adds the version-related fields `VersionId`, `IsLatest`, and `DeleteMarker` to the list. If set to `Current`, the list does not contain these version-related fields.
  _i4.InventoryIncludedObjectVersions get includedObjectVersions;

  /// Contains the optional fields that are included in the inventory results.
  _i7.BuiltList<_i5.InventoryOptionalField>? get optionalFields;

  /// Specifies the schedule for generating inventory results.
  _i6.InventorySchedule get schedule;
  @override
  List<Object?> get props => [
        destination,
        isEnabled,
        filter,
        id,
        includedObjectVersions,
        optionalFields,
        schedule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryConfiguration')
      ..add(
        'destination',
        destination,
      )
      ..add(
        'isEnabled',
        isEnabled,
      )
      ..add(
        'filter',
        filter,
      )
      ..add(
        'id',
        id,
      )
      ..add(
        'includedObjectVersions',
        includedObjectVersions,
      )
      ..add(
        'optionalFields',
        optionalFields,
      )
      ..add(
        'schedule',
        schedule,
      );
    return helper.toString();
  }
}

class InventoryConfigurationRestXmlSerializer
    extends _i8.StructuredSmithySerializer<InventoryConfiguration> {
  const InventoryConfigurationRestXmlSerializer()
      : super('InventoryConfiguration');

  @override
  Iterable<Type> get types => const [
        InventoryConfiguration,
        _$InventoryConfiguration,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryConfigurationBuilder();
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
            specifiedType: const FullType(_i2.InventoryDestination),
          ) as _i2.InventoryDestination));
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InventoryFilter),
          ) as _i3.InventoryFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IncludedObjectVersions':
          result.includedObjectVersions = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InventoryIncludedObjectVersions),
          ) as _i4.InventoryIncludedObjectVersions);
        case 'IsEnabled':
          result.isEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OptionalFields':
          result.optionalFields.replace(
              (const _i8.XmlBuiltListSerializer(memberName: 'Field')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i5.InventoryOptionalField)],
            ),
          ) as _i7.BuiltList<_i5.InventoryOptionalField>));
        case 'Schedule':
          result.schedule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.InventorySchedule),
          ) as _i6.InventorySchedule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InventoryConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'InventoryConfiguration',
        _i8.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryConfiguration(
      :destination,
      :filter,
      :id,
      :includedObjectVersions,
      :isEnabled,
      :optionalFields,
      :schedule
    ) = object;
    result$
      ..add(const _i8.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(_i2.InventoryDestination),
      ));
    if (filter != null) {
      result$
        ..add(const _i8.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i3.InventoryFilter),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i8.XmlElementName('IncludedObjectVersions'))
      ..add(serializers.serialize(
        includedObjectVersions,
        specifiedType:
            const FullType.nullable(_i4.InventoryIncludedObjectVersions),
      ));
    if (isEnabled != null) {
      result$
        ..add(const _i8.XmlElementName('IsEnabled'))
        ..add(serializers.serialize(
          isEnabled,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (optionalFields != null) {
      result$
        ..add(const _i8.XmlElementName('OptionalFields'))
        ..add(const _i8.XmlBuiltListSerializer(memberName: 'Field').serialize(
          serializers,
          optionalFields,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.InventoryOptionalField)],
          ),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('Schedule'))
      ..add(serializers.serialize(
        schedule,
        specifiedType: const FullType(_i6.InventorySchedule),
      ));
    return result$;
  }
}
