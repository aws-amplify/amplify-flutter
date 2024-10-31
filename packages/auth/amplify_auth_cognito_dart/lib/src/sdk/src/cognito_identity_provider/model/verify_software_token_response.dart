// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'verify_software_token_response.g.dart';

abstract class VerifySoftwareTokenResponse
    with _i1.AWSEquatable<VerifySoftwareTokenResponse>
    implements
        Built<VerifySoftwareTokenResponse, VerifySoftwareTokenResponseBuilder> {
  factory VerifySoftwareTokenResponse({
    VerifySoftwareTokenResponseType? status,
    String? session,
  }) {
    return _$VerifySoftwareTokenResponse._(
      status: status,
      session: session,
    );
  }

  factory VerifySoftwareTokenResponse.build(
          [void Function(VerifySoftwareTokenResponseBuilder) updates]) =
      _$VerifySoftwareTokenResponse;

  const VerifySoftwareTokenResponse._();

  /// Constructs a [VerifySoftwareTokenResponse] from a [payload] and [response].
  factory VerifySoftwareTokenResponse.fromResponse(
    VerifySoftwareTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<VerifySoftwareTokenResponse>>
      serializers = [VerifySoftwareTokenResponseAwsJson11Serializer()];

  /// The status of the verify software token.
  VerifySoftwareTokenResponseType? get status;

  /// The session that should be passed both ways in challenge-response calls to the service.
  String? get session;
  @override
  List<Object?> get props => [
        status,
        session,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifySoftwareTokenResponse')
      ..add(
        'status',
        status,
      )
      ..add(
        'session',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class VerifySoftwareTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<VerifySoftwareTokenResponse> {
  const VerifySoftwareTokenResponseAwsJson11Serializer()
      : super('VerifySoftwareTokenResponse');

  @override
  Iterable<Type> get types => const [
        VerifySoftwareTokenResponse,
        _$VerifySoftwareTokenResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  VerifySoftwareTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifySoftwareTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifySoftwareTokenResponseType),
          ) as VerifySoftwareTokenResponseType);
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
    VerifySoftwareTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final VerifySoftwareTokenResponse(:status, :session) = object;
    if (status != null) {
      result$
        ..add('Status')
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(VerifySoftwareTokenResponseType),
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
