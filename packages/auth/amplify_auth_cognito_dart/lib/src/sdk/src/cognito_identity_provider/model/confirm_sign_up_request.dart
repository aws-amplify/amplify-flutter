// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_sign_up_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'confirm_sign_up_request.g.dart';

/// Represents the request to confirm registration of a user.
abstract class ConfirmSignUpRequest
    with
        _i1.HttpInput<ConfirmSignUpRequest>,
        _i2.AWSEquatable<ConfirmSignUpRequest>
    implements Built<ConfirmSignUpRequest, ConfirmSignUpRequestBuilder> {
  /// Represents the request to confirm registration of a user.
  factory ConfirmSignUpRequest({
    required String clientId,
    String? secretHash,
    required String username,
    required String confirmationCode,
    bool? forceAliasCreation,
    AnalyticsMetadataType? analyticsMetadata,
    UserContextDataType? userContextData,
    Map<String, String>? clientMetadata,
    String? session,
  }) {
    forceAliasCreation ??= false;
    return _$ConfirmSignUpRequest._(
      clientId: clientId,
      secretHash: secretHash,
      username: username,
      confirmationCode: confirmationCode,
      forceAliasCreation: forceAliasCreation,
      analyticsMetadata: analyticsMetadata,
      userContextData: userContextData,
      clientMetadata: clientMetadata == null
          ? null
          : _i3.BuiltMap(clientMetadata),
      session: session,
    );
  }

  /// Represents the request to confirm registration of a user.
  factory ConfirmSignUpRequest.build([
    void Function(ConfirmSignUpRequestBuilder) updates,
  ]) = _$ConfirmSignUpRequest;

  const ConfirmSignUpRequest._();

  factory ConfirmSignUpRequest.fromRequest(
    ConfirmSignUpRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<ConfirmSignUpRequest>> serializers = [
    ConfirmSignUpRequestAwsJson11Serializer(),
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmSignUpRequestBuilder b) {
    b..forceAliasCreation = false;
  }

  /// The ID of the app client associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message. For more information about `SecretHash`, see [Computing secret hash values](https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).
  String? get secretHash;

  /// The name of the user that you want to query or modify. The value of this parameter is typically your user's username, but it can be any of their alias attributes. If `username` isn't an alias attribute in your user pool, this value must be the `sub` of a local user or the username of a user from a third-party IdP.
  String get username;

  /// The confirmation code that your user pool sent in response to the `SignUp` request.
  String get confirmationCode;

  /// When `true`, forces user confirmation despite any existing aliases. Defaults to `false`. A value of `true` migrates the alias from an existing user to the new user if an existing user already has the phone number or email address as an alias.
  ///
  /// Say, for example, that an existing user has an `email` attribute of `bob@example.com` and email is an alias in your user pool. If the new user also has an email of `bob@example.com` and your `ConfirmSignUp` response sets `ForceAliasCreation` to `true`, the new user can sign in with a username of `bob@example.com` and the existing user can no longer do so.
  ///
  /// If `false` and an attribute belongs to an existing alias, this request returns an **AliasExistsException** error.
  ///
  /// For more information about sign-in aliases, see [Customizing sign-in attributes](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases).
  bool get forceAliasCreation;

  /// Information that supports analytics outcomes with Amazon Pinpoint, including the user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, email address, or phone number.
  AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  ///
  /// For more information, see [Collecting data for threat protection in applications](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).
  UserContextDataType? get userContextData;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is assigned to the _post confirmation_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Using Lambda triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the `ClientMetadata` parameter, note that Amazon Cognito won't do the following:
  ///
  /// *   Store the `ClientMetadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the `ClientMetadata` parameter serves no purpose.
  ///
  /// *   Validate the `ClientMetadata` value.
  ///
  /// *   Encrypt the `ClientMetadata` value. Don't send sensitive information in this parameter.
  _i3.BuiltMap<String, String>? get clientMetadata;

  /// The optional session ID from a `SignUp` API request. You can sign in a user directly from the sign-up process with the `USER_AUTH` authentication flow.
  String? get session;
  @override
  ConfirmSignUpRequest getPayload() => this;

  @override
  List<Object?> get props => [
    clientId,
    secretHash,
    username,
    confirmationCode,
    forceAliasCreation,
    analyticsMetadata,
    userContextData,
    clientMetadata,
    session,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmSignUpRequest')
      ..add('clientId', '***SENSITIVE***')
      ..add('secretHash', '***SENSITIVE***')
      ..add('username', '***SENSITIVE***')
      ..add('confirmationCode', confirmationCode)
      ..add('forceAliasCreation', forceAliasCreation)
      ..add('analyticsMetadata', analyticsMetadata)
      ..add('userContextData', '***SENSITIVE***')
      ..add('clientMetadata', clientMetadata)
      ..add('session', '***SENSITIVE***');
    return helper.toString();
  }
}

class ConfirmSignUpRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ConfirmSignUpRequest> {
  const ConfirmSignUpRequestAwsJson11Serializer()
    : super('ConfirmSignUpRequest');

  @override
  Iterable<Type> get types => const [
    ConfirmSignUpRequest,
    _$ConfirmSignUpRequest,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ConfirmSignUpRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmSignUpRequestBuilder();
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
          result.clientId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'SecretHash':
          result.secretHash =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Username':
          result.username =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ConfirmationCode':
          result.confirmationCode =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ForceAliasCreation':
          result.forceAliasCreation =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'AnalyticsMetadata':
          result.analyticsMetadata.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(AnalyticsMetadataType),
                )
                as AnalyticsMetadataType),
          );
        case 'UserContextData':
          result.userContextData.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(UserContextDataType),
                )
                as UserContextDataType),
          );
        case 'ClientMetadata':
          result.clientMetadata.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
          );
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
    ConfirmSignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfirmSignUpRequest(
      :clientId,
      :secretHash,
      :username,
      :confirmationCode,
      :forceAliasCreation,
      :analyticsMetadata,
      :userContextData,
      :clientMetadata,
      :session,
    ) = object;
    result$.addAll([
      'ClientId',
      serializers.serialize(clientId, specifiedType: const FullType(String)),
      'Username',
      serializers.serialize(username, specifiedType: const FullType(String)),
      'ConfirmationCode',
      serializers.serialize(
        confirmationCode,
        specifiedType: const FullType(String),
      ),
      'ForceAliasCreation',
      serializers.serialize(
        forceAliasCreation,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (secretHash != null) {
      result$
        ..add('SecretHash')
        ..add(
          serializers.serialize(
            secretHash,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (analyticsMetadata != null) {
      result$
        ..add('AnalyticsMetadata')
        ..add(
          serializers.serialize(
            analyticsMetadata,
            specifiedType: const FullType(AnalyticsMetadataType),
          ),
        );
    }
    if (userContextData != null) {
      result$
        ..add('UserContextData')
        ..add(
          serializers.serialize(
            userContextData,
            specifiedType: const FullType(UserContextDataType),
          ),
        );
    }
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(
          serializers.serialize(
            clientMetadata,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
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
