// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.inventory_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart';

part 'inventory_configuration.g.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
abstract class InventoryConfiguration
    with _i1.AWSEquatable<InventoryConfiguration>
    implements Built<InventoryConfiguration, InventoryConfigurationBuilder> {
  /// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
  factory InventoryConfiguration({
    required InventoryDestination destination,
    bool? isEnabled,
    InventoryFilter? filter,
    required String id,
    required InventoryIncludedObjectVersions includedObjectVersions,
    List<InventoryOptionalField>? optionalFields,
    required InventorySchedule schedule,
  }) {
    return _$InventoryConfiguration._(
      destination: destination,
      isEnabled: isEnabled,
      filter: filter,
      id: id,
      includedObjectVersions: includedObjectVersions,
      optionalFields:
          optionalFields == null ? null : _i2.BuiltList(optionalFields),
      schedule: schedule,
    );
  }

  /// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the _Amazon S3 API Reference_.
  factory InventoryConfiguration.build(
          [void Function(InventoryConfigurationBuilder) updates]) =
      _$InventoryConfiguration;

  const InventoryConfiguration._();

  static const List<_i3.SmithySerializer<InventoryConfiguration>> serializers =
      [InventoryConfigurationRestXmlSerializer()];

  /// Contains information about where to publish the inventory results.
  InventoryDestination get destination;

  /// Specifies whether the inventory is enabled or disabled. If set to `True`, an inventory list is generated. If set to `False`, no inventory list is generated.
  bool? get isEnabled;

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
  InventoryFilter? get filter;

  /// The ID used to identify the inventory configuration.
  String get id;

  /// Object versions to include in the inventory list. If set to `All`, the list includes all the object versions, which adds the version-related fields `VersionId`, `IsLatest`, and `DeleteMarker` to the list. If set to `Current`, the list does not contain these version-related fields.
  InventoryIncludedObjectVersions get includedObjectVersions;

  /// Contains the optional fields that are included in the inventory results.
  _i2.BuiltList<InventoryOptionalField>? get optionalFields;

  /// Specifies the schedule for generating inventory results.
  InventorySchedule get schedule;
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
    extends _i3.StructuredSmithySerializer<InventoryConfiguration> {
  const InventoryConfigurationRestXmlSerializer()
      : super('InventoryConfiguration');

  @override
  Iterable<Type> get types => const [
        InventoryConfiguration,
        _$InventoryConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(InventoryDestination),
          ) as InventoryDestination));
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryFilter),
          ) as InventoryFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IncludedObjectVersions':
          result.includedObjectVersions = (serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryIncludedObjectVersions),
          ) as InventoryIncludedObjectVersions);
        case 'IsEnabled':
          result.isEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OptionalFields':
          result.optionalFields.replace(
              (const _i3.XmlBuiltListSerializer(memberName: 'Field')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InventoryOptionalField)],
            ),
          ) as _i2.BuiltList<InventoryOptionalField>));
        case 'Schedule':
          result.schedule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InventorySchedule),
          ) as InventorySchedule));
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
      const _i3.XmlElementName(
        'InventoryConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
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
      ..add(const _i3.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(InventoryDestination),
      ));
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(InventoryFilter),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('IncludedObjectVersions'))
      ..add(serializers.serialize(
        includedObjectVersions,
        specifiedType: const FullType(InventoryIncludedObjectVersions),
      ));
    if (isEnabled != null) {
      result$
        ..add(const _i3.XmlElementName('IsEnabled'))
        ..add(serializers.serialize(
          isEnabled,
          specifiedType: const FullType(bool),
        ));
    }
    if (optionalFields != null) {
      result$
        ..add(const _i3.XmlElementName('OptionalFields'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'Field').serialize(
          serializers,
          optionalFields,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InventoryOptionalField)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Schedule'))
      ..add(serializers.serialize(
        schedule,
        specifiedType: const FullType(InventorySchedule),
      ));
    return result$;
  }
}
