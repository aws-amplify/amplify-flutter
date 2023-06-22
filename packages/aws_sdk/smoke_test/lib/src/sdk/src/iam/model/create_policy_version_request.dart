// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_policy_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_policy_version_request.g.dart';

abstract class CreatePolicyVersionRequest
    with
        _i1.HttpInput<CreatePolicyVersionRequest>,
        _i2.AWSEquatable<CreatePolicyVersionRequest>
    implements
        Built<CreatePolicyVersionRequest, CreatePolicyVersionRequestBuilder> {
  factory CreatePolicyVersionRequest({
    required String policyArn,
    required String policyDocument,
    bool? setAsDefault,
  }) {
    setAsDefault ??= false;
    return _$CreatePolicyVersionRequest._(
      policyArn: policyArn,
      policyDocument: policyDocument,
      setAsDefault: setAsDefault,
    );
  }

  factory CreatePolicyVersionRequest.build(
          [void Function(CreatePolicyVersionRequestBuilder) updates]) =
      _$CreatePolicyVersionRequest;

  const CreatePolicyVersionRequest._();

  factory CreatePolicyVersionRequest.fromRequest(
    CreatePolicyVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreatePolicyVersionRequest>>
      serializers = [CreatePolicyVersionRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePolicyVersionRequestBuilder b) {
    b.setAsDefault = false;
  }

  /// The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;

  /// The JSON policy document that you want to use as the content for this new version of the policy.
  ///
  /// You must provide policies in JSON format in IAM. However, for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  ///
  /// The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and STS character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get policyDocument;

  /// Specifies whether to set this version as the policy's default version.
  ///
  /// When this parameter is `true`, the new policy version becomes the operative version. That is, it becomes the version that is in effect for the IAM users, groups, and roles that the policy is attached to.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  bool get setAsDefault;
  @override
  CreatePolicyVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyArn,
        policyDocument,
        setAsDefault,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePolicyVersionRequest')
      ..add(
        'policyArn',
        policyArn,
      )
      ..add(
        'policyDocument',
        policyDocument,
      )
      ..add(
        'setAsDefault',
        setAsDefault,
      );
    return helper.toString();
  }
}

class CreatePolicyVersionRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePolicyVersionRequest> {
  const CreatePolicyVersionRequestAwsQuerySerializer()
      : super('CreatePolicyVersionRequest');

  @override
  Iterable<Type> get types => const [
        CreatePolicyVersionRequest,
        _$CreatePolicyVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreatePolicyVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePolicyVersionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyArn':
          result.policyArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SetAsDefault':
          result.setAsDefault = (serializers.deserialize(
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
    CreatePolicyVersionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreatePolicyVersionRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyVersionRequest(
      :policyArn,
      :policyDocument,
      :setAsDefault
    ) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        policyArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        policyDocument,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SetAsDefault'))
      ..add(serializers.serialize(
        setAsDefault,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
