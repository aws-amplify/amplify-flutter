// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_endpoint_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'vpc_endpoint_connection.g.dart';

/// Describes a VPC endpoint connection to a service.
abstract class VpcEndpointConnection
    with _i1.AWSEquatable<VpcEndpointConnection>
    implements Built<VpcEndpointConnection, VpcEndpointConnectionBuilder> {
  /// Describes a VPC endpoint connection to a service.
  factory VpcEndpointConnection({
    String? serviceId,
    String? vpcEndpointId,
    String? vpcEndpointOwner,
    State? vpcEndpointState,
    DateTime? creationTimestamp,
    List<DnsEntry>? dnsEntries,
    List<String>? networkLoadBalancerArns,
    List<String>? gatewayLoadBalancerArns,
    IpAddressType? ipAddressType,
    String? vpcEndpointConnectionId,
    List<Tag>? tags,
  }) {
    return _$VpcEndpointConnection._(
      serviceId: serviceId,
      vpcEndpointId: vpcEndpointId,
      vpcEndpointOwner: vpcEndpointOwner,
      vpcEndpointState: vpcEndpointState,
      creationTimestamp: creationTimestamp,
      dnsEntries: dnsEntries == null ? null : _i2.BuiltList(dnsEntries),
      networkLoadBalancerArns: networkLoadBalancerArns == null
          ? null
          : _i2.BuiltList(networkLoadBalancerArns),
      gatewayLoadBalancerArns: gatewayLoadBalancerArns == null
          ? null
          : _i2.BuiltList(gatewayLoadBalancerArns),
      ipAddressType: ipAddressType,
      vpcEndpointConnectionId: vpcEndpointConnectionId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a VPC endpoint connection to a service.
  factory VpcEndpointConnection.build(
          [void Function(VpcEndpointConnectionBuilder) updates]) =
      _$VpcEndpointConnection;

  const VpcEndpointConnection._();

  static const List<_i3.SmithySerializer<VpcEndpointConnection>> serializers = [
    VpcEndpointConnectionEc2QuerySerializer()
  ];

  /// The ID of the service to which the endpoint is connected.
  String? get serviceId;

  /// The ID of the VPC endpoint.
  String? get vpcEndpointId;

  /// The ID of the Amazon Web Services account that owns the VPC endpoint.
  String? get vpcEndpointOwner;

  /// The state of the VPC endpoint.
  State? get vpcEndpointState;

  /// The date and time that the VPC endpoint was created.
  DateTime? get creationTimestamp;

  /// The DNS entries for the VPC endpoint.
  _i2.BuiltList<DnsEntry>? get dnsEntries;

  /// The Amazon Resource Names (ARNs) of the network load balancers for the service.
  _i2.BuiltList<String>? get networkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
  _i2.BuiltList<String>? get gatewayLoadBalancerArns;

  /// The IP address type for the endpoint.
  IpAddressType? get ipAddressType;

  /// The ID of the VPC endpoint connection.
  String? get vpcEndpointConnectionId;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        serviceId,
        vpcEndpointId,
        vpcEndpointOwner,
        vpcEndpointState,
        creationTimestamp,
        dnsEntries,
        networkLoadBalancerArns,
        gatewayLoadBalancerArns,
        ipAddressType,
        vpcEndpointConnectionId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcEndpointConnection')
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'vpcEndpointId',
        vpcEndpointId,
      )
      ..add(
        'vpcEndpointOwner',
        vpcEndpointOwner,
      )
      ..add(
        'vpcEndpointState',
        vpcEndpointState,
      )
      ..add(
        'creationTimestamp',
        creationTimestamp,
      )
      ..add(
        'dnsEntries',
        dnsEntries,
      )
      ..add(
        'networkLoadBalancerArns',
        networkLoadBalancerArns,
      )
      ..add(
        'gatewayLoadBalancerArns',
        gatewayLoadBalancerArns,
      )
      ..add(
        'ipAddressType',
        ipAddressType,
      )
      ..add(
        'vpcEndpointConnectionId',
        vpcEndpointConnectionId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VpcEndpointConnectionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcEndpointConnection> {
  const VpcEndpointConnectionEc2QuerySerializer()
      : super('VpcEndpointConnection');

  @override
  Iterable<Type> get types => const [
        VpcEndpointConnection,
        _$VpcEndpointConnection,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcEndpointConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcEndpointConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcEndpointId':
          result.vpcEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcEndpointOwner':
          result.vpcEndpointOwner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcEndpointState':
          result.vpcEndpointState = (serializers.deserialize(
            value,
            specifiedType: const FullType(State),
          ) as State);
        case 'creationTimestamp':
          result.creationTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'dnsEntrySet':
          result.dnsEntries.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DnsEntry)],
            ),
          ) as _i2.BuiltList<DnsEntry>));
        case 'networkLoadBalancerArnSet':
          result.networkLoadBalancerArns
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
        case 'gatewayLoadBalancerArnSet':
          result.gatewayLoadBalancerArns
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
        case 'ipAddressType':
          result.ipAddressType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpAddressType),
          ) as IpAddressType);
        case 'vpcEndpointConnectionId':
          result.vpcEndpointConnectionId = (serializers.deserialize(
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
    VpcEndpointConnection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcEndpointConnectionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcEndpointConnection(
      :serviceId,
      :vpcEndpointId,
      :vpcEndpointOwner,
      :vpcEndpointState,
      :creationTimestamp,
      :dnsEntries,
      :networkLoadBalancerArns,
      :gatewayLoadBalancerArns,
      :ipAddressType,
      :vpcEndpointConnectionId,
      :tags
    ) = object;
    if (serviceId != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          vpcEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointOwner != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointOwner'))
        ..add(serializers.serialize(
          vpcEndpointOwner,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointState != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointState'))
        ..add(serializers.serialize(
          vpcEndpointState,
          specifiedType: const FullType(State),
        ));
    }
    if (creationTimestamp != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTimestamp'))
        ..add(serializers.serialize(
          creationTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (dnsEntries != null) {
      result$
        ..add(const _i3.XmlElementName('DnsEntrySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dnsEntries,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DnsEntry)],
          ),
        ));
    }
    if (networkLoadBalancerArns != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkLoadBalancerArnSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkLoadBalancerArns,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (gatewayLoadBalancerArns != null) {
      result$
        ..add(const _i3.XmlElementName('GatewayLoadBalancerArnSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          gatewayLoadBalancerArns,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (ipAddressType != null) {
      result$
        ..add(const _i3.XmlElementName('IpAddressType'))
        ..add(serializers.serialize(
          ipAddressType,
          specifiedType: const FullType(IpAddressType),
        ));
    }
    if (vpcEndpointConnectionId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointConnectionId'))
        ..add(serializers.serialize(
          vpcEndpointConnectionId,
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
