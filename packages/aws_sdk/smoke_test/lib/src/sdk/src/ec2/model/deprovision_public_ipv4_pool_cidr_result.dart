// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_public_ipv4_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'deprovision_public_ipv4_pool_cidr_result.g.dart';

abstract class DeprovisionPublicIpv4PoolCidrResult
    with
        _i1.AWSEquatable<DeprovisionPublicIpv4PoolCidrResult>
    implements
        Built<DeprovisionPublicIpv4PoolCidrResult,
            DeprovisionPublicIpv4PoolCidrResultBuilder> {
  factory DeprovisionPublicIpv4PoolCidrResult({
    String? poolId,
    List<String>? deprovisionedAddresses,
  }) {
    return _$DeprovisionPublicIpv4PoolCidrResult._(
      poolId: poolId,
      deprovisionedAddresses: deprovisionedAddresses == null
          ? null
          : _i2.BuiltList(deprovisionedAddresses),
    );
  }

  factory DeprovisionPublicIpv4PoolCidrResult.build(
          [void Function(DeprovisionPublicIpv4PoolCidrResultBuilder) updates]) =
      _$DeprovisionPublicIpv4PoolCidrResult;

  const DeprovisionPublicIpv4PoolCidrResult._();

  /// Constructs a [DeprovisionPublicIpv4PoolCidrResult] from a [payload] and [response].
  factory DeprovisionPublicIpv4PoolCidrResult.fromResponse(
    DeprovisionPublicIpv4PoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DeprovisionPublicIpv4PoolCidrResult>>
      serializers = [DeprovisionPublicIpv4PoolCidrResultEc2QuerySerializer()];

  /// The ID of the pool that you deprovisioned the CIDR from.
  String? get poolId;

  /// The deprovisioned CIDRs.
  _i2.BuiltList<String>? get deprovisionedAddresses;
  @override
  List<Object?> get props => [
        poolId,
        deprovisionedAddresses,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeprovisionPublicIpv4PoolCidrResult')
          ..add(
            'poolId',
            poolId,
          )
          ..add(
            'deprovisionedAddresses',
            deprovisionedAddresses,
          );
    return helper.toString();
  }
}

class DeprovisionPublicIpv4PoolCidrResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeprovisionPublicIpv4PoolCidrResult> {
  const DeprovisionPublicIpv4PoolCidrResultEc2QuerySerializer()
      : super('DeprovisionPublicIpv4PoolCidrResult');

  @override
  Iterable<Type> get types => const [
        DeprovisionPublicIpv4PoolCidrResult,
        _$DeprovisionPublicIpv4PoolCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionPublicIpv4PoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionPublicIpv4PoolCidrResultBuilder();
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
        case 'deprovisionedAddressSet':
          result.deprovisionedAddresses
              .replace((const _i3.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeprovisionPublicIpv4PoolCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeprovisionPublicIpv4PoolCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionPublicIpv4PoolCidrResult(
      :poolId,
      :deprovisionedAddresses
    ) = object;
    if (poolId != null) {
      result$
        ..add(const _i3.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    if (deprovisionedAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('DeprovisionedAddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          deprovisionedAddresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
