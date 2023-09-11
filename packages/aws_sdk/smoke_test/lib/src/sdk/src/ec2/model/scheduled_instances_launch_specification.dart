// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_iam_instance_profile.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_placement.dart';

part 'scheduled_instances_launch_specification.g.dart';

/// Describes the launch specification for a Scheduled Instance.
///
/// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
abstract class ScheduledInstancesLaunchSpecification
    with
        _i1.AWSEquatable<ScheduledInstancesLaunchSpecification>
    implements
        Built<ScheduledInstancesLaunchSpecification,
            ScheduledInstancesLaunchSpecificationBuilder> {
  /// Describes the launch specification for a Scheduled Instance.
  ///
  /// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
  factory ScheduledInstancesLaunchSpecification({
    List<ScheduledInstancesBlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    ScheduledInstancesIamInstanceProfile? iamInstanceProfile,
    String? imageId,
    String? instanceType,
    String? kernelId,
    String? keyName,
    ScheduledInstancesMonitoring? monitoring,
    List<ScheduledInstancesNetworkInterface>? networkInterfaces,
    ScheduledInstancesPlacement? placement,
    String? ramdiskId,
    List<String>? securityGroupIds,
    String? subnetId,
    String? userData,
  }) {
    ebsOptimized ??= false;
    return _$ScheduledInstancesLaunchSpecification._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      monitoring: monitoring,
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      securityGroupIds:
          securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds),
      subnetId: subnetId,
      userData: userData,
    );
  }

  /// Describes the launch specification for a Scheduled Instance.
  ///
  /// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
  factory ScheduledInstancesLaunchSpecification.build(
      [void Function(ScheduledInstancesLaunchSpecificationBuilder)
          updates]) = _$ScheduledInstancesLaunchSpecification;

  const ScheduledInstancesLaunchSpecification._();

  static const List<_i3.SmithySerializer<ScheduledInstancesLaunchSpecification>>
      serializers = [ScheduledInstancesLaunchSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesLaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// The block device mapping entries.
  _i2.BuiltList<ScheduledInstancesBlockDeviceMapping>? get blockDeviceMappings;

  /// Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  ScheduledInstancesIamInstanceProfile? get iamInstanceProfile;

  /// The ID of the Amazon Machine Image (AMI).
  String? get imageId;

  /// The instance type.
  String? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// Enable or disable monitoring for the instances.
  ScheduledInstancesMonitoring? get monitoring;

  /// The network interfaces.
  _i2.BuiltList<ScheduledInstancesNetworkInterface>? get networkInterfaces;

  /// The placement information.
  ScheduledInstancesPlacement? get placement;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The IDs of the security groups.
  _i2.BuiltList<String>? get securityGroupIds;

  /// The ID of the subnet in which to launch the instances.
  String? get subnetId;

  /// The base64-encoded MIME user data.
  String? get userData;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        ebsOptimized,
        iamInstanceProfile,
        imageId,
        instanceType,
        kernelId,
        keyName,
        monitoring,
        networkInterfaces,
        placement,
        ramdiskId,
        securityGroupIds,
        subnetId,
        userData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesLaunchSpecification')
          ..add(
            'blockDeviceMappings',
            '***SENSITIVE***',
          )
          ..add(
            'ebsOptimized',
            '***SENSITIVE***',
          )
          ..add(
            'iamInstanceProfile',
            '***SENSITIVE***',
          )
          ..add(
            'imageId',
            '***SENSITIVE***',
          )
          ..add(
            'instanceType',
            '***SENSITIVE***',
          )
          ..add(
            'kernelId',
            '***SENSITIVE***',
          )
          ..add(
            'keyName',
            '***SENSITIVE***',
          )
          ..add(
            'monitoring',
            '***SENSITIVE***',
          )
          ..add(
            'networkInterfaces',
            '***SENSITIVE***',
          )
          ..add(
            'placement',
            '***SENSITIVE***',
          )
          ..add(
            'ramdiskId',
            '***SENSITIVE***',
          )
          ..add(
            'securityGroupIds',
            '***SENSITIVE***',
          )
          ..add(
            'subnetId',
            '***SENSITIVE***',
          )
          ..add(
            'userData',
            '***SENSITIVE***',
          );
    return helper.toString();
  }
}

class ScheduledInstancesLaunchSpecificationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ScheduledInstancesLaunchSpecification> {
  const ScheduledInstancesLaunchSpecificationEc2QuerySerializer()
      : super('ScheduledInstancesLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesLaunchSpecification,
        _$ScheduledInstancesLaunchSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BlockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ScheduledInstancesBlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<ScheduledInstancesBlockDeviceMapping>));
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstancesIamInstanceProfile),
          ) as ScheduledInstancesIamInstanceProfile));
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstancesMonitoring),
          ) as ScheduledInstancesMonitoring));
        case 'NetworkInterface':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'NetworkInterface',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ScheduledInstancesNetworkInterface)],
            ),
          ) as _i2.BuiltList<ScheduledInstancesNetworkInterface>));
        case 'Placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstancesPlacement),
          ) as ScheduledInstancesPlacement));
        case 'RamdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserData':
          result.userData = (serializers.deserialize(
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
    ScheduledInstancesLaunchSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstancesLaunchSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesLaunchSpecification(
      :blockDeviceMappings,
      :ebsOptimized,
      :iamInstanceProfile,
      :imageId,
      :instanceType,
      :kernelId,
      :keyName,
      :monitoring,
      :networkInterfaces,
      :placement,
      :ramdiskId,
      :securityGroupIds,
      :subnetId,
      :userData
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ScheduledInstancesBlockDeviceMapping)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(ScheduledInstancesIamInstanceProfile),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i3.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(ScheduledInstancesMonitoring),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterface'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'NetworkInterface',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ScheduledInstancesNetworkInterface)],
          ),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(ScheduledInstancesPlacement),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i3.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i3.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
