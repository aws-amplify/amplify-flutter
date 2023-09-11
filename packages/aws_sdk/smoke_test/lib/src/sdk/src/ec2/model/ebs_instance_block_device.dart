// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_instance_block_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';

part 'ebs_instance_block_device.g.dart';

/// Describes a parameter used to set up an EBS volume in a block device mapping.
abstract class EbsInstanceBlockDevice
    with _i1.AWSEquatable<EbsInstanceBlockDevice>
    implements Built<EbsInstanceBlockDevice, EbsInstanceBlockDeviceBuilder> {
  /// Describes a parameter used to set up an EBS volume in a block device mapping.
  factory EbsInstanceBlockDevice({
    DateTime? attachTime,
    bool? deleteOnTermination,
    AttachmentStatus? status,
    String? volumeId,
  }) {
    deleteOnTermination ??= false;
    return _$EbsInstanceBlockDevice._(
      attachTime: attachTime,
      deleteOnTermination: deleteOnTermination,
      status: status,
      volumeId: volumeId,
    );
  }

  /// Describes a parameter used to set up an EBS volume in a block device mapping.
  factory EbsInstanceBlockDevice.build(
          [void Function(EbsInstanceBlockDeviceBuilder) updates]) =
      _$EbsInstanceBlockDevice;

  const EbsInstanceBlockDevice._();

  static const List<_i2.SmithySerializer<EbsInstanceBlockDevice>> serializers =
      [EbsInstanceBlockDeviceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsInstanceBlockDeviceBuilder b) {
    b.deleteOnTermination = false;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// Indicates whether the volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The attachment state.
  AttachmentStatus? get status;

  /// The ID of the EBS volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        attachTime,
        deleteOnTermination,
        status,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsInstanceBlockDevice')
      ..add(
        'attachTime',
        attachTime,
      )
      ..add(
        'deleteOnTermination',
        deleteOnTermination,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'volumeId',
        volumeId,
      );
    return helper.toString();
  }
}

class EbsInstanceBlockDeviceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EbsInstanceBlockDevice> {
  const EbsInstanceBlockDeviceEc2QuerySerializer()
      : super('EbsInstanceBlockDevice');

  @override
  Iterable<Type> get types => const [
        EbsInstanceBlockDevice,
        _$EbsInstanceBlockDevice,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInstanceBlockDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInstanceBlockDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachTime':
          result.attachTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentStatus),
          ) as AttachmentStatus);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
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
    EbsInstanceBlockDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EbsInstanceBlockDeviceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EbsInstanceBlockDevice(
      :attachTime,
      :deleteOnTermination,
      :status,
      :volumeId
    ) = object;
    if (attachTime != null) {
      result$
        ..add(const _i2.XmlElementName('AttachTime'))
        ..add(serializers.serialize(
          attachTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(AttachmentStatus),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
