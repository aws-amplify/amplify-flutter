// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_count_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'resource_count_filters.g.dart';

/// Filters the resource count based on account ID, region, and resource type.
abstract class ResourceCountFilters
    with _i1.AWSEquatable<ResourceCountFilters>
    implements Built<ResourceCountFilters, ResourceCountFiltersBuilder> {
  /// Filters the resource count based on account ID, region, and resource type.
  factory ResourceCountFilters({
    String? accountId,
    String? region,
    _i2.ResourceType? resourceType,
  }) {
    return _$ResourceCountFilters._(
      accountId: accountId,
      region: region,
      resourceType: resourceType,
    );
  }

  /// Filters the resource count based on account ID, region, and resource type.
  factory ResourceCountFilters.build(
          [void Function(ResourceCountFiltersBuilder) updates]) =
      _$ResourceCountFilters;

  const ResourceCountFilters._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceCountFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceCountFiltersBuilder b) {}

  /// The 12-digit ID of the account.
  String? get accountId;

  /// The region where the account is located.
  String? get region;

  /// The type of the Amazon Web Services resource.
  _i2.ResourceType? get resourceType;
  @override
  List<Object?> get props => [
        accountId,
        region,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceCountFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'region',
      region,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ResourceCountFiltersAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceCountFilters> {
  const ResourceCountFiltersAwsJson11Serializer()
      : super('ResourceCountFilters');

  @override
  Iterable<Type> get types => const [
        ResourceCountFilters,
        _$ResourceCountFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceCountFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceCountFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceType),
            ) as _i2.ResourceType);
          }
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
    final payload = (object as ResourceCountFilters);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add('Region')
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(_i2.ResourceType),
        ));
    }
    return result;
  }
}
