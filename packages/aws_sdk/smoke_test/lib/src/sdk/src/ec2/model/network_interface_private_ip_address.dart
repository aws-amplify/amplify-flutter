// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_private_ip_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart';

part 'network_interface_private_ip_address.g.dart';

/// Describes the private IPv4 address of a network interface.
abstract class NetworkInterfacePrivateIpAddress
    with
        _i1.AWSEquatable<NetworkInterfacePrivateIpAddress>
    implements
        Built<NetworkInterfacePrivateIpAddress,
            NetworkInterfacePrivateIpAddressBuilder> {
  /// Describes the private IPv4 address of a network interface.
  factory NetworkInterfacePrivateIpAddress({
    NetworkInterfaceAssociation? association,
    bool? primary,
    String? privateDnsName,
    String? privateIpAddress,
  }) {
    primary ??= false;
    return _$NetworkInterfacePrivateIpAddress._(
      association: association,
      primary: primary,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
    );
  }

  /// Describes the private IPv4 address of a network interface.
  factory NetworkInterfacePrivateIpAddress.build(
          [void Function(NetworkInterfacePrivateIpAddressBuilder) updates]) =
      _$NetworkInterfacePrivateIpAddress;

  const NetworkInterfacePrivateIpAddress._();

  static const List<_i2.SmithySerializer<NetworkInterfacePrivateIpAddress>>
      serializers = [NetworkInterfacePrivateIpAddressEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfacePrivateIpAddressBuilder b) {
    b.primary = false;
  }

  /// The association information for an Elastic IP address (IPv4) associated with the network interface.
  NetworkInterfaceAssociation? get association;

  /// Indicates whether this IPv4 address is the primary private IPv4 address of the network interface.
  bool get primary;

  /// The private DNS name.
  String? get privateDnsName;

  /// The private IPv4 address.
  String? get privateIpAddress;
  @override
  List<Object?> get props => [
        association,
        primary,
        privateDnsName,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInterfacePrivateIpAddress')
          ..add(
            'association',
            association,
          )
          ..add(
            'primary',
            primary,
          )
          ..add(
            'privateDnsName',
            privateDnsName,
          )
          ..add(
            'privateIpAddress',
            privateIpAddress,
          );
    return helper.toString();
  }
}

class NetworkInterfacePrivateIpAddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfacePrivateIpAddress> {
  const NetworkInterfacePrivateIpAddressEc2QuerySerializer()
      : super('NetworkInterfacePrivateIpAddress');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePrivateIpAddress,
        _$NetworkInterfacePrivateIpAddress,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePrivateIpAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePrivateIpAddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAssociation),
          ) as NetworkInterfaceAssociation));
        case 'primary':
          result.primary = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
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
    NetworkInterfacePrivateIpAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfacePrivateIpAddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfacePrivateIpAddress(
      :association,
      :primary,
      :privateDnsName,
      :privateIpAddress
    ) = object;
    if (association != null) {
      result$
        ..add(const _i2.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(NetworkInterfaceAssociation),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Primary'))
      ..add(serializers.serialize(
        primary,
        specifiedType: const FullType(bool),
      ));
    if (privateDnsName != null) {
      result$
        ..add(const _i2.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i2.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
