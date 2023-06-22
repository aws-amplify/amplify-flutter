// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.continue_update_rollback_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'continue_update_rollback_input.g.dart';

/// The input for the ContinueUpdateRollback action.
abstract class ContinueUpdateRollbackInput
    with
        _i1.HttpInput<ContinueUpdateRollbackInput>,
        _i2.AWSEquatable<ContinueUpdateRollbackInput>
    implements
        Built<ContinueUpdateRollbackInput, ContinueUpdateRollbackInputBuilder> {
  /// The input for the ContinueUpdateRollback action.
  factory ContinueUpdateRollbackInput({
    required String stackName,
    String? roleArn,
    List<String>? resourcesToSkip,
    String? clientRequestToken,
  }) {
    return _$ContinueUpdateRollbackInput._(
      stackName: stackName,
      roleArn: roleArn,
      resourcesToSkip:
          resourcesToSkip == null ? null : _i3.BuiltList(resourcesToSkip),
      clientRequestToken: clientRequestToken,
    );
  }

  /// The input for the ContinueUpdateRollback action.
  factory ContinueUpdateRollbackInput.build(
          [void Function(ContinueUpdateRollbackInputBuilder) updates]) =
      _$ContinueUpdateRollbackInput;

  const ContinueUpdateRollbackInput._();

  factory ContinueUpdateRollbackInput.fromRequest(
    ContinueUpdateRollbackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ContinueUpdateRollbackInput>>
      serializers = [ContinueUpdateRollbackInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContinueUpdateRollbackInputBuilder b) {}

  /// The name or the unique ID of the stack that you want to continue rolling back.
  ///
  /// Don't specify the name of a nested stack (a stack that was created by using the `AWS::CloudFormation::Stack` resource). Instead, use this operation on the parent stack (the stack that contains the `AWS::CloudFormation::Stack` resource).
  String get stackName;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFormation assumes to roll back the stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always uses this role for all future operations on the stack. Provided that users have permission to operate on the stack, CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least permission.
  ///
  /// If you don't specify a value, CloudFormation uses the role that was previously associated with the stack. If no role is available, CloudFormation uses a temporary session that's generated from your user credentials.
  String? get roleArn;

  /// A list of the logical IDs of the resources that CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the `UPDATE_FAILED` state because a rollback failed. You can't specify resources that are in the `UPDATE_FAILED` state for other reasons, for example, because an update was canceled. To check why a resource update failed, use the DescribeStackResources action, and view the resource status reason.
  ///
  /// Specify this property to skip rolling back resources that CloudFormation can't successfully roll back. We recommend that you [troubleshoot](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) resources before skipping them. CloudFormation sets the status of the specified resources to `UPDATE_COMPLETE` and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable.
  ///
  /// Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources.
  ///
  /// To skip resources that are part of nested stacks, use the following format: `NestedStackName.ResourceLogicalID`. If you want to specify the logical ID of a stack resource (`Type: AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its corresponding embedded stack must be in one of the following states: `DELETE\_IN\_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
  ///
  /// Don't confuse a child stack's name with its corresponding logical ID defined in the parent stack. For an example of a continue update rollback operation with nested stacks, see [Using ResourcesToSkip to recover a nested stacks hierarchy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks).
  _i3.BuiltList<String>? get resourcesToSkip;

  /// A unique identifier for this `ContinueUpdateRollback` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name. You might retry `ContinueUpdateRollback` requests to ensure that CloudFormation successfully received them.
  String? get clientRequestToken;
  @override
  ContinueUpdateRollbackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        roleArn,
        resourcesToSkip,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContinueUpdateRollbackInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'resourcesToSkip',
        resourcesToSkip,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      );
    return helper.toString();
  }
}

class ContinueUpdateRollbackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ContinueUpdateRollbackInput> {
  const ContinueUpdateRollbackInputAwsQuerySerializer()
      : super('ContinueUpdateRollbackInput');

  @override
  Iterable<Type> get types => const [
        ContinueUpdateRollbackInput,
        _$ContinueUpdateRollbackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ContinueUpdateRollbackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContinueUpdateRollbackInputBuilder();
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
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourcesToSkip':
          result.resourcesToSkip.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    ContinueUpdateRollbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ContinueUpdateRollbackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ContinueUpdateRollbackInput(
      :stackName,
      :roleArn,
      :resourcesToSkip,
      :clientRequestToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (roleArn != null) {
      result$
        ..add(const _i1.XmlElementName('RoleARN'))
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (resourcesToSkip != null) {
      result$
        ..add(const _i1.XmlElementName('ResourcesToSkip'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourcesToSkip,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
    return result$;
  }
}
