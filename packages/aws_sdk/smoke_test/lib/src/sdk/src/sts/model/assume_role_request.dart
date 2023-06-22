// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.assume_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/sts/model/policy_descriptor_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/tag.dart' as _i4;

part 'assume_role_request.g.dart';

abstract class AssumeRoleRequest
    with _i1.HttpInput<AssumeRoleRequest>, _i2.AWSEquatable<AssumeRoleRequest>
    implements Built<AssumeRoleRequest, AssumeRoleRequestBuilder> {
  factory AssumeRoleRequest({
    required String roleArn,
    required String roleSessionName,
    List<_i3.PolicyDescriptorType>? policyArns,
    String? policy,
    int? durationSeconds,
    List<_i4.Tag>? tags,
    List<String>? transitiveTagKeys,
    String? externalId,
    String? serialNumber,
    String? tokenCode,
    String? sourceIdentity,
  }) {
    return _$AssumeRoleRequest._(
      roleArn: roleArn,
      roleSessionName: roleSessionName,
      policyArns: policyArns == null ? null : _i5.BuiltList(policyArns),
      policy: policy,
      durationSeconds: durationSeconds,
      tags: tags == null ? null : _i5.BuiltList(tags),
      transitiveTagKeys:
          transitiveTagKeys == null ? null : _i5.BuiltList(transitiveTagKeys),
      externalId: externalId,
      serialNumber: serialNumber,
      tokenCode: tokenCode,
      sourceIdentity: sourceIdentity,
    );
  }

  factory AssumeRoleRequest.build(
      [void Function(AssumeRoleRequestBuilder) updates]) = _$AssumeRoleRequest;

  const AssumeRoleRequest._();

  factory AssumeRoleRequest.fromRequest(
    AssumeRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssumeRoleRequest>> serializers = [
    AssumeRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssumeRoleRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the role to assume.
  String get roleArn;

  /// An identifier for the assumed role session.
  ///
  /// Use the role session name to uniquely identify a session when the same role is assumed by different principals or for different reasons. In cross-account scenarios, the role session name is visible to, and can be logged by the account that owns the role. The role session name is also used in the ARN of the assumed role principal. This means that subsequent cross-account API requests that use the temporary security credentials will expose the role session name to the external account in their CloudTrail logs.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String get roleSessionName;

  /// The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as managed session policies. The policies must exist in the same account as the role.
  ///
  /// This parameter is optional. You can provide up to 10 managed policy ARNs. However, the plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. For more information about ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the Amazon Web Services General Reference.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  _i5.BuiltList<_i3.PolicyDescriptorType>? get policyArns;

  /// An IAM policy in JSON format that you want to use as an inline session policy.
  ///
  /// This parameter is optional. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  String? get policy;

  /// The duration, in seconds, of the role session. The value specified can range from 900 seconds (15 minutes) up to the maximum session duration set for the role. The maximum session duration setting can have a value from 1 hour to 12 hours. If you specify a value higher than this setting or the administrator setting (whichever is lower), the operation fails. For example, if you specify a session duration of 12 hours, but your administrator set the maximum session duration to 6 hours, your operation fails.
  ///
  /// Role chaining limits your Amazon Web Services CLI or Amazon Web Services API role session to a maximum of one hour. When you use the `AssumeRole` API operation to assume a role, you can specify the duration of your role session with the `DurationSeconds` parameter. You can specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum session duration setting for your role. However, if you assume a role using role chaining and provide a `DurationSeconds` parameter value greater than one hour, the operation fails. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_.
  ///
  /// By default, the value is set to `3600` seconds.
  ///
  /// The `DurationSeconds` parameter is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a `SessionDuration` parameter that specifies the maximum length of the console session. For more information, see [Creating a URL that Enables Federated Users to Access the Amazon Web Services Management Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html) in the _IAM User Guide_.
  int? get durationSeconds;

  /// A list of session tags that you want to pass. Each session tag consists of a key name and an associated value. For more information about session tags, see [Tagging Amazon Web Services STS Sessions](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters, and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// You can pass a session tag with the same key as a tag that is already attached to the role. When you do, session tags override a role tag with the same key.
  ///
  /// Tag key–value pairs are not case sensitive, but case is preserved. This means that you cannot have separate `Department` and `department` tag keys. Assume that the role has the `Department`=`Marketing` tag and you pass the `department`=`engineering` session tag. `Department` and `department` are not saved as separate tags, and the session tag passed in the request takes precedence over the role tag.
  ///
  /// Additionally, if you used temporary credentials to perform this operation, the new session inherits any transitive session tags from the calling session. If you pass a session tag with the same key as an inherited tag, the operation fails. To view the inherited tags for a session, see the CloudTrail logs. For more information, see [Viewing Session Tags in CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_ctlogs) in the _IAM User Guide_.
  _i5.BuiltList<_i4.Tag>? get tags;

  /// A list of keys for session tags that you want to set as transitive. If you set a tag key as transitive, the corresponding key and value passes to subsequent sessions in a role chain. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
  ///
  /// This parameter is optional. When you set session tags as transitive, the session policy and session tags packed binary limit is not affected.
  ///
  /// If you choose not to specify a transitive tag key, then no tags are passed from this session to any subsequent sessions.
  _i5.BuiltList<String>? get transitiveTagKeys;

  /// A unique identifier that might be required when you assume a role in another account. If the administrator of the account to which the role belongs provided you with an external ID, then provide that value in the `ExternalId` parameter. This value can be any string, such as a passphrase or account number. A cross-account role is usually set up to trust everyone in an account. Therefore, the administrator of the trusting account might send an external ID to the administrator of the trusted account. That way, only someone with the ID can assume the role, rather than everyone in the account. For more information about the external ID, see [How to Use an External ID When Granting Access to Your Amazon Web Services Resources to a Third Party](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html) in the _IAM User Guide_.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-
  String? get externalId;

  /// The identification number of the MFA device that is associated with the user who is making the `AssumeRole` call. Specify this value if the trust policy of the role being assumed includes a condition that requires MFA authentication. The value is either the serial number for a hardware device (such as `GAHT12345678`) or an Amazon Resource Name (ARN) for a virtual device (such as `arn:aws:iam::123456789012:mfa/user`).
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String? get serialNumber;

  /// The value provided by the MFA device, if the trust policy of the role being assumed requires MFA. (In other words, if the policy includes a condition that tests for MFA). If the role being assumed requires MFA and if the `TokenCode` value is missing or expired, the `AssumeRole` call returns an "access denied" error.
  ///
  /// The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.
  String? get tokenCode;

  /// The source identity specified by the principal that is calling the `AssumeRole` operation.
  ///
  /// You can require users to specify a source identity when they assume a role. You do this by using the `sts:SourceIdentity` condition key in a role trust policy. You can use source identity information in CloudTrail logs to determine who took actions with a role. You can use the `aws:SourceIdentity` condition key to further control access to Amazon Web Services resources based on the value of source identity. For more information about using source identity, see [Monitor and control actions taken with assumed roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html) in the _IAM User Guide_.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-. You cannot use a value that begins with the text `aws:`. This prefix is reserved for Amazon Web Services internal use.
  String? get sourceIdentity;
  @override
  AssumeRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleArn,
        roleSessionName,
        policyArns,
        policy,
        durationSeconds,
        tags,
        transitiveTagKeys,
        externalId,
        serialNumber,
        tokenCode,
        sourceIdentity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssumeRoleRequest')
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'roleSessionName',
        roleSessionName,
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
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'transitiveTagKeys',
        transitiveTagKeys,
      )
      ..add(
        'externalId',
        externalId,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'tokenCode',
        tokenCode,
      )
      ..add(
        'sourceIdentity',
        sourceIdentity,
      );
    return helper.toString();
  }
}

class AssumeRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<AssumeRoleRequest> {
  const AssumeRoleRequestAwsQuerySerializer() : super('AssumeRoleRequest');

  @override
  Iterable<Type> get types => const [
        AssumeRoleRequest,
        _$AssumeRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AssumeRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssumeRoleRequestBuilder();
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
        case 'RoleSessionName':
          result.roleSessionName = (serializers.deserialize(
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
              _i5.BuiltList,
              [FullType(_i3.PolicyDescriptorType)],
            ),
          ) as _i5.BuiltList<_i3.PolicyDescriptorType>));
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
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Tag)],
            ),
          ) as _i5.BuiltList<_i4.Tag>));
        case 'TransitiveTagKeys':
          result.transitiveTagKeys.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'ExternalId':
          result.externalId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TokenCode':
          result.tokenCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceIdentity':
          result.sourceIdentity = (serializers.deserialize(
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
    AssumeRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssumeRoleRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final AssumeRoleRequest(
      :roleArn,
      :roleSessionName,
      :policyArns,
      :policy,
      :durationSeconds,
      :tags,
      :transitiveTagKeys,
      :externalId,
      :serialNumber,
      :tokenCode,
      :sourceIdentity
    ) = object;
    result$
      ..add(const _i1.XmlElementName('RoleArn'))
      ..add(serializers.serialize(
        roleArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('RoleSessionName'))
      ..add(serializers.serialize(
        roleSessionName,
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
            _i5.BuiltList,
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
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (transitiveTagKeys != null) {
      result$
        ..add(const _i1.XmlElementName('TransitiveTagKeys'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          transitiveTagKeys,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (externalId != null) {
      result$
        ..add(const _i1.XmlElementName('ExternalId'))
        ..add(serializers.serialize(
          externalId,
          specifiedType: const FullType(String),
        ));
    }
    if (serialNumber != null) {
      result$
        ..add(const _i1.XmlElementName('SerialNumber'))
        ..add(serializers.serialize(
          serialNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (tokenCode != null) {
      result$
        ..add(const _i1.XmlElementName('TokenCode'))
        ..add(serializers.serialize(
          tokenCode,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceIdentity != null) {
      result$
        ..add(const _i1.XmlElementName('SourceIdentity'))
        ..add(serializers.serialize(
          sourceIdentity,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
