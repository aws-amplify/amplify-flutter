// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_change_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart'
    as _i3;
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
  }) {
    return _$DescribeChangeSetOutput._(
      changeSetName: changeSetName,
      changeSetId: changeSetId,
      stackId: stackId,
      stackName: stackName,
      description: description,
      parameters: parameters == null ? null : _i9.BuiltList(parameters),
      creationTime: creationTime,
      executionStatus: executionStatus,
      status: status,
      statusReason: statusReason,
      notificationArNs:
          notificationArNs == null ? null : _i9.BuiltList(notificationArNs),
      rollbackConfiguration: rollbackConfiguration,
      capabilities: capabilities == null ? null : _i9.BuiltList(capabilities),
      tags: tags == null ? null : _i9.BuiltList(tags),
      changes: changes == null ? null : _i9.BuiltList(changes),
      nextToken: nextToken,
      includeNestedStacks: includeNestedStacks,
      parentChangeSetId: parentChangeSetId,
      rootChangeSetId: rootChangeSetId,
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

  static const List<_i10.SmithySerializer> serializers = [
    DescribeChangeSetOutputAwsQuerySerializer()
  ];

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
  _i9.BuiltList<_i2.Parameter>? get parameters;

  /// The start time when the change set was created, in UTC.
  DateTime? get creationTime;

  /// If the change set execution status is `AVAILABLE`, you can execute the change set. If you can't execute the change set, the status indicates why. For example, a change set might be in an `UNAVAILABLE` state because CloudFormation is still creating it or in an `OBSOLETE` state because the stack was already updated.
  _i3.ExecutionStatus? get executionStatus;

  /// The current status of the change set, such as `CREATE\_IN\_PROGRESS`, `CREATE_COMPLETE`, or `FAILED`.
  _i4.ChangeSetStatus? get status;

  /// A description of the change set's status. For example, if your attempt to create a change set failed, CloudFormation shows the error message.
  String? get statusReason;

  /// The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.
  _i9.BuiltList<String>? get notificationArNs;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i5.RollbackConfiguration? get rollbackConfiguration;

  /// If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.
  _i9.BuiltList<_i6.Capability>? get capabilities;

  /// If you execute the change set, the tags that will be associated with the stack.
  _i9.BuiltList<_i7.Tag>? get tags;

  /// A list of `Change` structures that describes the resources CloudFormation changes if you execute the change set.
  _i9.BuiltList<_i8.Change>? get changes;

  /// If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.
  String? get nextToken;

  /// Verifies if `IncludeNestedStacks` is set to `True`.
  bool? get includeNestedStacks;

  /// Specifies the change set ID of the parent change set in the current nested change set hierarchy.
  String? get parentChangeSetId;

  /// Specifies the change set ID of the root change set in the current nested change set hierarchy.
  String? get rootChangeSetId;
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
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeChangeSetOutput');
    helper.add(
      'changeSetName',
      changeSetName,
    );
    helper.add(
      'changeSetId',
      changeSetId,
    );
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'executionStatus',
      executionStatus,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusReason',
      statusReason,
    );
    helper.add(
      'notificationArNs',
      notificationArNs,
    );
    helper.add(
      'rollbackConfiguration',
      rollbackConfiguration,
    );
    helper.add(
      'capabilities',
      capabilities,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'changes',
      changes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'includeNestedStacks',
      includeNestedStacks,
    );
    helper.add(
      'parentChangeSetId',
      parentChangeSetId,
    );
    helper.add(
      'rootChangeSetId',
      rootChangeSetId,
    );
    return helper.toString();
  }
}

class DescribeChangeSetOutputAwsQuerySerializer
    extends _i10.StructuredSmithySerializer<DescribeChangeSetOutput> {
  const DescribeChangeSetOutputAwsQuerySerializer()
      : super('DescribeChangeSetOutput');

  @override
  Iterable<Type> get types => const [
        DescribeChangeSetOutput,
        _$DescribeChangeSetOutput,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChangeSetName':
          if (value != null) {
            result.changeSetName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChangeSetId':
          if (value != null) {
            result.changeSetId = (serializers.deserialize(
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
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
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
        case 'Parameters':
          if (value != null) {
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
          }
          break;
        case 'CreationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ExecutionStatus':
          if (value != null) {
            result.executionStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ExecutionStatus),
            ) as _i3.ExecutionStatus);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ChangeSetStatus),
            ) as _i4.ChangeSetStatus);
          }
          break;
        case 'StatusReason':
          if (value != null) {
            result.statusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NotificationARNs':
          if (value != null) {
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
          }
          break;
        case 'RollbackConfiguration':
          if (value != null) {
            result.rollbackConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.RollbackConfiguration),
            ) as _i5.RollbackConfiguration));
          }
          break;
        case 'Capabilities':
          if (value != null) {
            result.capabilities.replace((const _i10.XmlBuiltListSerializer(
                    indexer: _i10.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i6.Capability)],
              ),
            ) as _i9.BuiltList<_i6.Capability>));
          }
          break;
        case 'Tags':
          if (value != null) {
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
          }
          break;
        case 'Changes':
          if (value != null) {
            result.changes.replace((const _i10.XmlBuiltListSerializer(
                    indexer: _i10.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i8.Change)],
              ),
            ) as _i9.BuiltList<_i8.Change>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IncludeNestedStacks':
          if (value != null) {
            result.includeNestedStacks = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ParentChangeSetId':
          if (value != null) {
            result.parentChangeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RootChangeSetId':
          if (value != null) {
            result.rootChangeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeChangeSetOutput);
    final result = <Object?>[
      const _i10.XmlElementName(
        'DescribeChangeSetOutputResponse',
        _i10.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.changeSetName != null) {
      result
        ..add(const _i10.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          payload.changeSetName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.changeSetId != null) {
      result
        ..add(const _i10.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          payload.changeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackId != null) {
      result
        ..add(const _i10.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackName != null) {
      result
        ..add(const _i10.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i10.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parameters != null) {
      result
        ..add(const _i10.XmlElementName('Parameters'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.parameters!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i2.Parameter)],
          ),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i10.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.executionStatus != null) {
      result
        ..add(const _i10.XmlElementName('ExecutionStatus'))
        ..add(serializers.serialize(
          payload.executionStatus!,
          specifiedType: const FullType.nullable(_i3.ExecutionStatus),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i10.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i4.ChangeSetStatus),
        ));
    }
    if (payload.statusReason != null) {
      result
        ..add(const _i10.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          payload.statusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.notificationArNs != null) {
      result
        ..add(const _i10.XmlElementName('NotificationARNs'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.notificationArNs!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.rollbackConfiguration != null) {
      result
        ..add(const _i10.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          payload.rollbackConfiguration!,
          specifiedType: const FullType(_i5.RollbackConfiguration),
        ));
    }
    if (payload.capabilities != null) {
      result
        ..add(const _i10.XmlElementName('Capabilities'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.capabilities!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i6.Capability)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i10.XmlElementName('Tags'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (payload.changes != null) {
      result
        ..add(const _i10.XmlElementName('Changes'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.changes!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i8.Change)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i10.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.includeNestedStacks != null) {
      result
        ..add(const _i10.XmlElementName('IncludeNestedStacks'))
        ..add(serializers.serialize(
          payload.includeNestedStacks!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.parentChangeSetId != null) {
      result
        ..add(const _i10.XmlElementName('ParentChangeSetId'))
        ..add(serializers.serialize(
          payload.parentChangeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rootChangeSetId != null) {
      result
        ..add(const _i10.XmlElementName('RootChangeSetId'))
        ..add(serializers.serialize(
          payload.rootChangeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
