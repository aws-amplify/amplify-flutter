// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_instance_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_data.dart';

part 'import_instance_launch_specification.g.dart';

/// Describes the launch specification for VM import.
abstract class ImportInstanceLaunchSpecification
    with
        _i1.AWSEquatable<ImportInstanceLaunchSpecification>
    implements
        Built<ImportInstanceLaunchSpecification,
            ImportInstanceLaunchSpecificationBuilder> {
  /// Describes the launch specification for VM import.
  factory ImportInstanceLaunchSpecification({
    String? additionalInfo,
    ArchitectureValues? architecture,
    List<String>? groupIds,
    List<String>? groupNames,
    ShutdownBehavior? instanceInitiatedShutdownBehavior,
    InstanceType? instanceType,
    bool? monitoring,
    Placement? placement,
    String? privateIpAddress,
    String? subnetId,
    UserData? userData,
  }) {
    monitoring ??= false;
    return _$ImportInstanceLaunchSpecification._(
      additionalInfo: additionalInfo,
      architecture: architecture,
      groupIds: groupIds == null ? null : _i2.BuiltList(groupIds),
      groupNames: groupNames == null ? null : _i2.BuiltList(groupNames),
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      monitoring: monitoring,
      placement: placement,
      privateIpAddress: privateIpAddress,
      subnetId: subnetId,
      userData: userData,
    );
  }

  /// Describes the launch specification for VM import.
  factory ImportInstanceLaunchSpecification.build(
          [void Function(ImportInstanceLaunchSpecificationBuilder) updates]) =
      _$ImportInstanceLaunchSpecification;

  const ImportInstanceLaunchSpecification._();

  static const List<_i3.SmithySerializer<ImportInstanceLaunchSpecification>>
      serializers = [ImportInstanceLaunchSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceLaunchSpecificationBuilder b) {
    b.monitoring = false;
  }

  /// Reserved.
  String? get additionalInfo;

  /// The architecture of the instance.
  ArchitectureValues? get architecture;

  /// The security group IDs.
  _i2.BuiltList<String>? get groupIds;

  /// The security group names.
  _i2.BuiltList<String>? get groupNames;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The instance type. For more information about the instance types that you can import, see [Instance Types](https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types) in the VM Import/Export User Guide.
  InstanceType? get instanceType;

  /// Indicates whether monitoring is enabled.
  bool get monitoring;

  /// The placement information for the instance.
  Placement? get placement;

  /// \[EC2-VPC\] An available IP address from the IP address range of the subnet.
  String? get privateIpAddress;

  /// \[EC2-VPC\] The ID of the subnet in which to launch the instance.
  String? get subnetId;

  /// The Base64-encoded user data to make available to the instance.
  UserData? get userData;
  @override
  List<Object?> get props => [
        additionalInfo,
        architecture,
        groupIds,
        groupNames,
        instanceInitiatedShutdownBehavior,
        instanceType,
        monitoring,
        placement,
        privateIpAddress,
        subnetId,
        userData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportInstanceLaunchSpecification')
          ..add(
            'additionalInfo',
            additionalInfo,
          )
          ..add(
            'architecture',
            architecture,
          )
          ..add(
            'groupIds',
            groupIds,
          )
          ..add(
            'groupNames',
            groupNames,
          )
          ..add(
            'instanceInitiatedShutdownBehavior',
            instanceInitiatedShutdownBehavior,
          )
          ..add(
            'instanceType',
            instanceType,
          )
          ..add(
            'monitoring',
            monitoring,
          )
          ..add(
            'placement',
            placement,
          )
          ..add(
            'privateIpAddress',
            privateIpAddress,
          )
          ..add(
            'subnetId',
            subnetId,
          )
          ..add(
            'userData',
            '***SENSITIVE***',
          );
    return helper.toString();
  }
}

class ImportInstanceLaunchSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportInstanceLaunchSpecification> {
  const ImportInstanceLaunchSpecificationEc2QuerySerializer()
      : super('ImportInstanceLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        ImportInstanceLaunchSpecification,
        _$ImportInstanceLaunchSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'additionalInfo':
          result.additionalInfo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(ArchitectureValues),
          ) as ArchitectureValues);
        case 'GroupId':
          result.groupIds.replace((const _i3.XmlBuiltListSerializer(
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
        case 'GroupName':
          result.groupNames.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'SecurityGroup',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'instanceInitiatedShutdownBehavior':
          result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(ShutdownBehavior),
          ) as ShutdownBehavior);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'monitoring':
          result.monitoring = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Placement),
          ) as Placement));
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'userData':
          result.userData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(UserData),
          ) as UserData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportInstanceLaunchSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportInstanceLaunchSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportInstanceLaunchSpecification(
      :additionalInfo,
      :architecture,
      :groupIds,
      :groupNames,
      :instanceInitiatedShutdownBehavior,
      :instanceType,
      :monitoring,
      :placement,
      :privateIpAddress,
      :subnetId,
      :userData
    ) = object;
    if (additionalInfo != null) {
      result$
        ..add(const _i3.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          additionalInfo,
          specifiedType: const FullType(String),
        ));
    }
    if (architecture != null) {
      result$
        ..add(const _i3.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType.nullable(ArchitectureValues),
        ));
    }
    if (groupIds != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (groupNames != null) {
      result$
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupNames,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType.nullable(ShutdownBehavior),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Monitoring'))
      ..add(serializers.serialize(
        monitoring,
        specifiedType: const FullType(bool),
      ));
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(Placement),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType(UserData),
        ));
    }
    return result$;
  }
}
