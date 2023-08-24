// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_hosted_ui_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'auth_hosted_ui_config.g.dart';

abstract class AuthHostedUiConfig
    with _i1.AWSEquatable<AuthHostedUiConfig>
    implements Built<AuthHostedUiConfig, AuthHostedUiConfigBuilder> {
  factory AuthHostedUiConfig({
    String? clientId,
    String? clientSecret,
    required String domainName,
    required List<Uri> signInRedirectUris,
    required List<Uri> signOutRedirectUris,
    required List<String> scopes,
    Uri? signInUri,
    Uri? signOutUri,
    Uri? tokenUri,
  }) {
    return _$AuthHostedUiConfig._(
      clientId: clientId,
      clientSecret: clientSecret,
      domainName: domainName,
      signInRedirectUris: _i2.BuiltList(signInRedirectUris),
      signOutRedirectUris: _i2.BuiltList(signOutRedirectUris),
      scopes: _i2.BuiltList(scopes),
      signInUri: signInUri,
      signOutUri: signOutUri,
      tokenUri: tokenUri,
    );
  }

  factory AuthHostedUiConfig.build(
          [void Function(AuthHostedUiConfigBuilder) updates]) =
      _$AuthHostedUiConfig;

  const AuthHostedUiConfig._();

  static const List<_i3.SmithySerializer<AuthHostedUiConfig>> serializers = [
    AuthHostedUiConfigSerializer()
  ];

  String? get clientId;
  String? get clientSecret;

  /// The host component of a URI
  String get domainName;
  _i2.BuiltList<Uri> get signInRedirectUris;
  _i2.BuiltList<Uri> get signOutRedirectUris;
  _i2.BuiltList<String> get scopes;

  /// A valid RFC 3986 URI
  Uri? get signInUri;

  /// A valid RFC 3986 URI
  Uri? get signOutUri;

  /// A valid RFC 3986 URI
  Uri? get tokenUri;
  @override
  List<Object?> get props => [
        clientId,
        clientSecret,
        domainName,
        signInRedirectUris,
        signOutRedirectUris,
        scopes,
        signInUri,
        signOutUri,
        tokenUri,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthHostedUiConfig')
      ..add(
        'clientId',
        clientId,
      )
      ..add(
        'clientSecret',
        clientSecret,
      )
      ..add(
        'domainName',
        domainName,
      )
      ..add(
        'signInRedirectUris',
        signInRedirectUris,
      )
      ..add(
        'signOutRedirectUris',
        signOutRedirectUris,
      )
      ..add(
        'scopes',
        scopes,
      )
      ..add(
        'signInUri',
        signInUri,
      )
      ..add(
        'signOutUri',
        signOutUri,
      )
      ..add(
        'tokenUri',
        tokenUri,
      );
    return helper.toString();
  }
}

class AuthHostedUiConfigSerializer
    extends _i3.StructuredSmithySerializer<AuthHostedUiConfig> {
  const AuthHostedUiConfigSerializer() : super('AuthHostedUiConfig');

  @override
  Iterable<Type> get types => const [
        AuthHostedUiConfig,
        _$AuthHostedUiConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthHostedUiConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthHostedUiConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientId':
          result.clientId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientSecret':
          result.clientSecret = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domainName':
          result.domainName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'scopes':
          result.scopes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'signInRedirectUris':
          result.signInRedirectUris.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Uri)],
            ),
          ) as _i2.BuiltList<Uri>));
        case 'signInUri':
          result.signInUri = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'signOutRedirectUris':
          result.signOutRedirectUris.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Uri)],
            ),
          ) as _i2.BuiltList<Uri>));
        case 'signOutUri':
          result.signOutUri = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'tokenUri':
          result.tokenUri = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthHostedUiConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthHostedUiConfig(
      :clientId,
      :clientSecret,
      :domainName,
      :scopes,
      :signInRedirectUris,
      :signInUri,
      :signOutRedirectUris,
      :signOutUri,
      :tokenUri
    ) = object;
    result$.addAll([
      'domainName',
      serializers.serialize(
        domainName,
        specifiedType: const FullType(String),
      ),
      'scopes',
      serializers.serialize(
        scopes,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ),
      'signInRedirectUris',
      serializers.serialize(
        signInRedirectUris,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(Uri)],
        ),
      ),
      'signOutRedirectUris',
      serializers.serialize(
        signOutRedirectUris,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(Uri)],
        ),
      ),
    ]);
    if (clientId != null) {
      result$
        ..add('clientId')
        ..add(serializers.serialize(
          clientId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientSecret != null) {
      result$
        ..add('clientSecret')
        ..add(serializers.serialize(
          clientSecret,
          specifiedType: const FullType(String),
        ));
    }
    if (signInUri != null) {
      result$
        ..add('signInUri')
        ..add(serializers.serialize(
          signInUri,
          specifiedType: const FullType(Uri),
        ));
    }
    if (signOutUri != null) {
      result$
        ..add('signOutUri')
        ..add(serializers.serialize(
          signOutUri,
          specifiedType: const FullType(Uri),
        ));
    }
    if (tokenUri != null) {
      result$
        ..add('tokenUri')
        ..add(serializers.serialize(
          tokenUri,
          specifiedType: const FullType(Uri),
        ));
    }
    return result$;
  }
}
