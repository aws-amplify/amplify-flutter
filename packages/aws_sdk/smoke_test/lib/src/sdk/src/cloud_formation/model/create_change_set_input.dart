// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.create_change_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_stack_failure.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_to_import.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i6;

part 'create_change_set_input.g.dart';

/// The input for the CreateChangeSet action.
abstract class CreateChangeSetInput
    with
        _i1.HttpInput<CreateChangeSetInput>,
        _i2.AWSEquatable<CreateChangeSetInput>
    implements Built<CreateChangeSetInput, CreateChangeSetInputBuilder> {
  /// The input for the CreateChangeSet action.
  factory CreateChangeSetInput({
    required String stackName,
    String? templateBody,
    String? templateUrl,
    bool? usePreviousTemplate,
    List<_i3.Parameter>? parameters,
    List<_i4.Capability>? capabilities,
    List<String>? resourceTypes,
    String? roleArn,
    _i5.RollbackConfiguration? rollbackConfiguration,
    List<String>? notificationArNs,
    List<_i6.Tag>? tags,
    required String changeSetName,
    String? clientToken,
    String? description,
    _i7.ChangeSetType? changeSetType,
    List<_i8.ResourceToImport>? resourcesToImport,
    bool? includeNestedStacks,
    _i9.OnStackFailure? onStackFailure,
  }) {
    return _$CreateChangeSetInput._(
      stackName: stackName,
      templateBody: templateBody,
      templateUrl: templateUrl,
      usePreviousTemplate: usePreviousTemplate,
      parameters: parameters == null ? null : _i10.BuiltList(parameters),
      capabilities: capabilities == null ? null : _i10.BuiltList(capabilities),
      resourceTypes:
          resourceTypes == null ? null : _i10.BuiltList(resourceTypes),
      roleArn: roleArn,
      rollbackConfiguration: rollbackConfiguration,
      notificationArNs:
          notificationArNs == null ? null : _i10.BuiltList(notificationArNs),
      tags: tags == null ? null : _i10.BuiltList(tags),
      changeSetName: changeSetName,
      clientToken: clientToken,
      description: description,
      changeSetType: changeSetType,
      resourcesToImport:
          resourcesToImport == null ? null : _i10.BuiltList(resourcesToImport),
      includeNestedStacks: includeNestedStacks,
      onStackFailure: onStackFailure,
    );
  }

  /// The input for the CreateChangeSet action.
  factory CreateChangeSetInput.build(
          [void Function(CreateChangeSetInputBuilder) updates]) =
      _$CreateChangeSetInput;

  const CreateChangeSetInput._();

  factory CreateChangeSetInput.fromRequest(
    CreateChangeSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateChangeSetInput>> serializers = [
    CreateChangeSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateChangeSetInputBuilder b) {}

  /// The name or the unique ID of the stack for which you are creating a change set. CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.
  String get stackName;

  /// A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. CloudFormation generates the change set by comparing this template with the template of the stack that you specified.
  ///
  /// Conditional: You must specify only `TemplateBody` or `TemplateURL`.
  String? get templateBody;

  /// The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. CloudFormation generates the change set by comparing this template with the stack that you specified.
  ///
  /// Conditional: You must specify only `TemplateBody` or `TemplateURL`.
  String? get templateUrl;

  /// Whether to reuse the template that's associated with the stack to create the change set.
  bool? get usePreviousTemplate;

  /// A list of `Parameter` structures that specify input parameters for the change set. For more information, see the Parameter data type.
  _i10.BuiltList<_i3.Parameter>? get parameters;

  /// In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for CloudFormation to create the stack.
  ///
  /// *   `CAPABILITY_IAM` and `CAPABILITY\_NAMED\_IAM`
  ///
  ///     Some stack templates might include resources that can affect permissions in your Amazon Web Services account; for example, by creating new Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities.
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
  ///     If your stack template contains these resources, we suggest that you review all permissions associated with them and edit their permissions if necessary.
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
  ///     For more information, see [Acknowledging IAM resources in CloudFormation templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
  ///
  /// *   `CAPABILITY\_AUTO\_EXPAND`
  ///
  ///     Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the [AWS::Include](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html) and [AWS::Serverless](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html) transforms, which are macros hosted by CloudFormation.
  ///
  ///     This capacity doesn't apply to creating change sets, and specifying it when creating change sets has no effect.
  ///
  ///     If you want to create a stack from a stack template that contains macros _and_ nested stacks, you must create or update the stack directly from the template using the CreateStack or UpdateStack action, and specifying this capability.
  ///
  ///     For more information about macros, see [Using CloudFormation macros to perform custom processing on templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).
  _i10.BuiltList<_i4.Capability>? get capabilities;

  /// The template resource types that you have permissions to work with if you execute this change set, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.
  ///
  /// If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, CloudFormation grants permissions to all resource types. Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for CloudFormation. For more information, see [Controlling access with Identity and Access Management](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html) in the CloudFormation User Guide.
  _i10.BuiltList<String>? get resourceTypes;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFormation assumes when executing the change set. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation uses this role for all future operations on the stack. Provided that users have permission to operate on the stack, CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least permission.
  ///
  /// If you don't specify a value, CloudFormation uses the role that was previously associated with the stack. If no role is available, CloudFormation uses a temporary session that is generated from your user credentials.
  String? get roleArn;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i5.RollbackConfiguration? get rollbackConfiguration;

  /// The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.
  _i10.BuiltList<String>? get notificationArNs;

  /// Key-value pairs to associate with this stack. CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.
  _i10.BuiltList<_i6.Tag>? get tags;

  /// The name of the change set. The name must be unique among all change sets that are associated with the specified stack.
  ///
  /// A change set name can contain only alphanumeric, case sensitive characters, and hyphens. It must start with an alphabetical character and can't exceed 128 characters.
  String get changeSetName;

  /// A unique identifier for this `CreateChangeSet` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to create another change set with the same name. You might retry `CreateChangeSet` requests to ensure that CloudFormation successfully received them.
  String? get clientToken;

  /// A description to help you identify this change set.
  String? get description;

  /// The type of change set operation. To create a change set for a new stack, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE`. To create a change set for an import operation, specify `IMPORT`.
  ///
  /// If you create a change set for a new stack, CloudFormation creates a stack with a unique stack ID, but no template or resources. The stack will be in the [REVIEW\_IN\_PROGRESS](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995) state until you execute the change set.
  ///
  /// By default, CloudFormation specifies `UPDATE`. You can't use the `UPDATE` type to create a change set for a new stack or the `CREATE` type to create a change set for an existing stack.
  _i7.ChangeSetType? get changeSetType;

  /// The resources to import into your stack.
  _i10.BuiltList<_i8.ResourceToImport>? get resourcesToImport;

  /// Creates a change set for the all nested stacks specified in the template. The default behavior of this action is set to `False`. To include nested sets in a change set, specify `True`.
  bool? get includeNestedStacks;

  /// Determines what action will be taken if stack creation fails. If this parameter is specified, the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation must not be specified. This must be one of these values:
  ///
  /// *   `DELETE` \- Deletes the change set if the stack creation fails. This is only valid when the `ChangeSetType` parameter is set to `CREATE`. If the deletion of the stack fails, the status of the stack is `DELETE_FAILED`.
  ///
  /// *   `DO_NOTHING` \- if the stack creation fails, do nothing. This is equivalent to specifying `true` for the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation.
  ///
  /// *   `ROLLBACK` \- if the stack creation fails, roll back the stack. This is equivalent to specifying `false` for the `DisableRollback` parameter to the [ExecuteChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html) API operation.
  ///
  ///
  /// For nested stacks, when the `OnStackFailure` parameter is set to `DELETE` for the change set for the parent stack, any failure in a child stack will cause the parent stack creation to fail and all stacks to be deleted.
  _i9.OnStackFailure? get onStackFailure;
  @override
  CreateChangeSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        templateBody,
        templateUrl,
        usePreviousTemplate,
        parameters,
        capabilities,
        resourceTypes,
        roleArn,
        rollbackConfiguration,
        notificationArNs,
        tags,
        changeSetName,
        clientToken,
        description,
        changeSetType,
        resourcesToImport,
        includeNestedStacks,
        onStackFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateChangeSetInput')
      ..add(
        'stackName',
        stackName,
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
        'resourceTypes',
        resourceTypes,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'rollbackConfiguration',
        rollbackConfiguration,
      )
      ..add(
        'notificationArNs',
        notificationArNs,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'changeSetType',
        changeSetType,
      )
      ..add(
        'resourcesToImport',
        resourcesToImport,
      )
      ..add(
        'includeNestedStacks',
        includeNestedStacks,
      )
      ..add(
        'onStackFailure',
        onStackFailure,
      );
    return helper.toString();
  }
}

class CreateChangeSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateChangeSetInput> {
  const CreateChangeSetInputAwsQuerySerializer()
      : super('CreateChangeSetInput');

  @override
  Iterable<Type> get types => const [
        CreateChangeSetInput,
        _$CreateChangeSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateChangeSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateChangeSetInputBuilder();
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
        case 'ResourceTypes':
          result.resourceTypes.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RollbackConfiguration':
          result.rollbackConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.RollbackConfiguration),
          ) as _i5.RollbackConfiguration));
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i10.BuiltList<_i6.Tag>));
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetType':
          result.changeSetType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ChangeSetType),
          ) as _i7.ChangeSetType);
        case 'ResourcesToImport':
          result.resourcesToImport.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i8.ResourceToImport)],
            ),
          ) as _i10.BuiltList<_i8.ResourceToImport>));
        case 'IncludeNestedStacks':
          result.includeNestedStacks = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    CreateChangeSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateChangeSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreateChangeSetInput(
      :stackName,
      :templateBody,
      :templateUrl,
      :usePreviousTemplate,
      :parameters,
      :capabilities,
      :resourceTypes,
      :roleArn,
      :rollbackConfiguration,
      :notificationArNs,
      :tags,
      :changeSetName,
      :clientToken,
      :description,
      :changeSetType,
      :resourcesToImport,
      :includeNestedStacks,
      :onStackFailure
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
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
    if (resourceTypes != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceTypes'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourceTypes,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (roleArn != null) {
      result$
        ..add(const _i1.XmlElementName('RoleARN'))
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (rollbackConfiguration != null) {
      result$
        ..add(const _i1.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          rollbackConfiguration,
          specifiedType: const FullType(_i5.RollbackConfiguration),
        ));
    }
    if (notificationArNs != null) {
      result$
        ..add(const _i1.XmlElementName('NotificationARNs'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          notificationArNs,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
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
            [FullType(_i6.Tag)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ChangeSetName'))
      ..add(serializers.serialize(
        changeSetName,
        specifiedType: const FullType(String),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (changeSetType != null) {
      result$
        ..add(const _i1.XmlElementName('ChangeSetType'))
        ..add(serializers.serialize(
          changeSetType,
          specifiedType: const FullType.nullable(_i7.ChangeSetType),
        ));
    }
    if (resourcesToImport != null) {
      result$
        ..add(const _i1.XmlElementName('ResourcesToImport'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourcesToImport,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.ResourceToImport)],
          ),
        ));
    }
    if (includeNestedStacks != null) {
      result$
        ..add(const _i1.XmlElementName('IncludeNestedStacks'))
        ..add(serializers.serialize(
          includeNestedStacks,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (onStackFailure != null) {
      result$
        ..add(const _i1.XmlElementName('OnStackFailure'))
        ..add(serializers.serialize(
          onStackFailure,
          specifiedType: const FullType.nullable(_i9.OnStackFailure),
        ));
    }
    return result$;
  }
}
