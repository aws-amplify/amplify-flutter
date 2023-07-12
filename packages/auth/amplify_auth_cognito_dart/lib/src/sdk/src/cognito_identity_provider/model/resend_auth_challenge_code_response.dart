// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.resend_auth_challenge_code_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resend_auth_challenge_code_response.g.dart';

abstract class ResendAuthChallengeCodeResponse
    with
        _i1.AWSEquatable<ResendAuthChallengeCodeResponse>
    implements
        Built<ResendAuthChallengeCodeResponse,
            ResendAuthChallengeCodeResponseBuilder> {
  factory ResendAuthChallengeCodeResponse({
    String? session,
    _i2.CodeDeliveryDetailsType? codeDeliveryDetails,
  }) {
    return _$ResendAuthChallengeCodeResponse._(
      session: session,
      codeDeliveryDetails: codeDeliveryDetails,
    );
  }

  factory ResendAuthChallengeCodeResponse.build(
          [void Function(ResendAuthChallengeCodeResponseBuilder) updates]) =
      _$ResendAuthChallengeCodeResponse;

  const ResendAuthChallengeCodeResponse._();

  /// Constructs a [ResendAuthChallengeCodeResponse] from a [payload] and [response].
  factory ResendAuthChallengeCodeResponse.fromResponse(
    ResendAuthChallengeCodeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ResendAuthChallengeCodeResponse>>
      serializers = [ResendAuthChallengeCodeResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResendAuthChallengeCodeResponseBuilder b) {}

  /// A new session token that you must submit with your OTP in a [RespondToAuthChallenge](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RespondToAuthChallenge.html) or [AdminRespondToAuthChallenge](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminRespondToAuthChallenge.html) request.
  String? get session;

  /// The delivery details for an email or SMS message that Amazon Cognito sent for authentication or verification.
  _i2.CodeDeliveryDetailsType? get codeDeliveryDetails;
  @override
  List<Object?> get props => [
        session,
        codeDeliveryDetails,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResendAuthChallengeCodeResponse')
          ..add(
            'session',
            session,
          )
          ..add(
            'codeDeliveryDetails',
            codeDeliveryDetails,
          );
    return helper.toString();
  }
}

class ResendAuthChallengeCodeResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResendAuthChallengeCodeResponse> {
  const ResendAuthChallengeCodeResponseAwsJson11Serializer()
      : super('ResendAuthChallengeCodeResponse');

  @override
  Iterable<Type> get types => const [
        ResendAuthChallengeCodeResponse,
        _$ResendAuthChallengeCodeResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResendAuthChallengeCodeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResendAuthChallengeCodeResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Session':
          result.session = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CodeDeliveryDetails':
          result.codeDeliveryDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
          ) as _i2.CodeDeliveryDetailsType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResendAuthChallengeCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResendAuthChallengeCodeResponse(:session, :codeDeliveryDetails) =
        object;
    if (session != null) {
      result$
        ..add('Session')
        ..add(serializers.serialize(
          session,
          specifiedType: const FullType(String),
        ));
    }
    if (codeDeliveryDetails != null) {
      result$
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(
          codeDeliveryDetails,
          specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
        ));
    }
    return result$;
  }
}
