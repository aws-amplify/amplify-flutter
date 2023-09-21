// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_resource_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information.dart';

part 'stack_resource_detail.g.dart';

/// Contains detailed information about the specified stack resource.
abstract class StackResourceDetail
    with _i1.AWSEquatable<StackResourceDetail>
    implements Built<StackResourceDetail, StackResourceDetailBuilder> {
  /// Contains detailed information about the specified stack resource.
  factory StackResourceDetail({
    String? stackName,
    String? stackId,
    required String logicalResourceId,
    String? physicalResourceId,
    required String resourceType,
    required DateTime lastUpdatedTimestamp,
    required ResourceStatus resourceStatus,
    String? resourceStatusReason,
    String? description,
    String? metadata,
    StackResourceDriftInformation? driftInformation,
    ModuleInfo? moduleInfo,
  }) {
    return _$StackResourceDetail._(
      stackName: stackName,
      stackId: stackId,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      resourceType: resourceType,
      lastUpdatedTimestamp: lastUpdatedTimestamp,
      resourceStatus: resourceStatus,
      resourceStatusReason: resourceStatusReason,
      description: description,
      metadata: metadata,
      driftInformation: driftInformation,
      moduleInfo: moduleInfo,
    );
  }

  /// Contains detailed information about the specified stack resource.
  factory StackResourceDetail.build(
          [void Function(StackResourceDetailBuilder) updates]) =
      _$StackResourceDetail;

  const StackResourceDetail._();

  static const List<_i2.SmithySerializer<StackResourceDetail>> serializers = [
    StackResourceDetailAwsQuerySerializer()
  ];

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
  DateTime get lastUpdatedTimestamp;

  /// Current status of the resource.
  ResourceStatus get resourceStatus;

  /// Success/failure message associated with the resource.
  String? get resourceStatusReason;

  /// User defined description associated with the resource.
  String? get description;

  /// The content of the `Metadata` attribute declared for the resource. For more information, see [Metadata Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html) in the CloudFormation User Guide.
  String? get metadata;

  /// Information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  StackResourceDriftInformation? get driftInformation;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  ModuleInfo? get moduleInfo;
  @override
  List<Object?> get props => [
        stackName,
        stackId,
        logicalResourceId,
        physicalResourceId,
        resourceType,
        lastUpdatedTimestamp,
        resourceStatus,
        resourceStatusReason,
        description,
        metadata,
        driftInformation,
        moduleInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackResourceDetail')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      )
      ..add(
        'physicalResourceId',
        physicalResourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'lastUpdatedTimestamp',
        lastUpdatedTimestamp,
      )
      ..add(
        'resourceStatus',
        resourceStatus,
      )
      ..add(
        'resourceStatusReason',
        resourceStatusReason,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'metadata',
        metadata,
      )
      ..add(
        'driftInformation',
        driftInformation,
      )
      ..add(
        'moduleInfo',
        moduleInfo,
      );
    return helper.toString();
  }
}

class StackResourceDetailAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackResourceDetail> {
  const StackResourceDetailAwsQuerySerializer() : super('StackResourceDetail');

  @override
  Iterable<Type> get types => const [
        StackResourceDetail,
        _$StackResourceDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResourceDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceDetailBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PhysicalResourceId':
          result.physicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdatedTimestamp':
          result.lastUpdatedTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ResourceStatus':
          result.resourceStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceStatus),
          ) as ResourceStatus);
        case 'ResourceStatusReason':
          result.resourceStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Metadata':
          result.metadata = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DriftInformation':
          result.driftInformation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackResourceDriftInformation),
          ) as StackResourceDriftInformation));
        case 'ModuleInfo':
          result.moduleInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ModuleInfo),
          ) as ModuleInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackResourceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StackResourceDetailResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackResourceDetail(
      :stackName,
      :stackId,
      :logicalResourceId,
      :physicalResourceId,
      :resourceType,
      :lastUpdatedTimestamp,
      :resourceStatus,
      :resourceStatusReason,
      :description,
      :metadata,
      :driftInformation,
      :moduleInfo
    ) = object;
    if (stackName != null) {
      result$
        ..add(const _i2.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (stackId != null) {
      result$
        ..add(const _i2.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        logicalResourceId,
        specifiedType: const FullType(String),
      ));
    if (physicalResourceId != null) {
      result$
        ..add(const _i2.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          physicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        resourceType,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('LastUpdatedTimestamp'))
      ..add(serializers.serialize(
        lastUpdatedTimestamp,
        specifiedType: const FullType(DateTime),
      ));
    result$
      ..add(const _i2.XmlElementName('ResourceStatus'))
      ..add(serializers.serialize(
        resourceStatus,
        specifiedType: const FullType(ResourceStatus),
      ));
    if (resourceStatusReason != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceStatusReason'))
        ..add(serializers.serialize(
          resourceStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (metadata != null) {
      result$
        ..add(const _i2.XmlElementName('Metadata'))
        ..add(serializers.serialize(
          metadata,
          specifiedType: const FullType(String),
        ));
    }
    if (driftInformation != null) {
      result$
        ..add(const _i2.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          driftInformation,
          specifiedType: const FullType(StackResourceDriftInformation),
        ));
    }
    if (moduleInfo != null) {
      result$
        ..add(const _i2.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          moduleInfo,
          specifiedType: const FullType(ModuleInfo),
        ));
    }
    return result$;
  }
}
