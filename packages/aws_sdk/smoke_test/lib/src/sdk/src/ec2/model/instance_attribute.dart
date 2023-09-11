// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';

part 'instance_attribute.g.dart';

/// Describes an instance attribute.
abstract class InstanceAttribute
    with _i1.AWSEquatable<InstanceAttribute>
    implements Built<InstanceAttribute, InstanceAttributeBuilder> {
  /// Describes an instance attribute.
  factory InstanceAttribute({
    List<GroupIdentifier>? groups,
    List<InstanceBlockDeviceMapping>? blockDeviceMappings,
    AttributeBooleanValue? disableApiTermination,
    AttributeBooleanValue? enaSupport,
    EnclaveOptions? enclaveOptions,
    AttributeBooleanValue? ebsOptimized,
    String? instanceId,
    AttributeValue? instanceInitiatedShutdownBehavior,
    AttributeValue? instanceType,
    AttributeValue? kernelId,
    List<ProductCode>? productCodes,
    AttributeValue? ramdiskId,
    AttributeValue? rootDeviceName,
    AttributeBooleanValue? sourceDestCheck,
    AttributeValue? sriovNetSupport,
    AttributeValue? userData,
    AttributeBooleanValue? disableApiStop,
  }) {
    return _$InstanceAttribute._(
      groups: groups == null ? null : _i2.BuiltList(groups),
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      disableApiTermination: disableApiTermination,
      enaSupport: enaSupport,
      enclaveOptions: enclaveOptions,
      ebsOptimized: ebsOptimized,
      instanceId: instanceId,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      kernelId: kernelId,
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      ramdiskId: ramdiskId,
      rootDeviceName: rootDeviceName,
      sourceDestCheck: sourceDestCheck,
      sriovNetSupport: sriovNetSupport,
      userData: userData,
      disableApiStop: disableApiStop,
    );
  }

  /// Describes an instance attribute.
  factory InstanceAttribute.build(
      [void Function(InstanceAttributeBuilder) updates]) = _$InstanceAttribute;

  const InstanceAttribute._();

  /// Constructs a [InstanceAttribute] from a [payload] and [response].
  factory InstanceAttribute.fromResponse(
    InstanceAttribute payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<InstanceAttribute>> serializers = [
    InstanceAttributeEc2QuerySerializer()
  ];

  /// The security groups associated with the instance.
  _i2.BuiltList<GroupIdentifier>? get groups;

  /// The block device mapping of the instance.
  _i2.BuiltList<InstanceBlockDeviceMapping>? get blockDeviceMappings;

  /// If the value is `true`, you can't terminate the instance through the Amazon EC2 console, CLI, or API; otherwise, you can.
  AttributeBooleanValue? get disableApiTermination;

  /// Indicates whether enhanced networking with ENA is enabled.
  AttributeBooleanValue? get enaSupport;

  /// To enable the instance for Amazon Web Services Nitro Enclaves, set this parameter to `true`; otherwise, set it to `false`.
  EnclaveOptions? get enclaveOptions;

  /// Indicates whether the instance is optimized for Amazon EBS I/O.
  AttributeBooleanValue? get ebsOptimized;

  /// The ID of the instance.
  String? get instanceId;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  AttributeValue? get instanceInitiatedShutdownBehavior;

  /// The instance type.
  AttributeValue? get instanceType;

  /// The kernel ID.
  AttributeValue? get kernelId;

  /// A list of product codes.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// The RAM disk ID.
  AttributeValue? get ramdiskId;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  AttributeValue? get rootDeviceName;

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  AttributeBooleanValue? get sourceDestCheck;

  /// Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  AttributeValue? get sriovNetSupport;

  /// The user data.
  AttributeValue? get userData;

  /// To enable the instance for Amazon Web Services Stop Protection, set this parameter to `true`; otherwise, set it to `false`.
  AttributeBooleanValue? get disableApiStop;
  @override
  List<Object?> get props => [
        groups,
        blockDeviceMappings,
        disableApiTermination,
        enaSupport,
        enclaveOptions,
        ebsOptimized,
        instanceId,
        instanceInitiatedShutdownBehavior,
        instanceType,
        kernelId,
        productCodes,
        ramdiskId,
        rootDeviceName,
        sourceDestCheck,
        sriovNetSupport,
        userData,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceAttribute')
      ..add(
        'groups',
        groups,
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
        'enaSupport',
        enaSupport,
      )
      ..add(
        'enclaveOptions',
        enclaveOptions,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
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
        'kernelId',
        kernelId,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'ramdiskId',
        ramdiskId,
      )
      ..add(
        'rootDeviceName',
        rootDeviceName,
      )
      ..add(
        'sourceDestCheck',
        sourceDestCheck,
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
        'disableApiStop',
        disableApiStop,
      );
    return helper.toString();
  }
}

class InstanceAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceAttribute> {
  const InstanceAttributeEc2QuerySerializer() : super('InstanceAttribute');

  @override
  Iterable<Type> get types => const [
        InstanceAttribute,
        _$InstanceAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupSet':
          result.groups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceBlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<InstanceBlockDeviceMapping>));
        case 'disableApiTermination':
          result.disableApiTermination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'enaSupport':
          result.enaSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'enclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnclaveOptions),
          ) as EnclaveOptions));
        case 'ebsOptimized':
          result.ebsOptimized.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
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
          result.kernelId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'productCodes':
          result.productCodes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ProductCode)],
            ),
          ) as _i2.BuiltList<ProductCode>));
        case 'ramdisk':
          result.ramdiskId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'rootDeviceName':
          result.rootDeviceName.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'sourceDestCheck':
          result.sourceDestCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'sriovNetSupport':
          result.sriovNetSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'userData':
          result.userData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'disableApiStop':
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
    InstanceAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceAttribute(
      :groups,
      :blockDeviceMappings,
      :disableApiTermination,
      :enaSupport,
      :enclaveOptions,
      :ebsOptimized,
      :instanceId,
      :instanceInitiatedShutdownBehavior,
      :instanceType,
      :kernelId,
      :productCodes,
      :ramdiskId,
      :rootDeviceName,
      :sourceDestCheck,
      :sriovNetSupport,
      :userData,
      :disableApiStop
    ) = object;
    if (groups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceBlockDeviceMapping)],
          ),
        ));
    }
    if (disableApiTermination != null) {
      result$
        ..add(const _i3.XmlElementName('DisableApiTermination'))
        ..add(serializers.serialize(
          disableApiTermination,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enaSupport != null) {
      result$
        ..add(const _i3.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          enaSupport,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i3.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(EnclaveOptions),
        ));
    }
    if (ebsOptimized != null) {
      result$
        ..add(const _i3.XmlElementName('EbsOptimized'))
        ..add(serializers.serialize(
          ebsOptimized,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i3.XmlElementName('ProductCodes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ProductCode)],
          ),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i3.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (rootDeviceName != null) {
      result$
        ..add(const _i3.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          rootDeviceName,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (sourceDestCheck != null) {
      result$
        ..add(const _i3.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          sourceDestCheck,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i3.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i3.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (disableApiStop != null) {
      result$
        ..add(const _i3.XmlElementName('DisableApiStop'))
        ..add(serializers.serialize(
          disableApiStop,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
