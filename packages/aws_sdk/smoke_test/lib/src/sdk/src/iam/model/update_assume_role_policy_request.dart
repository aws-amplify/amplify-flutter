// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_assume_role_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_assume_role_policy_request.g.dart';

abstract class UpdateAssumeRolePolicyRequest
    with
        _i1.HttpInput<UpdateAssumeRolePolicyRequest>,
        _i2.AWSEquatable<UpdateAssumeRolePolicyRequest>
    implements
        Built<UpdateAssumeRolePolicyRequest,
            UpdateAssumeRolePolicyRequestBuilder> {
  factory UpdateAssumeRolePolicyRequest({
    required String roleName,
    required String policyDocument,
  }) {
    return _$UpdateAssumeRolePolicyRequest._(
      roleName: roleName,
      policyDocument: policyDocument,
    );
  }

  factory UpdateAssumeRolePolicyRequest.build(
          [void Function(UpdateAssumeRolePolicyRequestBuilder) updates]) =
      _$UpdateAssumeRolePolicyRequest;

  const UpdateAssumeRolePolicyRequest._();

  factory UpdateAssumeRolePolicyRequest.fromRequest(
    UpdateAssumeRolePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateAssumeRolePolicyRequest>>
      serializers = [UpdateAssumeRolePolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAssumeRolePolicyRequestBuilder b) {}

  /// The name of the role to update with the new policy.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The policy that grants an entity permission to assume the role.
  ///
  /// You must provide policies in JSON format in IAM. However, for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get policyDocument;
  @override
  UpdateAssumeRolePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateAssumeRolePolicyRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'policyDocument',
        policyDocument,
      );
    return helper.toString();
  }
}

class UpdateAssumeRolePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateAssumeRolePolicyRequest> {
  const UpdateAssumeRolePolicyRequestAwsQuerySerializer()
      : super('UpdateAssumeRolePolicyRequest');

  @override
  Iterable<Type> get types => const [
        UpdateAssumeRolePolicyRequest,
        _$UpdateAssumeRolePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateAssumeRolePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAssumeRolePolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
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
    UpdateAssumeRolePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateAssumeRolePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateAssumeRolePolicyRequest(:roleName, :policyDocument) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        policyDocument,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
