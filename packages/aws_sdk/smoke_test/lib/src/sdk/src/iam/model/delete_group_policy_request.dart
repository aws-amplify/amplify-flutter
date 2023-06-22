// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_group_policy_request.g.dart';

abstract class DeleteGroupPolicyRequest
    with
        _i1.HttpInput<DeleteGroupPolicyRequest>,
        _i2.AWSEquatable<DeleteGroupPolicyRequest>
    implements
        Built<DeleteGroupPolicyRequest, DeleteGroupPolicyRequestBuilder> {
  factory DeleteGroupPolicyRequest({
    required String groupName,
    required String policyName,
  }) {
    return _$DeleteGroupPolicyRequest._(
      groupName: groupName,
      policyName: policyName,
    );
  }

  factory DeleteGroupPolicyRequest.build(
          [void Function(DeleteGroupPolicyRequestBuilder) updates]) =
      _$DeleteGroupPolicyRequest;

  const DeleteGroupPolicyRequest._();

  factory DeleteGroupPolicyRequest.fromRequest(
    DeleteGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteGroupPolicyRequest>>
      serializers = [DeleteGroupPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteGroupPolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) identifying the group that the policy is embedded in.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The name identifying the policy document to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  DeleteGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteGroupPolicyRequest')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'policyName',
        policyName,
      );
    return helper.toString();
  }
}

class DeleteGroupPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteGroupPolicyRequest> {
  const DeleteGroupPolicyRequestAwsQuerySerializer()
      : super('DeleteGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteGroupPolicyRequest,
        _$DeleteGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteGroupPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
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
    DeleteGroupPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteGroupPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteGroupPolicyRequest(:groupName, :policyName) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        policyName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
