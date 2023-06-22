// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.model.get_credentials_for_identity_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_credentials_for_identity_input.g.dart';

/// Input to the `GetCredentialsForIdentity` action.
abstract class GetCredentialsForIdentityInput
    with
        _i1.HttpInput<GetCredentialsForIdentityInput>,
        _i2.AWSEquatable<GetCredentialsForIdentityInput>
    implements
        Built<GetCredentialsForIdentityInput,
            GetCredentialsForIdentityInputBuilder> {
  /// Input to the `GetCredentialsForIdentity` action.
  factory GetCredentialsForIdentityInput({
    required String identityId,
    Map<String, String>? logins,
    String? customRoleArn,
  }) {
    return _$GetCredentialsForIdentityInput._(
      identityId: identityId,
      logins: logins == null ? null : _i3.BuiltMap(logins),
      customRoleArn: customRoleArn,
    );
  }

  /// Input to the `GetCredentialsForIdentity` action.
  factory GetCredentialsForIdentityInput.build(
          [void Function(GetCredentialsForIdentityInputBuilder) updates]) =
      _$GetCredentialsForIdentityInput;

  const GetCredentialsForIdentityInput._();

  factory GetCredentialsForIdentityInput.fromRequest(
    GetCredentialsForIdentityInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetCredentialsForIdentityInput>>
      serializers = [GetCredentialsForIdentityInputAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCredentialsForIdentityInputBuilder b) {}

  /// A unique identifier in the format REGION:GUID.
  String get identityId;

  /// A set of optional name-value pairs that map provider names to provider tokens. The name-value pair will follow the syntax "provider\_name": "provider\_user_identifier".
  ///
  /// Logins should not be specified when trying to get credentials for an unauthenticated identity.
  ///
  /// The Logins parameter is required when using identities associated with external identity providers such as Facebook. For examples of `Logins` maps, see the code examples in the [External Identity Providers](https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html) section of the Amazon Cognito Developer Guide.
  _i3.BuiltMap<String, String>? get logins;

  /// The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
  String? get customRoleArn;
  @override
  GetCredentialsForIdentityInput getPayload() => this;
  @override
  List<Object?> get props => [
        identityId,
        logins,
        customRoleArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCredentialsForIdentityInput')
      ..add(
        'identityId',
        identityId,
      )
      ..add(
        'logins',
        logins,
      )
      ..add(
        'customRoleArn',
        customRoleArn,
      );
    return helper.toString();
  }
}

class GetCredentialsForIdentityInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetCredentialsForIdentityInput> {
  const GetCredentialsForIdentityInputAwsJson11Serializer()
      : super('GetCredentialsForIdentityInput');

  @override
  Iterable<Type> get types => const [
        GetCredentialsForIdentityInput,
        _$GetCredentialsForIdentityInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetCredentialsForIdentityInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCredentialsForIdentityInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IdentityId':
          result.identityId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Logins':
          result.logins.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'CustomRoleArn':
          result.customRoleArn = (serializers.deserialize(
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
    GetCredentialsForIdentityInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetCredentialsForIdentityInput(:identityId, :logins, :customRoleArn) =
        object;
    result$.addAll([
      'IdentityId',
      serializers.serialize(
        identityId,
        specifiedType: const FullType(String),
      ),
    ]);
    if (logins != null) {
      result$
        ..add('Logins')
        ..add(serializers.serialize(
          logins,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (customRoleArn != null) {
      result$
        ..add('CustomRoleArn')
        ..add(serializers.serialize(
          customRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
