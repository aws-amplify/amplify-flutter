// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_stack_instances_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i4;

part 'delete_stack_instances_input.g.dart';

abstract class DeleteStackInstancesInput
    with
        _i1.HttpInput<DeleteStackInstancesInput>,
        _i2.AWSEquatable<DeleteStackInstancesInput>
    implements
        Built<DeleteStackInstancesInput, DeleteStackInstancesInputBuilder> {
  factory DeleteStackInstancesInput({
    required String stackSetName,
    List<String>? accounts,
    _i3.DeploymentTargets? deploymentTargets,
    required List<String> regions,
    _i4.StackSetOperationPreferences? operationPreferences,
    bool? retainStacks,
    String? operationId,
    _i5.CallAs? callAs,
  }) {
    retainStacks ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      operationId ??= '00000000-0000-4000-8000-000000000000';
    } else {
      operationId ??= _i2.uuid(secure: true);
    }
    return _$DeleteStackInstancesInput._(
      stackSetName: stackSetName,
      accounts: accounts == null ? null : _i6.BuiltList(accounts),
      deploymentTargets: deploymentTargets,
      regions: _i6.BuiltList(regions),
      operationPreferences: operationPreferences,
      retainStacks: retainStacks,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory DeleteStackInstancesInput.build(
          [void Function(DeleteStackInstancesInputBuilder) updates]) =
      _$DeleteStackInstancesInput;

  const DeleteStackInstancesInput._();

  factory DeleteStackInstancesInput.fromRequest(
    DeleteStackInstancesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteStackInstancesInput>>
      serializers = [DeleteStackInstancesInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStackInstancesInputBuilder b) {
    b.retainStacks = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.operationId = '00000000-0000-4000-8000-000000000000';
    } else {
      b.operationId = _i2.uuid(secure: true);
    }
  }

  /// The name or unique ID of the stack set that you want to delete stack instances for.
  String get stackSetName;

  /// \[Self-managed permissions\] The names of the Amazon Web Services accounts that you want to delete stack instances for.
  ///
  /// You can specify `Accounts` or `DeploymentTargets`, but not both.
  _i6.BuiltList<String>? get accounts;

  /// \[Service-managed permissions\] The Organizations accounts from which to delete stack instances.
  ///
  /// You can specify `Accounts` or `DeploymentTargets`, but not both.
  _i3.DeploymentTargets? get deploymentTargets;

  /// The Amazon Web Services Regions where you want to delete stack set instances.
  _i6.BuiltList<String> get regions;

  /// Preferences for how CloudFormation performs this stack set operation.
  _i4.StackSetOperationPreferences? get operationPreferences;

  /// Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set.
  ///
  /// For more information, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  bool get retainStacks;

  /// The unique identifier for this stack set operation.
  ///
  /// If you don't specify an operation ID, the SDK generates one automatically.
  ///
  /// The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that CloudFormation successfully received them.
  ///
  /// Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.
  String? get operationId;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i5.CallAs? get callAs;
  @override
  DeleteStackInstancesInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        accounts,
        deploymentTargets,
        regions,
        operationPreferences,
        retainStacks,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStackInstancesInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'accounts',
        accounts,
      )
      ..add(
        'deploymentTargets',
        deploymentTargets,
      )
      ..add(
        'regions',
        regions,
      )
      ..add(
        'operationPreferences',
        operationPreferences,
      )
      ..add(
        'retainStacks',
        retainStacks,
      )
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class DeleteStackInstancesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteStackInstancesInput> {
  const DeleteStackInstancesInputAwsQuerySerializer()
      : super('DeleteStackInstancesInput');

  @override
  Iterable<Type> get types => const [
        DeleteStackInstancesInput,
        _$DeleteStackInstancesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteStackInstancesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteStackInstancesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Accounts':
          result.accounts.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'DeploymentTargets':
          result.deploymentTargets.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeploymentTargets),
          ) as _i3.DeploymentTargets));
        case 'Regions':
          result.regions.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StackSetOperationPreferences),
          ) as _i4.StackSetOperationPreferences));
        case 'RetainStacks':
          result.retainStacks = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.CallAs),
          ) as _i5.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteStackInstancesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteStackInstancesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeleteStackInstancesInput(
      :stackSetName,
      :accounts,
      :deploymentTargets,
      :regions,
      :operationPreferences,
      :retainStacks,
      :operationId,
      :callAs
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    if (accounts != null) {
      result$
        ..add(const _i1.XmlElementName('Accounts'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          accounts,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (deploymentTargets != null) {
      result$
        ..add(const _i1.XmlElementName('DeploymentTargets'))
        ..add(serializers.serialize(
          deploymentTargets,
          specifiedType: const FullType(_i3.DeploymentTargets),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Regions'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        regions,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(String)],
        ),
      ));
    if (operationPreferences != null) {
      result$
        ..add(const _i1.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(_i4.StackSetOperationPreferences),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RetainStacks'))
      ..add(serializers.serialize(
        retainStacks,
        specifiedType: const FullType(bool),
      ));
    if (operationId != null) {
      result$
        ..add(const _i1.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i5.CallAs),
        ));
    }
    return result$;
  }
}
