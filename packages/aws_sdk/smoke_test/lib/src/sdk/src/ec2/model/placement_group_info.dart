// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.placement_group_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_strategy.dart';

part 'placement_group_info.g.dart';

/// Describes the placement group support of the instance type.
abstract class PlacementGroupInfo
    with _i1.AWSEquatable<PlacementGroupInfo>
    implements Built<PlacementGroupInfo, PlacementGroupInfoBuilder> {
  /// Describes the placement group support of the instance type.
  factory PlacementGroupInfo(
      {List<PlacementGroupStrategy>? supportedStrategies}) {
    return _$PlacementGroupInfo._(
        supportedStrategies: supportedStrategies == null
            ? null
            : _i2.BuiltList(supportedStrategies));
  }

  /// Describes the placement group support of the instance type.
  factory PlacementGroupInfo.build(
          [void Function(PlacementGroupInfoBuilder) updates]) =
      _$PlacementGroupInfo;

  const PlacementGroupInfo._();

  static const List<_i3.SmithySerializer<PlacementGroupInfo>> serializers = [
    PlacementGroupInfoEc2QuerySerializer()
  ];

  /// The supported placement group types.
  _i2.BuiltList<PlacementGroupStrategy>? get supportedStrategies;
  @override
  List<Object?> get props => [supportedStrategies];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PlacementGroupInfo')
      ..add(
        'supportedStrategies',
        supportedStrategies,
      );
    return helper.toString();
  }
}

class PlacementGroupInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PlacementGroupInfo> {
  const PlacementGroupInfoEc2QuerySerializer() : super('PlacementGroupInfo');

  @override
  Iterable<Type> get types => const [
        PlacementGroupInfo,
        _$PlacementGroupInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PlacementGroupInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementGroupInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'supportedStrategies':
          result.supportedStrategies.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PlacementGroupStrategy)],
            ),
          ) as _i2.BuiltList<PlacementGroupStrategy>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PlacementGroupInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PlacementGroupInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PlacementGroupInfo(:supportedStrategies) = object;
    if (supportedStrategies != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedStrategies'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedStrategies,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PlacementGroupStrategy)],
          ),
        ));
    }
    return result$;
  }
}
