// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_provider_oidc; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'auth_provider_oidc.g.dart';

abstract class AuthProviderOidc
    with _i1.AWSEquatable<AuthProviderOidc>
    implements Built<AuthProviderOidc, AuthProviderOidcBuilder> {
  factory AuthProviderOidc({
    required String name,
    required String issuer,
  }) {
    return _$AuthProviderOidc._(
      name: name,
      issuer: issuer,
    );
  }

  factory AuthProviderOidc.build(
      [void Function(AuthProviderOidcBuilder) updates]) = _$AuthProviderOidc;

  const AuthProviderOidc._();

  static const List<_i2.SmithySerializer<AuthProviderOidc>> serializers = [
    AuthProviderOidcSerializer()
  ];

  String get name;
  String get issuer;
  @override
  List<Object?> get props => [
        name,
        issuer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthProviderOidc')
      ..add(
        'name',
        name,
      )
      ..add(
        'issuer',
        issuer,
      );
    return helper.toString();
  }
}

class AuthProviderOidcSerializer
    extends _i2.StructuredSmithySerializer<AuthProviderOidc> {
  const AuthProviderOidcSerializer() : super('AuthProviderOidc');

  @override
  Iterable<Type> get types => const [
        AuthProviderOidc,
        _$AuthProviderOidc,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthProviderOidc deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthProviderOidcBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'issuer':
          result.issuer = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
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
    AuthProviderOidc object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthProviderOidc(:issuer, :name) = object;
    result$.addAll([
      'issuer',
      serializers.serialize(
        issuer,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
