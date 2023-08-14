// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.resource_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart';

part 'resource_count.g.dart';

/// An object that contains the resource type and the number of resources.
abstract class ResourceCount
    with _i1.AWSEquatable<ResourceCount>
    implements Built<ResourceCount, ResourceCountBuilder> {
  /// An object that contains the resource type and the number of resources.
  factory ResourceCount({
    ResourceType? resourceType,
    _i2.Int64? count,
  }) {
    count ??= _i2.Int64.ZERO;
    return _$ResourceCount._(
      resourceType: resourceType,
      count: count,
    );
  }

  /// An object that contains the resource type and the number of resources.
  factory ResourceCount.build([void Function(ResourceCountBuilder) updates]) =
      _$ResourceCount;

  const ResourceCount._();

  static const List<_i3.SmithySerializer<ResourceCount>> serializers = [
    ResourceCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceCountBuilder b) {
    b.count = _i2.Int64.ZERO;
  }

  /// The resource type (for example, `"AWS::EC2::Instance"`).
  ResourceType? get resourceType;

  /// The number of resources.
  _i2.Int64 get count;
  @override
  List<Object?> get props => [
        resourceType,
        count,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceCount')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'count',
        count,
      );
    return helper.toString();
  }
}

class ResourceCountAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceCount> {
  const ResourceCountAwsJson11Serializer() : super('ResourceCount');

  @override
  Iterable<Type> get types => const [
        ResourceCount,
        _$ResourceCount,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceType),
          ) as ResourceType);
        case 'count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceCount(:resourceType, :count) = object;
    result$.addAll([
      'count',
      serializers.serialize(
        count,
        specifiedType: const FullType(_i2.Int64),
      ),
    ]);
    if (resourceType != null) {
      result$
        ..add('resourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(ResourceType),
        ));
    }
    return result$;
  }
}
