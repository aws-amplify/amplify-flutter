// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_forgot_password_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'confirm_forgot_password_request.g.dart';

/// The request representing the confirmation for a password reset.
abstract class ConfirmForgotPasswordRequest
    with
        _i1.HttpInput<ConfirmForgotPasswordRequest>,
        _i2.AWSEquatable<ConfirmForgotPasswordRequest>
    implements
        Built<ConfirmForgotPasswordRequest,
            ConfirmForgotPasswordRequestBuilder> {
  /// The request representing the confirmation for a password reset.
  factory ConfirmForgotPasswordRequest({
    required String clientId,
    String? secretHash,
    required String username,
    required String confirmationCode,
    required String password,
    _i3.AnalyticsMetadataType? analyticsMetadata,
    _i4.UserContextDataType? userContextData,
    Map<String, String>? clientMetadata,
  }) {
    return _$ConfirmForgotPasswordRequest._(
      clientId: clientId,
      secretHash: secretHash,
      username: username,
      confirmationCode: confirmationCode,
      password: password,
      analyticsMetadata: analyticsMetadata,
      userContextData: userContextData,
      clientMetadata:
          clientMetadata == null ? null : _i5.BuiltMap(clientMetadata),
    );
  }

  /// The request representing the confirmation for a password reset.
  factory ConfirmForgotPasswordRequest.build(
          [void Function(ConfirmForgotPasswordRequestBuilder) updates]) =
      _$ConfirmForgotPasswordRequest;

  const ConfirmForgotPasswordRequest._();

  factory ConfirmForgotPasswordRequest.fromRequest(
    ConfirmForgotPasswordRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ConfirmForgotPasswordRequest>>
      serializers = [ConfirmForgotPasswordRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmForgotPasswordRequestBuilder b) {}

  /// The app client ID of the app associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// The user name of the user for whom you want to enter a code to retrieve a forgotten password.
  String get username;

  /// The confirmation code from your user's request to reset their password. For more information, see [ForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html).
  String get confirmationCode;

  /// The new password that your user wants to set.
  String get password;

  /// The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmForgotPassword` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i4.UserContextDataType? get userContextData;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is assigned to the _post confirmation_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Customizing user pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the following:
  ///
  /// *   Store the ClientMetadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the ClientMetadata parameter serves no purpose.
  ///
  /// *   Validate the ClientMetadata value.
  ///
  /// *   Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive information.
  _i5.BuiltMap<String, String>? get clientMetadata;
  @override
  ConfirmForgotPasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientId,
        secretHash,
        username,
        confirmationCode,
        password,
        analyticsMetadata,
        userContextData,
        clientMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmForgotPasswordRequest')
      ..add(
        'clientId',
        '***SENSITIVE***',
      )
      ..add(
        'secretHash',
        '***SENSITIVE***',
      )
      ..add(
        'username',
        '***SENSITIVE***',
      )
      ..add(
        'confirmationCode',
        confirmationCode,
      )
      ..add(
        'password',
        '***SENSITIVE***',
      )
      ..add(
        'analyticsMetadata',
        analyticsMetadata,
      )
      ..add(
        'userContextData',
        userContextData,
      )
      ..add(
        'clientMetadata',
        clientMetadata,
      );
    return helper.toString();
  }
}

class ConfirmForgotPasswordRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ConfirmForgotPasswordRequest> {
  const ConfirmForgotPasswordRequestAwsJson11Serializer()
      : super('ConfirmForgotPasswordRequest');

  @override
  Iterable<Type> get types => const [
        ConfirmForgotPasswordRequest,
        _$ConfirmForgotPasswordRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfirmForgotPasswordRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmForgotPasswordRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecretHash':
          result.secretHash = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Username':
          result.username = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfirmationCode':
          result.confirmationCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Password':
          result.password = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AnalyticsMetadata':
          result.analyticsMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AnalyticsMetadataType),
          ) as _i3.AnalyticsMetadataType));
        case 'UserContextData':
          result.userContextData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.UserContextDataType),
          ) as _i4.UserContextDataType));
        case 'ClientMetadata':
          result.clientMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfirmForgotPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfirmForgotPasswordRequest(
      :clientId,
      :secretHash,
      :username,
      :confirmationCode,
      :password,
      :analyticsMetadata,
      :userContextData,
      :clientMetadata
    ) = object;
    result$.addAll([
      'ClientId',
      serializers.serialize(
        clientId,
        specifiedType: const FullType(String),
      ),
      'Username',
      serializers.serialize(
        username,
        specifiedType: const FullType(String),
      ),
      'ConfirmationCode',
      serializers.serialize(
        confirmationCode,
        specifiedType: const FullType(String),
      ),
      'Password',
      serializers.serialize(
        password,
        specifiedType: const FullType(String),
      ),
    ]);
    if (secretHash != null) {
      result$
        ..add('SecretHash')
        ..add(serializers.serialize(
          secretHash,
          specifiedType: const FullType(String),
        ));
    }
    if (analyticsMetadata != null) {
      result$
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          analyticsMetadata,
          specifiedType: const FullType(_i3.AnalyticsMetadataType),
        ));
    }
    if (userContextData != null) {
      result$
        ..add('UserContextData')
        ..add(serializers.serialize(
          userContextData,
          specifiedType: const FullType(_i4.UserContextDataType),
        ));
    }
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          clientMetadata,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
