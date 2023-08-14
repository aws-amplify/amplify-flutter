// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_block_device_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device_request.dart';

part 'launch_template_block_device_mapping_request.g.dart';

/// Describes a block device mapping.
abstract class LaunchTemplateBlockDeviceMappingRequest
    with
        _i1.AWSEquatable<LaunchTemplateBlockDeviceMappingRequest>
    implements
        Built<LaunchTemplateBlockDeviceMappingRequest,
            LaunchTemplateBlockDeviceMappingRequestBuilder> {
  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest({
    String? deviceName,
    String? virtualName,
    LaunchTemplateEbsBlockDeviceRequest? ebs,
    String? noDevice,
  }) {
    return _$LaunchTemplateBlockDeviceMappingRequest._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest.build(
      [void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)
          updates]) = _$LaunchTemplateBlockDeviceMappingRequest;

  const LaunchTemplateBlockDeviceMappingRequest._();

  static const List<
          _i2.SmithySerializer<LaunchTemplateBlockDeviceMappingRequest>>
      serializers = [
    LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
  ];

  /// The device name (for example, /dev/sdh or xvdh).
  String? get deviceName;

  /// The virtual device name (ephemeralN). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  String? get virtualName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  LaunchTemplateEbsBlockDeviceRequest? get ebs;

  /// To omit the device from the block device mapping, specify an empty string.
  String? get noDevice;
  @override
  List<Object?> get props => [
        deviceName,
        virtualName,
        ebs,
        noDevice,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateBlockDeviceMappingRequest')
          ..add(
            'deviceName',
            deviceName,
          )
          ..add(
            'virtualName',
            virtualName,
          )
          ..add(
            'ebs',
            ebs,
          )
          ..add(
            'noDevice',
            noDevice,
          );
    return helper.toString();
  }
}

class LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateBlockDeviceMappingRequest> {
  const LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
      : super('LaunchTemplateBlockDeviceMappingRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateBlockDeviceMappingRequest,
        _$LaunchTemplateBlockDeviceMappingRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateBlockDeviceMappingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBlockDeviceMappingRequestBuilder();
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
        case 'VirtualName':
          result.virtualName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateEbsBlockDeviceRequest),
          ) as LaunchTemplateEbsBlockDeviceRequest));
        case 'NoDevice':
          result.noDevice = (serializers.deserialize(
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
    LaunchTemplateBlockDeviceMappingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateBlockDeviceMappingRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateBlockDeviceMappingRequest(
      :deviceName,
      :virtualName,
      :ebs,
      :noDevice
    ) = object;
    if (deviceName != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
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
    if (ebs != null) {
      result$
        ..add(const _i2.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          ebs,
          specifiedType: const FullType(LaunchTemplateEbsBlockDeviceRequest),
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
    return result$;
  }
}
