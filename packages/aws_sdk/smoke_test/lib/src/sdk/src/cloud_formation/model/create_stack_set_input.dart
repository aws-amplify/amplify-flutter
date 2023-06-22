// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.create_stack_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i5;

part 'create_stack_set_input.g.dart';

abstract class CreateStackSetInput
    with
        _i1.HttpInput<CreateStackSetInput>,
        _i2.AWSEquatable<CreateStackSetInput>
    implements Built<CreateStackSetInput, CreateStackSetInputBuilder> {
  factory CreateStackSetInput({
    required String stackSetName,
    String? description,
    String? templateBody,
    String? templateUrl,
    String? stackId,
    List<_i3.Parameter>? parameters,
    List<_i4.Capability>? capabilities,
    List<_i5.Tag>? tags,
    String? administrationRoleArn,
    String? executionRoleName,
    _i6.PermissionModels? permissionModel,
    _i7.AutoDeployment? autoDeployment,
    _i8.CallAs? callAs,
    String? clientRequestToken,
    _i9.ManagedExecution? managedExecution,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientRequestToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientRequestToken ??= _i2.uuid(secure: true);
    }
    return _$CreateStackSetInput._(
      stackSetName: stackSetName,
      description: description,
      templateBody: templateBody,
      templateUrl: templateUrl,
      stackId: stackId,
      parameters: parameters == null ? null : _i10.BuiltList(parameters),
      capabilities: capabilities == null ? null : _i10.BuiltList(capabilities),
      tags: tags == null ? null : _i10.BuiltList(tags),
      administrationRoleArn: administrationRoleArn,
      executionRoleName: executionRoleName,
      permissionModel: permissionModel,
      autoDeployment: autoDeployment,
      callAs: callAs,
      clientRequestToken: clientRequestToken,
      managedExecution: managedExecution,
    );
  }

  factory CreateStackSetInput.build(
          [void Function(CreateStackSetInputBuilder) updates]) =
      _$CreateStackSetInput;

  const CreateStackSetInput._();

  factory CreateStackSetInput.fromRequest(
    CreateStackSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateStackSetInput>> serializers = [
    CreateStackSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStackSetInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientRequestToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientRequestToken = _i2.uuid(secure: true);
    }
  }

  /// The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
  ///
  /// A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can't be longer than 128 characters.
  String get stackSetName;

  /// A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
  String? get description;

  /// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
  String? get templateBody;

  /// The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. For more information, see [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
  String? get templateUrl;

  /// The stack ID you are importing into a new stack set. Specify the Amazon Resource Name (ARN) of the stack.
  String? get stackId;

  /// The input parameters for the stack set template.
  _i10.BuiltList<_i3.Parameter>? get parameters;

  /// In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for CloudFormation to create the stack set and related stack instances.
  ///
  /// *   `CAPABILITY_IAM` and `CAPABILITY\_NAMED\_IAM`
  ///
  ///     Some stack templates might include resources that can affect permissions in your Amazon Web Services account; for example, by creating new Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge this by specifying one of these capabilities.
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
  ///     Some templates reference macros. If your stack set template references one or more macros, you must create the stack set directly from the processed template, without first reviewing the resulting changes in a change set. To create the stack set directly, you must acknowledge this capability. For more information, see [Using CloudFormation Macros to Perform Custom Processing on Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).
  ///
  ///     Stack sets with service-managed permissions don't currently support the use of macros in templates. (This includes the [AWS::Include](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html) and [AWS::Serverless](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html) transforms, which are macros hosted by CloudFormation.) Even if you specify this capability for a stack set with service-managed permissions, if you reference a macro in your template the stack set operation will fail.
  _i10.BuiltList<_i4.Capability>? get capabilities;

  /// The key-value pairs to associate with this stack set and the stacks created from it. CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
  ///
  /// If you specify tags as part of a `CreateStackSet` action, CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire `CreateStackSet` action fails with an `access denied` error, and the stack set is not created.
  _i10.BuiltList<_i5.Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the IAM role to use to create this stack set.
  ///
  /// Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Prerequisites: Granting Permissions for Stack Set Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the _CloudFormation User Guide_.
  String? get administrationRoleArn;

  /// The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.
  ///
  /// Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
  String? get executionRoleName;

  /// Describes how the IAM roles required for stack set operations are created. By default, `SELF-MANAGED` is specified.
  ///
  /// *   With `self-managed` permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see [Grant Self-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).
  ///
  /// *   With `service-managed` permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by Organizations. For more information, see [Grant Service-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).
  _i6.PermissionModels? get permissionModel;

  /// Describes whether StackSets automatically deploys to Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if `PermissionModel` is `SERVICE_MANAGED`.
  _i7.AutoDeployment? get autoDeployment;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   To create a stack set with service-managed permissions while signed in to the management account, specify `SELF`.
  ///
  /// *   To create a stack set with service-managed permissions while signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated admin in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  ///
  ///
  /// Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated administrators.
  _i8.CallAs? get callAs;

  /// A unique identifier for this `CreateStackSet` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry `CreateStackSet` requests to ensure that CloudFormation successfully received them.
  ///
  /// If you don't specify an operation ID, the SDK generates one automatically.
  String? get clientRequestToken;

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  _i9.ManagedExecution? get managedExecution;
  @override
  CreateStackSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        description,
        templateBody,
        templateUrl,
        stackId,
        parameters,
        capabilities,
        tags,
        administrationRoleArn,
        executionRoleName,
        permissionModel,
        autoDeployment,
        callAs,
        clientRequestToken,
        managedExecution,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStackSetInput')
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
        'stackId',
        stackId,
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
        'administrationRoleArn',
        administrationRoleArn,
      )
      ..add(
        'executionRoleName',
        executionRoleName,
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
        'callAs',
        callAs,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      )
      ..add(
        'managedExecution',
        managedExecution,
      );
    return helper.toString();
  }
}

class CreateStackSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateStackSetInput> {
  const CreateStackSetInputAwsQuerySerializer() : super('CreateStackSetInput');

  @override
  Iterable<Type> get types => const [
        CreateStackSetInput,
        _$CreateStackSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateStackSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStackSetInputBuilder();
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
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i10.BuiltList<_i3.Parameter>));
        case 'Capabilities':
          result.capabilities.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i4.Capability)],
            ),
          ) as _i10.BuiltList<_i4.Capability>));
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i5.Tag)],
            ),
          ) as _i10.BuiltList<_i5.Tag>));
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
        case 'PermissionModel':
          result.permissionModel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.PermissionModels),
          ) as _i6.PermissionModels);
        case 'AutoDeployment':
          result.autoDeployment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.AutoDeployment),
          ) as _i7.AutoDeployment));
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.CallAs),
          ) as _i8.CallAs);
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ManagedExecution':
          result.managedExecution.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.ManagedExecution),
          ) as _i9.ManagedExecution));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateStackSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateStackSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreateStackSetInput(
      :stackSetName,
      :description,
      :templateBody,
      :templateUrl,
      :stackId,
      :parameters,
      :capabilities,
      :tags,
      :administrationRoleArn,
      :executionRoleName,
      :permissionModel,
      :autoDeployment,
      :callAs,
      :clientRequestToken,
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
    if (stackId != null) {
      result$
        ..add(const _i1.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
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
            _i10.BuiltList,
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
            _i10.BuiltList,
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
            _i10.BuiltList,
            [FullType(_i5.Tag)],
          ),
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
    if (permissionModel != null) {
      result$
        ..add(const _i1.XmlElementName('PermissionModel'))
        ..add(serializers.serialize(
          permissionModel,
          specifiedType: const FullType.nullable(_i6.PermissionModels),
        ));
    }
    if (autoDeployment != null) {
      result$
        ..add(const _i1.XmlElementName('AutoDeployment'))
        ..add(serializers.serialize(
          autoDeployment,
          specifiedType: const FullType(_i7.AutoDeployment),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i8.CallAs),
        ));
    }
    if (clientRequestToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    if (managedExecution != null) {
      result$
        ..add(const _i1.XmlElementName('ManagedExecution'))
        ..add(serializers.serialize(
          managedExecution,
          specifiedType: const FullType(_i9.ManagedExecution),
        ));
    }
    return result$;
  }
}
