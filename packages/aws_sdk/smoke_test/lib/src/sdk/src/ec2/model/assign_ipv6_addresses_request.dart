// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_ipv6_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'assign_ipv6_addresses_request.g.dart';

abstract class AssignIpv6AddressesRequest
    with
        _i1.HttpInput<AssignIpv6AddressesRequest>,
        _i2.AWSEquatable<AssignIpv6AddressesRequest>
    implements
        Built<AssignIpv6AddressesRequest, AssignIpv6AddressesRequestBuilder> {
  factory AssignIpv6AddressesRequest({
    int? ipv6AddressCount,
    List<String>? ipv6Addresses,
    int? ipv6PrefixCount,
    List<String>? ipv6Prefixes,
    String? networkInterfaceId,
  }) {
    ipv6AddressCount ??= 0;
    ipv6PrefixCount ??= 0;
    return _$AssignIpv6AddressesRequest._(
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i3.BuiltList(ipv6Addresses),
      ipv6PrefixCount: ipv6PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i3.BuiltList(ipv6Prefixes),
      networkInterfaceId: networkInterfaceId,
    );
  }

  factory AssignIpv6AddressesRequest.build(
          [void Function(AssignIpv6AddressesRequestBuilder) updates]) =
      _$AssignIpv6AddressesRequest;

  const AssignIpv6AddressesRequest._();

  factory AssignIpv6AddressesRequest.fromRequest(
    AssignIpv6AddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssignIpv6AddressesRequest>>
      serializers = [AssignIpv6AddressesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssignIpv6AddressesRequestBuilder b) {
    b
      ..ipv6AddressCount = 0
      ..ipv6PrefixCount = 0;
  }

  /// The number of additional IPv6 addresses to assign to the network interface. The specified number of IPv6 addresses are assigned in addition to the existing IPv6 addresses that are already assigned to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.
  int get ipv6AddressCount;

  /// The IPv6 addresses to be assigned to the network interface. You can't use this option if you're specifying a number of IPv6 addresses.
  _i3.BuiltList<String>? get ipv6Addresses;

  /// The number of IPv6 prefixes that Amazon Web Services automatically assigns to the network interface. You cannot use this option if you use the `Ipv6Prefixes` option.
  int get ipv6PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface. You cannot use this option if you use the `Ipv6PrefixCount` option.
  _i3.BuiltList<String>? get ipv6Prefixes;

  /// The ID of the network interface.
  String? get networkInterfaceId;
  @override
  AssignIpv6AddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        ipv6AddressCount,
        ipv6Addresses,
        ipv6PrefixCount,
        ipv6Prefixes,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssignIpv6AddressesRequest')
      ..add(
        'ipv6AddressCount',
        ipv6AddressCount,
      )
      ..add(
        'ipv6Addresses',
        ipv6Addresses,
      )
      ..add(
        'ipv6PrefixCount',
        ipv6PrefixCount,
      )
      ..add(
        'ipv6Prefixes',
        ipv6Prefixes,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      );
    return helper.toString();
  }
}

class AssignIpv6AddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssignIpv6AddressesRequest> {
  const AssignIpv6AddressesRequestEc2QuerySerializer()
      : super('AssignIpv6AddressesRequest');

  @override
  Iterable<Type> get types => const [
        AssignIpv6AddressesRequest,
        _$AssignIpv6AddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignIpv6AddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignIpv6AddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6Addresses':
          result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Ipv6PrefixCount':
          result.ipv6PrefixCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv6Prefix':
          result.ipv6Prefixes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
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
    AssignIpv6AddressesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssignIpv6AddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignIpv6AddressesRequest(
      :ipv6AddressCount,
      :ipv6Addresses,
      :ipv6PrefixCount,
      :ipv6Prefixes,
      :networkInterfaceId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Addresses != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Addresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv6PrefixCount'))
      ..add(serializers.serialize(
        ipv6PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (ipv6Prefixes != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Prefixes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
