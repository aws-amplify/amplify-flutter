// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_placement_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_placement_group_request.g.dart';

abstract class CreatePlacementGroupRequest
    with
        _i1.HttpInput<CreatePlacementGroupRequest>,
        _i2.AWSEquatable<CreatePlacementGroupRequest>
    implements
        Built<CreatePlacementGroupRequest, CreatePlacementGroupRequestBuilder> {
  factory CreatePlacementGroupRequest({
    bool? dryRun,
    String? groupName,
    PlacementStrategy? strategy,
    int? partitionCount,
    List<TagSpecification>? tagSpecifications,
    SpreadLevel? spreadLevel,
  }) {
    dryRun ??= false;
    partitionCount ??= 0;
    return _$CreatePlacementGroupRequest._(
      dryRun: dryRun,
      groupName: groupName,
      strategy: strategy,
      partitionCount: partitionCount,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      spreadLevel: spreadLevel,
    );
  }

  factory CreatePlacementGroupRequest.build(
          [void Function(CreatePlacementGroupRequestBuilder) updates]) =
      _$CreatePlacementGroupRequest;

  const CreatePlacementGroupRequest._();

  factory CreatePlacementGroupRequest.fromRequest(
    CreatePlacementGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreatePlacementGroupRequest>>
      serializers = [CreatePlacementGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePlacementGroupRequestBuilder b) {
    b
      ..dryRun = false
      ..partitionCount = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A name for the placement group. Must be unique within the scope of your account for the Region.
  ///
  /// Constraints: Up to 255 ASCII characters
  String? get groupName;

  /// The placement strategy.
  PlacementStrategy? get strategy;

  /// The number of partitions. Valid only when **Strategy** is set to `partition`.
  int get partitionCount;

  /// The tags to apply to the new placement group.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Determines how placement groups spread instances.
  ///
  /// *   Host – You can use `host` only with Outpost placement groups.
  ///
  /// *   Rack – No usage restrictions.
  SpreadLevel? get spreadLevel;
  @override
  CreatePlacementGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupName,
        strategy,
        partitionCount,
        tagSpecifications,
        spreadLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePlacementGroupRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'strategy',
        strategy,
      )
      ..add(
        'partitionCount',
        partitionCount,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'spreadLevel',
        spreadLevel,
      );
    return helper.toString();
  }
}

class CreatePlacementGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePlacementGroupRequest> {
  const CreatePlacementGroupRequestEc2QuerySerializer()
      : super('CreatePlacementGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreatePlacementGroupRequest,
        _$CreatePlacementGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePlacementGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePlacementGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'strategy':
          result.strategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementStrategy),
          ) as PlacementStrategy);
        case 'PartitionCount':
          result.partitionCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'SpreadLevel':
          result.spreadLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpreadLevel),
          ) as SpreadLevel);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreatePlacementGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreatePlacementGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreatePlacementGroupRequest(
      :dryRun,
      :groupName,
      :strategy,
      :partitionCount,
      :tagSpecifications,
      :spreadLevel
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (strategy != null) {
      result$
        ..add(const _i1.XmlElementName('Strategy'))
        ..add(serializers.serialize(
          strategy,
          specifiedType: const FullType.nullable(PlacementStrategy),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PartitionCount'))
      ..add(serializers.serialize(
        partitionCount,
        specifiedType: const FullType(int),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (spreadLevel != null) {
      result$
        ..add(const _i1.XmlElementName('SpreadLevel'))
        ..add(serializers.serialize(
          spreadLevel,
          specifiedType: const FullType.nullable(SpreadLevel),
        ));
    }
    return result$;
  }
}
