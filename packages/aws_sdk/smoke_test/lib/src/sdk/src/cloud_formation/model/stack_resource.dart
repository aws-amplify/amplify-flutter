// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_resource; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information.dart'
    as _i3;

part 'stack_resource.g.dart';

/// The StackResource data type.
abstract class StackResource
    with _i1.AWSEquatable<StackResource>
    implements Built<StackResource, StackResourceBuilder> {
  /// The StackResource data type.
  factory StackResource({
    String? stackName,
    String? stackId,
    required String logicalResourceId,
    String? physicalResourceId,
    required String resourceType,
    required DateTime timestamp,
    required _i2.ResourceStatus resourceStatus,
    String? resourceStatusReason,
    String? description,
    _i3.StackResourceDriftInformation? driftInformation,
    _i4.ModuleInfo? moduleInfo,
  }) {
    return _$StackResource._(
      stackName: stackName,
      stackId: stackId,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      resourceType: resourceType,
      timestamp: timestamp,
      resourceStatus: resourceStatus,
      resourceStatusReason: resourceStatusReason,
      description: description,
      driftInformation: driftInformation,
      moduleInfo: moduleInfo,
    );
  }

  /// The StackResource data type.
  factory StackResource.build([void Function(StackResourceBuilder) updates]) =
      _$StackResource;

  const StackResource._();

  static const List<_i5.SmithySerializer> serializers = [
    StackResourceAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackResourceBuilder b) {}

  /// The name associated with the stack.
  String? get stackName;

  /// Unique identifier of the stack.
  String? get stackId;

  /// The logical name of the resource specified in the template.
  String get logicalResourceId;

  /// The name or unique identifier that corresponds to a physical instance ID of a resource supported by CloudFormation.
  String? get physicalResourceId;

  /// Type of resource. For more information, go to [Amazon Web Services Resource Types Reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  String get resourceType;

  /// Time the status was updated.
  DateTime get timestamp;

  /// Current status of the resource.
  _i2.ResourceStatus get resourceStatus;

  /// Success/failure message associated with the resource.
  String? get resourceStatusReason;

  /// User defined description associated with the resource.
  String? get description;

  /// Information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  _i3.StackResourceDriftInformation? get driftInformation;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  _i4.ModuleInfo? get moduleInfo;
  @override
  List<Object?> get props => [
        stackName,
        stackId,
        logicalResourceId,
        physicalResourceId,
        resourceType,
        timestamp,
        resourceStatus,
        resourceStatusReason,
        description,
        driftInformation,
        moduleInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackResource');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'logicalResourceId',
      logicalResourceId,
    );
    helper.add(
      'physicalResourceId',
      physicalResourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    helper.add(
      'resourceStatus',
      resourceStatus,
    );
    helper.add(
      'resourceStatusReason',
      resourceStatusReason,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'driftInformation',
      driftInformation,
    );
    helper.add(
      'moduleInfo',
      moduleInfo,
    );
    return helper.toString();
  }
}

class StackResourceAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<StackResource> {
  const StackResourceAwsQuerySerializer() : super('StackResource');

  @override
  Iterable<Type> get types => const [
        StackResource,
        _$StackResource,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PhysicalResourceId':
          if (value != null) {
            result.physicalResourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'ResourceStatus':
          result.resourceStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ResourceStatus),
          ) as _i2.ResourceStatus);
          break;
        case 'ResourceStatusReason':
          if (value != null) {
            result.resourceStatusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DriftInformation':
          if (value != null) {
            result.driftInformation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StackResourceDriftInformation),
            ) as _i3.StackResourceDriftInformation));
          }
          break;
        case 'ModuleInfo':
          if (value != null) {
            result.moduleInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ModuleInfo),
            ) as _i4.ModuleInfo));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as StackResource);
    final result = <Object?>[
      const _i5.XmlElementName(
        'StackResourceResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackName != null) {
      result
        ..add(const _i5.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackId != null) {
      result
        ..add(const _i5.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        payload.logicalResourceId,
        specifiedType: const FullType(String),
      ));
    if (payload.physicalResourceId != null) {
      result
        ..add(const _i5.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          payload.physicalResourceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i5.XmlElementName('Timestamp'))
      ..add(serializers.serialize(
        payload.timestamp,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result
      ..add(const _i5.XmlElementName('ResourceStatus'))
      ..add(serializers.serialize(
        payload.resourceStatus,
        specifiedType: const FullType.nullable(_i2.ResourceStatus),
      ));
    if (payload.resourceStatusReason != null) {
      result
        ..add(const _i5.XmlElementName('ResourceStatusReason'))
        ..add(serializers.serialize(
          payload.resourceStatusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.driftInformation != null) {
      result
        ..add(const _i5.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          payload.driftInformation!,
          specifiedType: const FullType(_i3.StackResourceDriftInformation),
        ));
    }
    if (payload.moduleInfo != null) {
      result
        ..add(const _i5.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          payload.moduleInfo!,
          specifiedType: const FullType(_i4.ModuleInfo),
        ));
    }
    return result;
  }
}
