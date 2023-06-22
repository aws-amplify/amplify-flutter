// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_federation_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/sts/model/policy_descriptor_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/tag.dart' as _i4;

part 'get_federation_token_request.g.dart';

abstract class GetFederationTokenRequest
    with
        _i1.HttpInput<GetFederationTokenRequest>,
        _i2.AWSEquatable<GetFederationTokenRequest>
    implements
        Built<GetFederationTokenRequest, GetFederationTokenRequestBuilder> {
  factory GetFederationTokenRequest({
    required String name,
    String? policy,
    List<_i3.PolicyDescriptorType>? policyArns,
    int? durationSeconds,
    List<_i4.Tag>? tags,
  }) {
    return _$GetFederationTokenRequest._(
      name: name,
      policy: policy,
      policyArns: policyArns == null ? null : _i5.BuiltList(policyArns),
      durationSeconds: durationSeconds,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  factory GetFederationTokenRequest.build(
          [void Function(GetFederationTokenRequestBuilder) updates]) =
      _$GetFederationTokenRequest;

  const GetFederationTokenRequest._();

  factory GetFederationTokenRequest.fromRequest(
    GetFederationTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetFederationTokenRequest>>
      serializers = [GetFederationTokenRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFederationTokenRequestBuilder b) {}

  /// The name of the federated user. The name is used as an identifier for the temporary security credentials (such as `Bob`). For example, you can reference the federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String get name;

  /// An IAM policy in JSON format that you want to use as an inline session policy.
  ///
  /// You must pass an inline or managed [session policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies.
  ///
  /// This parameter is optional. However, if you do not pass any session policies, then the resulting federated user session has no permissions.
  ///
  /// When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// The resulting credentials can be used to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the `Principal` element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions that are granted by the session policies.
  ///
  /// The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  String? get policy;

  /// The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as a managed session policy. The policies must exist in the same account as the IAM user that is requesting federated access.
  ///
  /// You must pass an inline or managed [session policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. You can provide up to 10 managed policy ARNs. For more information about ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the Amazon Web Services General Reference.
  ///
  /// This parameter is optional. However, if you do not pass any session policies, then the resulting federated user session has no permissions.
  ///
  /// When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// The resulting credentials can be used to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the `Principal` element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions that are granted by the session policies.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  _i5.BuiltList<_i3.PolicyDescriptorType>? get policyArns;

  /// The duration, in seconds, that the session should last. Acceptable durations for federation sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the default. Sessions obtained using root user credentials are restricted to a maximum of 3,600 seconds (one hour). If the specified duration is longer than one hour, the session obtained by using root user credentials defaults to one hour.
  int? get durationSeconds;

  /// A list of session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// You can pass a session tag with the same key as a tag that is already attached to the user you are federating. When you do, session tags override a user tag with the same key.
  ///
  /// Tag key–value pairs are not case sensitive, but case is preserved. This means that you cannot have separate `Department` and `department` tag keys. Assume that the role has the `Department`=`Marketing` tag and you pass the `department`=`engineering` session tag. `Department` and `department` are not saved as separate tags, and the session tag passed in the request takes precedence over the role tag.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  GetFederationTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [
        name,
        policy,
        policyArns,
        durationSeconds,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetFederationTokenRequest')
      ..add(
        'name',
        name,
      )
      ..add(
        'policy',
        policy,
      )
      ..add(
        'policyArns',
        policyArns,
      )
      ..add(
        'durationSeconds',
        durationSeconds,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class GetFederationTokenRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetFederationTokenRequest> {
  const GetFederationTokenRequestAwsQuerySerializer()
      : super('GetFederationTokenRequest');

  @override
  Iterable<Type> get types => const [
        GetFederationTokenRequest,
        _$GetFederationTokenRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetFederationTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFederationTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Policy':
          result.policy = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetFederationTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetFederationTokenRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetFederationTokenRequest(
      :name,
      :policy,
      :policyArns,
      :durationSeconds,
      :tags
    ) = object;
    result$
      ..add(const _i1.XmlElementName('Name'))
      ..add(serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ));
    if (policy != null) {
      result$
        ..add(const _i1.XmlElementName('Policy'))
        ..add(serializers.serialize(
          policy,
          specifiedType: const FullType(String),
        ));
    }
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
    return result$;
  }
}
