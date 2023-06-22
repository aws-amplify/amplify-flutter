// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.assume_role_with_web_identity_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/sts/model/assumed_role_user.dart' as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart' as _i2;

part 'assume_role_with_web_identity_response.g.dart';

/// Contains the response to a successful AssumeRoleWithWebIdentity request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
abstract class AssumeRoleWithWebIdentityResponse
    with
        _i1.AWSEquatable<AssumeRoleWithWebIdentityResponse>
    implements
        Built<AssumeRoleWithWebIdentityResponse,
            AssumeRoleWithWebIdentityResponseBuilder> {
  /// Contains the response to a successful AssumeRoleWithWebIdentity request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleWithWebIdentityResponse({
    _i2.Credentials? credentials,
    String? subjectFromWebIdentityToken,
    _i3.AssumedRoleUser? assumedRoleUser,
    int? packedPolicySize,
    String? provider,
    String? audience,
    String? sourceIdentity,
  }) {
    return _$AssumeRoleWithWebIdentityResponse._(
      credentials: credentials,
      subjectFromWebIdentityToken: subjectFromWebIdentityToken,
      assumedRoleUser: assumedRoleUser,
      packedPolicySize: packedPolicySize,
      provider: provider,
      audience: audience,
      sourceIdentity: sourceIdentity,
    );
  }

  /// Contains the response to a successful AssumeRoleWithWebIdentity request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleWithWebIdentityResponse.build(
          [void Function(AssumeRoleWithWebIdentityResponseBuilder) updates]) =
      _$AssumeRoleWithWebIdentityResponse;

  const AssumeRoleWithWebIdentityResponse._();

  /// Constructs a [AssumeRoleWithWebIdentityResponse] from a [payload] and [response].
  factory AssumeRoleWithWebIdentityResponse.fromResponse(
    AssumeRoleWithWebIdentityResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<AssumeRoleWithWebIdentityResponse>>
      serializers = [AssumeRoleWithWebIdentityResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssumeRoleWithWebIdentityResponseBuilder b) {}

  /// The temporary security credentials, which include an access key ID, a secret access key, and a security token.
  ///
  /// The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
  _i2.Credentials? get credentials;

  /// The unique user identifier that is returned by the identity provider. This identifier is associated with the `WebIdentityToken` that was submitted with the `AssumeRoleWithWebIdentity` call. The identifier is typically unique to the user and the application that acquired the `WebIdentityToken` (pairwise identifier). For OpenID Connect ID tokens, this field contains the value returned by the identity provider as the token's `sub` (Subject) claim.
  String? get subjectFromWebIdentityToken;

  /// The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the `RoleSessionName` that you specified when you called `AssumeRole`.
  _i3.AssumedRoleUser? get assumedRoleUser;

  /// A percentage value that indicates the packed size of the session policies and session tags combined passed in the request. The request fails if the packed size is greater than 100 percent, which means the policies and tags exceeded the allowed space.
  int? get packedPolicySize;

  /// The issuing authority of the web identity token presented. For OpenID Connect ID tokens, this contains the value of the `iss` field. For OAuth 2.0 access tokens, this contains the value of the `ProviderId` parameter that was passed in the `AssumeRoleWithWebIdentity` request.
  String? get provider;

  /// The intended audience (also known as client ID) of the web identity token. This is traditionally the client identifier issued to the application that requested the web identity token.
  String? get audience;

  /// The value of the source identity that is returned in the JSON web token (JWT) from the identity provider.
  ///
  /// You can require users to set a source identity value when they assume a role. You do this by using the `sts:SourceIdentity` condition key in a role trust policy. That way, actions that are taken with the role are associated with that user. After the source identity is set, the value cannot be changed. It is present in the request for all actions that are taken by the role and persists across [chained role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts#iam-term-role-chaining) sessions. You can configure your identity provider to use an attribute associated with your users, like user name or email, as the source identity when calling `AssumeRoleWithWebIdentity`. You do this by adding a claim to the JSON web token. To learn more about OIDC tokens and claims, see [Using Tokens with User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-tokens-with-identity-providers.html) in the _Amazon Cognito Developer Guide_. For more information about using source identity, see [Monitor and control actions taken with assumed roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html) in the _IAM User Guide_.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String? get sourceIdentity;
  @override
  List<Object?> get props => [
        credentials,
        subjectFromWebIdentityToken,
        assumedRoleUser,
        packedPolicySize,
        provider,
        audience,
        sourceIdentity,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssumeRoleWithWebIdentityResponse')
          ..add(
            'credentials',
            credentials,
          )
          ..add(
            'subjectFromWebIdentityToken',
            subjectFromWebIdentityToken,
          )
          ..add(
            'assumedRoleUser',
            assumedRoleUser,
          )
          ..add(
            'packedPolicySize',
            packedPolicySize,
          )
          ..add(
            'provider',
            provider,
          )
          ..add(
            'audience',
            audience,
          )
          ..add(
            'sourceIdentity',
            sourceIdentity,
          );
    return helper.toString();
  }
}

class AssumeRoleWithWebIdentityResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<AssumeRoleWithWebIdentityResponse> {
  const AssumeRoleWithWebIdentityResponseAwsQuerySerializer()
      : super('AssumeRoleWithWebIdentityResponse');

  @override
  Iterable<Type> get types => const [
        AssumeRoleWithWebIdentityResponse,
        _$AssumeRoleWithWebIdentityResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AssumeRoleWithWebIdentityResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssumeRoleWithWebIdentityResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Credentials':
          result.credentials.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Credentials),
          ) as _i2.Credentials));
        case 'SubjectFromWebIdentityToken':
          result.subjectFromWebIdentityToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AssumedRoleUser':
          result.assumedRoleUser.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AssumedRoleUser),
          ) as _i3.AssumedRoleUser));
        case 'PackedPolicySize':
          result.packedPolicySize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Provider':
          result.provider = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Audience':
          result.audience = (serializers.deserialize(
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
    AssumeRoleWithWebIdentityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'AssumeRoleWithWebIdentityResponseResponse',
        _i4.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final AssumeRoleWithWebIdentityResponse(
      :credentials,
      :subjectFromWebIdentityToken,
      :assumedRoleUser,
      :packedPolicySize,
      :provider,
      :audience,
      :sourceIdentity
    ) = object;
    if (credentials != null) {
      result$
        ..add(const _i4.XmlElementName('Credentials'))
        ..add(serializers.serialize(
          credentials,
          specifiedType: const FullType(_i2.Credentials),
        ));
    }
    if (subjectFromWebIdentityToken != null) {
      result$
        ..add(const _i4.XmlElementName('SubjectFromWebIdentityToken'))
        ..add(serializers.serialize(
          subjectFromWebIdentityToken,
          specifiedType: const FullType(String),
        ));
    }
    if (assumedRoleUser != null) {
      result$
        ..add(const _i4.XmlElementName('AssumedRoleUser'))
        ..add(serializers.serialize(
          assumedRoleUser,
          specifiedType: const FullType(_i3.AssumedRoleUser),
        ));
    }
    if (packedPolicySize != null) {
      result$
        ..add(const _i4.XmlElementName('PackedPolicySize'))
        ..add(serializers.serialize(
          packedPolicySize,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (provider != null) {
      result$
        ..add(const _i4.XmlElementName('Provider'))
        ..add(serializers.serialize(
          provider,
          specifiedType: const FullType(String),
        ));
    }
    if (audience != null) {
      result$
        ..add(const _i4.XmlElementName('Audience'))
        ..add(serializers.serialize(
          audience,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceIdentity != null) {
      result$
        ..add(const _i4.XmlElementName('SourceIdentity'))
        ..add(serializers.serialize(
          sourceIdentity,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
