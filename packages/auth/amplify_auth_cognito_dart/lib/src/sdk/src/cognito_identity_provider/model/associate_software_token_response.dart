// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.associate_software_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'associate_software_token_response.g.dart';

abstract class AssociateSoftwareTokenResponse
    with
        _i1.AWSEquatable<AssociateSoftwareTokenResponse>
    implements
        Built<AssociateSoftwareTokenResponse,
            AssociateSoftwareTokenResponseBuilder> {
  factory AssociateSoftwareTokenResponse({
    String? secretCode,
    String? session,
  }) {
    return _$AssociateSoftwareTokenResponse._(
      secretCode: secretCode,
      session: session,
    );
  }

  factory AssociateSoftwareTokenResponse.build(
          [void Function(AssociateSoftwareTokenResponseBuilder) updates]) =
      _$AssociateSoftwareTokenResponse;

  const AssociateSoftwareTokenResponse._();

  /// Constructs a [AssociateSoftwareTokenResponse] from a [payload] and [response].
  factory AssociateSoftwareTokenResponse.fromResponse(
    AssociateSoftwareTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateSoftwareTokenResponse>>
      serializers = [AssociateSoftwareTokenResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateSoftwareTokenResponseBuilder b) {}

  /// A unique generated shared secret code that is used in the TOTP algorithm to generate a one-time code.
  String? get secretCode;

  /// The session that should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.
  String? get session;
  @override
  List<Object?> get props => [
        secretCode,
        session,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateSoftwareTokenResponse')
      ..add(
        'secretCode',
        '***SENSITIVE***',
      )
      ..add(
        'session',
        session,
      );
    return helper.toString();
  }
}

class AssociateSoftwareTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AssociateSoftwareTokenResponse> {
  const AssociateSoftwareTokenResponseAwsJson11Serializer()
      : super('AssociateSoftwareTokenResponse');

  @override
  Iterable<Type> get types => const [
        AssociateSoftwareTokenResponse,
        _$AssociateSoftwareTokenResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AssociateSoftwareTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateSoftwareTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SecretCode':
          result.secretCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Session':
          result.session = (serializers.deserialize(
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
    AssociateSoftwareTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AssociateSoftwareTokenResponse(:secretCode, :session) = object;
    if (secretCode != null) {
      result$
        ..add('SecretCode')
        ..add(serializers.serialize(
          secretCode,
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
    return result$;
  }
}
