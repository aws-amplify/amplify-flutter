// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_private_ip_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'assign_private_ip_addresses_request.g.dart';

/// Contains the parameters for AssignPrivateIpAddresses.
abstract class AssignPrivateIpAddressesRequest
    with
        _i1.HttpInput<AssignPrivateIpAddressesRequest>,
        _i2.AWSEquatable<AssignPrivateIpAddressesRequest>
    implements
        Built<AssignPrivateIpAddressesRequest,
            AssignPrivateIpAddressesRequestBuilder> {
  /// Contains the parameters for AssignPrivateIpAddresses.
  factory AssignPrivateIpAddressesRequest({
    bool? allowReassignment,
    String? networkInterfaceId,
    List<String>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    List<String>? ipv4Prefixes,
    int? ipv4PrefixCount,
  }) {
    allowReassignment ??= false;
    secondaryPrivateIpAddressCount ??= 0;
    ipv4PrefixCount ??= 0;
    return _$AssignPrivateIpAddressesRequest._(
      allowReassignment: allowReassignment,
      networkInterfaceId: networkInterfaceId,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i3.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i3.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
    );
  }

  /// Contains the parameters for AssignPrivateIpAddresses.
  factory AssignPrivateIpAddressesRequest.build(
          [void Function(AssignPrivateIpAddressesRequestBuilder) updates]) =
      _$AssignPrivateIpAddressesRequest;

  const AssignPrivateIpAddressesRequest._();

  factory AssignPrivateIpAddressesRequest.fromRequest(
    AssignPrivateIpAddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssignPrivateIpAddressesRequest>>
      serializers = [AssignPrivateIpAddressesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssignPrivateIpAddressesRequestBuilder b) {
    b
      ..allowReassignment = false
      ..secondaryPrivateIpAddressCount = 0
      ..ipv4PrefixCount = 0;
  }

  /// Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.
  bool get allowReassignment;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The IP addresses to be assigned as a secondary private IP address to the network interface. You can't specify this parameter when also specifying a number of secondary IP addresses.
  ///
  /// If you don't specify an IP address, Amazon EC2 automatically selects an IP address within the subnet range.
  _i3.BuiltList<String>? get privateIpAddresses;

  /// The number of secondary IP addresses to assign to the network interface. You can't specify this parameter when also specifying private IP addresses.
  int get secondaryPrivateIpAddressCount;

  /// One or more IPv4 prefixes assigned to the network interface. You cannot use this option if you use the `Ipv4PrefixCount` option.
  _i3.BuiltList<String>? get ipv4Prefixes;

  /// The number of IPv4 prefixes that Amazon Web Services automatically assigns to the network interface. You cannot use this option if you use the `Ipv4 Prefixes` option.
  int get ipv4PrefixCount;
  @override
  AssignPrivateIpAddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allowReassignment,
        networkInterfaceId,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        ipv4Prefixes,
        ipv4PrefixCount,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssignPrivateIpAddressesRequest')
          ..add(
            'allowReassignment',
            allowReassignment,
          )
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'privateIpAddresses',
            privateIpAddresses,
          )
          ..add(
            'secondaryPrivateIpAddressCount',
            secondaryPrivateIpAddressCount,
          )
          ..add(
            'ipv4Prefixes',
            ipv4Prefixes,
          )
          ..add(
            'ipv4PrefixCount',
            ipv4PrefixCount,
          );
    return helper.toString();
  }
}

class AssignPrivateIpAddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssignPrivateIpAddressesRequest> {
  const AssignPrivateIpAddressesRequestEc2QuerySerializer()
      : super('AssignPrivateIpAddressesRequest');

  @override
  Iterable<Type> get types => const [
        AssignPrivateIpAddressesRequest,
        _$AssignPrivateIpAddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignPrivateIpAddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignPrivateIpAddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allowReassignment':
          result.allowReassignment = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddresses.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'PrivateIpAddress',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'secondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Ipv4Prefix':
          result.ipv4Prefixes.replace((const _i1.XmlBuiltListSerializer(
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
        case 'Ipv4PrefixCount':
          result.ipv4PrefixCount = (serializers.deserialize(
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
    AssignPrivateIpAddressesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssignPrivateIpAddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignPrivateIpAddressesRequest(
      :allowReassignment,
      :networkInterfaceId,
      :privateIpAddresses,
      :secondaryPrivateIpAddressCount,
      :ipv4Prefixes,
      :ipv4PrefixCount
    ) = object;
    result$
      ..add(const _i1.XmlElementName('AllowReassignment'))
      ..add(serializers.serialize(
        allowReassignment,
        specifiedType: const FullType(bool),
      ));
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddresses != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'PrivateIpAddress',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (ipv4Prefixes != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv4Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv4Prefixes,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Ipv4PrefixCount'))
      ..add(serializers.serialize(
        ipv4PrefixCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
