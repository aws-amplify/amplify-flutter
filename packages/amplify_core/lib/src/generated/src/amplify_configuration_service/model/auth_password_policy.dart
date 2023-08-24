// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_password_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'auth_password_policy.g.dart';

abstract class AuthPasswordPolicy
    with _i1.AWSEquatable<AuthPasswordPolicy>
    implements Built<AuthPasswordPolicy, AuthPasswordPolicyBuilder> {
  factory AuthPasswordPolicy({
    int? minLength,
    bool? requiresLowercase,
    bool? requiresUppercase,
    bool? requiresNumbers,
    bool? requiresSymbols,
  }) {
    requiresLowercase ??= false;
    requiresUppercase ??= false;
    requiresNumbers ??= false;
    requiresSymbols ??= false;
    return _$AuthPasswordPolicy._(
      minLength: minLength,
      requiresLowercase: requiresLowercase,
      requiresUppercase: requiresUppercase,
      requiresNumbers: requiresNumbers,
      requiresSymbols: requiresSymbols,
    );
  }

  factory AuthPasswordPolicy.build(
          [void Function(AuthPasswordPolicyBuilder) updates]) =
      _$AuthPasswordPolicy;

  const AuthPasswordPolicy._();

  static const List<_i2.SmithySerializer<AuthPasswordPolicy>> serializers = [
    AuthPasswordPolicySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthPasswordPolicyBuilder b) {
    b
      ..requiresLowercase = false
      ..requiresUppercase = false
      ..requiresNumbers = false
      ..requiresSymbols = false;
  }

  int? get minLength;
  bool get requiresLowercase;
  bool get requiresUppercase;
  bool get requiresNumbers;
  bool get requiresSymbols;
  @override
  List<Object?> get props => [
        minLength,
        requiresLowercase,
        requiresUppercase,
        requiresNumbers,
        requiresSymbols,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthPasswordPolicy')
      ..add(
        'minLength',
        minLength,
      )
      ..add(
        'requiresLowercase',
        requiresLowercase,
      )
      ..add(
        'requiresUppercase',
        requiresUppercase,
      )
      ..add(
        'requiresNumbers',
        requiresNumbers,
      )
      ..add(
        'requiresSymbols',
        requiresSymbols,
      );
    return helper.toString();
  }
}

class AuthPasswordPolicySerializer
    extends _i2.StructuredSmithySerializer<AuthPasswordPolicy> {
  const AuthPasswordPolicySerializer() : super('AuthPasswordPolicy');

  @override
  Iterable<Type> get types => const [
        AuthPasswordPolicy,
        _$AuthPasswordPolicy,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthPasswordPolicy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthPasswordPolicyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'minLength':
          result.minLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'requiresLowercase':
          result.requiresLowercase = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'requiresNumbers':
          result.requiresNumbers = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'requiresSymbols':
          result.requiresSymbols = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'requiresUppercase':
          result.requiresUppercase = (serializers.deserialize(
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
    AuthPasswordPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthPasswordPolicy(
      :minLength,
      :requiresLowercase,
      :requiresNumbers,
      :requiresSymbols,
      :requiresUppercase
    ) = object;
    result$.addAll([
      'requiresLowercase',
      serializers.serialize(
        requiresLowercase,
        specifiedType: const FullType(bool),
      ),
      'requiresNumbers',
      serializers.serialize(
        requiresNumbers,
        specifiedType: const FullType(bool),
      ),
      'requiresSymbols',
      serializers.serialize(
        requiresSymbols,
        specifiedType: const FullType(bool),
      ),
      'requiresUppercase',
      serializers.serialize(
        requiresUppercase,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (minLength != null) {
      result$
        ..add('minLength')
        ..add(serializers.serialize(
          minLength,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
