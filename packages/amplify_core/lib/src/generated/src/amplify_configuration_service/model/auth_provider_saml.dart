// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_provider_saml; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'auth_provider_saml.g.dart';

abstract class AuthProviderSaml
    with _i1.AWSEquatable<AuthProviderSaml>
    implements Built<AuthProviderSaml, AuthProviderSamlBuilder> {
  factory AuthProviderSaml({
    required String name,
    String? providerArn,
  }) {
    return _$AuthProviderSaml._(
      name: name,
      providerArn: providerArn,
    );
  }

  factory AuthProviderSaml.build(
      [void Function(AuthProviderSamlBuilder) updates]) = _$AuthProviderSaml;

  const AuthProviderSaml._();

  static const List<_i2.SmithySerializer<AuthProviderSaml>> serializers = [
    AuthProviderSamlSerializer()
  ];

  String get name;
  String? get providerArn;
  @override
  List<Object?> get props => [
        name,
        providerArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthProviderSaml')
      ..add(
        'name',
        name,
      )
      ..add(
        'providerArn',
        providerArn,
      );
    return helper.toString();
  }
}

class AuthProviderSamlSerializer
    extends _i2.StructuredSmithySerializer<AuthProviderSaml> {
  const AuthProviderSamlSerializer() : super('AuthProviderSaml');

  @override
  Iterable<Type> get types => const [
        AuthProviderSaml,
        _$AuthProviderSaml,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthProviderSaml deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthProviderSamlBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'providerArn':
          result.providerArn = (serializers.deserialize(
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
    AuthProviderSaml object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthProviderSaml(:name, :providerArn) = object;
    result$.addAll([
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    if (providerArn != null) {
      result$
        ..add('providerArn')
        ..add(serializers.serialize(
          providerArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
