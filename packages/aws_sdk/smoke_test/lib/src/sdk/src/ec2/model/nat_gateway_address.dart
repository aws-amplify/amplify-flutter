// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nat_gateway_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address_status.dart';

part 'nat_gateway_address.g.dart';

/// Describes the IP addresses and network interface associated with a NAT gateway.
abstract class NatGatewayAddress
    with _i1.AWSEquatable<NatGatewayAddress>
    implements Built<NatGatewayAddress, NatGatewayAddressBuilder> {
  /// Describes the IP addresses and network interface associated with a NAT gateway.
  factory NatGatewayAddress({
    String? allocationId,
    String? networkInterfaceId,
    String? privateIp,
    String? publicIp,
    String? associationId,
    bool? isPrimary,
    String? failureMessage,
    NatGatewayAddressStatus? status,
  }) {
    isPrimary ??= false;
    return _$NatGatewayAddress._(
      allocationId: allocationId,
      networkInterfaceId: networkInterfaceId,
      privateIp: privateIp,
      publicIp: publicIp,
      associationId: associationId,
      isPrimary: isPrimary,
      failureMessage: failureMessage,
      status: status,
    );
  }

  /// Describes the IP addresses and network interface associated with a NAT gateway.
  factory NatGatewayAddress.build(
      [void Function(NatGatewayAddressBuilder) updates]) = _$NatGatewayAddress;

  const NatGatewayAddress._();

  static const List<_i2.SmithySerializer<NatGatewayAddress>> serializers = [
    NatGatewayAddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NatGatewayAddressBuilder b) {
    b.isPrimary = false;
  }

  /// \[Public NAT gateway only\] The allocation ID of the Elastic IP address that's associated with the NAT gateway.
  String? get allocationId;

  /// The ID of the network interface associated with the NAT gateway.
  String? get networkInterfaceId;

  /// The private IP address associated with the NAT gateway.
  String? get privateIp;

  /// \[Public NAT gateway only\] The Elastic IP address associated with the NAT gateway.
  String? get publicIp;

  /// \[Public NAT gateway only\] The association ID of the Elastic IP address that's associated with the NAT gateway.
  String? get associationId;

  /// Defines if the IP address is the primary address.
  bool get isPrimary;

  /// The address failure message.
  String? get failureMessage;

  /// The address status.
  NatGatewayAddressStatus? get status;
  @override
  List<Object?> get props => [
        allocationId,
        networkInterfaceId,
        privateIp,
        publicIp,
        associationId,
        isPrimary,
        failureMessage,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NatGatewayAddress')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'privateIp',
        privateIp,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'isPrimary',
        isPrimary,
      )
      ..add(
        'failureMessage',
        failureMessage,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class NatGatewayAddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NatGatewayAddress> {
  const NatGatewayAddressEc2QuerySerializer() : super('NatGatewayAddress');

  @override
  Iterable<Type> get types => const [
        NatGatewayAddress,
        _$NatGatewayAddress,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NatGatewayAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NatGatewayAddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIp':
          result.privateIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'isPrimary':
          result.isPrimary = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'failureMessage':
          result.failureMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(NatGatewayAddressStatus),
          ) as NatGatewayAddressStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NatGatewayAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NatGatewayAddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NatGatewayAddress(
      :allocationId,
      :networkInterfaceId,
      :privateIp,
      :publicIp,
      :associationId,
      :isPrimary,
      :failureMessage,
      :status
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIp != null) {
      result$
        ..add(const _i2.XmlElementName('PrivateIp'))
        ..add(serializers.serialize(
          privateIp,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (associationId != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('IsPrimary'))
      ..add(serializers.serialize(
        isPrimary,
        specifiedType: const FullType(bool),
      ));
    if (failureMessage != null) {
      result$
        ..add(const _i2.XmlElementName('FailureMessage'))
        ..add(serializers.serialize(
          failureMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(NatGatewayAddressStatus),
        ));
    }
    return result$;
  }
}
