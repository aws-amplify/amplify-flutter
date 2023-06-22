// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.update_stack_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i5;

part 'update_stack_set_input.g.dart';

abstract class UpdateStackSetInput
    with
        _i1.HttpInput<UpdateStackSetInput>,
        _i2.AWSEquatable<UpdateStackSetInput>
    implements Built<UpdateStackSetInput, UpdateStackSetInputBuilder> {
  factory UpdateStackSetInput({
    required String stackSetName,
    String? description,
    String? templateBody,
    String? templateUrl,
    bool? usePreviousTemplate,
    List<_i3.Parameter>? parameters,
    List<_i4.Capability>? capabilities,
    List<_i5.Tag>? tags,
    _i6.StackSetOperationPreferences? operationPreferences,
    String? administrationRoleArn,
    String? executionRoleName,
    _i7.DeploymentTargets? deploymentTargets,
    _i8.PermissionModels? permissionModel,
    _i9.AutoDeployment? autoDeployment,
    String? operationId,
    List<String>? accounts,
    List<String>? regions,
    _i10.CallAs? callAs,
    _i11.ManagedExecution? managedExecution,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      operationId ??= '00000000-0000-4000-8000-000000000000';
    } else {
      operationId ??= _i2.uuid(secure: true);
    }
    return _$UpdateStackSetInput._(
      stackSetName: stackSetName,
      description: description,
      templateBody: templateBody,
      templateUrl: templateUrl,
      usePreviousTemplate: usePreviousTemplate,
      parameters: parameters == null ? null : _i12.BuiltList(parameters),
      capabilities: capabilities == null ? null : _i12.BuiltList(capabilities),
      tags: tags == null ? null : _i12.BuiltList(tags),
      operationPreferences: operationPreferences,
      administrationRoleArn: administrationRoleArn,
      executionRoleName: executionRoleName,
      deploymentTargets: deploymentTargets,
      permissionModel: permissionModel,
      autoDeployment: autoDeployment,
      operationId: operationId,
      accounts: accounts == null ? null : _i12.BuiltList(accounts),
      regions: regions == null ? null : _i12.BuiltList(regions),
      callAs: callAs,
      managedExecution: managedExecution,
    );
  }

  factory UpdateStackSetInput.build(
          [void Function(UpdateStackSetInputBuilder) updates]) =
      _$UpdateStackSetInput;

  const UpdateStackSetInput._();

  factory UpdateStackSetInput.fromRequest(
    UpdateStackSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateStackSetInput>> serializers = [
    UpdateStackSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStackSetInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.operationId = '00000000-0000-4000-8000-000000000000';
    } else {
      b.operationId = _i2.uuid(secure: true);
    }
  }

  /// The name or unique ID of the stack set that you want to update.
  String get stackSetName;

  /// A brief description of updates that you are making.
  String? get description;

  /// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
  String? get templateBody;

  /// The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, see [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
  String? get templateUrl;

  /// Use the existing template that's associated with the stack set that you're updating.
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
  bool? get usePreviousTemplate;

  /// A list of input parameters for the stack set template.
  _i12.BuiltList<_i3.Parameter>? get parameters;

  /// In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for CloudFormation to update the stack set and its associated stack instances.
  ///
  /// *   `CAPABILITY_IAM` and `CAPABILITY\_NAMED\_IAM`
  ///
  ///     Some stack templates might include resources that can affect permissions in your Amazon Web Services account; for example, by creating new Identity and Access Management (IAM) users. For those stacks sets, you must explicitly acknowledge this by specifying one of these capabilities.
  ///
  ///     The following IAM resources require you to specify either the `CAPABILITY_IAM` or `CAPABILITY\_NAMED\_IAM` capability.
  ///
  ///     *   If you have IAM resources, you can specify either capability.
  ///
  ///     *   If you have IAM resources with custom names, you _must_ specify `CAPABILITY\_NAMED\_IAM`.
  ///
  ///     *   If you don't specify either of these capabilities, CloudFormation returns an `InsufficientCapabilities` error.
  ///
  ///
  ///     If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.
  ///
  ///     *   [AWS::IAM::AccessKey](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html)
  ///
  ///     *   [AWS::IAM::Group](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html)
  ///
  ///     *   [AWS::IAM::InstanceProfile](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html)
  ///
  ///     *   [AWS::IAM::Policy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html)
  ///
  ///     *   [AWS::IAM::Role](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html)
  ///
  ///     *   [AWS::IAM::User](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html)
  ///
  ///     *   [AWS::IAM::UserToGroupAddition](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html)
  ///
  ///
  ///     For more information, see [Acknowledging IAM Resources in CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
  ///
  /// *   `CAPABILITY\_AUTO\_EXPAND`
  ///
  ///     Some templates reference macros. If your stack set template references one or more macros, you must update the stack set directly from the processed template, without first reviewing the resulting changes in a change set. To update the stack set directly, you must acknowledge this capability. For more information, see [Using CloudFormation Macros to Perform Custom Processing on Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).
  ///
  ///     Stack sets with service-managed permissions do not currently support the use of macros in templates. (This includes the [AWS::Include](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html) and [AWS::Serverless](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html) transforms, which are macros hosted by CloudFormation.) Even if you specify this capability for a stack set with service-managed permissions, if you reference a macro in your template the stack set operation will fail.
  _i12.BuiltList<_i4.Capability>? get capabilities;

  /// The key-value pairs to associate with this stack set and the stacks created from it. CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags.
  ///
  /// If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means:
  ///
  /// *   If you don't specify this parameter, CloudFormation doesn't modify the stack's tags.
  ///
  /// *   If you specify _any_ tags using this parameter, you must specify _all_ the tags that you want associated with this stack set, even tags you've specified before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well.
  ///
  /// *   If you specify an empty value, CloudFormation removes all currently associated tags.
  ///
  ///
  /// If you specify new tags as part of an `UpdateStackSet` action, CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don't have the necessary permission(s), the entire `UpdateStackSet` action fails with an `access denied` error, and the stack set is not updated.
  _i12.BuiltList<_i5.Tag>? get tags;

  /// Preferences for how CloudFormation performs this stack set operation.
  _i6.StackSetOperationPreferences? get operationPreferences;

  /// The Amazon Resource Name (ARN) of the IAM role to use to update this stack set.
  ///
  /// Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Granting Permissions for Stack Set Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the _CloudFormation User Guide_.
  ///
  /// If you specified a customized administrator role when you created the stack set, you must specify a customized administrator role, even if it is the same customized administrator role used with this stack set previously.
  String? get administrationRoleArn;

  /// The name of the IAM execution role to use to update the stack set. If you do not specify an execution role, CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.
  ///
  /// Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
  ///
  /// If you specify a customized execution role, CloudFormation uses that role to update the stack. If you do not specify a customized execution role, CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.
  String? get executionRoleName;

  /// \[Service-managed permissions\] The Organizations accounts in which to update associated stack instances.
  ///
  /// To update all the stack instances associated with this stack set, do not specify `DeploymentTargets` or `Regions`.
  ///
  /// If the stack set update includes changes to the template (that is, if `TemplateBody` or `TemplateURL` is specified), or the `Parameters`, CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and Amazon Web Services Regions. If the stack set update doesn't include changes to the template or parameters, CloudFormation updates the stack instances in the specified accounts and Regions, while leaving all other stack instances with their existing stack instance status.
  _i7.DeploymentTargets? get deploymentTargets;

  /// Describes how the IAM roles required for stack set operations are created. You cannot modify `PermissionModel` if there are stack instances associated with your stack set.
  ///
  /// *   With `self-managed` permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see [Grant Self-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).
  ///
  /// *   With `service-managed` permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by Organizations. For more information, see [Grant Service-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).
  _i8.PermissionModels? get permissionModel;

  /// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
  ///
  /// If you specify `AutoDeployment`, don't specify `DeploymentTargets` or `Regions`.
  _i9.AutoDeployment? get autoDeployment;

  /// The unique ID for this stack set operation.
  ///
  /// The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.
  ///
  /// If you don't specify an operation ID, CloudFormation generates one automatically.
  ///
  /// Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.
  String? get operationId;

  /// \[Self-managed permissions\] The accounts in which to update associated stack instances. If you specify accounts, you must also specify the Amazon Web Services Regions in which to update stack set instances.
  ///
  /// To update _all_ the stack instances associated with this stack set, don't specify the `Accounts` or `Regions` properties.
  ///
  /// If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and Amazon Web Services Regions. If the stack set update does not include changes to the template or parameters, CloudFormation updates the stack instances in the specified accounts and Amazon Web Services Regions, while leaving all other stack instances with their existing stack instance status.
  _i12.BuiltList<String>? get accounts;

  /// The Amazon Web Services Regions in which to update associated stack instances. If you specify Regions, you must also specify accounts in which to update stack set instances.
  ///
  /// To update _all_ the stack instances associated with this stack set, do not specify the `Accounts` or `Regions` properties.
  ///
  /// If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and Regions. If the stack set update does not include changes to the template or parameters, CloudFormation updates the stack instances in the specified accounts and Regions, while leaving all other stack instances with their existing stack instance status.
  _i12.BuiltList<String>? get regions;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i10.CallAs? get callAs;

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  _i11.ManagedExecution? get managedExecution;
  @override
  UpdateStackSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        description,
        templateBody,
        templateUrl,
        usePreviousTemplate,
        parameters,
        capabilities,
        tags,
        operationPreferences,
        administrationRoleArn,
        executionRoleName,
        deploymentTargets,
        permissionModel,
        autoDeployment,
        operationId,
        accounts,
        regions,
        callAs,
        managedExecution,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStackSetInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'templateUrl',
        templateUrl,
      )
      ..add(
        'usePreviousTemplate',
        usePreviousTemplate,
      )
      ..add(
        'parameters',
        parameters,
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
        'operationPreferences',
        operationPreferences,
      )
      ..add(
        'administrationRoleArn',
        administrationRoleArn,
      )
      ..add(
        'executionRoleName',
        executionRoleName,
      )
      ..add(
        'deploymentTargets',
        deploymentTargets,
      )
      ..add(
        'permissionModel',
        permissionModel,
      )
      ..add(
        'autoDeployment',
        autoDeployment,
      )
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'accounts',
        accounts,
      )
      ..add(
        'regions',
        regions,
      )
      ..add(
        'callAs',
        callAs,
      )
      ..add(
        'managedExecution',
        managedExecution,
      );
    return helper.toString();
  }
}

class UpdateStackSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateStackSetInput> {
  const UpdateStackSetInputAwsQuerySerializer() : super('UpdateStackSetInput');

  @override
  Iterable<Type> get types => const [
        UpdateStackSetInput,
        _$UpdateStackSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateStackSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStackSetInputBuilder();
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
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateURL':
          result.templateUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UsePreviousTemplate':
          result.usePreviousTemplate = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Parameters':
          result.parameters.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i12.BuiltList<_i3.Parameter>));
        case 'Capabilities':
          result.capabilities.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(_i4.Capability)],
            ),
          ) as _i12.BuiltList<_i4.Capability>));
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(_i5.Tag)],
            ),
          ) as _i12.BuiltList<_i5.Tag>));
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.StackSetOperationPreferences),
          ) as _i6.StackSetOperationPreferences));
        case 'AdministrationRoleARN':
          result.administrationRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExecutionRoleName':
          result.executionRoleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeploymentTargets':
          result.deploymentTargets.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.DeploymentTargets),
          ) as _i7.DeploymentTargets));
        case 'PermissionModel':
          result.permissionModel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.PermissionModels),
          ) as _i8.PermissionModels);
        case 'AutoDeployment':
          result.autoDeployment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.AutoDeployment),
          ) as _i9.AutoDeployment));
        case 'OperationId':
          result.operationId = (serializers.deserialize(
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
              _i12.BuiltList,
              [FullType(String)],
            ),
          ) as _i12.BuiltList<String>));
        case 'Regions':
          result.regions.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(String)],
            ),
          ) as _i12.BuiltList<String>));
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.CallAs),
          ) as _i10.CallAs);
        case 'ManagedExecution':
          result.managedExecution.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i11.ManagedExecution),
          ) as _i11.ManagedExecution));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateStackSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateStackSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final UpdateStackSetInput(
      :stackSetName,
      :description,
      :templateBody,
      :templateUrl,
      :usePreviousTemplate,
      :parameters,
      :capabilities,
      :tags,
      :operationPreferences,
      :administrationRoleArn,
      :executionRoleName,
      :deploymentTargets,
      :permissionModel,
      :autoDeployment,
      :operationId,
      :accounts,
      :regions,
      :callAs,
      :managedExecution
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (templateBody != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (templateUrl != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateURL'))
        ..add(serializers.serialize(
          templateUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (usePreviousTemplate != null) {
      result$
        ..add(const _i1.XmlElementName('UsePreviousTemplate'))
        ..add(serializers.serialize(
          usePreviousTemplate,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i1.XmlElementName('Parameters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i3.Parameter)],
          ),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i1.XmlElementName('Capabilities'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i4.Capability)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (operationPreferences != null) {
      result$
        ..add(const _i1.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(_i6.StackSetOperationPreferences),
        ));
    }
    if (administrationRoleArn != null) {
      result$
        ..add(const _i1.XmlElementName('AdministrationRoleARN'))
        ..add(serializers.serialize(
          administrationRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (executionRoleName != null) {
      result$
        ..add(const _i1.XmlElementName('ExecutionRoleName'))
        ..add(serializers.serialize(
          executionRoleName,
          specifiedType: const FullType(String),
        ));
    }
    if (deploymentTargets != null) {
      result$
        ..add(const _i1.XmlElementName('DeploymentTargets'))
        ..add(serializers.serialize(
          deploymentTargets,
          specifiedType: const FullType(_i7.DeploymentTargets),
        ));
    }
    if (permissionModel != null) {
      result$
        ..add(const _i1.XmlElementName('PermissionModel'))
        ..add(serializers.serialize(
          permissionModel,
          specifiedType: const FullType.nullable(_i8.PermissionModels),
        ));
    }
    if (autoDeployment != null) {
      result$
        ..add(const _i1.XmlElementName('AutoDeployment'))
        ..add(serializers.serialize(
          autoDeployment,
          specifiedType: const FullType(_i9.AutoDeployment),
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
    if (accounts != null) {
      result$
        ..add(const _i1.XmlElementName('Accounts'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          accounts,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (regions != null) {
      result$
        ..add(const _i1.XmlElementName('Regions'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          regions,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i10.CallAs),
        ));
    }
    if (managedExecution != null) {
      result$
        ..add(const _i1.XmlElementName('ManagedExecution'))
        ..add(serializers.serialize(
          managedExecution,
          specifiedType: const FullType(_i11.ManagedExecution),
        ));
    }
    return result$;
  }
}
