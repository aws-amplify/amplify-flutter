// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/output.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i7;

part 'stack.g.dart';

/// The Stack data type.
abstract class Stack
    with _i1.AWSEquatable<Stack>
    implements Built<Stack, StackBuilder> {
  /// The Stack data type.
  factory Stack({
    String? stackId,
    required String stackName,
    String? changeSetId,
    String? description,
    List<_i2.Parameter>? parameters,
    required DateTime creationTime,
    DateTime? deletionTime,
    DateTime? lastUpdatedTime,
    _i3.RollbackConfiguration? rollbackConfiguration,
    required _i4.StackStatus stackStatus,
    String? stackStatusReason,
    bool? disableRollback,
    List<String>? notificationArNs,
    int? timeoutInMinutes,
    List<_i5.Capability>? capabilities,
    List<_i6.Output>? outputs,
    String? roleArn,
    List<_i7.Tag>? tags,
    bool? enableTerminationProtection,
    String? parentId,
    String? rootId,
    _i8.StackDriftInformation? driftInformation,
  }) {
    return _$Stack._(
      stackId: stackId,
      stackName: stackName,
      changeSetId: changeSetId,
      description: description,
      parameters: parameters == null ? null : _i9.BuiltList(parameters),
      creationTime: creationTime,
      deletionTime: deletionTime,
      lastUpdatedTime: lastUpdatedTime,
      rollbackConfiguration: rollbackConfiguration,
      stackStatus: stackStatus,
      stackStatusReason: stackStatusReason,
      disableRollback: disableRollback,
      notificationArNs:
          notificationArNs == null ? null : _i9.BuiltList(notificationArNs),
      timeoutInMinutes: timeoutInMinutes,
      capabilities: capabilities == null ? null : _i9.BuiltList(capabilities),
      outputs: outputs == null ? null : _i9.BuiltList(outputs),
      roleArn: roleArn,
      tags: tags == null ? null : _i9.BuiltList(tags),
      enableTerminationProtection: enableTerminationProtection,
      parentId: parentId,
      rootId: rootId,
      driftInformation: driftInformation,
    );
  }

  /// The Stack data type.
  factory Stack.build([void Function(StackBuilder) updates]) = _$Stack;

  const Stack._();

  static const List<_i10.SmithySerializer<Stack>> serializers = [
    StackAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackBuilder b) {}

  /// Unique identifier of the stack.
  String? get stackId;

  /// The name associated with the stack.
  String get stackName;

  /// The unique ID of the change set.
  String? get changeSetId;

  /// A user-defined description associated with the stack.
  String? get description;

  /// A list of `Parameter` structures.
  _i9.BuiltList<_i2.Parameter>? get parameters;

  /// The time at which the stack was created.
  DateTime get creationTime;

  /// The time the stack was deleted.
  DateTime? get deletionTime;

  /// The time the stack was last updated. This field will only be returned if the stack has been updated at least once.
  DateTime? get lastUpdatedTime;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i3.RollbackConfiguration? get rollbackConfiguration;

  /// Current status of the stack.
  _i4.StackStatus get stackStatus;

  /// Success/failure message associated with the stack status.
  String? get stackStatusReason;

  /// Boolean to enable or disable rollback on stack creation failures:
  ///
  /// *   `true`: disable rollback.
  ///
  /// *   `false`: enable rollback.
  bool? get disableRollback;

  /// Amazon SNS topic Amazon Resource Names (ARNs) to which stack related events are published.
  _i9.BuiltList<String>? get notificationArNs;

  /// The amount of time within which stack creation should complete.
  int? get timeoutInMinutes;

  /// The capabilities allowed in the stack.
  _i9.BuiltList<_i5.Capability>? get capabilities;

  /// A list of output structures.
  _i9.BuiltList<_i6.Output>? get outputs;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that's associated with the stack. During a stack operation, CloudFormation uses this role's credentials to make calls on your behalf.
  String? get roleArn;

  /// A list of `Tag`s that specify information about the stack.
  _i9.BuiltList<_i7.Tag>? get tags;

  /// Whether termination protection is enabled for the stack.
  ///
  /// For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and can't be changed directly on the nested stack. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the _CloudFormation User Guide_.
  bool? get enableTerminationProtection;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack.
  ///
  /// For more information, see [Working with Nested Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get parentId;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the top-level stack to which the nested stack ultimately belongs.
  ///
  /// For more information, see [Working with Nested Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get rootId;

  /// Information about whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  _i8.StackDriftInformation? get driftInformation;
  @override
  List<Object?> get props => [
        stackId,
        stackName,
        changeSetId,
        description,
        parameters,
        creationTime,
        deletionTime,
        lastUpdatedTime,
        rollbackConfiguration,
        stackStatus,
        stackStatusReason,
        disableRollback,
        notificationArNs,
        timeoutInMinutes,
        capabilities,
        outputs,
        roleArn,
        tags,
        enableTerminationProtection,
        parentId,
        rootId,
        driftInformation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stack')
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'changeSetId',
        changeSetId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'deletionTime',
        deletionTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'rollbackConfiguration',
        rollbackConfiguration,
      )
      ..add(
        'stackStatus',
        stackStatus,
      )
      ..add(
        'stackStatusReason',
        stackStatusReason,
      )
      ..add(
        'disableRollback',
        disableRollback,
      )
      ..add(
        'notificationArNs',
        notificationArNs,
      )
      ..add(
        'timeoutInMinutes',
        timeoutInMinutes,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'outputs',
        outputs,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'enableTerminationProtection',
        enableTerminationProtection,
      )
      ..add(
        'parentId',
        parentId,
      )
      ..add(
        'rootId',
        rootId,
      )
      ..add(
        'driftInformation',
        driftInformation,
      );
    return helper.toString();
  }
}

class StackAwsQuerySerializer extends _i10.StructuredSmithySerializer<Stack> {
  const StackAwsQuerySerializer() : super('Stack');

  @override
  Iterable<Type> get types => const [
        Stack,
        _$Stack,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Stack deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i10.XmlBuiltListSerializer(
                  indexer: _i10.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i2.Parameter)],
            ),
          ) as _i9.BuiltList<_i2.Parameter>));
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'DeletionTime':
          result.deletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'RollbackConfiguration':
          result.rollbackConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RollbackConfiguration),
          ) as _i3.RollbackConfiguration));
        case 'StackStatus':
          result.stackStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StackStatus),
          ) as _i4.StackStatus);
        case 'StackStatusReason':
          result.stackStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DisableRollback':
          result.disableRollback = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i10.XmlBuiltListSerializer(
                  indexer: _i10.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(String)],
            ),
          ) as _i9.BuiltList<String>));
        case 'TimeoutInMinutes':
          result.timeoutInMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Capabilities':
          result.capabilities.replace((const _i10.XmlBuiltListSerializer(
                  indexer: _i10.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i5.Capability)],
            ),
          ) as _i9.BuiltList<_i5.Capability>));
        case 'Outputs':
          result.outputs.replace((const _i10.XmlBuiltListSerializer(
                  indexer: _i10.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i6.Output)],
            ),
          ) as _i9.BuiltList<_i6.Output>));
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i10.XmlBuiltListSerializer(
                  indexer: _i10.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i7.Tag)],
            ),
          ) as _i9.BuiltList<_i7.Tag>));
        case 'EnableTerminationProtection':
          result.enableTerminationProtection = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ParentId':
          result.parentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RootId':
          result.rootId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DriftInformation':
          result.driftInformation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.StackDriftInformation),
          ) as _i8.StackDriftInformation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Stack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'StackResponse',
        _i10.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Stack(
      :stackId,
      :stackName,
      :changeSetId,
      :description,
      :parameters,
      :creationTime,
      :deletionTime,
      :lastUpdatedTime,
      :rollbackConfiguration,
      :stackStatus,
      :stackStatusReason,
      :disableRollback,
      :notificationArNs,
      :timeoutInMinutes,
      :capabilities,
      :outputs,
      :roleArn,
      :tags,
      :enableTerminationProtection,
      :parentId,
      :rootId,
      :driftInformation
    ) = object;
    if (stackId != null) {
      result$
        ..add(const _i10.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i10.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (changeSetId != null) {
      result$
        ..add(const _i10.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i10.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i10.XmlElementName('Parameters'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i2.Parameter)],
          ),
        ));
    }
    result$
      ..add(const _i10.XmlElementName('CreationTime'))
      ..add(serializers.serialize(
        creationTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (deletionTime != null) {
      result$
        ..add(const _i10.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          deletionTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i10.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (rollbackConfiguration != null) {
      result$
        ..add(const _i10.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          rollbackConfiguration,
          specifiedType: const FullType(_i3.RollbackConfiguration),
        ));
    }
    result$
      ..add(const _i10.XmlElementName('StackStatus'))
      ..add(serializers.serialize(
        stackStatus,
        specifiedType: const FullType.nullable(_i4.StackStatus),
      ));
    if (stackStatusReason != null) {
      result$
        ..add(const _i10.XmlElementName('StackStatusReason'))
        ..add(serializers.serialize(
          stackStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (disableRollback != null) {
      result$
        ..add(const _i10.XmlElementName('DisableRollback'))
        ..add(serializers.serialize(
          disableRollback,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (notificationArNs != null) {
      result$
        ..add(const _i10.XmlElementName('NotificationARNs'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          notificationArNs,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (timeoutInMinutes != null) {
      result$
        ..add(const _i10.XmlElementName('TimeoutInMinutes'))
        ..add(serializers.serialize(
          timeoutInMinutes,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i10.XmlElementName('Capabilities'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i5.Capability)],
          ),
        ));
    }
    if (outputs != null) {
      result$
        ..add(const _i10.XmlElementName('Outputs'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          outputs,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i6.Output)],
          ),
        ));
    }
    if (roleArn != null) {
      result$
        ..add(const _i10.XmlElementName('RoleARN'))
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i10.XmlElementName('Tags'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (enableTerminationProtection != null) {
      result$
        ..add(const _i10.XmlElementName('EnableTerminationProtection'))
        ..add(serializers.serialize(
          enableTerminationProtection,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (parentId != null) {
      result$
        ..add(const _i10.XmlElementName('ParentId'))
        ..add(serializers.serialize(
          parentId,
          specifiedType: const FullType(String),
        ));
    }
    if (rootId != null) {
      result$
        ..add(const _i10.XmlElementName('RootId'))
        ..add(serializers.serialize(
          rootId,
          specifiedType: const FullType(String),
        ));
    }
    if (driftInformation != null) {
      result$
        ..add(const _i10.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          driftInformation,
          specifiedType: const FullType(_i8.StackDriftInformation),
        ));
    }
    return result$;
  }
}
