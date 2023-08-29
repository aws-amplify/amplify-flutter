// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_interface_association.g.dart';

/// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
abstract class NetworkInterfaceAssociation
    with _i1.AWSEquatable<NetworkInterfaceAssociation>
    implements
        Built<NetworkInterfaceAssociation, NetworkInterfaceAssociationBuilder> {
  /// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
  factory NetworkInterfaceAssociation({
    String? allocationId,
    String? associationId,
    String? ipOwnerId,
    String? publicDnsName,
    String? publicIp,
    String? customerOwnedIp,
    String? carrierIp,
  }) {
    return _$NetworkInterfaceAssociation._(
      allocationId: allocationId,
      associationId: associationId,
      ipOwnerId: ipOwnerId,
      publicDnsName: publicDnsName,
      publicIp: publicIp,
      customerOwnedIp: customerOwnedIp,
      carrierIp: carrierIp,
    );
  }

  /// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
  factory NetworkInterfaceAssociation.build(
          [void Function(NetworkInterfaceAssociationBuilder) updates]) =
      _$NetworkInterfaceAssociation;

  const NetworkInterfaceAssociation._();

  static const List<_i2.SmithySerializer<NetworkInterfaceAssociation>>
      serializers = [NetworkInterfaceAssociationEc2QuerySerializer()];

  /// The allocation ID.
  String? get allocationId;

  /// The association ID.
  String? get associationId;

  /// The ID of the Elastic IP address owner.
  String? get ipOwnerId;

  /// The public DNS name.
  String? get publicDnsName;

  /// The address of the Elastic IP address bound to the network interface.
  String? get publicIp;

  /// The customer-owned IP address associated with the network interface.
  String? get customerOwnedIp;

  /// The carrier IP address associated with the network interface.
  ///
  /// This option is only available when the network interface is in a subnet which is associated with a Wavelength Zone.
  String? get carrierIp;
  @override
  List<Object?> get props => [
        allocationId,
        associationId,
        ipOwnerId,
        publicDnsName,
        publicIp,
        customerOwnedIp,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceAssociation')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'ipOwnerId',
        ipOwnerId,
      )
      ..add(
        'publicDnsName',
        publicDnsName,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'customerOwnedIp',
        customerOwnedIp,
      )
      ..add(
        'carrierIp',
        carrierIp,
      );
    return helper.toString();
  }
}

class NetworkInterfaceAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceAssociation> {
  const NetworkInterfaceAssociationEc2QuerySerializer()
      : super('NetworkInterfaceAssociation');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceAssociation,
        _$NetworkInterfaceAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceAssociationBuilder();
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
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipOwnerId':
          result.ipOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicDnsName':
          result.publicDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerOwnedIp':
          result.customerOwnedIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'carrierIp':
          result.carrierIp = (serializers.deserialize(
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
    NetworkInterfaceAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfaceAssociation(
      :allocationId,
      :associationId,
      :ipOwnerId,
      :publicDnsName,
      :publicIp,
      :customerOwnedIp,
      :carrierIp
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
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
    if (ipOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('IpOwnerId'))
        ..add(serializers.serialize(
          ipOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicDnsName != null) {
      result$
        ..add(const _i2.XmlElementName('PublicDnsName'))
        ..add(serializers.serialize(
          publicDnsName,
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
    if (customerOwnedIp != null) {
      result$
        ..add(const _i2.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          customerOwnedIp,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierIp != null) {
      result$
        ..add(const _i2.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          carrierIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
