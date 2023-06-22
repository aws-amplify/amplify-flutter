// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.update_stack_instances_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i5;

part 'update_stack_instances_input.g.dart';

abstract class UpdateStackInstancesInput
    with
        _i1.HttpInput<UpdateStackInstancesInput>,
        _i2.AWSEquatable<UpdateStackInstancesInput>
    implements
        Built<UpdateStackInstancesInput, UpdateStackInstancesInputBuilder> {
  factory UpdateStackInstancesInput({
    required String stackSetName,
    List<String>? accounts,
    _i3.DeploymentTargets? deploymentTargets,
    required List<String> regions,
    List<_i4.Parameter>? parameterOverrides,
    _i5.StackSetOperationPreferences? operationPreferences,
    String? operationId,
    _i6.CallAs? callAs,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      operationId ??= '00000000-0000-4000-8000-000000000000';
    } else {
      operationId ??= _i2.uuid(secure: true);
    }
    return _$UpdateStackInstancesInput._(
      stackSetName: stackSetName,
      accounts: accounts == null ? null : _i7.BuiltList(accounts),
      deploymentTargets: deploymentTargets,
      regions: _i7.BuiltList(regions),
      parameterOverrides:
          parameterOverrides == null ? null : _i7.BuiltList(parameterOverrides),
      operationPreferences: operationPreferences,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory UpdateStackInstancesInput.build(
          [void Function(UpdateStackInstancesInputBuilder) updates]) =
      _$UpdateStackInstancesInput;

  const UpdateStackInstancesInput._();

  factory UpdateStackInstancesInput.fromRequest(
    UpdateStackInstancesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateStackInstancesInput>>
      serializers = [UpdateStackInstancesInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStackInstancesInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.operationId = '00000000-0000-4000-8000-000000000000';
    } else {
      b.operationId = _i2.uuid(secure: true);
    }
  }

  /// The name or unique ID of the stack set associated with the stack instances.
  String get stackSetName;

  /// \[Self-managed permissions\] The names of one or more Amazon Web Services accounts for which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and Amazon Web Services Regions.
  ///
  /// You can specify `Accounts` or `DeploymentTargets`, but not both.
  _i7.BuiltList<String>? get accounts;

  /// \[Service-managed permissions\] The Organizations accounts for which you want to update parameter values for stack instances. If your update targets OUs, the overridden parameter values only apply to the accounts that are currently in the target OUs and their child OUs. Accounts added to the target OUs and their child OUs in the future won't use the overridden values.
  ///
  /// You can specify `Accounts` or `DeploymentTargets`, but not both.
  _i3.DeploymentTargets? get deploymentTargets;

  /// The names of one or more Amazon Web Services Regions in which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and Amazon Web Services Regions.
  _i7.BuiltList<String> get regions;

  /// A list of input parameters whose values you want to update for the specified stack instances.
  ///
  /// Any overridden parameter values will be applied to all stack instances in the specified accounts and Amazon Web Services Regions. When specifying parameters and their values, be aware of how CloudFormation sets parameter values during stack instance update operations:
  ///
  /// *   To override the current value for a parameter, include the parameter and specify its value.
  ///
  /// *   To leave an overridden parameter set to its present value, include the parameter and specify `UsePreviousValue` as `true`. (You can't specify both a value and set `UsePreviousValue` to `true`.)
  ///
  /// *   To set an overridden parameter back to the value specified in the stack set, specify a parameter list but don't include the parameter in the list.
  ///
  /// *   To leave all parameters set to their present values, don't specify this property at all.
  ///
  ///
  /// During stack set updates, any parameter values overridden for a stack instance aren't updated, but retain their overridden value.
  ///
  /// You can only override the parameter _values_ that are specified in the stack set; to add or delete a parameter itself, use `UpdateStackSet` to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
  _i7.BuiltList<_i4.Parameter>? get parameterOverrides;

  /// Preferences for how CloudFormation performs this stack set operation.
  _i5.StackSetOperationPreferences? get operationPreferences;

  /// The unique identifier for this stack set operation.
  ///
  /// The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.
  ///
  /// If you don't specify an operation ID, the SDK generates one automatically.
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
  _i6.CallAs? get callAs;
  @override
  UpdateStackInstancesInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        accounts,
        deploymentTargets,
        regions,
        parameterOverrides,
        operationPreferences,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStackInstancesInput')
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
        'parameterOverrides',
        parameterOverrides,
      )
      ..add(
        'operationPreferences',
        operationPreferences,
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

class UpdateStackInstancesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateStackInstancesInput> {
  const UpdateStackInstancesInputAwsQuerySerializer()
      : super('UpdateStackInstancesInput');

  @override
  Iterable<Type> get types => const [
        UpdateStackInstancesInput,
        _$UpdateStackInstancesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateStackInstancesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStackInstancesInputBuilder();
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
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
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
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
        case 'ParameterOverrides':
          result.parameterOverrides.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i4.Parameter)],
            ),
          ) as _i7.BuiltList<_i4.Parameter>));
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.StackSetOperationPreferences),
          ) as _i5.StackSetOperationPreferences));
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.CallAs),
          ) as _i6.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateStackInstancesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateStackInstancesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final UpdateStackInstancesInput(
      :stackSetName,
      :accounts,
      :deploymentTargets,
      :regions,
      :parameterOverrides,
      :operationPreferences,
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
            _i7.BuiltList,
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
          _i7.BuiltList,
          [FullType(String)],
        ),
      ));
    if (parameterOverrides != null) {
      result$
        ..add(const _i1.XmlElementName('ParameterOverrides'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameterOverrides,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.Parameter)],
          ),
        ));
    }
    if (operationPreferences != null) {
      result$
        ..add(const _i1.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(_i5.StackSetOperationPreferences),
        ));
    }
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
          specifiedType: const FullType.nullable(_i6.CallAs),
        ));
    }
    return result$;
  }
}
