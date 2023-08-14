// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_vpc_cidr_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_vpc_cidr_block_request.g.dart';

abstract class AssociateVpcCidrBlockRequest
    with
        _i1.HttpInput<AssociateVpcCidrBlockRequest>,
        _i2.AWSEquatable<AssociateVpcCidrBlockRequest>
    implements
        Built<AssociateVpcCidrBlockRequest,
            AssociateVpcCidrBlockRequestBuilder> {
  factory AssociateVpcCidrBlockRequest({
    bool? amazonProvidedIpv6CidrBlock,
    String? cidrBlock,
    String? vpcId,
    String? ipv6CidrBlockNetworkBorderGroup,
    String? ipv6Pool,
    String? ipv6CidrBlock,
    String? ipv4IpamPoolId,
    int? ipv4NetmaskLength,
    String? ipv6IpamPoolId,
    int? ipv6NetmaskLength,
  }) {
    amazonProvidedIpv6CidrBlock ??= false;
    return _$AssociateVpcCidrBlockRequest._(
      amazonProvidedIpv6CidrBlock: amazonProvidedIpv6CidrBlock,
      cidrBlock: cidrBlock,
      vpcId: vpcId,
      ipv6CidrBlockNetworkBorderGroup: ipv6CidrBlockNetworkBorderGroup,
      ipv6Pool: ipv6Pool,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv4IpamPoolId: ipv4IpamPoolId,
      ipv4NetmaskLength: ipv4NetmaskLength,
      ipv6IpamPoolId: ipv6IpamPoolId,
      ipv6NetmaskLength: ipv6NetmaskLength,
    );
  }

  factory AssociateVpcCidrBlockRequest.build(
          [void Function(AssociateVpcCidrBlockRequestBuilder) updates]) =
      _$AssociateVpcCidrBlockRequest;

  const AssociateVpcCidrBlockRequest._();

  factory AssociateVpcCidrBlockRequest.fromRequest(
    AssociateVpcCidrBlockRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateVpcCidrBlockRequest>>
      serializers = [AssociateVpcCidrBlockRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateVpcCidrBlockRequestBuilder b) {
    b.amazonProvidedIpv6CidrBlock = false;
  }

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.
  bool get amazonProvidedIpv6CidrBlock;

  /// An IPv4 CIDR block to associate with the VPC.
  String? get cidrBlock;

  /// The ID of the VPC.
  String? get vpcId;

  /// The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the CIDR block to this location.
  ///
  /// You must set `AmazonProvidedIpv6CidrBlock` to `true` to use this parameter.
  ///
  /// You can have one IPv6 CIDR block association per network border group.
  String? get ipv6CidrBlockNetworkBorderGroup;

  /// The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
  String? get ipv6Pool;

  /// An IPv6 CIDR block from the IPv6 address pool. You must also specify `Ipv6Pool` in the request.
  ///
  /// To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
  String? get ipv6CidrBlock;

  /// Associate a CIDR allocated from an IPv4 IPAM pool to a VPC. For more information about Amazon VPC IP Address Manager (IPAM), see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you would like to associate from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv4NetmaskLength;

  /// Associates a CIDR allocated from an IPv6 IPAM pool to a VPC. For more information about Amazon VPC IP Address Manager (IPAM), see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you would like to associate from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv6NetmaskLength;
  @override
  AssociateVpcCidrBlockRequest getPayload() => this;
  @override
  List<Object?> get props => [
        amazonProvidedIpv6CidrBlock,
        cidrBlock,
        vpcId,
        ipv6CidrBlockNetworkBorderGroup,
        ipv6Pool,
        ipv6CidrBlock,
        ipv4IpamPoolId,
        ipv4NetmaskLength,
        ipv6IpamPoolId,
        ipv6NetmaskLength,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateVpcCidrBlockRequest')
      ..add(
        'amazonProvidedIpv6CidrBlock',
        amazonProvidedIpv6CidrBlock,
      )
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'ipv6CidrBlockNetworkBorderGroup',
        ipv6CidrBlockNetworkBorderGroup,
      )
      ..add(
        'ipv6Pool',
        ipv6Pool,
      )
      ..add(
        'ipv6CidrBlock',
        ipv6CidrBlock,
      )
      ..add(
        'ipv4IpamPoolId',
        ipv4IpamPoolId,
      )
      ..add(
        'ipv4NetmaskLength',
        ipv4NetmaskLength,
      )
      ..add(
        'ipv6IpamPoolId',
        ipv6IpamPoolId,
      )
      ..add(
        'ipv6NetmaskLength',
        ipv6NetmaskLength,
      );
    return helper.toString();
  }
}

class AssociateVpcCidrBlockRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateVpcCidrBlockRequest> {
  const AssociateVpcCidrBlockRequestEc2QuerySerializer()
      : super('AssociateVpcCidrBlockRequest');

  @override
  Iterable<Type> get types => const [
        AssociateVpcCidrBlockRequest,
        _$AssociateVpcCidrBlockRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateVpcCidrBlockRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateVpcCidrBlockRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amazonProvidedIpv6CidrBlock':
          result.amazonProvidedIpv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6CidrBlockNetworkBorderGroup':
          result.ipv6CidrBlockNetworkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6Pool':
          result.ipv6Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv4IpamPoolId':
          result.ipv4IpamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv4NetmaskLength':
          result.ipv4NetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6IpamPoolId':
          result.ipv6IpamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6NetmaskLength':
          result.ipv6NetmaskLength = (serializers.deserialize(
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
    AssociateVpcCidrBlockRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateVpcCidrBlockRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateVpcCidrBlockRequest(
      :amazonProvidedIpv6CidrBlock,
      :cidrBlock,
      :vpcId,
      :ipv6CidrBlockNetworkBorderGroup,
      :ipv6Pool,
      :ipv6CidrBlock,
      :ipv4IpamPoolId,
      :ipv4NetmaskLength,
      :ipv6IpamPoolId,
      :ipv6NetmaskLength
    ) = object;
    result$
      ..add(const _i1.XmlElementName('AmazonProvidedIpv6CidrBlock'))
      ..add(serializers.serialize(
        amazonProvidedIpv6CidrBlock,
        specifiedType: const FullType(bool),
      ));
    if (cidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6CidrBlockNetworkBorderGroup != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6CidrBlockNetworkBorderGroup'))
        ..add(serializers.serialize(
          ipv6CidrBlockNetworkBorderGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6Pool != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Pool'))
        ..add(serializers.serialize(
          ipv6Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv4IpamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv4IpamPoolId'))
        ..add(serializers.serialize(
          ipv4IpamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv4NetmaskLength != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv4NetmaskLength'))
        ..add(serializers.serialize(
          ipv4NetmaskLength,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (ipv6IpamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6IpamPoolId'))
        ..add(serializers.serialize(
          ipv6IpamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6NetmaskLength != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6NetmaskLength'))
        ..add(serializers.serialize(
          ipv6NetmaskLength,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
