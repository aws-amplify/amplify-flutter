// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_block_device_mapping_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device_specification.dart';

part 'instance_block_device_mapping_specification.g.dart';

/// Describes a block device mapping entry.
abstract class InstanceBlockDeviceMappingSpecification
    with
        _i1.AWSEquatable<InstanceBlockDeviceMappingSpecification>
    implements
        Built<InstanceBlockDeviceMappingSpecification,
            InstanceBlockDeviceMappingSpecificationBuilder> {
  /// Describes a block device mapping entry.
  factory InstanceBlockDeviceMappingSpecification({
    String? deviceName,
    EbsInstanceBlockDeviceSpecification? ebs,
    String? noDevice,
    String? virtualName,
  }) {
    return _$InstanceBlockDeviceMappingSpecification._(
      deviceName: deviceName,
      ebs: ebs,
      noDevice: noDevice,
      virtualName: virtualName,
    );
  }

  /// Describes a block device mapping entry.
  factory InstanceBlockDeviceMappingSpecification.build(
      [void Function(InstanceBlockDeviceMappingSpecificationBuilder)
          updates]) = _$InstanceBlockDeviceMappingSpecification;

  const InstanceBlockDeviceMappingSpecification._();

  static const List<
          _i2.SmithySerializer<InstanceBlockDeviceMappingSpecification>>
      serializers = [
    InstanceBlockDeviceMappingSpecificationEc2QuerySerializer()
  ];

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  EbsInstanceBlockDeviceSpecification? get ebs;

  /// suppress the specified device included in the block device mapping.
  String? get noDevice;

  /// The virtual device name.
  String? get virtualName;
  @override
  List<Object?> get props => [
        deviceName,
        ebs,
        noDevice,
        virtualName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceBlockDeviceMappingSpecification')
          ..add(
            'deviceName',
            deviceName,
          )
          ..add(
            'ebs',
            ebs,
          )
          ..add(
            'noDevice',
            noDevice,
          )
          ..add(
            'virtualName',
            virtualName,
          );
    return helper.toString();
  }
}

class InstanceBlockDeviceMappingSpecificationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<InstanceBlockDeviceMappingSpecification> {
  const InstanceBlockDeviceMappingSpecificationEc2QuerySerializer()
      : super('InstanceBlockDeviceMappingSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceBlockDeviceMappingSpecification,
        _$InstanceBlockDeviceMappingSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceBlockDeviceMappingSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBlockDeviceMappingSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EbsInstanceBlockDeviceSpecification),
          ) as EbsInstanceBlockDeviceSpecification));
        case 'noDevice':
          result.noDevice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'virtualName':
          result.virtualName = (serializers.deserialize(
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
    InstanceBlockDeviceMappingSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceBlockDeviceMappingSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceBlockDeviceMappingSpecification(
      :deviceName,
      :ebs,
      :noDevice,
      :virtualName
    ) = object;
    if (deviceName != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (ebs != null) {
      result$
        ..add(const _i2.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          ebs,
          specifiedType: const FullType(EbsInstanceBlockDeviceSpecification),
        ));
    }
    if (noDevice != null) {
      result$
        ..add(const _i2.XmlElementName('NoDevice'))
        ..add(serializers.serialize(
          noDevice,
          specifiedType: const FullType(String),
        ));
    }
    if (virtualName != null) {
      result$
        ..add(const _i2.XmlElementName('VirtualName'))
        ..add(serializers.serialize(
          virtualName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
