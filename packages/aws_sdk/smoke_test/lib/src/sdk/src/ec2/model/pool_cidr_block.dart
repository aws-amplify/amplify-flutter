// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.pool_cidr_block; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'pool_cidr_block.g.dart';

/// Describes a CIDR block for an address pool.
abstract class PoolCidrBlock
    with _i1.AWSEquatable<PoolCidrBlock>
    implements Built<PoolCidrBlock, PoolCidrBlockBuilder> {
  /// Describes a CIDR block for an address pool.
  factory PoolCidrBlock({String? cidr}) {
    return _$PoolCidrBlock._(cidr: cidr);
  }

  /// Describes a CIDR block for an address pool.
  factory PoolCidrBlock.build([void Function(PoolCidrBlockBuilder) updates]) =
      _$PoolCidrBlock;

  const PoolCidrBlock._();

  static const List<_i2.SmithySerializer<PoolCidrBlock>> serializers = [
    PoolCidrBlockEc2QuerySerializer()
  ];

  /// The CIDR block.
  String? get cidr;
  @override
  List<Object?> get props => [cidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PoolCidrBlock')
      ..add(
        'cidr',
        cidr,
      );
    return helper.toString();
  }
}

class PoolCidrBlockEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PoolCidrBlock> {
  const PoolCidrBlockEc2QuerySerializer() : super('PoolCidrBlock');

  @override
  Iterable<Type> get types => const [
        PoolCidrBlock,
        _$PoolCidrBlock,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PoolCidrBlock deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoolCidrBlockBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'poolCidrBlock':
          result.cidr = (serializers.deserialize(
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
    PoolCidrBlock object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PoolCidrBlockResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PoolCidrBlock(:cidr) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('PoolCidrBlock'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
