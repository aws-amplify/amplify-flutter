// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.device_secret_verifier_config_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'device_secret_verifier_config_type.g.dart';

/// The device verifier against which it is authenticated.
abstract class DeviceSecretVerifierConfigType
    with
        _i1.AWSEquatable<DeviceSecretVerifierConfigType>
    implements
        Built<DeviceSecretVerifierConfigType,
            DeviceSecretVerifierConfigTypeBuilder> {
  /// The device verifier against which it is authenticated.
  factory DeviceSecretVerifierConfigType({
    String? passwordVerifier,
    String? salt,
  }) {
    return _$DeviceSecretVerifierConfigType._(
      passwordVerifier: passwordVerifier,
      salt: salt,
    );
  }

  /// The device verifier against which it is authenticated.
  factory DeviceSecretVerifierConfigType.build(
          [void Function(DeviceSecretVerifierConfigTypeBuilder) updates]) =
      _$DeviceSecretVerifierConfigType;

  const DeviceSecretVerifierConfigType._();

  static const List<_i2.SmithySerializer> serializers = [
    DeviceSecretVerifierConfigTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeviceSecretVerifierConfigTypeBuilder b) {}

  /// The password verifier.
  String? get passwordVerifier;

  /// The [salt](https://en.wikipedia.org/wiki/Salt_(cryptography))
  String? get salt;
  @override
  List<Object?> get props => [
        passwordVerifier,
        salt,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeviceSecretVerifierConfigType');
    helper.add(
      'passwordVerifier',
      passwordVerifier,
    );
    helper.add(
      'salt',
      salt,
    );
    return helper.toString();
  }
}

class DeviceSecretVerifierConfigTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<DeviceSecretVerifierConfigType> {
  const DeviceSecretVerifierConfigTypeAwsJson11Serializer()
      : super('DeviceSecretVerifierConfigType');

  @override
  Iterable<Type> get types => const [
        DeviceSecretVerifierConfigType,
        _$DeviceSecretVerifierConfigType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeviceSecretVerifierConfigType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceSecretVerifierConfigTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'PasswordVerifier':
          if (value != null) {
            result.passwordVerifier = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Salt':
          if (value != null) {
            result.salt = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeviceSecretVerifierConfigType);
    final result = <Object?>[];
    if (payload.passwordVerifier != null) {
      result
        ..add('PasswordVerifier')
        ..add(serializers.serialize(
          payload.passwordVerifier!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.salt != null) {
      result
        ..add('Salt')
        ..add(serializers.serialize(
          payload.salt!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
