// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_public_ipv4_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool_range.dart';

part 'provision_public_ipv4_pool_cidr_result.g.dart';

abstract class ProvisionPublicIpv4PoolCidrResult
    with
        _i1.AWSEquatable<ProvisionPublicIpv4PoolCidrResult>
    implements
        Built<ProvisionPublicIpv4PoolCidrResult,
            ProvisionPublicIpv4PoolCidrResultBuilder> {
  factory ProvisionPublicIpv4PoolCidrResult({
    String? poolId,
    PublicIpv4PoolRange? poolAddressRange,
  }) {
    return _$ProvisionPublicIpv4PoolCidrResult._(
      poolId: poolId,
      poolAddressRange: poolAddressRange,
    );
  }

  factory ProvisionPublicIpv4PoolCidrResult.build(
          [void Function(ProvisionPublicIpv4PoolCidrResultBuilder) updates]) =
      _$ProvisionPublicIpv4PoolCidrResult;

  const ProvisionPublicIpv4PoolCidrResult._();

  /// Constructs a [ProvisionPublicIpv4PoolCidrResult] from a [payload] and [response].
  factory ProvisionPublicIpv4PoolCidrResult.fromResponse(
    ProvisionPublicIpv4PoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ProvisionPublicIpv4PoolCidrResult>>
      serializers = [ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer()];

  /// The ID of the pool that you want to provision the CIDR to.
  String? get poolId;

  /// Information about the address range of the public IPv4 pool.
  PublicIpv4PoolRange? get poolAddressRange;
  @override
  List<Object?> get props => [
        poolId,
        poolAddressRange,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ProvisionPublicIpv4PoolCidrResult')
          ..add(
            'poolId',
            poolId,
          )
          ..add(
            'poolAddressRange',
            poolAddressRange,
          );
    return helper.toString();
  }
}

class ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ProvisionPublicIpv4PoolCidrResult> {
  const ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer()
      : super('ProvisionPublicIpv4PoolCidrResult');

  @override
  Iterable<Type> get types => const [
        ProvisionPublicIpv4PoolCidrResult,
        _$ProvisionPublicIpv4PoolCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionPublicIpv4PoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionPublicIpv4PoolCidrResultBuilder();
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
        case 'poolAddressRange':
          result.poolAddressRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PublicIpv4PoolRange),
          ) as PublicIpv4PoolRange));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProvisionPublicIpv4PoolCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProvisionPublicIpv4PoolCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionPublicIpv4PoolCidrResult(:poolId, :poolAddressRange) =
        object;
    if (poolId != null) {
      result$
        ..add(const _i2.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    if (poolAddressRange != null) {
      result$
        ..add(const _i2.XmlElementName('PoolAddressRange'))
        ..add(serializers.serialize(
          poolAddressRange,
          specifiedType: const FullType(PublicIpv4PoolRange),
        ));
    }
    return result$;
  }
}
