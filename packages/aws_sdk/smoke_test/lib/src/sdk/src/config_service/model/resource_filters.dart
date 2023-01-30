// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? region,
    String? resourceId,
    String? resourceName,
  }) {
    return _$ResourceFilters._(
      accountId: accountId,
      region: region,
      resourceId: resourceId,
      resourceName: resourceName,
    );
  }

  /// Filters the results by resource account ID, region, resource ID, and resource name.
  factory ResourceFilters.build(
      [void Function(ResourceFiltersBuilder) updates]) = _$ResourceFilters;

  const ResourceFilters._();

  static const List<_i2.SmithySerializer> serializers = [
    ResourceFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceFiltersBuilder b) {}

  /// The 12-digit source account ID.
  String? get accountId;

  /// The source region.
  String? get region;

  /// The ID of the resource.
  String? get resourceId;

  /// The name of the resource.
  String? get resourceName;
  @override
  List<Object?> get props => [
        accountId,
        region,
        resourceId,
        resourceName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'region',
      region,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceName',
      resourceName,
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
        case 'ResourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ResourceFilters);
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
    if (payload.resourceId != null) {
      result
        ..add('ResourceId')
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceName != null) {
      result
        ..add('ResourceName')
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
