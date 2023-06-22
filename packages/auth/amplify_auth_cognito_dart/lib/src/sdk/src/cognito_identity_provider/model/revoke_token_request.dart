// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.revoke_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'revoke_token_request.g.dart';

abstract class RevokeTokenRequest
    with _i1.HttpInput<RevokeTokenRequest>, _i2.AWSEquatable<RevokeTokenRequest>
    implements Built<RevokeTokenRequest, RevokeTokenRequestBuilder> {
  factory RevokeTokenRequest({
    required String token,
    required String clientId,
    String? clientSecret,
  }) {
    return _$RevokeTokenRequest._(
      token: token,
      clientId: clientId,
      clientSecret: clientSecret,
    );
  }

  factory RevokeTokenRequest.build(
          [void Function(RevokeTokenRequestBuilder) updates]) =
      _$RevokeTokenRequest;

  const RevokeTokenRequest._();

  factory RevokeTokenRequest.fromRequest(
    RevokeTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RevokeTokenRequest>> serializers = [
    RevokeTokenRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeTokenRequestBuilder b) {}

  /// The refresh token that you want to revoke.
  String get token;

  /// The client ID for the token that you want to revoke.
  String get clientId;

  /// The secret for the client ID. This is required only if the client ID has a secret.
  String? get clientSecret;
  @override
  RevokeTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [
        token,
        clientId,
        clientSecret,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeTokenRequest')
      ..add(
        'token',
        '***SENSITIVE***',
      )
      ..add(
        'clientId',
        '***SENSITIVE***',
      )
      ..add(
        'clientSecret',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class RevokeTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<RevokeTokenRequest> {
  const RevokeTokenRequestAwsJson11Serializer() : super('RevokeTokenRequest');

  @override
  Iterable<Type> get types => const [
        RevokeTokenRequest,
        _$RevokeTokenRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RevokeTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Token':
          result.token = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RevokeTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RevokeTokenRequest(:token, :clientId, :clientSecret) = object;
    result$.addAll([
      'Token',
      serializers.serialize(
        token,
        specifiedType: const FullType(String),
      ),
      'ClientId',
      serializers.serialize(
        clientId,
        specifiedType: const FullType(String),
      ),
    ]);
    if (clientSecret != null) {
      result$
        ..add('ClientSecret')
        ..add(serializers.serialize(
          clientSecret,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
