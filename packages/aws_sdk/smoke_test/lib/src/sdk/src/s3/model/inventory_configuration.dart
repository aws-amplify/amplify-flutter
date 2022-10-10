// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    _i3.InventoryFilter? filter,
    required String id,
    required _i4.InventoryIncludedObjectVersions includedObjectVersions,
    bool? isEnabled,
    List<_i5.InventoryOptionalField>? optionalFields,
    required _i6.InventorySchedule schedule,
  }) {
    isEnabled ??= false;
    return _$InventoryConfiguration._(
      destination: destination,
      filter: filter,
      id: id,
      includedObjectVersions: includedObjectVersions,
      isEnabled: isEnabled,
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

  static const List<_i8.SmithySerializer> serializers = [
    InventoryConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryConfigurationBuilder b) {
    b.isEnabled = false;
  }

  /// Contains information about where to publish the inventory results.
  _i2.InventoryDestination get destination;

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
  _i3.InventoryFilter? get filter;

  /// The ID used to identify the inventory configuration.
  String get id;

  /// Object versions to include in the inventory list. If set to `All`, the list includes all the object versions, which adds the version-related fields `VersionId`, `IsLatest`, and `DeleteMarker` to the list. If set to `Current`, the list does not contain these version-related fields.
  _i4.InventoryIncludedObjectVersions get includedObjectVersions;

  /// Specifies whether the inventory is enabled or disabled. If set to `True`, an inventory list is generated. If set to `False`, no inventory list is generated.
  bool get isEnabled;

  /// Contains the optional fields that are included in the inventory results.
  _i7.BuiltList<_i5.InventoryOptionalField>? get optionalFields;

  /// Specifies the schedule for generating inventory results.
  _i6.InventorySchedule get schedule;
  @override
  List<Object?> get props => [
        destination,
        filter,
        id,
        includedObjectVersions,
        isEnabled,
        optionalFields,
        schedule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryConfiguration');
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'includedObjectVersions',
      includedObjectVersions,
    );
    helper.add(
      'isEnabled',
      isEnabled,
    );
    helper.add(
      'optionalFields',
      optionalFields,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InventoryDestination),
          ) as _i2.InventoryDestination));
          break;
        case 'Filter':
          if (value != null) {
            result.filter.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InventoryFilter),
            ) as _i3.InventoryFilter));
          }
          break;
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'IncludedObjectVersions':
          result.includedObjectVersions = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.InventoryIncludedObjectVersions),
          ) as _i4.InventoryIncludedObjectVersions);
          break;
        case 'IsEnabled':
          result.isEnabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'OptionalFields':
          if (value != null) {
            result.optionalFields.replace(
                (const _i8.XmlBuiltListSerializer(memberName: 'Field')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i5.InventoryOptionalField)],
              ),
            ) as _i7.BuiltList<_i5.InventoryOptionalField>));
          }
          break;
        case 'Schedule':
          result.schedule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.InventorySchedule),
          ) as _i6.InventorySchedule));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as InventoryConfiguration);
    final result = <Object?>[
      const _i8.XmlElementName(
        'InventoryConfiguration',
        _i8.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i8.XmlElementName('Destination'))
      ..add(serializers.serialize(
        payload.destination,
        specifiedType: const FullType(_i2.InventoryDestination),
      ));
    if (payload.filter != null) {
      result
        ..add(const _i8.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i3.InventoryFilter),
        ));
    }
    result
      ..add(const _i8.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i8.XmlElementName('IncludedObjectVersions'))
      ..add(serializers.serialize(
        payload.includedObjectVersions,
        specifiedType:
            const FullType.nullable(_i4.InventoryIncludedObjectVersions),
      ));
    result
      ..add(const _i8.XmlElementName('IsEnabled'))
      ..add(serializers.serialize(
        payload.isEnabled,
        specifiedType: const FullType.nullable(bool),
      ));
    if (payload.optionalFields != null) {
      result
        ..add(const _i8.XmlElementName('OptionalFields'))
        ..add(const _i8.XmlBuiltListSerializer(memberName: 'Field').serialize(
          serializers,
          payload.optionalFields!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.InventoryOptionalField)],
          ),
        ));
    }
    result
      ..add(const _i8.XmlElementName('Schedule'))
      ..add(serializers.serialize(
        payload.schedule,
        specifiedType: const FullType(_i6.InventorySchedule),
      ));
    return result;
  }
}
