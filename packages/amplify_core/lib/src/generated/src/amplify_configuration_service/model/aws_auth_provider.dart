// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_auth_provider; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_custom.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_oidc.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_saml.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSAuthProvider extends _i1.SmithyUnion<AWSAuthProvider> {
  const AWSAuthProvider._();

  const factory AWSAuthProvider.cognito() = AWSAuthProviderCognito$;

  const factory AWSAuthProvider.google() = AWSAuthProviderGoogle$;

  const factory AWSAuthProvider.facebook() = AWSAuthProviderFacebook$;

  const factory AWSAuthProvider.amazon() = AWSAuthProviderAmazon$;

  const factory AWSAuthProvider.apple() = AWSAuthProviderApple$;

  factory AWSAuthProvider.oidc({
    required String name,
    required String issuer,
  }) =>
      AWSAuthProviderOidc$(_i2.AWSAuthProviderOidc(
        name: name,
        issuer: issuer,
      ));

  factory AWSAuthProvider.saml({
    required String name,
    String? providerArn,
  }) =>
      AWSAuthProviderSaml$(_i3.AWSAuthProviderSaml(
        name: name,
        providerArn: providerArn,
      ));

  factory AWSAuthProvider.custom({required String developerProvidedName}) =>
      AWSAuthProviderCustom$(_i4.AWSAuthProviderCustom(
          developerProvidedName: developerProvidedName));

  const factory AWSAuthProvider.sdkUnknown(
    String name,
    Object value,
  ) = AWSAuthProviderSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSAuthProvider>> serializers = [
    AWSAuthProviderSerializer()
  ];

  _i1.Unit? get cognito => null;
  _i1.Unit? get google => null;
  _i1.Unit? get facebook => null;
  _i1.Unit? get amazon => null;
  _i1.Unit? get apple => null;
  _i2.AWSAuthProviderOidc? get oidc => null;
  _i3.AWSAuthProviderSaml? get saml => null;
  _i4.AWSAuthProviderCustom? get custom => null;
  @override
  Object get value => (cognito ??
      google ??
      facebook ??
      amazon ??
      apple ??
      oidc ??
      saml ??
      custom)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSAuthProvider');
    if (cognito != null) {
      helper.add(
        r'cognito',
        cognito,
      );
    }
    if (google != null) {
      helper.add(
        r'google',
        google,
      );
    }
    if (facebook != null) {
      helper.add(
        r'facebook',
        facebook,
      );
    }
    if (amazon != null) {
      helper.add(
        r'amazon',
        amazon,
      );
    }
    if (apple != null) {
      helper.add(
        r'apple',
        apple,
      );
    }
    if (oidc != null) {
      helper.add(
        r'oidc',
        oidc,
      );
    }
    if (saml != null) {
      helper.add(
        r'saml',
        saml,
      );
    }
    if (custom != null) {
      helper.add(
        r'custom',
        custom,
      );
    }
    return helper.toString();
  }
}

final class AWSAuthProviderCognito$ extends AWSAuthProvider {
  const AWSAuthProviderCognito$() : super._();

  @override
  String get name => 'cognito';
  @override
  _i1.Unit get cognito => const _i1.Unit();
}

final class AWSAuthProviderGoogle$ extends AWSAuthProvider {
  const AWSAuthProviderGoogle$() : super._();

  @override
  String get name => 'google';
  @override
  _i1.Unit get google => const _i1.Unit();
}

final class AWSAuthProviderFacebook$ extends AWSAuthProvider {
  const AWSAuthProviderFacebook$() : super._();

  @override
  String get name => 'facebook';
  @override
  _i1.Unit get facebook => const _i1.Unit();
}

final class AWSAuthProviderAmazon$ extends AWSAuthProvider {
  const AWSAuthProviderAmazon$() : super._();

  @override
  String get name => 'amazon';
  @override
  _i1.Unit get amazon => const _i1.Unit();
}

final class AWSAuthProviderApple$ extends AWSAuthProvider {
  const AWSAuthProviderApple$() : super._();

  @override
  String get name => 'apple';
  @override
  _i1.Unit get apple => const _i1.Unit();
}

final class AWSAuthProviderOidc$ extends AWSAuthProvider {
  const AWSAuthProviderOidc$(this.oidc) : super._();

  @override
  final _i2.AWSAuthProviderOidc oidc;

  @override
  String get name => 'oidc';
}

final class AWSAuthProviderSaml$ extends AWSAuthProvider {
  const AWSAuthProviderSaml$(this.saml) : super._();

  @override
  final _i3.AWSAuthProviderSaml saml;

  @override
  String get name => 'saml';
}

final class AWSAuthProviderCustom$ extends AWSAuthProvider {
  const AWSAuthProviderCustom$(this.custom) : super._();

  @override
  final _i4.AWSAuthProviderCustom custom;

  @override
  String get name => 'custom';
}

final class AWSAuthProviderSdkUnknown$ extends AWSAuthProvider {
  const AWSAuthProviderSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSAuthProviderSerializer
    extends _i1.StructuredSmithySerializer<AWSAuthProvider> {
  const AWSAuthProviderSerializer() : super('AWSAuthProvider');

  @override
  Iterable<Type> get types => const [
        AWSAuthProvider,
        AWSAuthProviderCognito$,
        AWSAuthProviderGoogle$,
        AWSAuthProviderFacebook$,
        AWSAuthProviderAmazon$,
        AWSAuthProviderApple$,
        AWSAuthProviderOidc$,
        AWSAuthProviderSaml$,
        AWSAuthProviderCustom$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthProvider deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'cognito':
        return const AWSAuthProviderCognito$();
      case 'google':
        return const AWSAuthProviderGoogle$();
      case 'facebook':
        return const AWSAuthProviderFacebook$();
      case 'amazon':
        return const AWSAuthProviderAmazon$();
      case 'apple':
        return const AWSAuthProviderApple$();
      case 'oidc':
        return AWSAuthProviderOidc$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.AWSAuthProviderOidc),
        ) as _i2.AWSAuthProviderOidc));
      case 'saml':
        return AWSAuthProviderSaml$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.AWSAuthProviderSaml),
        ) as _i3.AWSAuthProviderSaml));
      case 'custom':
        return AWSAuthProviderCustom$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.AWSAuthProviderCustom),
        ) as _i4.AWSAuthProviderCustom));
    }
    return AWSAuthProvider.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSAuthProviderCognito$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSAuthProviderGoogle$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSAuthProviderFacebook$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSAuthProviderAmazon$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSAuthProviderApple$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSAuthProviderOidc$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.AWSAuthProviderOidc),
          ),
        AWSAuthProviderSaml$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.AWSAuthProviderSaml),
          ),
        AWSAuthProviderCustom$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i4.AWSAuthProviderCustom),
          ),
        AWSAuthProviderSdkUnknown$(:final value) => value,
      },
    ];
  }
}
