// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.delete_stack_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_stack_input.g.dart';

/// The input for DeleteStack action.
abstract class DeleteStackInput
    with _i1.HttpInput<DeleteStackInput>, _i2.AWSEquatable<DeleteStackInput>
    implements Built<DeleteStackInput, DeleteStackInputBuilder> {
  /// The input for DeleteStack action.
  factory DeleteStackInput({
    required String stackName,
    List<String>? retainResources,
    String? roleArn,
    String? clientRequestToken,
  }) {
    return _$DeleteStackInput._(
      stackName: stackName,
      retainResources:
          retainResources == null ? null : _i3.BuiltList(retainResources),
      roleArn: roleArn,
      clientRequestToken: clientRequestToken,
    );
  }

  /// The input for DeleteStack action.
  factory DeleteStackInput.build(
      [void Function(DeleteStackInputBuilder) updates]) = _$DeleteStackInput;

  const DeleteStackInput._();

  factory DeleteStackInput.fromRequest(
    DeleteStackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteStackInput>> serializers = [
    DeleteStackInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStackInputBuilder b) {}

  /// The name or the unique stack ID that's associated with the stack.
  String get stackName;

  /// For stacks in the `DELETE_FAILED` state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, CloudFormation deletes the stack but doesn't delete the retained resources.
  ///
  /// Retaining resources is useful when you can't delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.
  _i3.BuiltList<String>? get retainResources;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFormation assumes to delete the stack. CloudFormation uses the role's credentials to make calls on your behalf.
  ///
  /// If you don't specify a value, CloudFormation uses the role that was previously associated with the stack. If no role is available, CloudFormation uses a temporary session that's generated from your user credentials.
  String? get roleArn;

  /// A unique identifier for this `DeleteStack` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry `DeleteStack` requests to ensure that CloudFormation successfully received them.
  ///
  /// All events initiated by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.
  ///
  /// In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format _Console-StackOperation-ID_, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
  String? get clientRequestToken;
  @override
  DeleteStackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        retainResources,
        roleArn,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStackInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'retainResources',
        retainResources,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      );
    return helper.toString();
  }
}

class DeleteStackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteStackInput> {
  const DeleteStackInputAwsQuerySerializer() : super('DeleteStackInput');

  @override
  Iterable<Type> get types => const [
        DeleteStackInput,
        _$DeleteStackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteStackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteStackInputBuilder();
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
        case 'RetainResources':
          result.retainResources.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DeleteStackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteStackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeleteStackInput(
      :stackName,
      :retainResources,
      :roleArn,
      :clientRequestToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (retainResources != null) {
      result$
        ..add(const _i1.XmlElementName('RetainResources'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          retainResources,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
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
