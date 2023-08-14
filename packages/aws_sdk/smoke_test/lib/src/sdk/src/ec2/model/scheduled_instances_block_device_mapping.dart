// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ebs.dart';

part 'scheduled_instances_block_device_mapping.g.dart';

/// Describes a block device mapping for a Scheduled Instance.
abstract class ScheduledInstancesBlockDeviceMapping
    with
        _i1.AWSEquatable<ScheduledInstancesBlockDeviceMapping>
    implements
        Built<ScheduledInstancesBlockDeviceMapping,
            ScheduledInstancesBlockDeviceMappingBuilder> {
  /// Describes a block device mapping for a Scheduled Instance.
  factory ScheduledInstancesBlockDeviceMapping({
    String? deviceName,
    ScheduledInstancesEbs? ebs,
    String? noDevice,
    String? virtualName,
  }) {
    return _$ScheduledInstancesBlockDeviceMapping._(
      deviceName: deviceName,
      ebs: ebs,
      noDevice: noDevice,
      virtualName: virtualName,
    );
  }

  /// Describes a block device mapping for a Scheduled Instance.
  factory ScheduledInstancesBlockDeviceMapping.build(
      [void Function(ScheduledInstancesBlockDeviceMappingBuilder)
          updates]) = _$ScheduledInstancesBlockDeviceMapping;

  const ScheduledInstancesBlockDeviceMapping._();

  static const List<_i2.SmithySerializer<ScheduledInstancesBlockDeviceMapping>>
      serializers = [ScheduledInstancesBlockDeviceMappingEc2QuerySerializer()];

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// Parameters used to set up EBS volumes automatically when the instance is launched.
  ScheduledInstancesEbs? get ebs;

  /// To omit the device from the block device mapping, specify an empty string.
  String? get noDevice;

  /// The virtual device name (`ephemeral`N). Instance store volumes are numbered starting from 0. An instance type with two available instance store volumes can specify mappings for `ephemeral0` and `ephemeral1`. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  ///
  /// Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
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
        newBuiltValueToStringHelper('ScheduledInstancesBlockDeviceMapping')
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

class ScheduledInstancesBlockDeviceMappingEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ScheduledInstancesBlockDeviceMapping> {
  const ScheduledInstancesBlockDeviceMappingEc2QuerySerializer()
      : super('ScheduledInstancesBlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesBlockDeviceMapping,
        _$ScheduledInstancesBlockDeviceMapping,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesBlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesBlockDeviceMappingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstancesEbs),
          ) as ScheduledInstancesEbs));
        case 'NoDevice':
          result.noDevice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VirtualName':
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
    ScheduledInstancesBlockDeviceMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesBlockDeviceMappingResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesBlockDeviceMapping(
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
          specifiedType: const FullType(ScheduledInstancesEbs),
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
