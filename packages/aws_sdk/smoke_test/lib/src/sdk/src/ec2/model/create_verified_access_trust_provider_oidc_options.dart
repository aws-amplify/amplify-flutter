// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_trust_provider_oidc_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_verified_access_trust_provider_oidc_options.g.dart';

/// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `user` type.
abstract class CreateVerifiedAccessTrustProviderOidcOptions
    with
        _i1.AWSEquatable<CreateVerifiedAccessTrustProviderOidcOptions>
    implements
        Built<CreateVerifiedAccessTrustProviderOidcOptions,
            CreateVerifiedAccessTrustProviderOidcOptionsBuilder> {
  /// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `user` type.
  factory CreateVerifiedAccessTrustProviderOidcOptions({
    String? issuer,
    String? authorizationEndpoint,
    String? tokenEndpoint,
    String? userInfoEndpoint,
    String? clientId,
    String? clientSecret,
    String? scope,
  }) {
    return _$CreateVerifiedAccessTrustProviderOidcOptions._(
      issuer: issuer,
      authorizationEndpoint: authorizationEndpoint,
      tokenEndpoint: tokenEndpoint,
      userInfoEndpoint: userInfoEndpoint,
      clientId: clientId,
      clientSecret: clientSecret,
      scope: scope,
    );
  }

  /// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `user` type.
  factory CreateVerifiedAccessTrustProviderOidcOptions.build(
      [void Function(CreateVerifiedAccessTrustProviderOidcOptionsBuilder)
          updates]) = _$CreateVerifiedAccessTrustProviderOidcOptions;

  const CreateVerifiedAccessTrustProviderOidcOptions._();

  static const List<
          _i2.SmithySerializer<CreateVerifiedAccessTrustProviderOidcOptions>>
      serializers = [
    CreateVerifiedAccessTrustProviderOidcOptionsEc2QuerySerializer()
  ];

  /// The OIDC issuer.
  String? get issuer;

  /// The OIDC authorization endpoint.
  String? get authorizationEndpoint;

  /// The OIDC token endpoint.
  String? get tokenEndpoint;

  /// The OIDC user info endpoint.
  String? get userInfoEndpoint;

  /// The client identifier.
  String? get clientId;

  /// The client secret.
  String? get clientSecret;

  /// OpenID Connect (OIDC) scopes are used by an application during authentication to authorize access to a user's details. Each scope returns a specific set of user attributes.
  String? get scope;
  @override
  List<Object?> get props => [
        issuer,
        authorizationEndpoint,
        tokenEndpoint,
        userInfoEndpoint,
        clientId,
        clientSecret,
        scope,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVerifiedAccessTrustProviderOidcOptions')
      ..add(
        'issuer',
        issuer,
      )
      ..add(
        'authorizationEndpoint',
        authorizationEndpoint,
      )
      ..add(
        'tokenEndpoint',
        tokenEndpoint,
      )
      ..add(
        'userInfoEndpoint',
        userInfoEndpoint,
      )
      ..add(
        'clientId',
        clientId,
      )
      ..add(
        'clientSecret',
        '***SENSITIVE***',
      )
      ..add(
        'scope',
        scope,
      );
    return helper.toString();
  }
}

class CreateVerifiedAccessTrustProviderOidcOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateVerifiedAccessTrustProviderOidcOptions> {
  const CreateVerifiedAccessTrustProviderOidcOptionsEc2QuerySerializer()
      : super('CreateVerifiedAccessTrustProviderOidcOptions');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessTrustProviderOidcOptions,
        _$CreateVerifiedAccessTrustProviderOidcOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessTrustProviderOidcOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessTrustProviderOidcOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Issuer':
          result.issuer = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthorizationEndpoint':
          result.authorizationEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TokenEndpoint':
          result.tokenEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserInfoEndpoint':
          result.userInfoEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientSecret':
          result.clientSecret = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Scope':
          result.scope = (serializers.deserialize(
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
    CreateVerifiedAccessTrustProviderOidcOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessTrustProviderOidcOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessTrustProviderOidcOptions(
      :issuer,
      :authorizationEndpoint,
      :tokenEndpoint,
      :userInfoEndpoint,
      :clientId,
      :clientSecret,
      :scope
    ) = object;
    if (issuer != null) {
      result$
        ..add(const _i2.XmlElementName('Issuer'))
        ..add(serializers.serialize(
          issuer,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizationEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('AuthorizationEndpoint'))
        ..add(serializers.serialize(
          authorizationEndpoint,
          specifiedType: const FullType(String),
        ));
    }
    if (tokenEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('TokenEndpoint'))
        ..add(serializers.serialize(
          tokenEndpoint,
          specifiedType: const FullType(String),
        ));
    }
    if (userInfoEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('UserInfoEndpoint'))
        ..add(serializers.serialize(
          userInfoEndpoint,
          specifiedType: const FullType(String),
        ));
    }
    if (clientId != null) {
      result$
        ..add(const _i2.XmlElementName('ClientId'))
        ..add(serializers.serialize(
          clientId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientSecret != null) {
      result$
        ..add(const _i2.XmlElementName('ClientSecret'))
        ..add(serializers.serialize(
          clientSecret,
          specifiedType: const FullType(String),
        ));
    }
    if (scope != null) {
      result$
        ..add(const _i2.XmlElementName('Scope'))
        ..add(serializers.serialize(
          scope,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
