// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_ipv6_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'assign_ipv6_addresses_result.g.dart';

abstract class AssignIpv6AddressesResult
    with _i1.AWSEquatable<AssignIpv6AddressesResult>
    implements
        Built<AssignIpv6AddressesResult, AssignIpv6AddressesResultBuilder> {
  factory AssignIpv6AddressesResult({
    List<String>? assignedIpv6Addresses,
    List<String>? assignedIpv6Prefixes,
    String? networkInterfaceId,
  }) {
    return _$AssignIpv6AddressesResult._(
      assignedIpv6Addresses: assignedIpv6Addresses == null
          ? null
          : _i2.BuiltList(assignedIpv6Addresses),
      assignedIpv6Prefixes: assignedIpv6Prefixes == null
          ? null
          : _i2.BuiltList(assignedIpv6Prefixes),
      networkInterfaceId: networkInterfaceId,
    );
  }

  factory AssignIpv6AddressesResult.build(
          [void Function(AssignIpv6AddressesResultBuilder) updates]) =
      _$AssignIpv6AddressesResult;

  const AssignIpv6AddressesResult._();

  /// Constructs a [AssignIpv6AddressesResult] from a [payload] and [response].
  factory AssignIpv6AddressesResult.fromResponse(
    AssignIpv6AddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<AssignIpv6AddressesResult>>
      serializers = [AssignIpv6AddressesResultEc2QuerySerializer()];

  /// The new IPv6 addresses assigned to the network interface. Existing IPv6 addresses that were assigned to the network interface before the request are not included.
  _i2.BuiltList<String>? get assignedIpv6Addresses;

  /// The IPv6 prefixes that are assigned to the network interface.
  _i2.BuiltList<String>? get assignedIpv6Prefixes;

  /// The ID of the network interface.
  String? get networkInterfaceId;
  @override
  List<Object?> get props => [
        assignedIpv6Addresses,
        assignedIpv6Prefixes,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssignIpv6AddressesResult')
      ..add(
        'assignedIpv6Addresses',
        assignedIpv6Addresses,
      )
      ..add(
        'assignedIpv6Prefixes',
        assignedIpv6Prefixes,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      );
    return helper.toString();
  }
}

class AssignIpv6AddressesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssignIpv6AddressesResult> {
  const AssignIpv6AddressesResultEc2QuerySerializer()
      : super('AssignIpv6AddressesResult');

  @override
  Iterable<Type> get types => const [
        AssignIpv6AddressesResult,
        _$AssignIpv6AddressesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignIpv6AddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignIpv6AddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'assignedIpv6Addresses':
          result.assignedIpv6Addresses
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
        case 'assignedIpv6PrefixSet':
          result.assignedIpv6Prefixes.replace((const _i3.XmlBuiltListSerializer(
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
    AssignIpv6AddressesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssignIpv6AddressesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignIpv6AddressesResult(
      :assignedIpv6Addresses,
      :assignedIpv6Prefixes,
      :networkInterfaceId
    ) = object;
    if (assignedIpv6Addresses != null) {
      result$
        ..add(const _i3.XmlElementName('AssignedIpv6Addresses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          assignedIpv6Addresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (assignedIpv6Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('AssignedIpv6PrefixSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          assignedIpv6Prefixes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
