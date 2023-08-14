// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.pci_id; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'pci_id.g.dart';

/// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
abstract class PciId
    with _i1.AWSEquatable<PciId>
    implements Built<PciId, PciIdBuilder> {
  /// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
  factory PciId({
    String? deviceId,
    String? vendorId,
    String? subsystemId,
    String? subsystemVendorId,
  }) {
    return _$PciId._(
      deviceId: deviceId,
      vendorId: vendorId,
      subsystemId: subsystemId,
      subsystemVendorId: subsystemVendorId,
    );
  }

  /// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
  factory PciId.build([void Function(PciIdBuilder) updates]) = _$PciId;

  const PciId._();

  static const List<_i2.SmithySerializer<PciId>> serializers = [
    PciIdEc2QuerySerializer()
  ];

  /// The ID of the device.
  String? get deviceId;

  /// The ID of the vendor.
  String? get vendorId;

  /// The ID of the subsystem.
  String? get subsystemId;

  /// The ID of the vendor for the subsystem.
  String? get subsystemVendorId;
  @override
  List<Object?> get props => [
        deviceId,
        vendorId,
        subsystemId,
        subsystemVendorId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PciId')
      ..add(
        'deviceId',
        deviceId,
      )
      ..add(
        'vendorId',
        vendorId,
      )
      ..add(
        'subsystemId',
        subsystemId,
      )
      ..add(
        'subsystemVendorId',
        subsystemVendorId,
      );
    return helper.toString();
  }
}

class PciIdEc2QuerySerializer extends _i2.StructuredSmithySerializer<PciId> {
  const PciIdEc2QuerySerializer() : super('PciId');

  @override
  Iterable<Type> get types => const [
        PciId,
        _$PciId,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PciId deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PciIdBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeviceId':
          result.deviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VendorId':
          result.vendorId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SubsystemId':
          result.subsystemId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SubsystemVendorId':
          result.subsystemVendorId = (serializers.deserialize(
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
    PciId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PciIdResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PciId(:deviceId, :vendorId, :subsystemId, :subsystemVendorId) =
        object;
    if (deviceId != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceId'))
        ..add(serializers.serialize(
          deviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vendorId != null) {
      result$
        ..add(const _i2.XmlElementName('VendorId'))
        ..add(serializers.serialize(
          vendorId,
          specifiedType: const FullType(String),
        ));
    }
    if (subsystemId != null) {
      result$
        ..add(const _i2.XmlElementName('SubsystemId'))
        ..add(serializers.serialize(
          subsystemId,
          specifiedType: const FullType(String),
        ));
    }
    if (subsystemVendorId != null) {
      result$
        ..add(const _i2.XmlElementName('SubsystemVendorId'))
        ..add(serializers.serialize(
          subsystemVendorId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
