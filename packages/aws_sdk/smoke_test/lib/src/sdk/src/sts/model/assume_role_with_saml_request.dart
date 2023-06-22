// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.assume_role_with_saml_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/sts/model/policy_descriptor_type.dart'
    as _i3;

part 'assume_role_with_saml_request.g.dart';

abstract class AssumeRoleWithSamlRequest
    with
        _i1.HttpInput<AssumeRoleWithSamlRequest>,
        _i2.AWSEquatable<AssumeRoleWithSamlRequest>
    implements
        Built<AssumeRoleWithSamlRequest, AssumeRoleWithSamlRequestBuilder> {
  factory AssumeRoleWithSamlRequest({
    required String roleArn,
    required String principalArn,
    required String samlAssertion,
    List<_i3.PolicyDescriptorType>? policyArns,
    String? policy,
    int? durationSeconds,
  }) {
    return _$AssumeRoleWithSamlRequest._(
      roleArn: roleArn,
      principalArn: principalArn,
      samlAssertion: samlAssertion,
      policyArns: policyArns == null ? null : _i4.BuiltList(policyArns),
      policy: policy,
      durationSeconds: durationSeconds,
    );
  }

  factory AssumeRoleWithSamlRequest.build(
          [void Function(AssumeRoleWithSamlRequestBuilder) updates]) =
      _$AssumeRoleWithSamlRequest;

  const AssumeRoleWithSamlRequest._();

  factory AssumeRoleWithSamlRequest.fromRequest(
    AssumeRoleWithSamlRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssumeRoleWithSamlRequest>>
      serializers = [AssumeRoleWithSamlRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssumeRoleWithSamlRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the role that the caller is assuming.
  String get roleArn;

  /// The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.
  String get principalArn;

  /// The base64 encoded SAML authentication response provided by the IdP.
  ///
  /// For more information, see [Configuring a Relying Party and Adding Claims](https://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html) in the _IAM User Guide_.
  String get samlAssertion;

  /// The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as managed session policies. The policies must exist in the same account as the role.
  ///
  /// This parameter is optional. You can provide up to 10 managed policy ARNs. However, the plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. For more information about ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the Amazon Web Services General Reference.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  _i4.BuiltList<_i3.PolicyDescriptorType>? get policyArns;

  /// An IAM policy in JSON format that you want to use as an inline session policy.
  ///
  /// This parameter is optional. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  String? get policy;

  /// The duration, in seconds, of the role session. Your role session lasts for the duration that you specify for the `DurationSeconds` parameter, or until the time specified in the SAML authentication response's `SessionNotOnOrAfter` value, whichever is shorter. You can provide a `DurationSeconds` value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. If you specify a value higher than this setting, the operation fails. For example, if you specify a session duration of 12 hours, but your administrator set the maximum session duration to 6 hours, your operation fails. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_.
  ///
  /// By default, the value is set to `3600` seconds.
  ///
  /// The `DurationSeconds` parameter is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a `SessionDuration` parameter that specifies the maximum length of the console session. For more information, see [Creating a URL that Enables Federated Users to Access the Amazon Web Services Management Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html) in the _IAM User Guide_.
  int? get durationSeconds;
  @override
  AssumeRoleWithSamlRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleArn,
        principalArn,
        samlAssertion,
        policyArns,
        policy,
        durationSeconds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssumeRoleWithSamlRequest')
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'principalArn',
        principalArn,
      )
      ..add(
        'samlAssertion',
        '***SENSITIVE***',
      )
      ..add(
        'policyArns',
        policyArns,
      )
      ..add(
        'policy',
        policy,
      )
      ..add(
        'durationSeconds',
        durationSeconds,
      );
    return helper.toString();
  }
}

class AssumeRoleWithSamlRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<AssumeRoleWithSamlRequest> {
  const AssumeRoleWithSamlRequestAwsQuerySerializer()
      : super('AssumeRoleWithSamlRequest');

  @override
  Iterable<Type> get types => const [
        AssumeRoleWithSamlRequest,
        _$AssumeRoleWithSamlRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AssumeRoleWithSamlRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssumeRoleWithSamlRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleArn':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrincipalArn':
          result.principalArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SAMLAssertion':
          result.samlAssertion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyArns':
          result.policyArns.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.PolicyDescriptorType)],
            ),
          ) as _i4.BuiltList<_i3.PolicyDescriptorType>));
        case 'Policy':
          result.policy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DurationSeconds':
          result.durationSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssumeRoleWithSamlRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssumeRoleWithSamlRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final AssumeRoleWithSamlRequest(
      :roleArn,
      :principalArn,
      :samlAssertion,
      :policyArns,
      :policy,
      :durationSeconds
    ) = object;
    result$
      ..add(const _i1.XmlElementName('RoleArn'))
      ..add(serializers.serialize(
        roleArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PrincipalArn'))
      ..add(serializers.serialize(
        principalArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SAMLAssertion'))
      ..add(serializers.serialize(
        samlAssertion,
        specifiedType: const FullType(String),
      ));
    if (policyArns != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyArns'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyArns,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.PolicyDescriptorType)],
          ),
        ));
    }
    if (policy != null) {
      result$
        ..add(const _i1.XmlElementName('Policy'))
        ..add(serializers.serialize(
          policy,
          specifiedType: const FullType(String),
        ));
    }
    if (durationSeconds != null) {
      result$
        ..add(const _i1.XmlElementName('DurationSeconds'))
        ..add(serializers.serialize(
          durationSeconds,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
