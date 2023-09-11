// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_ebs_block_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart';

part 'launch_template_ebs_block_device.g.dart';

/// Describes a block device for an EBS volume.
abstract class LaunchTemplateEbsBlockDevice
    with
        _i1.AWSEquatable<LaunchTemplateEbsBlockDevice>
    implements
        Built<LaunchTemplateEbsBlockDevice,
            LaunchTemplateEbsBlockDeviceBuilder> {
  /// Describes a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDevice({
    bool? encrypted,
    bool? deleteOnTermination,
    int? iops,
    String? kmsKeyId,
    String? snapshotId,
    int? volumeSize,
    VolumeType? volumeType,
    int? throughput,
  }) {
    encrypted ??= false;
    deleteOnTermination ??= false;
    iops ??= 0;
    volumeSize ??= 0;
    throughput ??= 0;
    return _$LaunchTemplateEbsBlockDevice._(
      encrypted: encrypted,
      deleteOnTermination: deleteOnTermination,
      iops: iops,
      kmsKeyId: kmsKeyId,
      snapshotId: snapshotId,
      volumeSize: volumeSize,
      volumeType: volumeType,
      throughput: throughput,
    );
  }

  /// Describes a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDevice.build(
          [void Function(LaunchTemplateEbsBlockDeviceBuilder) updates]) =
      _$LaunchTemplateEbsBlockDevice;

  const LaunchTemplateEbsBlockDevice._();

  static const List<_i2.SmithySerializer<LaunchTemplateEbsBlockDevice>>
      serializers = [LaunchTemplateEbsBlockDeviceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateEbsBlockDeviceBuilder b) {
    b
      ..encrypted = false
      ..deleteOnTermination = false
      ..iops = 0
      ..volumeSize = 0
      ..throughput = 0;
  }

  /// Indicates whether the EBS volume is encrypted.
  bool get encrypted;

  /// Indicates whether the EBS volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The number of I/O operations per second (IOPS) that the volume supports.
  int get iops;

  /// The ARN of the Key Management Service (KMS) CMK used for encryption.
  String? get kmsKeyId;

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The size of the volume, in GiB.
  int get volumeSize;

  /// The volume type.
  VolumeType? get volumeType;

  /// The throughput that the volume supports, in MiB/s.
  int get throughput;
  @override
  List<Object?> get props => [
        encrypted,
        deleteOnTermination,
        iops,
        kmsKeyId,
        snapshotId,
        volumeSize,
        volumeType,
        throughput,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateEbsBlockDevice')
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'deleteOnTermination',
        deleteOnTermination,
      )
      ..add(
        'iops',
        iops,
      )
      ..add(
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'volumeSize',
        volumeSize,
      )
      ..add(
        'volumeType',
        volumeType,
      )
      ..add(
        'throughput',
        throughput,
      );
    return helper.toString();
  }
}

class LaunchTemplateEbsBlockDeviceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateEbsBlockDevice> {
  const LaunchTemplateEbsBlockDeviceEc2QuerySerializer()
      : super('LaunchTemplateEbsBlockDevice');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateEbsBlockDevice,
        _$LaunchTemplateEbsBlockDevice,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateEbsBlockDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateEbsBlockDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'iops':
          result.iops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'volumeType':
          result.volumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeType),
          ) as VolumeType);
        case 'throughput':
          result.throughput = (serializers.deserialize(
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
    LaunchTemplateEbsBlockDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateEbsBlockDeviceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateEbsBlockDevice(
      :encrypted,
      :deleteOnTermination,
      :iops,
      :kmsKeyId,
      :snapshotId,
      :volumeSize,
      :volumeType,
      :throughput
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('Iops'))
      ..add(serializers.serialize(
        iops,
        specifiedType: const FullType(int),
      ));
    if (kmsKeyId != null) {
      result$
        ..add(const _i2.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        volumeSize,
        specifiedType: const FullType(int),
      ));
    if (volumeType != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          volumeType,
          specifiedType: const FullType(VolumeType),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        throughput,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
