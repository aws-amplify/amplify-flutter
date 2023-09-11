// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_state.dart';

part 'ipam_pool_cidr.g.dart';

/// A CIDR provisioned to an IPAM pool.
abstract class IpamPoolCidr
    with _i1.AWSEquatable<IpamPoolCidr>
    implements Built<IpamPoolCidr, IpamPoolCidrBuilder> {
  /// A CIDR provisioned to an IPAM pool.
  factory IpamPoolCidr({
    String? cidr,
    IpamPoolCidrState? state,
    IpamPoolCidrFailureReason? failureReason,
    String? ipamPoolCidrId,
    int? netmaskLength,
  }) {
    netmaskLength ??= 0;
    return _$IpamPoolCidr._(
      cidr: cidr,
      state: state,
      failureReason: failureReason,
      ipamPoolCidrId: ipamPoolCidrId,
      netmaskLength: netmaskLength,
    );
  }

  /// A CIDR provisioned to an IPAM pool.
  factory IpamPoolCidr.build([void Function(IpamPoolCidrBuilder) updates]) =
      _$IpamPoolCidr;

  const IpamPoolCidr._();

  static const List<_i2.SmithySerializer<IpamPoolCidr>> serializers = [
    IpamPoolCidrEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolCidrBuilder b) {
    b.netmaskLength = 0;
  }

  /// The CIDR provisioned to the IPAM pool. A CIDR is a representation of an IP address and its associated network mask (or netmask) and refers to a range of IP addresses. An IPv4 CIDR example is `10.24.34.0/23`. An IPv6 CIDR example is `2001:DB8::/32`.
  String? get cidr;

  /// The state of the CIDR.
  IpamPoolCidrState? get state;

  /// Details related to why an IPAM pool CIDR failed to be provisioned.
  IpamPoolCidrFailureReason? get failureReason;

  /// The IPAM pool CIDR ID.
  String? get ipamPoolCidrId;

  /// The netmask length of the CIDR you'd like to provision to a pool. Can be used for provisioning Amazon-provided IPv6 CIDRs to top-level pools and for provisioning CIDRs to pools with source pools. Cannot be used to provision BYOIP CIDRs to top-level pools. "NetmaskLength" or "Cidr" is required.
  int get netmaskLength;
  @override
  List<Object?> get props => [
        cidr,
        state,
        failureReason,
        ipamPoolCidrId,
        netmaskLength,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPoolCidr')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'failureReason',
        failureReason,
      )
      ..add(
        'ipamPoolCidrId',
        ipamPoolCidrId,
      )
      ..add(
        'netmaskLength',
        netmaskLength,
      );
    return helper.toString();
  }
}

class IpamPoolCidrEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamPoolCidr> {
  const IpamPoolCidrEc2QuerySerializer() : super('IpamPoolCidr');

  @override
  Iterable<Type> get types => const [
        IpamPoolCidr,
        _$IpamPoolCidr,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPoolCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolCidrState),
          ) as IpamPoolCidrState);
        case 'failureReason':
          result.failureReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolCidrFailureReason),
          ) as IpamPoolCidrFailureReason));
        case 'ipamPoolCidrId':
          result.ipamPoolCidrId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'netmaskLength':
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
    IpamPoolCidr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamPoolCidrResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamPoolCidr(
      :cidr,
      :state,
      :failureReason,
      :ipamPoolCidrId,
      :netmaskLength
    ) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(IpamPoolCidrState),
        ));
    }
    if (failureReason != null) {
      result$
        ..add(const _i2.XmlElementName('FailureReason'))
        ..add(serializers.serialize(
          failureReason,
          specifiedType: const FullType(IpamPoolCidrFailureReason),
        ));
    }
    if (ipamPoolCidrId != null) {
      result$
        ..add(const _i2.XmlElementName('IpamPoolCidrId'))
        ..add(serializers.serialize(
          ipamPoolCidrId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('NetmaskLength'))
      ..add(serializers.serialize(
        netmaskLength,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
