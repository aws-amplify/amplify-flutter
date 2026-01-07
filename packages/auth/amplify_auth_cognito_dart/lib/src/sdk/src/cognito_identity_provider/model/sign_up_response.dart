// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.sign_up_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sign_up_response.g.dart';

/// The response from the server for a registration request.
abstract class SignUpResponse
    with _i1.AWSEquatable<SignUpResponse>
    implements Built<SignUpResponse, SignUpResponseBuilder> {
  /// The response from the server for a registration request.
  factory SignUpResponse({
    bool? userConfirmed,
    CodeDeliveryDetailsType? codeDeliveryDetails,
    required String userSub,
    String? session,
  }) {
    userConfirmed ??= false;
    return _$SignUpResponse._(
      userConfirmed: userConfirmed,
      codeDeliveryDetails: codeDeliveryDetails,
      userSub: userSub,
      session: session,
    );
  }

  /// The response from the server for a registration request.
  factory SignUpResponse.build([void Function(SignUpResponseBuilder) updates]) =
      _$SignUpResponse;

  const SignUpResponse._();

  /// Constructs a [SignUpResponse] from a [payload] and [response].
  factory SignUpResponse.fromResponse(
    SignUpResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<SignUpResponse>> serializers = [
    SignUpResponseAwsJson11Serializer(),
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignUpResponseBuilder b) {
    b..userConfirmed = false;
  }

  /// Indicates whether the user was automatically confirmed. You can auto-confirm users with a [pre sign-up Lambda trigger](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html).
  bool get userConfirmed;

  /// In user pools that automatically verify and confirm new users, Amazon Cognito sends users a message with a code or link that confirms ownership of the phone number or email address that they entered. The `CodeDeliveryDetails` object is information about the delivery destination for that link or code.
  CodeDeliveryDetailsType? get codeDeliveryDetails;

  /// The unique identifier of the new user, for example `a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
  String get userSub;

  /// A session Id that you can pass to `ConfirmSignUp` when you want to immediately sign in your user with the `USER_AUTH` flow after they complete sign-up.
  String? get session;
  @override
  List<Object?> get props => [
    userConfirmed,
    codeDeliveryDetails,
    userSub,
    session,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignUpResponse')
      ..add('userConfirmed', userConfirmed)
      ..add('codeDeliveryDetails', codeDeliveryDetails)
      ..add('userSub', userSub)
      ..add('session', '***SENSITIVE***');
    return helper.toString();
  }
}

class SignUpResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SignUpResponse> {
  const SignUpResponseAwsJson11Serializer() : super('SignUpResponse');

  @override
  Iterable<Type> get types => const [SignUpResponse, _$SignUpResponse];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  SignUpResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserConfirmed':
          result.userConfirmed =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'CodeDeliveryDetails':
          result.codeDeliveryDetails.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(CodeDeliveryDetailsType),
                )
                as CodeDeliveryDetailsType),
          );
        case 'UserSub':
          result.userSub =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Session':
          result.session =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SignUpResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SignUpResponse(
      :userConfirmed,
      :codeDeliveryDetails,
      :userSub,
      :session,
    ) = object;
    result$.addAll([
      'UserConfirmed',
      serializers.serialize(userConfirmed, specifiedType: const FullType(bool)),
      'UserSub',
      serializers.serialize(userSub, specifiedType: const FullType(String)),
    ]);
    if (codeDeliveryDetails != null) {
      result$
        ..add('CodeDeliveryDetails')
        ..add(
          serializers.serialize(
            codeDeliveryDetails,
            specifiedType: const FullType(CodeDeliveryDetailsType),
          ),
        );
    }
    if (session != null) {
      result$
        ..add('Session')
        ..add(
          serializers.serialize(session, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
