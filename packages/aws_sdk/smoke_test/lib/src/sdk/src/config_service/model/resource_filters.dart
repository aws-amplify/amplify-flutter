// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_filters.g.dart';

/// Filters the results by resource account ID, region, resource ID, and resource name.
abstract class ResourceFilters
    with _i1.AWSEquatable<ResourceFilters>
    implements Built<ResourceFilters, ResourceFiltersBuilder> {
  /// Filters the results by resource account ID, region, resource ID, and resource name.
  factory ResourceFilters({
    String? accountId,
    String? resourceId,
    String? resourceName,
    String? region,
  }) {
    return _$ResourceFilters._(
      accountId: accountId,
      resourceId: resourceId,
      resourceName: resourceName,
      region: region,
    );
  }

  /// Filters the results by resource account ID, region, resource ID, and resource name.
  factory ResourceFilters.build(
      [void Function(ResourceFiltersBuilder) updates]) = _$ResourceFilters;

  const ResourceFilters._();

  static const List<_i2.SmithySerializer<ResourceFilters>> serializers = [
    ResourceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceFiltersBuilder b) {}

  /// The 12-digit source account ID.
  String? get accountId;

  /// The ID of the resource.
  String? get resourceId;

  /// The name of the resource.
  String? get resourceName;

  /// The source region.
  String? get region;
  @override
  List<Object?> get props => [
        accountId,
        resourceId,
        resourceName,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceFilters')
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'region',
        region,
      );
    return helper.toString();
  }
}

class ResourceFiltersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceFilters> {
  const ResourceFiltersAwsJson11Serializer() : super('ResourceFilters');

  @override
  Iterable<Type> get types => const [
        ResourceFilters,
        _$ResourceFilters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceName':
          result.resourceName = (serializers.deserialize(
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
    ResourceFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceFilters(:accountId, :resourceId, :resourceName, :region) =
        object;
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('ResourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceName != null) {
      result$
        ..add('ResourceName')
        ..add(serializers.serialize(
          resourceName,
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
