// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.update_stack_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i6;

part 'update_stack_input.g.dart';

/// The input for an UpdateStack action.
abstract class UpdateStackInput
    with _i1.HttpInput<UpdateStackInput>, _i2.AWSEquatable<UpdateStackInput>
    implements Built<UpdateStackInput, UpdateStackInputBuilder> {
  /// The input for an UpdateStack action.
  factory UpdateStackInput({
    required String stackName,
    String? templateBody,
    String? templateUrl,
    bool? usePreviousTemplate,
    String? stackPolicyDuringUpdateBody,
    String? stackPolicyDuringUpdateUrl,
    List<_i3.Parameter>? parameters,
    List<_i4.Capability>? capabilities,
    List<String>? resourceTypes,
    String? roleArn,
    _i5.RollbackConfiguration? rollbackConfiguration,
    String? stackPolicyBody,
    String? stackPolicyUrl,
    List<String>? notificationArNs,
    List<_i6.Tag>? tags,
    bool? disableRollback,
    String? clientRequestToken,
  }) {
    return _$UpdateStackInput._(
      stackName: stackName,
      templateBody: templateBody,
      templateUrl: templateUrl,
      usePreviousTemplate: usePreviousTemplate,
      stackPolicyDuringUpdateBody: stackPolicyDuringUpdateBody,
      stackPolicyDuringUpdateUrl: stackPolicyDuringUpdateUrl,
      parameters: parameters == null ? null : _i7.BuiltList(parameters),
      capabilities: capabilities == null ? null : _i7.BuiltList(capabilities),
      resourceTypes:
          resourceTypes == null ? null : _i7.BuiltList(resourceTypes),
      roleArn: roleArn,
      rollbackConfiguration: rollbackConfiguration,
      stackPolicyBody: stackPolicyBody,
      stackPolicyUrl: stackPolicyUrl,
      notificationArNs:
          notificationArNs == null ? null : _i7.BuiltList(notificationArNs),
      tags: tags == null ? null : _i7.BuiltList(tags),
      disableRollback: disableRollback,
      clientRequestToken: clientRequestToken,
    );
  }

  /// The input for an UpdateStack action.
  factory UpdateStackInput.build(
      [void Function(UpdateStackInputBuilder) updates]) = _$UpdateStackInput;

  const UpdateStackInput._();

  factory UpdateStackInput.fromRequest(
    UpdateStackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateStackInput>> serializers = [
    UpdateStackInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStackInputBuilder b) {}

  /// The name or unique stack ID of the stack to update.
  String get stackName;

  /// Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.)
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
  String? get templateBody;

  /// Location of file containing the template body. The URL must point to a template that's located in an Amazon S3 bucket or a Systems Manager document. For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
  String? get templateUrl;

  /// Reuse the existing template that is associated with the stack that you are updating.
  ///
  /// Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.
  bool? get usePreviousTemplate;

  /// Structure containing the temporary overriding stack policy body. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.
  ///
  /// If you want to update protected resources, specify a temporary overriding stack policy during this update. If you don't specify a stack policy, the current policy that is associated with the stack will be used.
  String? get stackPolicyDuringUpdateBody;

  /// Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.
  ///
  /// If you want to update protected resources, specify a temporary overriding stack policy during this update. If you don't specify a stack policy, the current policy that is associated with the stack will be used.
  String? get stackPolicyDuringUpdateUrl;

  /// A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
  _i7.BuiltList<_i3.Parameter>? get parameters;

  /// In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for CloudFormation to update the stack.
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
  ///     For more information, see [Acknowledging IAM Resources in CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
  ///
  /// *   `CAPABILITY\_AUTO\_EXPAND`
  ///
  ///     Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually updating the stack. If your stack template contains one or more macros, and you choose to update a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the [AWS::Include](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html) and [AWS::Serverless](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html) transforms, which are macros hosted by CloudFormation.
  ///
  ///     If you want to update a stack from a stack template that contains macros _and_ nested stacks, you must update the stack directly from the template using this capability.
  ///
  ///     You should only update stacks directly from a stack template that contains macros if you know what processing the macro performs.
  ///
  ///     Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without CloudFormation being notified.
  ///
  ///     For more information, see [Using CloudFormation Macros to Perform Custom Processing on Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).
  _i7.BuiltList<_i4.Capability>? get capabilities;

  /// The template resource types that you have permissions to work with for this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.
  ///
  /// If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, CloudFormation grants permissions to all resource types. Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with Identity and Access Management](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).
  _i7.BuiltList<String>? get resourceTypes;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFormation assumes to update the stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always uses this role for all future operations on the stack. Provided that users have permission to operate on the stack, CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.
  ///
  /// If you don't specify a value, CloudFormation uses the role that was previously associated with the stack. If no role is available, CloudFormation uses a temporary session that is generated from your user credentials.
  String? get roleArn;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  _i5.RollbackConfiguration? get rollbackConfiguration;

  /// Structure containing a new stack policy body. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  ///
  /// You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you don't specify a stack policy, the current policy that is associated with the stack is unchanged.
  String? get stackPolicyBody;

  /// Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  ///
  /// You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you don't specify a stack policy, the current policy that is associated with the stack is unchanged.
  String? get stackPolicyUrl;

  /// Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that CloudFormation associates with the stack. Specify an empty list to remove all notification topics.
  _i7.BuiltList<String>? get notificationArNs;

  /// Key-value pairs to associate with this stack. CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags.
  ///
  /// If you don't specify this parameter, CloudFormation doesn't modify the stack's tags. If you specify an empty value, CloudFormation removes all associated tags.
  _i7.BuiltList<_i6.Tag>? get tags;

  /// Preserve the state of previously provisioned resources when an operation fails.
  ///
  /// Default: `False`
  bool? get disableRollback;

  /// A unique identifier for this `UpdateStack` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to update a stack with the same name. You might retry `UpdateStack` requests to ensure that CloudFormation successfully received them.
  ///
  /// All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
  ///
  /// In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format _Console-StackOperation-ID_, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
  String? get clientRequestToken;
  @override
  UpdateStackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        templateBody,
        templateUrl,
        usePreviousTemplate,
        stackPolicyDuringUpdateBody,
        stackPolicyDuringUpdateUrl,
        parameters,
        capabilities,
        resourceTypes,
        roleArn,
        rollbackConfiguration,
        stackPolicyBody,
        stackPolicyUrl,
        notificationArNs,
        tags,
        disableRollback,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStackInput')
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
        'stackPolicyDuringUpdateBody',
        stackPolicyDuringUpdateBody,
      )
      ..add(
        'stackPolicyDuringUpdateUrl',
        stackPolicyDuringUpdateUrl,
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
        'stackPolicyBody',
        stackPolicyBody,
      )
      ..add(
        'stackPolicyUrl',
        stackPolicyUrl,
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
        'disableRollback',
        disableRollback,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      );
    return helper.toString();
  }
}

class UpdateStackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateStackInput> {
  const UpdateStackInputAwsQuerySerializer() : super('UpdateStackInput');

  @override
  Iterable<Type> get types => const [
        UpdateStackInput,
        _$UpdateStackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateStackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStackInputBuilder();
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
        case 'StackPolicyDuringUpdateBody':
          result.stackPolicyDuringUpdateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackPolicyDuringUpdateURL':
          result.stackPolicyDuringUpdateUrl = (serializers.deserialize(
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
              _i7.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i7.BuiltList<_i3.Parameter>));
        case 'Capabilities':
          result.capabilities.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i4.Capability)],
            ),
          ) as _i7.BuiltList<_i4.Capability>));
        case 'ResourceTypes':
          result.resourceTypes.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
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
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i7.BuiltList<_i6.Tag>));
        case 'DisableRollback':
          result.disableRollback = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateStackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateStackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final UpdateStackInput(
      :stackName,
      :templateBody,
      :templateUrl,
      :usePreviousTemplate,
      :stackPolicyDuringUpdateBody,
      :stackPolicyDuringUpdateUrl,
      :parameters,
      :capabilities,
      :resourceTypes,
      :roleArn,
      :rollbackConfiguration,
      :stackPolicyBody,
      :stackPolicyUrl,
      :notificationArNs,
      :tags,
      :disableRollback,
      :clientRequestToken
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
    if (stackPolicyDuringUpdateBody != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyDuringUpdateBody'))
        ..add(serializers.serialize(
          stackPolicyDuringUpdateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (stackPolicyDuringUpdateUrl != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyDuringUpdateURL'))
        ..add(serializers.serialize(
          stackPolicyDuringUpdateUrl,
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
            _i7.BuiltList,
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
            _i7.BuiltList,
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
            _i7.BuiltList,
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
    if (notificationArNs != null) {
      result$
        ..add(const _i1.XmlElementName('NotificationARNs'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          notificationArNs,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
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
            _i7.BuiltList,
            [FullType(_i6.Tag)],
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
    if (clientRequestToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
