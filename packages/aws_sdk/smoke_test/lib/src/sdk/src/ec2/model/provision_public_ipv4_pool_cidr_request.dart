// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_public_ipv4_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'provision_public_ipv4_pool_cidr_request.g.dart';

abstract class ProvisionPublicIpv4PoolCidrRequest
    with
        _i1.HttpInput<ProvisionPublicIpv4PoolCidrRequest>,
        _i2.AWSEquatable<ProvisionPublicIpv4PoolCidrRequest>
    implements
        Built<ProvisionPublicIpv4PoolCidrRequest,
            ProvisionPublicIpv4PoolCidrRequestBuilder> {
  factory ProvisionPublicIpv4PoolCidrRequest({
    bool? dryRun,
    String? ipamPoolId,
    String? poolId,
    int? netmaskLength,
  }) {
    dryRun ??= false;
    netmaskLength ??= 0;
    return _$ProvisionPublicIpv4PoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      poolId: poolId,
      netmaskLength: netmaskLength,
    );
  }

  factory ProvisionPublicIpv4PoolCidrRequest.build(
          [void Function(ProvisionPublicIpv4PoolCidrRequestBuilder) updates]) =
      _$ProvisionPublicIpv4PoolCidrRequest;

  const ProvisionPublicIpv4PoolCidrRequest._();

  factory ProvisionPublicIpv4PoolCidrRequest.fromRequest(
    ProvisionPublicIpv4PoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ProvisionPublicIpv4PoolCidrRequest>>
      serializers = [ProvisionPublicIpv4PoolCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionPublicIpv4PoolCidrRequestBuilder b) {
    b
      ..dryRun = false
      ..netmaskLength = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool you would like to use to allocate this CIDR.
  String? get ipamPoolId;

  /// The ID of the public IPv4 pool you would like to use for this CIDR.
  String? get poolId;

  /// The netmask length of the CIDR you would like to allocate to the public IPv4 pool.
  int get netmaskLength;
  @override
  ProvisionPublicIpv4PoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        poolId,
        netmaskLength,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ProvisionPublicIpv4PoolCidrRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamPoolId',
            ipamPoolId,
          )
          ..add(
            'poolId',
            poolId,
          )
          ..add(
            'netmaskLength',
            netmaskLength,
          );
    return helper.toString();
  }
}

class ProvisionPublicIpv4PoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ProvisionPublicIpv4PoolCidrRequest> {
  const ProvisionPublicIpv4PoolCidrRequestEc2QuerySerializer()
      : super('ProvisionPublicIpv4PoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        ProvisionPublicIpv4PoolCidrRequest,
        _$ProvisionPublicIpv4PoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionPublicIpv4PoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionPublicIpv4PoolCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PoolId':
          result.poolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetmaskLength':
          result.netmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProvisionPublicIpv4PoolCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ProvisionPublicIpv4PoolCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionPublicIpv4PoolCidrRequest(
      :dryRun,
      :ipamPoolId,
      :poolId,
      :netmaskLength
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (poolId != null) {
      result$
        ..add(const _i1.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('NetmaskLength'))
      ..add(serializers.serialize(
        netmaskLength,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
