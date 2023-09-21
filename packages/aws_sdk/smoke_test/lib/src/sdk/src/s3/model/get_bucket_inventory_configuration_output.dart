// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_inventory_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_destination.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_included_object_versions.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_optional_field.dart';
import 'package:smoke_test/src/sdk/src/s3/model/inventory_schedule.dart';

part 'get_bucket_inventory_configuration_output.g.dart';

abstract class GetBucketInventoryConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketInventoryConfigurationOutput>
    implements
        Built<GetBucketInventoryConfigurationOutput,
            GetBucketInventoryConfigurationOutputBuilder>,
        _i2.HasPayload<InventoryConfiguration> {
  factory GetBucketInventoryConfigurationOutput(
      {InventoryConfiguration? inventoryConfiguration}) {
    return _$GetBucketInventoryConfigurationOutput._(
        inventoryConfiguration: inventoryConfiguration);
  }

  factory GetBucketInventoryConfigurationOutput.build(
      [void Function(GetBucketInventoryConfigurationOutputBuilder)
          updates]) = _$GetBucketInventoryConfigurationOutput;

  const GetBucketInventoryConfigurationOutput._();

  /// Constructs a [GetBucketInventoryConfigurationOutput] from a [payload] and [response].
  factory GetBucketInventoryConfigurationOutput.fromResponse(
    InventoryConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketInventoryConfigurationOutput.build((b) {
        if (payload != null) {
          b.inventoryConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<InventoryConfiguration?>> serializers =
      [GetBucketInventoryConfigurationOutputRestXmlSerializer()];

  /// Specifies the inventory configuration.
  InventoryConfiguration? get inventoryConfiguration;
  @override
  InventoryConfiguration? getPayload() => inventoryConfiguration;
  @override
  List<Object?> get props => [inventoryConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketInventoryConfigurationOutput')
          ..add(
            'inventoryConfiguration',
            inventoryConfiguration,
          );
    return helper.toString();
  }
}

class GetBucketInventoryConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InventoryConfiguration> {
  const GetBucketInventoryConfigurationOutputRestXmlSerializer()
      : super('GetBucketInventoryConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketInventoryConfigurationOutput,
        _$GetBucketInventoryConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
        case 'IsEnabled':
          result.isEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'OptionalFields':
          result.optionalFields.replace(
              (const _i2.XmlBuiltListSerializer(memberName: 'Field')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InventoryOptionalField)],
            ),
          ) as _i3.BuiltList<InventoryOptionalField>));
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
      const _i2.XmlElementName(
        'InventoryConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryConfiguration(
      :destination,
      :isEnabled,
      :filter,
      :id,
      :includedObjectVersions,
      :optionalFields,
      :schedule
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(InventoryDestination),
      ));
    if (isEnabled != null) {
      result$
        ..add(const _i2.XmlElementName('IsEnabled'))
        ..add(serializers.serialize(
          isEnabled,
          specifiedType: const FullType(bool),
        ));
    }
    if (filter != null) {
      result$
        ..add(const _i2.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(InventoryFilter),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('IncludedObjectVersions'))
      ..add(serializers.serialize(
        includedObjectVersions,
        specifiedType: const FullType(InventoryIncludedObjectVersions),
      ));
    if (optionalFields != null) {
      result$
        ..add(const _i2.XmlElementName('OptionalFields'))
        ..add(const _i2.XmlBuiltListSerializer(memberName: 'Field').serialize(
          serializers,
          optionalFields,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InventoryOptionalField)],
          ),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Schedule'))
      ..add(serializers.serialize(
        schedule,
        specifiedType: const FullType(InventorySchedule),
      ));
    return result$;
  }
}
