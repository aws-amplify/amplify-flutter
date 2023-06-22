// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.ResourceType? resourceType,
    String? accountId,
    String? region,
  }) {
    return _$ResourceCountFilters._(
      resourceType: resourceType,
      accountId: accountId,
      region: region,
    );
  }

  /// Filters the resource count based on account ID, region, and resource type.
  factory ResourceCountFilters.build(
          [void Function(ResourceCountFiltersBuilder) updates]) =
      _$ResourceCountFilters;

  const ResourceCountFilters._();

  static const List<_i3.SmithySerializer<ResourceCountFilters>> serializers = [
    ResourceCountFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceCountFiltersBuilder b) {}

  /// The type of the Amazon Web Services resource.
  _i2.ResourceType? get resourceType;

  /// The 12-digit ID of the account.
  String? get accountId;

  /// The region where the account is located.
  String? get region;
  @override
  List<Object?> get props => [
        resourceType,
        accountId,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceCountFilters')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'region',
        region,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceType),
          ) as _i2.ResourceType);
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceCountFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceCountFilters(:resourceType, :accountId, :region) = object;
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(_i2.ResourceType),
        ));
    }
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add('Region')
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
