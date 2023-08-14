// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_placement_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart';

part 'describe_placement_groups_result.g.dart';

abstract class DescribePlacementGroupsResult
    with
        _i1.AWSEquatable<DescribePlacementGroupsResult>
    implements
        Built<DescribePlacementGroupsResult,
            DescribePlacementGroupsResultBuilder> {
  factory DescribePlacementGroupsResult(
      {List<PlacementGroup>? placementGroups}) {
    return _$DescribePlacementGroupsResult._(
        placementGroups:
            placementGroups == null ? null : _i2.BuiltList(placementGroups));
  }

  factory DescribePlacementGroupsResult.build(
          [void Function(DescribePlacementGroupsResultBuilder) updates]) =
      _$DescribePlacementGroupsResult;

  const DescribePlacementGroupsResult._();

  /// Constructs a [DescribePlacementGroupsResult] from a [payload] and [response].
  factory DescribePlacementGroupsResult.fromResponse(
    DescribePlacementGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribePlacementGroupsResult>>
      serializers = [DescribePlacementGroupsResultEc2QuerySerializer()];

  /// Information about the placement groups.
  _i2.BuiltList<PlacementGroup>? get placementGroups;
  @override
  List<Object?> get props => [placementGroups];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePlacementGroupsResult')
      ..add(
        'placementGroups',
        placementGroups,
      );
    return helper.toString();
  }
}

class DescribePlacementGroupsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribePlacementGroupsResult> {
  const DescribePlacementGroupsResultEc2QuerySerializer()
      : super('DescribePlacementGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribePlacementGroupsResult,
        _$DescribePlacementGroupsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePlacementGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePlacementGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'placementGroupSet':
          result.placementGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PlacementGroup)],
            ),
          ) as _i2.BuiltList<PlacementGroup>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribePlacementGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribePlacementGroupsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribePlacementGroupsResult(:placementGroups) = object;
    if (placementGroups != null) {
      result$
        ..add(const _i3.XmlElementName('PlacementGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          placementGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PlacementGroup)],
          ),
        ));
    }
    return result$;
  }
}
