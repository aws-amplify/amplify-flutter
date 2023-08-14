// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/blob_attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping_specification.dart';

part 'modify_instance_attribute_request.g.dart';

abstract class ModifyInstanceAttributeRequest
    with
        _i1.HttpInput<ModifyInstanceAttributeRequest>,
        _i2.AWSEquatable<ModifyInstanceAttributeRequest>
    implements
        Built<ModifyInstanceAttributeRequest,
            ModifyInstanceAttributeRequestBuilder> {
  factory ModifyInstanceAttributeRequest({
    AttributeBooleanValue? sourceDestCheck,
    InstanceAttributeName? attribute,
    List<InstanceBlockDeviceMappingSpecification>? blockDeviceMappings,
    AttributeBooleanValue? disableApiTermination,
    bool? dryRun,
    AttributeBooleanValue? ebsOptimized,
    AttributeBooleanValue? enaSupport,
    List<String>? groups,
    String? instanceId,
    AttributeValue? instanceInitiatedShutdownBehavior,
    AttributeValue? instanceType,
    AttributeValue? kernel,
    AttributeValue? ramdisk,
    AttributeValue? sriovNetSupport,
    BlobAttributeValue? userData,
    String? value,
    AttributeBooleanValue? disableApiStop,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceAttributeRequest._(
      sourceDestCheck: sourceDestCheck,
      attribute: attribute,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i3.BuiltList(blockDeviceMappings),
      disableApiTermination: disableApiTermination,
      dryRun: dryRun,
      ebsOptimized: ebsOptimized,
      enaSupport: enaSupport,
      groups: groups == null ? null : _i3.BuiltList(groups),
      instanceId: instanceId,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      kernel: kernel,
      ramdisk: ramdisk,
      sriovNetSupport: sriovNetSupport,
      userData: userData,
      value: value,
      disableApiStop: disableApiStop,
    );
  }

  factory ModifyInstanceAttributeRequest.build(
          [void Function(ModifyInstanceAttributeRequestBuilder) updates]) =
      _$ModifyInstanceAttributeRequest;

  const ModifyInstanceAttributeRequest._();

  factory ModifyInstanceAttributeRequest.fromRequest(
    ModifyInstanceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyInstanceAttributeRequest>>
      serializers = [ModifyInstanceAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  AttributeBooleanValue? get sourceDestCheck;

  /// The name of the attribute to modify.
  ///
  /// You can modify the following attributes only: `disableApiTermination` | `instanceType` | `kernel` | `ramdisk` | `instanceInitiatedShutdownBehavior` | `blockDeviceMapping` | `userData` | `sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport` | `enaSupport` | `nvmeSupport` | `disableApiStop` | `enclaveOptions`
  InstanceAttributeName? get attribute;

  /// Modifies the `DeleteOnTermination` attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for `DeleteOnTermination`, the default is `true` and the volume is deleted when the instance is terminated.
  ///
  /// To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see [Update the block device mapping when launching an instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM) in the _Amazon EC2 User Guide_.
  _i3.BuiltList<InstanceBlockDeviceMappingSpecification>?
      get blockDeviceMappings;

  /// If the value is `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.
  AttributeBooleanValue? get disableApiTermination;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  AttributeBooleanValue? get ebsOptimized;

  /// Set to `true` to enable enhanced networking with ENA for the instance.
  ///
  /// This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
  AttributeBooleanValue? get enaSupport;

  /// Replaces the security groups of the instance with the specified security groups. You must specify the ID of at least one security group, even if it's just the default security group for the VPC.
  _i3.BuiltList<String>? get groups;

  /// The ID of the instance.
  String? get instanceId;

  /// Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  AttributeValue? get instanceInitiatedShutdownBehavior;

  /// Changes the instance type to the specified value. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_. If the instance type is not valid, the error returned is `InvalidInstanceAttributeValue`.
  AttributeValue? get instanceType;

  /// Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
  AttributeValue? get kernel;

  /// Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
  AttributeValue? get ramdisk;

  /// Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance.
  ///
  /// There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time.
  ///
  /// This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
  AttributeValue? get sriovNetSupport;

  /// Changes the instance's user data to the specified value. If you are using an Amazon Web Services SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
  BlobAttributeValue? get userData;

  /// A new value for the attribute. Use only with the `kernel`, `ramdisk`, `userData`, `disableApiTermination`, or `instanceInitiatedShutdownBehavior` attribute.
  String? get value;

  /// Indicates whether an instance is enabled for stop protection. For more information, see [Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  AttributeBooleanValue? get disableApiStop;
  @override
  ModifyInstanceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        sourceDestCheck,
        attribute,
        blockDeviceMappings,
        disableApiTermination,
        dryRun,
        ebsOptimized,
        enaSupport,
        groups,
        instanceId,
        instanceInitiatedShutdownBehavior,
        instanceType,
        kernel,
        ramdisk,
        sriovNetSupport,
        userData,
        value,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyInstanceAttributeRequest')
      ..add(
        'sourceDestCheck',
        sourceDestCheck,
      )
      ..add(
        'attribute',
        attribute,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'disableApiTermination',
        disableApiTermination,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'enaSupport',
        enaSupport,
      )
      ..add(
        'groups',
        groups,
      )
      ..add(
        'instanceId',
        instanceId,
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
        'kernel',
        kernel,
      )
      ..add(
        'ramdisk',
        ramdisk,
      )
      ..add(
        'sriovNetSupport',
        sriovNetSupport,
      )
      ..add(
        'userData',
        userData,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'disableApiStop',
        disableApiStop,
      );
    return helper.toString();
  }
}

class ModifyInstanceAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyInstanceAttributeRequest> {
  const ModifyInstanceAttributeRequestEc2QuerySerializer()
      : super('ModifyInstanceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceAttributeRequest,
        _$ModifyInstanceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceDestCheck':
          result.sourceDestCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceAttributeName),
          ) as InstanceAttributeName);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceBlockDeviceMappingSpecification)],
            ),
          ) as _i3.BuiltList<InstanceBlockDeviceMappingSpecification>));
        case 'disableApiTermination':
          result.disableApiTermination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ebsOptimized':
          result.ebsOptimized.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'enaSupport':
          result.enaSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'GroupId':
          result.groups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'groupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceInitiatedShutdownBehavior':
          result.instanceInitiatedShutdownBehavior
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'instanceType':
          result.instanceType.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'kernel':
          result.kernel.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'ramdisk':
          result.ramdisk.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'sriovNetSupport':
          result.sriovNetSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'userData':
          result.userData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BlobAttributeValue),
          ) as BlobAttributeValue));
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DisableApiStop':
          result.disableApiStop.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceAttributeRequest(
      :sourceDestCheck,
      :attribute,
      :blockDeviceMappings,
      :disableApiTermination,
      :dryRun,
      :ebsOptimized,
      :enaSupport,
      :groups,
      :instanceId,
      :instanceInitiatedShutdownBehavior,
      :instanceType,
      :kernel,
      :ramdisk,
      :sriovNetSupport,
      :userData,
      :value,
      :disableApiStop
    ) = object;
    if (sourceDestCheck != null) {
      result$
        ..add(const _i1.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          sourceDestCheck,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType.nullable(InstanceAttributeName),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(InstanceBlockDeviceMappingSpecification)],
          ),
        ));
    }
    if (disableApiTermination != null) {
      result$
        ..add(const _i1.XmlElementName('DisableApiTermination'))
        ..add(serializers.serialize(
          disableApiTermination,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ebsOptimized != null) {
      result$
        ..add(const _i1.XmlElementName('EbsOptimized'))
        ..add(serializers.serialize(
          ebsOptimized,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enaSupport != null) {
      result$
        ..add(const _i1.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          enaSupport,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (groups != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'groupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (kernel != null) {
      result$
        ..add(const _i1.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          kernel,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (ramdisk != null) {
      result$
        ..add(const _i1.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          ramdisk,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i1.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i1.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(BlobAttributeValue),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i1.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    if (disableApiStop != null) {
      result$
        ..add(const _i1.XmlElementName('DisableApiStop'))
        ..add(serializers.serialize(
          disableApiStop,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
