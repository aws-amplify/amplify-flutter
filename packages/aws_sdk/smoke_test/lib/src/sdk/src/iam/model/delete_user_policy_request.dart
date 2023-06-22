// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_user_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_user_policy_request.g.dart';

abstract class DeleteUserPolicyRequest
    with
        _i1.HttpInput<DeleteUserPolicyRequest>,
        _i2.AWSEquatable<DeleteUserPolicyRequest>
    implements Built<DeleteUserPolicyRequest, DeleteUserPolicyRequestBuilder> {
  factory DeleteUserPolicyRequest({
    required String userName,
    required String policyName,
  }) {
    return _$DeleteUserPolicyRequest._(
      userName: userName,
      policyName: policyName,
    );
  }

  factory DeleteUserPolicyRequest.build(
          [void Function(DeleteUserPolicyRequestBuilder) updates]) =
      _$DeleteUserPolicyRequest;

  const DeleteUserPolicyRequest._();

  factory DeleteUserPolicyRequest.fromRequest(
    DeleteUserPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteUserPolicyRequest>> serializers =
      [DeleteUserPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserPolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) identifying the user that the policy is embedded in.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The name identifying the policy document to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  DeleteUserPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUserPolicyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'policyName',
        policyName,
      );
    return helper.toString();
  }
}

class DeleteUserPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteUserPolicyRequest> {
  const DeleteUserPolicyRequestAwsQuerySerializer()
      : super('DeleteUserPolicyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUserPolicyRequest,
        _$DeleteUserPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteUserPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteUserPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    DeleteUserPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteUserPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteUserPolicyRequest(:userName, :policyName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
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
