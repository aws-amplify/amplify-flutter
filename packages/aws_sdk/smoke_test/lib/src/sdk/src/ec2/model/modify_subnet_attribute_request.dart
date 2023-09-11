// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_subnet_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart';

part 'modify_subnet_attribute_request.g.dart';

abstract class ModifySubnetAttributeRequest
    with
        _i1.HttpInput<ModifySubnetAttributeRequest>,
        _i2.AWSEquatable<ModifySubnetAttributeRequest>
    implements
        Built<ModifySubnetAttributeRequest,
            ModifySubnetAttributeRequestBuilder> {
  factory ModifySubnetAttributeRequest({
    AttributeBooleanValue? assignIpv6AddressOnCreation,
    AttributeBooleanValue? mapPublicIpOnLaunch,
    String? subnetId,
    AttributeBooleanValue? mapCustomerOwnedIpOnLaunch,
    String? customerOwnedIpv4Pool,
    AttributeBooleanValue? enableDns64,
    HostnameType? privateDnsHostnameTypeOnLaunch,
    AttributeBooleanValue? enableResourceNameDnsARecordOnLaunch,
    AttributeBooleanValue? enableResourceNameDnsAaaaRecordOnLaunch,
    int? enableLniAtDeviceIndex,
    AttributeBooleanValue? disableLniAtDeviceIndex,
  }) {
    enableLniAtDeviceIndex ??= 0;
    return _$ModifySubnetAttributeRequest._(
      assignIpv6AddressOnCreation: assignIpv6AddressOnCreation,
      mapPublicIpOnLaunch: mapPublicIpOnLaunch,
      subnetId: subnetId,
      mapCustomerOwnedIpOnLaunch: mapCustomerOwnedIpOnLaunch,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      enableDns64: enableDns64,
      privateDnsHostnameTypeOnLaunch: privateDnsHostnameTypeOnLaunch,
      enableResourceNameDnsARecordOnLaunch:
          enableResourceNameDnsARecordOnLaunch,
      enableResourceNameDnsAaaaRecordOnLaunch:
          enableResourceNameDnsAaaaRecordOnLaunch,
      enableLniAtDeviceIndex: enableLniAtDeviceIndex,
      disableLniAtDeviceIndex: disableLniAtDeviceIndex,
    );
  }

  factory ModifySubnetAttributeRequest.build(
          [void Function(ModifySubnetAttributeRequestBuilder) updates]) =
      _$ModifySubnetAttributeRequest;

  const ModifySubnetAttributeRequest._();

  factory ModifySubnetAttributeRequest.fromRequest(
    ModifySubnetAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifySubnetAttributeRequest>>
      serializers = [ModifySubnetAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySubnetAttributeRequestBuilder b) {
    b.enableLniAtDeviceIndex = 0;
  }

  /// Specify `true` to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. This includes a network interface that's created when launching an instance into the subnet (the instance therefore receives an IPv6 address).
  ///
  /// If you enable the IPv6 addressing feature for your subnet, your network interface or instance only receives an IPv6 address if it's created using version `2016-11-15` or later of the Amazon EC2 API.
  AttributeBooleanValue? get assignIpv6AddressOnCreation;

  /// Specify `true` to indicate that network interfaces attached to instances created in the specified subnet should be assigned a public IPv4 address.
  AttributeBooleanValue? get mapPublicIpOnLaunch;

  /// The ID of the subnet.
  String? get subnetId;

  /// Specify `true` to indicate that network interfaces attached to instances created in the specified subnet should be assigned a customer-owned IPv4 address.
  ///
  /// When this value is `true`, you must specify the customer-owned IP pool using `CustomerOwnedIpv4Pool`.
  AttributeBooleanValue? get mapCustomerOwnedIpOnLaunch;

  /// The customer-owned IPv4 address pool associated with the subnet.
  ///
  /// You must set this value when you specify `true` for `MapCustomerOwnedIpOnLaunch`.
  String? get customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  AttributeBooleanValue? get enableDns64;

  /// The type of hostname to assign to instances in the subnet at launch. For IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS name can be based on the instance IPv4 address (ip-name) or the instance ID (resource-name). For IPv6 only subnets, an instance DNS name must be based on the instance ID (resource-name).
  HostnameType? get privateDnsHostnameTypeOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  AttributeBooleanValue? get enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  AttributeBooleanValue? get enableResourceNameDnsAaaaRecordOnLaunch;

  /// Indicates the device position for local network interfaces in this subnet. For example, `1` indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  int get enableLniAtDeviceIndex;

  /// Specify `true` to indicate that local network interfaces at the current position should be disabled.
  AttributeBooleanValue? get disableLniAtDeviceIndex;
  @override
  ModifySubnetAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        assignIpv6AddressOnCreation,
        mapPublicIpOnLaunch,
        subnetId,
        mapCustomerOwnedIpOnLaunch,
        customerOwnedIpv4Pool,
        enableDns64,
        privateDnsHostnameTypeOnLaunch,
        enableResourceNameDnsARecordOnLaunch,
        enableResourceNameDnsAaaaRecordOnLaunch,
        enableLniAtDeviceIndex,
        disableLniAtDeviceIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySubnetAttributeRequest')
      ..add(
        'assignIpv6AddressOnCreation',
        assignIpv6AddressOnCreation,
      )
      ..add(
        'mapPublicIpOnLaunch',
        mapPublicIpOnLaunch,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'mapCustomerOwnedIpOnLaunch',
        mapCustomerOwnedIpOnLaunch,
      )
      ..add(
        'customerOwnedIpv4Pool',
        customerOwnedIpv4Pool,
      )
      ..add(
        'enableDns64',
        enableDns64,
      )
      ..add(
        'privateDnsHostnameTypeOnLaunch',
        privateDnsHostnameTypeOnLaunch,
      )
      ..add(
        'enableResourceNameDnsARecordOnLaunch',
        enableResourceNameDnsARecordOnLaunch,
      )
      ..add(
        'enableResourceNameDnsAaaaRecordOnLaunch',
        enableResourceNameDnsAaaaRecordOnLaunch,
      )
      ..add(
        'enableLniAtDeviceIndex',
        enableLniAtDeviceIndex,
      )
      ..add(
        'disableLniAtDeviceIndex',
        disableLniAtDeviceIndex,
      );
    return helper.toString();
  }
}

class ModifySubnetAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySubnetAttributeRequest> {
  const ModifySubnetAttributeRequestEc2QuerySerializer()
      : super('ModifySubnetAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifySubnetAttributeRequest,
        _$ModifySubnetAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySubnetAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySubnetAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssignIpv6AddressOnCreation':
          result.assignIpv6AddressOnCreation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'MapPublicIpOnLaunch':
          result.mapPublicIpOnLaunch.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MapCustomerOwnedIpOnLaunch':
          result.mapCustomerOwnedIpOnLaunch.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'CustomerOwnedIpv4Pool':
          result.customerOwnedIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableDns64':
          result.enableDns64.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'PrivateDnsHostnameTypeOnLaunch':
          result.privateDnsHostnameTypeOnLaunch = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostnameType),
          ) as HostnameType);
        case 'EnableResourceNameDnsARecordOnLaunch':
          result.enableResourceNameDnsARecordOnLaunch
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'EnableResourceNameDnsAAAARecordOnLaunch':
          result.enableResourceNameDnsAaaaRecordOnLaunch
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'EnableLniAtDeviceIndex':
          result.enableLniAtDeviceIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DisableLniAtDeviceIndex':
          result.disableLniAtDeviceIndex.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifySubnetAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifySubnetAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifySubnetAttributeRequest(
      :assignIpv6AddressOnCreation,
      :mapPublicIpOnLaunch,
      :subnetId,
      :mapCustomerOwnedIpOnLaunch,
      :customerOwnedIpv4Pool,
      :enableDns64,
      :privateDnsHostnameTypeOnLaunch,
      :enableResourceNameDnsARecordOnLaunch,
      :enableResourceNameDnsAaaaRecordOnLaunch,
      :enableLniAtDeviceIndex,
      :disableLniAtDeviceIndex
    ) = object;
    if (assignIpv6AddressOnCreation != null) {
      result$
        ..add(const _i1.XmlElementName('AssignIpv6AddressOnCreation'))
        ..add(serializers.serialize(
          assignIpv6AddressOnCreation,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (mapPublicIpOnLaunch != null) {
      result$
        ..add(const _i1.XmlElementName('MapPublicIpOnLaunch'))
        ..add(serializers.serialize(
          mapPublicIpOnLaunch,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (mapCustomerOwnedIpOnLaunch != null) {
      result$
        ..add(const _i1.XmlElementName('MapCustomerOwnedIpOnLaunch'))
        ..add(serializers.serialize(
          mapCustomerOwnedIpOnLaunch,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (customerOwnedIpv4Pool != null) {
      result$
        ..add(const _i1.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          customerOwnedIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (enableDns64 != null) {
      result$
        ..add(const _i1.XmlElementName('EnableDns64'))
        ..add(serializers.serialize(
          enableDns64,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (privateDnsHostnameTypeOnLaunch != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateDnsHostnameTypeOnLaunch'))
        ..add(serializers.serialize(
          privateDnsHostnameTypeOnLaunch,
          specifiedType: const FullType(HostnameType),
        ));
    }
    if (enableResourceNameDnsARecordOnLaunch != null) {
      result$
        ..add(const _i1.XmlElementName('EnableResourceNameDnsARecordOnLaunch'))
        ..add(serializers.serialize(
          enableResourceNameDnsARecordOnLaunch,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enableResourceNameDnsAaaaRecordOnLaunch != null) {
      result$
        ..add(
            const _i1.XmlElementName('EnableResourceNameDnsAAAARecordOnLaunch'))
        ..add(serializers.serialize(
          enableResourceNameDnsAaaaRecordOnLaunch,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('EnableLniAtDeviceIndex'))
      ..add(serializers.serialize(
        enableLniAtDeviceIndex,
        specifiedType: const FullType(int),
      ));
    if (disableLniAtDeviceIndex != null) {
      result$
        ..add(const _i1.XmlElementName('DisableLniAtDeviceIndex'))
        ..add(serializers.serialize(
          disableLniAtDeviceIndex,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
