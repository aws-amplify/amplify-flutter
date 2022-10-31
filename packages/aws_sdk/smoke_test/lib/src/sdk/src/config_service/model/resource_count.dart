// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

part 'resource_count.g.dart';

/// An object that contains the resource type and the number of resources.
abstract class ResourceCount
    with _i1.AWSEquatable<ResourceCount>
    implements Built<ResourceCount, ResourceCountBuilder> {
  /// An object that contains the resource type and the number of resources.
  factory ResourceCount({
    _i2.Int64? count,
    _i3.ResourceType? resourceType,
  }) {
    return _$ResourceCount._(
      count: count,
      resourceType: resourceType,
    );
  }

  /// An object that contains the resource type and the number of resources.
  factory ResourceCount.build([void Function(ResourceCountBuilder) updates]) =
      _$ResourceCount;

  const ResourceCount._();

  static const List<_i4.SmithySerializer> serializers = [
    ResourceCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceCountBuilder b) {}

  /// The number of resources.
  _i2.Int64? get count;

  /// The resource type (for example, `"AWS::EC2::Instance"`).
  _i3.ResourceType? get resourceType;
  @override
  List<Object?> get props => [
        count,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceCount');
    helper.add(
      'count',
      count,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ResourceCountAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ResourceCount> {
  const ResourceCountAwsJson11Serializer() : super('ResourceCount');

  @override
  Iterable<Type> get types => const [
        ResourceCount,
        _$ResourceCount,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'count':
          if (value != null) {
            result.count = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResourceType),
            ) as _i3.ResourceType);
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
    final payload = (object as ResourceCount);
    final result = <Object?>[];
    if (payload.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(
          payload.count!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('resourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(_i3.ResourceType),
        ));
    }
    return result;
  }
}
