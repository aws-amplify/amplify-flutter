// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_change_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_stack_failure.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i7;

part 'describe_change_set_output.g.dart';

/// The output for the DescribeChangeSet action.
abstract class DescribeChangeSetOutput
    with _i1.AWSEquatable<DescribeChangeSetOutput>
    implements Built<DescribeChangeSetOutput, DescribeChangeSetOutputBuilder> {
  /// The output for the DescribeChangeSet action.
  factory DescribeChangeSetOutput({
    String? changeSetName,
    String? changeSetId,
    String? stackId,
    String? stackName,
    String? description,
    List<_i2.Parameter>? parameters,
    DateTime? creationTime,
    _i3.ExecutionStatus? executionStatus,
    _i4.ChangeSetStatus? status,
    String? statusReason,
    List<String>? notificationArNs,
    _i5.RollbackConfiguration? rollbackConfiguration,
    List<_i6.Capability>? capabilities,
    List<_i7.Tag>? tags,
    List<_i8.Change>? changes,
    String? nextToken,
    bool? includeNestedStacks,
    String? parentChangeSetId,
    String? rootChangeSetId,
    _i9.OnStackFailure? onStackFailure,
  }) {
    return _$DescribeChangeSetOutput._(
      changeSetName: changeSetName,
      changeSetId: changeSetId,
      stackId: stackId,
      stackName: stackName,
      description: description,
      parameters: parameters == null ? null : _i10.BuiltList(parameters),
      creationTime: creationTime,
      executionStatus: executionStatus,
      status: status,
      statusReason: statusReason,
      notificationArNs:
          notificationArNs == null ? null : _i10.BuiltList(notificationArNs),
      rollbackConfiguration: rollbackConfiguration,
      capabilities: capabilities == null ? null : _i10.BuiltList(capabilities),
      tags: tags == null ? null : _i10.BuiltList(tags),
      changes: changes == null ? null : _i10.BuiltList(changes),
      nextToken: nextToken,
      includeNestedStacks: includeNestedStacks,
      parentChangeSetId: parentChangeSetId,
      rootChangeSetId: rootChangeSetId,
      onStackFailure: onStackFailure,
    );
  }

  /// The output for the DescribeChangeSet action.
  factory DescribeChangeSetOutput.build(
          [void Function(DescribeChangeSetOutputBuilder) updates]) =
      _$DescribeChangeSetOutput;

  const DescribeChangeSetOutput._();

  /// Constructs a [DescribeChangeSetOutput] from a [payload] and [response].
  factory DescribeChangeSetOutput.fromResponse(
    DescribeChangeSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i11.SmithySerializer<DescribeChangeSetOutput>>
      serializers = [DescribeChangeSetOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeChangeSetOutputBuilder b) {}

  /// The name of the change set.
  String? get changeSetName;

  /// The Amazon Resource Name (ARN) of the change set.
  String? get changeSetId;

  /// The Amazon Resource Name (ARN) of the stack that's associated with the change set.
  String? get stackId;

  /// The name of the stack that's associated with the change set.
  String? get stackName;

  /// Information about the change set.
  String? get description;

  /// A list of `Parameter` structures that describes the input parameters and their values used to create the change set. For more information, see the [Parameter](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
  _i10.BuiltList<_i2.Parameter>? get parameters;

  /// The start time when the change set was created, in UTC.
  DateTime? get creationTime;

  /// If the change set execution status is `AVAILABLE`, you can execute the change set. If you can't execute the change set, the status indicates why. For example, a change set might be in an `UNAVAILABLE` state because CloudFormation is still creating it or in an `OBSOLETE` state because the stack was already updated.
  _i3.ExecutionStatus? get executionStatus;

  /// The current status of the change set, such as `CREATE\_IN\_PROGRESS`, `CREATE_COMPLETE`, or `FAILED`.
  _i4.ChangeSetStatus? get status;

  /// A description of the change set's status. For example, if your attempt to create a change set failed, CloudFormation shows the error message.
  String? get statusReason;

  /// The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.
  _i10.BuiltList<String>? get notificationArNs;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i5.RollbackConfiguration? get rollbackConfiguration;

  /// If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.
  _i10.BuiltList<_i6.Capability>? get capabilities;

  /// If you execute the change set, the tags that will be associated with the stack.
  _i10.BuiltList<_i7.Tag>? get tags;

  /// A list of `Change` structures that describes the resources CloudFormation changes if you execute the change set.
  _i10.BuiltList<_i8.Change>? get changes;

  /// If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.
  String? get nextToken;

  /// Verifies if `IncludeNestedStacks` is set to `True`.
  bool? get includeNestedStacks;

  /// Specifies the change set ID of the parent change set in the current nested change set hierarchy.
  String? get parentChangeSetId;

  /// Specifies the change set ID of the root change set in the current nested change set hierarchy.
  String? get rootChangeSetId;

  /// Determines what action will be taken if stack creation fails. When this parameter is specified, the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation must not be specified. This must be one of these values:
  ///
  /// *   `DELETE` \- Deletes the change set if the stack creation fails. This is only valid when the `ChangeSetType` parameter is set to `CREATE`. If the deletion of the stack fails, the status of the stack is `DELETE_FAILED`.
  ///
  /// *   `DO_NOTHING` \- if the stack creation fails, do nothing. This is equivalent to specifying `true` for the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation.
  ///
  /// *   `ROLLBACK` \- if the stack creation fails, roll back the stack. This is equivalent to specifying `false` for the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation.
  _i9.OnStackFailure? get onStackFailure;
  @override
  List<Object?> get props => [
        changeSetName,
        changeSetId,
        stackId,
        stackName,
        description,
        parameters,
        creationTime,
        executionStatus,
        status,
        statusReason,
        notificationArNs,
        rollbackConfiguration,
        capabilities,
        tags,
        changes,
        nextToken,
        includeNestedStacks,
        parentChangeSetId,
        rootChangeSetId,
        onStackFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeChangeSetOutput')
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'changeSetId',
        changeSetId,
      )
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'stackName',
        stackName,
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
        'executionStatus',
        executionStatus,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusReason',
        statusReason,
      )
      ..add(
        'notificationArNs',
        notificationArNs,
      )
      ..add(
        'rollbackConfiguration',
        rollbackConfiguration,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'changes',
        changes,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'includeNestedStacks',
        includeNestedStacks,
      )
      ..add(
        'parentChangeSetId',
        parentChangeSetId,
      )
      ..add(
        'rootChangeSetId',
        rootChangeSetId,
      )
      ..add(
        'onStackFailure',
        onStackFailure,
      );
    return helper.toString();
  }
}

class DescribeChangeSetOutputAwsQuerySerializer
    extends _i11.StructuredSmithySerializer<DescribeChangeSetOutput> {
  const DescribeChangeSetOutputAwsQuerySerializer()
      : super('DescribeChangeSetOutput');

  @override
  Iterable<Type> get types => const [
        DescribeChangeSetOutput,
        _$DescribeChangeSetOutput,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeChangeSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeChangeSetOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i2.Parameter)],
            ),
          ) as _i10.BuiltList<_i2.Parameter>));
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ExecutionStatus':
          result.executionStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ExecutionStatus),
          ) as _i3.ExecutionStatus);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ChangeSetStatus),
          ) as _i4.ChangeSetStatus);
        case 'StatusReason':
          result.statusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'RollbackConfiguration':
          result.rollbackConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.RollbackConfiguration),
          ) as _i5.RollbackConfiguration));
        case 'Capabilities':
          result.capabilities.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i6.Capability)],
            ),
          ) as _i10.BuiltList<_i6.Capability>));
        case 'Tags':
          result.tags.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i7.Tag)],
            ),
          ) as _i10.BuiltList<_i7.Tag>));
        case 'Changes':
          result.changes.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i8.Change)],
            ),
          ) as _i10.BuiltList<_i8.Change>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IncludeNestedStacks':
          result.includeNestedStacks = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ParentChangeSetId':
          result.parentChangeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RootChangeSetId':
          result.rootChangeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OnStackFailure':
          result.onStackFailure = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.OnStackFailure),
          ) as _i9.OnStackFailure);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeChangeSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i11.XmlElementName(
        'DescribeChangeSetOutputResponse',
        _i11.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeChangeSetOutput(
      :changeSetName,
      :changeSetId,
      :stackId,
      :stackName,
      :description,
      :parameters,
      :creationTime,
      :executionStatus,
      :status,
      :statusReason,
      :notificationArNs,
      :rollbackConfiguration,
      :capabilities,
      :tags,
      :changes,
      :nextToken,
      :includeNestedStacks,
      :parentChangeSetId,
      :rootChangeSetId,
      :onStackFailure
    ) = object;
    if (changeSetName != null) {
      result$
        ..add(const _i11.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          changeSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (changeSetId != null) {
      result$
        ..add(const _i11.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (stackId != null) {
      result$
        ..add(const _i11.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    if (stackName != null) {
      result$
        ..add(const _i11.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i11.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i11.XmlElementName('Parameters'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.Parameter)],
          ),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i11.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (executionStatus != null) {
      result$
        ..add(const _i11.XmlElementName('ExecutionStatus'))
        ..add(serializers.serialize(
          executionStatus,
          specifiedType: const FullType.nullable(_i3.ExecutionStatus),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i11.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i4.ChangeSetStatus),
        ));
    }
    if (statusReason != null) {
      result$
        ..add(const _i11.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          statusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (notificationArNs != null) {
      result$
        ..add(const _i11.XmlElementName('NotificationARNs'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          notificationArNs,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (rollbackConfiguration != null) {
      result$
        ..add(const _i11.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          rollbackConfiguration,
          specifiedType: const FullType(_i5.RollbackConfiguration),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i11.XmlElementName('Capabilities'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.Capability)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i11.XmlElementName('Tags'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (changes != null) {
      result$
        ..add(const _i11.XmlElementName('Changes'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          changes,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.Change)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i11.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (includeNestedStacks != null) {
      result$
        ..add(const _i11.XmlElementName('IncludeNestedStacks'))
        ..add(serializers.serialize(
          includeNestedStacks,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (parentChangeSetId != null) {
      result$
        ..add(const _i11.XmlElementName('ParentChangeSetId'))
        ..add(serializers.serialize(
          parentChangeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (rootChangeSetId != null) {
      result$
        ..add(const _i11.XmlElementName('RootChangeSetId'))
        ..add(serializers.serialize(
          rootChangeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (onStackFailure != null) {
      result$
        ..add(const _i11.XmlElementName('OnStackFailure'))
        ..add(serializers.serialize(
          onStackFailure,
          specifiedType: const FullType.nullable(_i9.OnStackFailure),
        ));
    }
    return result$;
  }
}
