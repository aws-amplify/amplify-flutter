// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/propagating_vgw.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'route_table.g.dart';

/// Describes a route table.
abstract class RouteTable
    with _i1.AWSEquatable<RouteTable>
    implements Built<RouteTable, RouteTableBuilder> {
  /// Describes a route table.
  factory RouteTable({
    List<RouteTableAssociation>? associations,
    List<PropagatingVgw>? propagatingVgws,
    String? routeTableId,
    List<Route>? routes,
    List<Tag>? tags,
    String? vpcId,
    String? ownerId,
  }) {
    return _$RouteTable._(
      associations: associations == null ? null : _i2.BuiltList(associations),
      propagatingVgws:
          propagatingVgws == null ? null : _i2.BuiltList(propagatingVgws),
      routeTableId: routeTableId,
      routes: routes == null ? null : _i2.BuiltList(routes),
      tags: tags == null ? null : _i2.BuiltList(tags),
      vpcId: vpcId,
      ownerId: ownerId,
    );
  }

  /// Describes a route table.
  factory RouteTable.build([void Function(RouteTableBuilder) updates]) =
      _$RouteTable;

  const RouteTable._();

  static const List<_i3.SmithySerializer<RouteTable>> serializers = [
    RouteTableEc2QuerySerializer()
  ];

  /// The associations between the route table and one or more subnets or a gateway.
  _i2.BuiltList<RouteTableAssociation>? get associations;

  /// Any virtual private gateway (VGW) propagating routes.
  _i2.BuiltList<PropagatingVgw>? get propagatingVgws;

  /// The ID of the route table.
  String? get routeTableId;

  /// The routes in the route table.
  _i2.BuiltList<Route>? get routes;

  /// Any tags assigned to the route table.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the route table.
  String? get ownerId;
  @override
  List<Object?> get props => [
        associations,
        propagatingVgws,
        routeTableId,
        routes,
        tags,
        vpcId,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RouteTable')
      ..add(
        'associations',
        associations,
      )
      ..add(
        'propagatingVgws',
        propagatingVgws,
      )
      ..add(
        'routeTableId',
        routeTableId,
      )
      ..add(
        'routes',
        routes,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'ownerId',
        ownerId,
      );
    return helper.toString();
  }
}

class RouteTableEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RouteTable> {
  const RouteTableEc2QuerySerializer() : super('RouteTable');

  @override
  Iterable<Type> get types => const [
        RouteTable,
        _$RouteTable,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationSet':
          result.associations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RouteTableAssociation)],
            ),
          ) as _i2.BuiltList<RouteTableAssociation>));
        case 'propagatingVgwSet':
          result.propagatingVgws.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PropagatingVgw)],
            ),
          ) as _i2.BuiltList<PropagatingVgw>));
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'routeSet':
          result.routes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Route)],
            ),
          ) as _i2.BuiltList<Route>));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
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
    RouteTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RouteTableResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RouteTable(
      :associations,
      :propagatingVgws,
      :routeTableId,
      :routes,
      :tags,
      :vpcId,
      :ownerId
    ) = object;
    if (associations != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RouteTableAssociation)],
          ),
        ));
    }
    if (propagatingVgws != null) {
      result$
        ..add(const _i3.XmlElementName('PropagatingVgwSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          propagatingVgws,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PropagatingVgw)],
          ),
        ));
    }
    if (routeTableId != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (routes != null) {
      result$
        ..add(const _i3.XmlElementName('RouteSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Route)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
