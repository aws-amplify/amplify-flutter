// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.create_stack_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/on_failure.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i7;

part 'create_stack_input.g.dart';

/// The input for CreateStack action.
abstract class CreateStackInput
    with _i1.HttpInput<CreateStackInput>, _i2.AWSEquatable<CreateStackInput>
    implements Built<CreateStackInput, CreateStackInputBuilder> {
  /// The input for CreateStack action.
  factory CreateStackInput({
    required String stackName,
    String? templateBody,
    String? templateUrl,
    List<_i3.Parameter>? parameters,
    bool? disableRollback,
    _i4.RollbackConfiguration? rollbackConfiguration,
    int? timeoutInMinutes,
    List<String>? notificationArNs,
    List<_i5.Capability>? capabilities,
    List<String>? resourceTypes,
    String? roleArn,
    _i6.OnFailure? onFailure,
    String? stackPolicyBody,
    String? stackPolicyUrl,
    List<_i7.Tag>? tags,
    String? clientRequestToken,
    bool? enableTerminationProtection,
  }) {
    return _$CreateStackInput._(
      stackName: stackName,
      templateBody: templateBody,
      templateUrl: templateUrl,
      parameters: parameters == null ? null : _i8.BuiltList(parameters),
      disableRollback: disableRollback,
      rollbackConfiguration: rollbackConfiguration,
      timeoutInMinutes: timeoutInMinutes,
      notificationArNs:
          notificationArNs == null ? null : _i8.BuiltList(notificationArNs),
      capabilities: capabilities == null ? null : _i8.BuiltList(capabilities),
      resourceTypes:
          resourceTypes == null ? null : _i8.BuiltList(resourceTypes),
      roleArn: roleArn,
      onFailure: onFailure,
      stackPolicyBody: stackPolicyBody,
      stackPolicyUrl: stackPolicyUrl,
      tags: tags == null ? null : _i8.BuiltList(tags),
      clientRequestToken: clientRequestToken,
      enableTerminationProtection: enableTerminationProtection,
    );
  }

  /// The input for CreateStack action.
  factory CreateStackInput.build(
      [void Function(CreateStackInputBuilder) updates]) = _$CreateStackInput;

  const CreateStackInput._();

  factory CreateStackInput.fromRequest(
    CreateStackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateStackInput>> serializers = [
    CreateStackInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStackInputBuilder b) {}

  /// The name that's associated with the stack. The name must be unique in the Region in which you are creating the stack.
  ///
  /// A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetical character and can't be longer than 128 characters.
  String get stackName;

  /// Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.
  String? get templateBody;

  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. For more information, go to the [Template anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.
  String? get templateUrl;

  /// A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
  _i8.BuiltList<_i3.Parameter>? get parameters;

  /// Set to `true` to disable rollback of the stack if stack creation failed. You can specify either `DisableRollback` or `OnFailure`, but not both.
  ///
  /// Default: `false`
  bool? get disableRollback;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i4.RollbackConfiguration? get rollbackConfiguration;

  /// The amount of time that can pass before the stack status becomes CREATE_FAILED; if `DisableRollback` is not set or is set to `false`, the stack will be rolled back.
  int? get timeoutInMinutes;

  /// The Amazon Simple Notification Service (Amazon SNS) topic ARNs to publish stack related events. You can find your Amazon SNS topic ARNs using the Amazon SNS console or your Command Line Interface (CLI).
  _i8.BuiltList<String>? get notificationArNs;

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
  ///     Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the [AWS::Include](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html) and [AWS::Serverless](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html) transforms, which are macros hosted by CloudFormation.
  ///
  ///     If you want to create a stack from a stack template that contains macros _and_ nested stacks, you must create the stack directly from the template using this capability.
  ///
  ///     You should only create stacks directly from a stack template that contains macros if you know what processing the macro performs.
  ///
  ///     Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without CloudFormation being notified.
  ///
  ///     For more information, see [Using CloudFormation macros to perform custom processing on templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).
  _i8.BuiltList<_i5.Capability>? get capabilities;

  /// The template resource types that you have permissions to work with for this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`. Use the following syntax to describe template resource types: `AWS::*` (for all Amazon Web Services resources), `Custom::*` (for all custom resources), `Custom::_logical_ID_` (for a specific custom resource), `AWS::_service_name_::*` (for all resources of a particular Amazon Web Services service), and `AWS::_service_name_::_resource\_logical\_ID_` (for a specific Amazon Web Services resource).
  ///
  /// If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, CloudFormation grants permissions to all resource types. Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with Identity and Access Management](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).
  _i8.BuiltList<String>? get resourceTypes;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFormation assumes to create the stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always uses this role for all future operations on the stack. Provided that users have permission to operate on the stack, CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.
  ///
  /// If you don't specify a value, CloudFormation uses the role that was previously associated with the stack. If no role is available, CloudFormation uses a temporary session that's generated from your user credentials.
  String? get roleArn;

  /// Determines what action will be taken if stack creation fails. This must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. You can specify either `OnFailure` or `DisableRollback`, but not both.
  ///
  /// Default: `ROLLBACK`
  _i6.OnFailure? get onFailure;

  /// Structure containing the stack policy body. For more information, go to [Prevent Updates to Stack Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the _CloudFormation User Guide_. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  String? get stackPolicyBody;

  /// Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same Region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  String? get stackPolicyUrl;

  /// Key-value pairs to associate with this stack. CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.
  _i8.BuiltList<_i7.Tag>? get tags;

  /// A unique identifier for this `CreateStack` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to create a stack with the same name. You might retry `CreateStack` requests to ensure that CloudFormation successfully received them.
  ///
  /// All events initiated by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
  ///
  /// In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format _Console-StackOperation-ID_, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
  String? get clientRequestToken;

  /// Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the _CloudFormation User Guide_. Termination protection is deactivated on stacks by default.
  ///
  /// For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and can't be changed directly on the nested stack.
  bool? get enableTerminationProtection;
  @override
  CreateStackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        templateBody,
        templateUrl,
        parameters,
        disableRollback,
        rollbackConfiguration,
        timeoutInMinutes,
        notificationArNs,
        capabilities,
        resourceTypes,
        roleArn,
        onFailure,
        stackPolicyBody,
        stackPolicyUrl,
        tags,
        clientRequestToken,
        enableTerminationProtection,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStackInput')
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
        'parameters',
        parameters,
      )
      ..add(
        'disableRollback',
        disableRollback,
      )
      ..add(
        'rollbackConfiguration',
        rollbackConfiguration,
      )
      ..add(
        'timeoutInMinutes',
        timeoutInMinutes,
      )
      ..add(
        'notificationArNs',
        notificationArNs,
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
        'onFailure',
        onFailure,
      )
      ..add(
        'stackPolicyBody',
        stackPolicyBody,
      )
      ..add(
        'stackPolicyUrl',
        stackPolicyUrl,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      )
      ..add(
        'enableTerminationProtection',
        enableTerminationProtection,
      );
    return helper.toString();
  }
}

class CreateStackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateStackInput> {
  const CreateStackInputAwsQuerySerializer() : super('CreateStackInput');

  @override
  Iterable<Type> get types => const [
        CreateStackInput,
        _$CreateStackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateStackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStackInputBuilder();
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
        case 'Parameters':
          result.parameters.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i8.BuiltList<_i3.Parameter>));
        case 'DisableRollback':
          result.disableRollback = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RollbackConfiguration':
          result.rollbackConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RollbackConfiguration),
          ) as _i4.RollbackConfiguration));
        case 'TimeoutInMinutes':
          result.timeoutInMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
        case 'Capabilities':
          result.capabilities.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i5.Capability)],
            ),
          ) as _i8.BuiltList<_i5.Capability>));
        case 'ResourceTypes':
          result.resourceTypes.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OnFailure':
          result.onFailure = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.OnFailure),
          ) as _i6.OnFailure);
        case 'StackPolicyBody':
          result.stackPolicyBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackPolicyURL':
          result.stackPolicyUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i7.Tag)],
            ),
          ) as _i8.BuiltList<_i7.Tag>));
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableTerminationProtection':
          result.enableTerminationProtection = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateStackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateStackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreateStackInput(
      :stackName,
      :templateBody,
      :templateUrl,
      :parameters,
      :disableRollback,
      :rollbackConfiguration,
      :timeoutInMinutes,
      :notificationArNs,
      :capabilities,
      :resourceTypes,
      :roleArn,
      :onFailure,
      :stackPolicyBody,
      :stackPolicyUrl,
      :tags,
      :clientRequestToken,
      :enableTerminationProtection
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
    if (parameters != null) {
      result$
        ..add(const _i1.XmlElementName('Parameters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i3.Parameter)],
          ),
        ));
    }
    if (disableRollback != null) {
      result$
        ..add(const _i1.XmlElementName('DisableRollback'))
        ..add(serializers.serialize(
          disableRollback,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (rollbackConfiguration != null) {
      result$
        ..add(const _i1.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          rollbackConfiguration,
          specifiedType: const FullType(_i4.RollbackConfiguration),
        ));
    }
    if (timeoutInMinutes != null) {
      result$
        ..add(const _i1.XmlElementName('TimeoutInMinutes'))
        ..add(serializers.serialize(
          timeoutInMinutes,
          specifiedType: const FullType.nullable(int),
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
            _i8.BuiltList,
            [FullType(String)],
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
            _i8.BuiltList,
            [FullType(_i5.Capability)],
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
            _i8.BuiltList,
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
    if (onFailure != null) {
      result$
        ..add(const _i1.XmlElementName('OnFailure'))
        ..add(serializers.serialize(
          onFailure,
          specifiedType: const FullType.nullable(_i6.OnFailure),
        ));
    }
    if (stackPolicyBody != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyBody'))
        ..add(serializers.serialize(
          stackPolicyBody,
          specifiedType: const FullType(String),
        ));
    }
    if (stackPolicyUrl != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyURL'))
        ..add(serializers.serialize(
          stackPolicyUrl,
          specifiedType: const FullType(String),
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
            _i8.BuiltList,
            [FullType(_i7.Tag)],
          ),
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
    if (enableTerminationProtection != null) {
      result$
        ..add(const _i1.XmlElementName('EnableTerminationProtection'))
        ..add(serializers.serialize(
          enableTerminationProtection,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
