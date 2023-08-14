// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_private_ip_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/assigned_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart';

part 'assign_private_ip_addresses_result.g.dart';

abstract class AssignPrivateIpAddressesResult
    with
        _i1.AWSEquatable<AssignPrivateIpAddressesResult>
    implements
        Built<AssignPrivateIpAddressesResult,
            AssignPrivateIpAddressesResultBuilder> {
  factory AssignPrivateIpAddressesResult({
    String? networkInterfaceId,
    List<AssignedPrivateIpAddress>? assignedPrivateIpAddresses,
    List<Ipv4PrefixSpecification>? assignedIpv4Prefixes,
  }) {
    return _$AssignPrivateIpAddressesResult._(
      networkInterfaceId: networkInterfaceId,
      assignedPrivateIpAddresses: assignedPrivateIpAddresses == null
          ? null
          : _i2.BuiltList(assignedPrivateIpAddresses),
      assignedIpv4Prefixes: assignedIpv4Prefixes == null
          ? null
          : _i2.BuiltList(assignedIpv4Prefixes),
    );
  }

  factory AssignPrivateIpAddressesResult.build(
          [void Function(AssignPrivateIpAddressesResultBuilder) updates]) =
      _$AssignPrivateIpAddressesResult;

  const AssignPrivateIpAddressesResult._();

  /// Constructs a [AssignPrivateIpAddressesResult] from a [payload] and [response].
  factory AssignPrivateIpAddressesResult.fromResponse(
    AssignPrivateIpAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<AssignPrivateIpAddressesResult>>
      serializers = [AssignPrivateIpAddressesResultEc2QuerySerializer()];

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The private IP addresses assigned to the network interface.
  _i2.BuiltList<AssignedPrivateIpAddress>? get assignedPrivateIpAddresses;

  /// The IPv4 prefixes that are assigned to the network interface.
  _i2.BuiltList<Ipv4PrefixSpecification>? get assignedIpv4Prefixes;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        assignedPrivateIpAddresses,
        assignedIpv4Prefixes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssignPrivateIpAddressesResult')
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'assignedPrivateIpAddresses',
        assignedPrivateIpAddresses,
      )
      ..add(
        'assignedIpv4Prefixes',
        assignedIpv4Prefixes,
      );
    return helper.toString();
  }
}

class AssignPrivateIpAddressesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssignPrivateIpAddressesResult> {
  const AssignPrivateIpAddressesResultEc2QuerySerializer()
      : super('AssignPrivateIpAddressesResult');

  @override
  Iterable<Type> get types => const [
        AssignPrivateIpAddressesResult,
        _$AssignPrivateIpAddressesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignPrivateIpAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignPrivateIpAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'assignedPrivateIpAddressesSet':
          result.assignedPrivateIpAddresses
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AssignedPrivateIpAddress)],
            ),
          ) as _i2.BuiltList<AssignedPrivateIpAddress>));
        case 'assignedIpv4PrefixSet':
          result.assignedIpv4Prefixes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv4PrefixSpecification)],
            ),
          ) as _i2.BuiltList<Ipv4PrefixSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssignPrivateIpAddressesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssignPrivateIpAddressesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignPrivateIpAddressesResult(
      :networkInterfaceId,
      :assignedPrivateIpAddresses,
      :assignedIpv4Prefixes
    ) = object;
    if (networkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (assignedPrivateIpAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('AssignedPrivateIpAddressesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          assignedPrivateIpAddresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AssignedPrivateIpAddress)],
          ),
        ));
    }
    if (assignedIpv4Prefixes != null) {
      result$
        ..add(const _i3.XmlElementName('AssignedIpv4PrefixSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          assignedIpv4Prefixes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Ipv4PrefixSpecification)],
          ),
        ));
    }
    return result$;
  }
}
