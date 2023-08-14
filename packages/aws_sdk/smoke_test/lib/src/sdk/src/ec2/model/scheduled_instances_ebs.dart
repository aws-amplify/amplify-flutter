// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_ebs; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_ebs.g.dart';

/// Describes an EBS volume for a Scheduled Instance.
abstract class ScheduledInstancesEbs
    with _i1.AWSEquatable<ScheduledInstancesEbs>
    implements Built<ScheduledInstancesEbs, ScheduledInstancesEbsBuilder> {
  /// Describes an EBS volume for a Scheduled Instance.
  factory ScheduledInstancesEbs({
    bool? deleteOnTermination,
    bool? encrypted,
    int? iops,
    String? snapshotId,
    int? volumeSize,
    String? volumeType,
  }) {
    deleteOnTermination ??= false;
    encrypted ??= false;
    iops ??= 0;
    volumeSize ??= 0;
    return _$ScheduledInstancesEbs._(
      deleteOnTermination: deleteOnTermination,
      encrypted: encrypted,
      iops: iops,
      snapshotId: snapshotId,
      volumeSize: volumeSize,
      volumeType: volumeType,
    );
  }

  /// Describes an EBS volume for a Scheduled Instance.
  factory ScheduledInstancesEbs.build(
          [void Function(ScheduledInstancesEbsBuilder) updates]) =
      _$ScheduledInstancesEbs;

  const ScheduledInstancesEbs._();

  static const List<_i2.SmithySerializer<ScheduledInstancesEbs>> serializers = [
    ScheduledInstancesEbsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesEbsBuilder b) {
    b
      ..deleteOnTermination = false
      ..encrypted = false
      ..iops = 0
      ..volumeSize = 0;
  }

  /// Indicates whether the volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// Indicates whether the volume is encrypted. You can attached encrypted volumes only to instances that support them.
  bool get encrypted;

  /// The number of I/O operations per second (IOPS) to provision for an `io1` or `io2` volume, with a maximum ratio of 50 IOPS/GiB for `io1`, and 500 IOPS/GiB for `io2`. Range is 100 to 64,000 IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on [instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances). Other instance families guarantee performance up to 32,000 IOPS. For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the _Amazon EC2 User Guide_.
  ///
  /// This parameter is valid only for Provisioned IOPS SSD (`io1` and `io2`) volumes.
  int get iops;

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The size of the volume, in GiB.
  ///
  /// Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
  int get volumeSize;

  /// The volume type. `gp2` for General Purpose SSD, `io1` or `io2` for Provisioned IOPS SSD, Throughput Optimized HDD for `st1`, Cold HDD for `sc1`, or `standard` for Magnetic.
  ///
  /// Default: `gp2`
  String? get volumeType;
  @override
  List<Object?> get props => [
        deleteOnTermination,
        encrypted,
        iops,
        snapshotId,
        volumeSize,
        volumeType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstancesEbs')
      ..add(
        'deleteOnTermination',
        deleteOnTermination,
      )
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'iops',
        iops,
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
      );
    return helper.toString();
  }
}

class ScheduledInstancesEbsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstancesEbs> {
  const ScheduledInstancesEbsEc2QuerySerializer()
      : super('ScheduledInstancesEbs');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesEbs,
        _$ScheduledInstancesEbs,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesEbs deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesEbsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Iops':
          result.iops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VolumeSize':
          result.volumeSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'VolumeType':
          result.volumeType = (serializers.deserialize(
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
    ScheduledInstancesEbs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesEbsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesEbs(
      :deleteOnTermination,
      :encrypted,
      :iops,
      :snapshotId,
      :volumeSize,
      :volumeType
    ) = object;
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('Iops'))
      ..add(serializers.serialize(
        iops,
        specifiedType: const FullType(int),
      ));
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
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
