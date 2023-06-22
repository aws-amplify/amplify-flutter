// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'verify_software_token_request.g.dart';

abstract class VerifySoftwareTokenRequest
    with
        _i1.HttpInput<VerifySoftwareTokenRequest>,
        _i2.AWSEquatable<VerifySoftwareTokenRequest>
    implements
        Built<VerifySoftwareTokenRequest, VerifySoftwareTokenRequestBuilder> {
  factory VerifySoftwareTokenRequest({
    String? accessToken,
    String? session,
    required String userCode,
    String? friendlyDeviceName,
  }) {
    return _$VerifySoftwareTokenRequest._(
      accessToken: accessToken,
      session: session,
      userCode: userCode,
      friendlyDeviceName: friendlyDeviceName,
    );
  }

  factory VerifySoftwareTokenRequest.build(
          [void Function(VerifySoftwareTokenRequestBuilder) updates]) =
      _$VerifySoftwareTokenRequest;

  const VerifySoftwareTokenRequest._();

  factory VerifySoftwareTokenRequest.fromRequest(
    VerifySoftwareTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<VerifySoftwareTokenRequest>>
      serializers = [VerifySoftwareTokenRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifySoftwareTokenRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user whose software token you want to verify.
  String? get accessToken;

  /// The session that should be passed both ways in challenge-response calls to the service.
  String? get session;

  /// The one- time password computed using the secret code returned by [AssociateSoftwareToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html).
  String get userCode;

  /// The friendly device name.
  String? get friendlyDeviceName;
  @override
  VerifySoftwareTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        session,
        userCode,
        friendlyDeviceName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifySoftwareTokenRequest')
      ..add(
        'accessToken',
        '***SENSITIVE***',
      )
      ..add(
        'session',
        session,
      )
      ..add(
        'userCode',
        userCode,
      )
      ..add(
        'friendlyDeviceName',
        friendlyDeviceName,
      );
    return helper.toString();
  }
}

class VerifySoftwareTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<VerifySoftwareTokenRequest> {
  const VerifySoftwareTokenRequestAwsJson11Serializer()
      : super('VerifySoftwareTokenRequest');

  @override
  Iterable<Type> get types => const [
        VerifySoftwareTokenRequest,
        _$VerifySoftwareTokenRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  VerifySoftwareTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifySoftwareTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Session':
          result.session = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserCode':
          result.userCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FriendlyDeviceName':
          result.friendlyDeviceName = (serializers.deserialize(
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
    VerifySoftwareTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final VerifySoftwareTokenRequest(
      :accessToken,
      :session,
      :userCode,
      :friendlyDeviceName
    ) = object;
    result$.addAll([
      'UserCode',
      serializers.serialize(
        userCode,
        specifiedType: const FullType(String),
      ),
    ]);
    if (accessToken != null) {
      result$
        ..add('AccessToken')
        ..add(serializers.serialize(
          accessToken,
          specifiedType: const FullType(String),
        ));
    }
    if (session != null) {
      result$
        ..add('Session')
        ..add(serializers.serialize(
          session,
          specifiedType: const FullType(String),
        ));
    }
    if (friendlyDeviceName != null) {
      result$
        ..add('FriendlyDeviceName')
        ..add(serializers.serialize(
          friendlyDeviceName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
