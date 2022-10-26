// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.grouped_resource_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'grouped_resource_count.g.dart';

/// The count of resources that are grouped by the group name.
abstract class GroupedResourceCount
    with _i1.AWSEquatable<GroupedResourceCount>
    implements Built<GroupedResourceCount, GroupedResourceCountBuilder> {
  /// The count of resources that are grouped by the group name.
  factory GroupedResourceCount({
    required String groupName,
    _i2.Int64? resourceCount,
  }) {
    resourceCount ??= _i2.Int64.ZERO;
    return _$GroupedResourceCount._(
      groupName: groupName,
      resourceCount: resourceCount,
    );
  }

  /// The count of resources that are grouped by the group name.
  factory GroupedResourceCount.build(
          [void Function(GroupedResourceCountBuilder) updates]) =
      _$GroupedResourceCount;

  const GroupedResourceCount._();

  static const List<_i3.SmithySerializer> serializers = [
    GroupedResourceCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GroupedResourceCountBuilder b) {
    b.resourceCount = _i2.Int64.ZERO;
  }

  /// The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as `GroupByKey`.
  String get groupName;

  /// The number of resources in the group.
  _i2.Int64 get resourceCount;
  @override
  List<Object?> get props => [
        groupName,
        resourceCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GroupedResourceCount');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'resourceCount',
      resourceCount,
    );
    return helper.toString();
  }
}

class GroupedResourceCountAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GroupedResourceCount> {
  const GroupedResourceCountAwsJson11Serializer()
      : super('GroupedResourceCount');

  @override
  Iterable<Type> get types => const [
        GroupedResourceCount,
        _$GroupedResourceCount,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GroupedResourceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupedResourceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceCount':
          result.resourceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
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
    final payload = (object as GroupedResourceCount);
    final result = <Object?>[
      'GroupName',
      serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ),
      'ResourceCount',
      serializers.serialize(
        payload.resourceCount,
        specifiedType: const FullType(_i2.Int64),
      ),
    ];
    return result;
  }
}
