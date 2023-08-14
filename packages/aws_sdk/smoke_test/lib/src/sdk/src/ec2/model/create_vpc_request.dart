// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'create_vpc_request.g.dart';

abstract class CreateVpcRequest
    with _i1.HttpInput<CreateVpcRequest>, _i2.AWSEquatable<CreateVpcRequest>
    implements Built<CreateVpcRequest, CreateVpcRequestBuilder> {
  factory CreateVpcRequest({
    String? cidrBlock,
    bool? amazonProvidedIpv6CidrBlock,
    String? ipv6Pool,
    String? ipv6CidrBlock,
    String? ipv4IpamPoolId,
    int? ipv4NetmaskLength,
    String? ipv6IpamPoolId,
    int? ipv6NetmaskLength,
    bool? dryRun,
    Tenancy? instanceTenancy,
    String? ipv6CidrBlockNetworkBorderGroup,
    List<TagSpecification>? tagSpecifications,
  }) {
    amazonProvidedIpv6CidrBlock ??= false;
    dryRun ??= false;
    return _$CreateVpcRequest._(
      cidrBlock: cidrBlock,
      amazonProvidedIpv6CidrBlock: amazonProvidedIpv6CidrBlock,
      ipv6Pool: ipv6Pool,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv4IpamPoolId: ipv4IpamPoolId,
      ipv4NetmaskLength: ipv4NetmaskLength,
      ipv6IpamPoolId: ipv6IpamPoolId,
      ipv6NetmaskLength: ipv6NetmaskLength,
      dryRun: dryRun,
      instanceTenancy: instanceTenancy,
      ipv6CidrBlockNetworkBorderGroup: ipv6CidrBlockNetworkBorderGroup,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateVpcRequest.build(
      [void Function(CreateVpcRequestBuilder) updates]) = _$CreateVpcRequest;

  const CreateVpcRequest._();

  factory CreateVpcRequest.fromRequest(
    CreateVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVpcRequest>> serializers = [
    CreateVpcRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcRequestBuilder b) {
    b
      ..amazonProvidedIpv6CidrBlock = false
      ..dryRun = false;
  }

  /// The IPv4 network range for the VPC, in CIDR notation. For example, `10.0.0.0/16`. We modify the specified CIDR block to its canonical form; for example, if you specify `100.68.0.18/18`, we modify it to `100.68.0.0/18`.
  String? get cidrBlock;

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.
  bool get amazonProvidedIpv6CidrBlock;

  /// The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
  String? get ipv6Pool;

  /// The IPv6 CIDR block from the IPv6 address pool. You must also specify `Ipv6Pool` in the request.
  ///
  /// To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
  String? get ipv6CidrBlock;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv4NetmaskLength;

  /// The ID of an IPv6 IPAM pool which will be used to allocate this VPC an IPv6 CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv6NetmaskLength;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tenancy options for instances launched into the VPC. For `default`, instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For `dedicated`, instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of `dedicated` or `host` into a dedicated tenancy VPC.
  ///
  /// **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
  ///
  /// Default: `default`
  Tenancy? get instanceTenancy;

  /// The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the address to this location.
  ///
  /// You must set `AmazonProvidedIpv6CidrBlock` to `true` to use this parameter.
  String? get ipv6CidrBlockNetworkBorderGroup;

  /// The tags to assign to the VPC.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidrBlock,
        amazonProvidedIpv6CidrBlock,
        ipv6Pool,
        ipv6CidrBlock,
        ipv4IpamPoolId,
        ipv4NetmaskLength,
        ipv6IpamPoolId,
        ipv6NetmaskLength,
        dryRun,
        instanceTenancy,
        ipv6CidrBlockNetworkBorderGroup,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcRequest')
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'amazonProvidedIpv6CidrBlock',
        amazonProvidedIpv6CidrBlock,
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
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'instanceTenancy',
        instanceTenancy,
      )
      ..add(
        'ipv6CidrBlockNetworkBorderGroup',
        ipv6CidrBlockNetworkBorderGroup,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class CreateVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpcRequest> {
  const CreateVpcRequestEc2QuerySerializer() : super('CreateVpcRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcRequest,
        _$CreateVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'amazonProvidedIpv6CidrBlock':
          result.amazonProvidedIpv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
        case 'Ipv6CidrBlockNetworkBorderGroup':
          result.ipv6CidrBlockNetworkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpcRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcRequest(
      :cidrBlock,
      :amazonProvidedIpv6CidrBlock,
      :ipv6Pool,
      :ipv6CidrBlock,
      :ipv4IpamPoolId,
      :ipv4NetmaskLength,
      :ipv6IpamPoolId,
      :ipv6NetmaskLength,
      :dryRun,
      :instanceTenancy,
      :ipv6CidrBlockNetworkBorderGroup,
      :tagSpecifications
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AmazonProvidedIpv6CidrBlock'))
      ..add(serializers.serialize(
        amazonProvidedIpv6CidrBlock,
        specifiedType: const FullType(bool),
      ));
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceTenancy != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType.nullable(Tenancy),
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
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
