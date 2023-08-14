// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/pool_cidr_block.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipv6_pool.g.dart';

/// Describes an IPv6 address pool.
abstract class Ipv6Pool
    with _i1.AWSEquatable<Ipv6Pool>
    implements Built<Ipv6Pool, Ipv6PoolBuilder> {
  /// Describes an IPv6 address pool.
  factory Ipv6Pool({
    String? poolId,
    String? description,
    List<PoolCidrBlock>? poolCidrBlocks,
    List<Tag>? tags,
  }) {
    return _$Ipv6Pool._(
      poolId: poolId,
      description: description,
      poolCidrBlocks:
          poolCidrBlocks == null ? null : _i2.BuiltList(poolCidrBlocks),
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an IPv6 address pool.
  factory Ipv6Pool.build([void Function(Ipv6PoolBuilder) updates]) = _$Ipv6Pool;

  const Ipv6Pool._();

  static const List<_i3.SmithySerializer<Ipv6Pool>> serializers = [
    Ipv6PoolEc2QuerySerializer()
  ];

  /// The ID of the address pool.
  String? get poolId;

  /// The description for the address pool.
  String? get description;

  /// The CIDR blocks for the address pool.
  _i2.BuiltList<PoolCidrBlock>? get poolCidrBlocks;

  /// Any tags for the address pool.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        poolId,
        description,
        poolCidrBlocks,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6Pool')
      ..add(
        'poolId',
        poolId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'poolCidrBlocks',
        poolCidrBlocks,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class Ipv6PoolEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Ipv6Pool> {
  const Ipv6PoolEc2QuerySerializer() : super('Ipv6Pool');

  @override
  Iterable<Type> get types => const [
        Ipv6Pool,
        _$Ipv6Pool,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6Pool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PoolBuilder();
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
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'poolCidrBlockSet':
          result.poolCidrBlocks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PoolCidrBlock)],
            ),
          ) as _i2.BuiltList<PoolCidrBlock>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Ipv6Pool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'Ipv6PoolResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6Pool(:poolId, :description, :poolCidrBlocks, :tags) = object;
    if (poolId != null) {
      result$
        ..add(const _i3.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (poolCidrBlocks != null) {
      result$
        ..add(const _i3.XmlElementName('PoolCidrBlockSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          poolCidrBlocks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PoolCidrBlock)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
