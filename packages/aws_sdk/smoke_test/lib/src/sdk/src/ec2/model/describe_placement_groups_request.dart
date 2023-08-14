// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_placement_groups_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_placement_groups_request.g.dart';

abstract class DescribePlacementGroupsRequest
    with
        _i1.HttpInput<DescribePlacementGroupsRequest>,
        _i2.AWSEquatable<DescribePlacementGroupsRequest>
    implements
        Built<DescribePlacementGroupsRequest,
            DescribePlacementGroupsRequestBuilder> {
  factory DescribePlacementGroupsRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? groupNames,
    List<String>? groupIds,
  }) {
    dryRun ??= false;
    return _$DescribePlacementGroupsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      groupNames: groupNames == null ? null : _i3.BuiltList(groupNames),
      groupIds: groupIds == null ? null : _i3.BuiltList(groupIds),
    );
  }

  factory DescribePlacementGroupsRequest.build(
          [void Function(DescribePlacementGroupsRequestBuilder) updates]) =
      _$DescribePlacementGroupsRequest;

  const DescribePlacementGroupsRequest._();

  factory DescribePlacementGroupsRequest.fromRequest(
    DescribePlacementGroupsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribePlacementGroupsRequest>>
      serializers = [DescribePlacementGroupsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePlacementGroupsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The filters.
  ///
  /// *   `group-name` \- The name of the placement group.
  ///
  /// *   `group-arn` \- The Amazon Resource Name (ARN) of the placement group.
  ///
  /// *   `spread-level` \- The spread level for the placement group (`host` | `rack`).
  ///
  /// *   `state` \- The state of the placement group (`pending` | `available` | `deleting` | `deleted`).
  ///
  /// *   `strategy` \- The strategy of the placement group (`cluster` | `spread` | `partition`).
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The names of the placement groups.
  ///
  /// Default: Describes all your placement groups, or only those otherwise specified.
  _i3.BuiltList<String>? get groupNames;

  /// The IDs of the placement groups.
  _i3.BuiltList<String>? get groupIds;
  @override
  DescribePlacementGroupsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        groupNames,
        groupIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePlacementGroupsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'groupNames',
        groupNames,
      )
      ..add(
        'groupIds',
        groupIds,
      );
    return helper.toString();
  }
}

class DescribePlacementGroupsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribePlacementGroupsRequest> {
  const DescribePlacementGroupsRequestEc2QuerySerializer()
      : super('DescribePlacementGroupsRequest');

  @override
  Iterable<Type> get types => const [
        DescribePlacementGroupsRequest,
        _$DescribePlacementGroupsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePlacementGroupsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePlacementGroupsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'groupName':
          result.groupNames.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'GroupId':
          result.groupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'GroupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribePlacementGroupsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribePlacementGroupsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribePlacementGroupsRequest(
      :filters,
      :dryRun,
      :groupNames,
      :groupIds
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groupNames != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          groupNames,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (groupIds != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'GroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
