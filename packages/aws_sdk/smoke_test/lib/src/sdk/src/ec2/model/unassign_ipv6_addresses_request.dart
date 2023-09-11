// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unassign_ipv6_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'unassign_ipv6_addresses_request.g.dart';

abstract class UnassignIpv6AddressesRequest
    with
        _i1.HttpInput<UnassignIpv6AddressesRequest>,
        _i2.AWSEquatable<UnassignIpv6AddressesRequest>
    implements
        Built<UnassignIpv6AddressesRequest,
            UnassignIpv6AddressesRequestBuilder> {
  factory UnassignIpv6AddressesRequest({
    List<String>? ipv6Addresses,
    List<String>? ipv6Prefixes,
    String? networkInterfaceId,
  }) {
    return _$UnassignIpv6AddressesRequest._(
      ipv6Addresses:
          ipv6Addresses == null ? null : _i3.BuiltList(ipv6Addresses),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i3.BuiltList(ipv6Prefixes),
      networkInterfaceId: networkInterfaceId,
    );
  }

  factory UnassignIpv6AddressesRequest.build(
          [void Function(UnassignIpv6AddressesRequestBuilder) updates]) =
      _$UnassignIpv6AddressesRequest;

  const UnassignIpv6AddressesRequest._();

  factory UnassignIpv6AddressesRequest.fromRequest(
    UnassignIpv6AddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UnassignIpv6AddressesRequest>>
      serializers = [UnassignIpv6AddressesRequestEc2QuerySerializer()];

  /// The IPv6 addresses to unassign from the network interface.
  _i3.BuiltList<String>? get ipv6Addresses;

  /// The IPv6 prefixes to unassign from the network interface.
  _i3.BuiltList<String>? get ipv6Prefixes;

  /// The ID of the network interface.
  String? get networkInterfaceId;
  @override
  UnassignIpv6AddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        ipv6Addresses,
        ipv6Prefixes,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnassignIpv6AddressesRequest')
      ..add(
        'ipv6Addresses',
        ipv6Addresses,
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

class UnassignIpv6AddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<UnassignIpv6AddressesRequest> {
  const UnassignIpv6AddressesRequestEc2QuerySerializer()
      : super('UnassignIpv6AddressesRequest');

  @override
  Iterable<Type> get types => const [
        UnassignIpv6AddressesRequest,
        _$UnassignIpv6AddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnassignIpv6AddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnassignIpv6AddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    UnassignIpv6AddressesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UnassignIpv6AddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UnassignIpv6AddressesRequest(
      :ipv6Addresses,
      :ipv6Prefixes,
      :networkInterfaceId
    ) = object;
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
