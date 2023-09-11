// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.coip_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'coip_pool.g.dart';

/// Describes a customer-owned address pool.
abstract class CoipPool
    with _i1.AWSEquatable<CoipPool>
    implements Built<CoipPool, CoipPoolBuilder> {
  /// Describes a customer-owned address pool.
  factory CoipPool({
    String? poolId,
    List<String>? poolCidrs,
    String? localGatewayRouteTableId,
    List<Tag>? tags,
    String? poolArn,
  }) {
    return _$CoipPool._(
      poolId: poolId,
      poolCidrs: poolCidrs == null ? null : _i2.BuiltList(poolCidrs),
      localGatewayRouteTableId: localGatewayRouteTableId,
      tags: tags == null ? null : _i2.BuiltList(tags),
      poolArn: poolArn,
    );
  }

  /// Describes a customer-owned address pool.
  factory CoipPool.build([void Function(CoipPoolBuilder) updates]) = _$CoipPool;

  const CoipPool._();

  static const List<_i3.SmithySerializer<CoipPool>> serializers = [
    CoipPoolEc2QuerySerializer()
  ];

  /// The ID of the address pool.
  String? get poolId;

  /// The address ranges of the address pool.
  _i2.BuiltList<String>? get poolCidrs;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;

  /// The ARN of the address pool.
  String? get poolArn;
  @override
  List<Object?> get props => [
        poolId,
        poolCidrs,
        localGatewayRouteTableId,
        tags,
        poolArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CoipPool')
      ..add(
        'poolId',
        poolId,
      )
      ..add(
        'poolCidrs',
        poolCidrs,
      )
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'poolArn',
        poolArn,
      );
    return helper.toString();
  }
}

class CoipPoolEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CoipPool> {
  const CoipPoolEc2QuerySerializer() : super('CoipPool');

  @override
  Iterable<Type> get types => const [
        CoipPool,
        _$CoipPool,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CoipPool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoipPoolBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'poolId':
          result.poolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'poolCidrSet':
          result.poolCidrs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'poolArn':
          result.poolArn = (serializers.deserialize(
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
    CoipPool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CoipPoolResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CoipPool(
      :poolId,
      :poolCidrs,
      :localGatewayRouteTableId,
      :tags,
      :poolArn
    ) = object;
    if (poolId != null) {
      result$
        ..add(const _i3.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    if (poolCidrs != null) {
      result$
        ..add(const _i3.XmlElementName('PoolCidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          poolCidrs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
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
    if (poolArn != null) {
      result$
        ..add(const _i3.XmlElementName('PoolArn'))
        ..add(serializers.serialize(
          poolArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
