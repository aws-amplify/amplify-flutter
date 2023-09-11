// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.public_ipv4_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'public_ipv4_pool.g.dart';

/// Describes an IPv4 address pool.
abstract class PublicIpv4Pool
    with _i1.AWSEquatable<PublicIpv4Pool>
    implements Built<PublicIpv4Pool, PublicIpv4PoolBuilder> {
  /// Describes an IPv4 address pool.
  factory PublicIpv4Pool({
    String? poolId,
    String? description,
    List<PublicIpv4PoolRange>? poolAddressRanges,
    int? totalAddressCount,
    int? totalAvailableAddressCount,
    String? networkBorderGroup,
    List<Tag>? tags,
  }) {
    totalAddressCount ??= 0;
    totalAvailableAddressCount ??= 0;
    return _$PublicIpv4Pool._(
      poolId: poolId,
      description: description,
      poolAddressRanges:
          poolAddressRanges == null ? null : _i2.BuiltList(poolAddressRanges),
      totalAddressCount: totalAddressCount,
      totalAvailableAddressCount: totalAvailableAddressCount,
      networkBorderGroup: networkBorderGroup,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an IPv4 address pool.
  factory PublicIpv4Pool.build([void Function(PublicIpv4PoolBuilder) updates]) =
      _$PublicIpv4Pool;

  const PublicIpv4Pool._();

  static const List<_i3.SmithySerializer<PublicIpv4Pool>> serializers = [
    PublicIpv4PoolEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublicIpv4PoolBuilder b) {
    b
      ..totalAddressCount = 0
      ..totalAvailableAddressCount = 0;
  }

  /// The ID of the address pool.
  String? get poolId;

  /// A description of the address pool.
  String? get description;

  /// The address ranges.
  _i2.BuiltList<PublicIpv4PoolRange>? get poolAddressRanges;

  /// The total number of addresses.
  int get totalAddressCount;

  /// The total number of available addresses.
  int get totalAvailableAddressCount;

  /// The name of the location from which the address pool is advertised. A network border group is a unique set of Availability Zones or Local Zones from where Amazon Web Services advertises public IP addresses.
  String? get networkBorderGroup;

  /// Any tags for the address pool.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        poolId,
        description,
        poolAddressRanges,
        totalAddressCount,
        totalAvailableAddressCount,
        networkBorderGroup,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublicIpv4Pool')
      ..add(
        'poolId',
        poolId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'poolAddressRanges',
        poolAddressRanges,
      )
      ..add(
        'totalAddressCount',
        totalAddressCount,
      )
      ..add(
        'totalAvailableAddressCount',
        totalAvailableAddressCount,
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class PublicIpv4PoolEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PublicIpv4Pool> {
  const PublicIpv4PoolEc2QuerySerializer() : super('PublicIpv4Pool');

  @override
  Iterable<Type> get types => const [
        PublicIpv4Pool,
        _$PublicIpv4Pool,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PublicIpv4Pool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicIpv4PoolBuilder();
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
        case 'poolAddressRangeSet':
          result.poolAddressRanges.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PublicIpv4PoolRange)],
            ),
          ) as _i2.BuiltList<PublicIpv4PoolRange>));
        case 'totalAddressCount':
          result.totalAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'totalAvailableAddressCount':
          result.totalAvailableAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'networkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PublicIpv4Pool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PublicIpv4PoolResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PublicIpv4Pool(
      :poolId,
      :description,
      :poolAddressRanges,
      :totalAddressCount,
      :totalAvailableAddressCount,
      :networkBorderGroup,
      :tags
    ) = object;
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
    if (poolAddressRanges != null) {
      result$
        ..add(const _i3.XmlElementName('PoolAddressRangeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          poolAddressRanges,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PublicIpv4PoolRange)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TotalAddressCount'))
      ..add(serializers.serialize(
        totalAddressCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('TotalAvailableAddressCount'))
      ..add(serializers.serialize(
        totalAvailableAddressCount,
        specifiedType: const FullType(int),
      ));
    if (networkBorderGroup != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
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
    return result$;
  }
}
