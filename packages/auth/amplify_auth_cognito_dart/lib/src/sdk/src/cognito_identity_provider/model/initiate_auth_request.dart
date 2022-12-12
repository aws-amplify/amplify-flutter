// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.initiate_auth_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'initiate_auth_request.g.dart';

/// Initiates the authentication request.
abstract class InitiateAuthRequest
    with
        _i1.HttpInput<InitiateAuthRequest>,
        _i2.AWSEquatable<InitiateAuthRequest>
    implements Built<InitiateAuthRequest, InitiateAuthRequestBuilder> {
  /// Initiates the authentication request.
  factory InitiateAuthRequest({
    _i3.AnalyticsMetadataType? analyticsMetadata,
    required _i4.AuthFlowType authFlow,
    Map<String, String>? authParameters,
    required String clientId,
    Map<String, String>? clientMetadata,
    _i5.UserContextDataType? userContextData,
  }) {
    return _$InitiateAuthRequest._(
      analyticsMetadata: analyticsMetadata,
      authFlow: authFlow,
      authParameters:
          authParameters == null ? null : _i6.BuiltMap(authParameters),
      clientId: clientId,
      clientMetadata:
          clientMetadata == null ? null : _i6.BuiltMap(clientMetadata),
      userContextData: userContextData,
    );
  }

  /// Initiates the authentication request.
  factory InitiateAuthRequest.build(
          [void Function(InitiateAuthRequestBuilder) updates]) =
      _$InitiateAuthRequest;

  const InitiateAuthRequest._();

  factory InitiateAuthRequest.fromRequest(
    InitiateAuthRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    InitiateAuthRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InitiateAuthRequestBuilder b) {}

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `InitiateAuth` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// The authentication flow for this call to run. The API action will depend on this value. For example:
  ///
  /// *   `REFRESH\_TOKEN\_AUTH` takes in a valid refresh token and returns new tokens.
  ///
  /// *   `USER\_SRP\_AUTH` takes in `USERNAME` and `SRP_A` and returns the SRP variables to be used for next challenge execution.
  ///
  /// *   `USER\_PASSWORD\_AUTH` takes in `USERNAME` and `PASSWORD` and returns the next challenge or tokens.
  ///
  ///
  /// Valid values include:
  ///
  /// *   `USER\_SRP\_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.
  ///
  /// *   `REFRESH\_TOKEN\_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.
  ///
  /// *   `CUSTOM_AUTH`: Custom authentication flow.
  ///
  /// *   `USER\_PASSWORD\_AUTH`: Non-SRP authentication flow; user name and password are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if it doesn't find the user name in the user pool.
  ///
  ///
  /// `ADMIN\_NO\_SRP_AUTH` isn't a valid value.
  _i4.AuthFlowType get authFlow;

  /// The authentication parameters. These are inputs corresponding to the `AuthFlow` that you're invoking. The required values depend on the value of `AuthFlow`:
  ///
  /// *   For `USER\_SRP\_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   For `REFRESH\_TOKEN\_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`. To start the authentication flow with password verification, include `ChallengeName: SRP_A` and `SRP\_A: (The SRP\_A Value)`.
  _i6.BuiltMap<String, String>? get authParameters;

  /// The app client ID.
  String get clientId;

  /// A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the InitiateAuth API action, Amazon Cognito invokes the Lambda functions that are specified for various triggers. The ClientMetadata value is passed as input to the functions for only the following triggers:
  ///
  /// *   Pre signup
  ///
  /// *   Pre authentication
  ///
  /// *   User migration
  ///
  ///
  /// When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which the function receives as input. This payload contains a `validationData` attribute, which provides the data that you assigned to the ClientMetadata parameter in your InitiateAuth request. In your function code in Lambda, you can process the `validationData` value to enhance your workflow for your specific needs.
  ///
  /// When you use the InitiateAuth API action, Amazon Cognito also invokes the functions for the following triggers, but it doesn't provide the ClientMetadata value as input:
  ///
  /// *   Post authentication
  ///
  /// *   Custom message
  ///
  /// *   Pre token generation
  ///
  /// *   Create auth challenge
  ///
  /// *   Define auth challenge
  ///
  /// *   Verify auth challenge
  ///
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
  _i6.BuiltMap<String, String>? get clientMetadata;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i5.UserContextDataType? get userContextData;
  @override
  InitiateAuthRequest getPayload() => this;
  @override
  List<Object?> get props => [
        analyticsMetadata,
        authFlow,
        authParameters,
        clientId,
        clientMetadata,
        userContextData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InitiateAuthRequest');
    helper.add(
      'analyticsMetadata',
      analyticsMetadata,
    );
    helper.add(
      'authFlow',
      authFlow,
    );
    helper.add(
      'authParameters',
      '***SENSITIVE***',
    );
    helper.add(
      'clientId',
      '***SENSITIVE***',
    );
    helper.add(
      'clientMetadata',
      clientMetadata,
    );
    helper.add(
      'userContextData',
      userContextData,
    );
    return helper.toString();
  }
}

class InitiateAuthRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<InitiateAuthRequest> {
  const InitiateAuthRequestAwsJson11Serializer() : super('InitiateAuthRequest');

  @override
  Iterable<Type> get types => const [
        InitiateAuthRequest,
        _$InitiateAuthRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InitiateAuthRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateAuthRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AnalyticsMetadata':
          if (value != null) {
            result.analyticsMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalyticsMetadataType),
            ) as _i3.AnalyticsMetadataType));
          }
          break;
        case 'AuthFlow':
          result.authFlow = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.AuthFlowType),
          ) as _i4.AuthFlowType);
          break;
        case 'AuthParameters':
          if (value != null) {
            result.authParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.UserContextDataType),
            ) as _i5.UserContextDataType));
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
    final payload = (object as InitiateAuthRequest);
    final result = <Object?>[
      'AuthFlow',
      serializers.serialize(
        payload.authFlow,
        specifiedType: const FullType(_i4.AuthFlowType),
      ),
      'ClientId',
      serializers.serialize(
        payload.clientId,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          payload.analyticsMetadata!,
          specifiedType: const FullType(_i3.AnalyticsMetadataType),
        ));
    }
    if (payload.authParameters != null) {
      result
        ..add('AuthParameters')
        ..add(serializers.serialize(
          payload.authParameters!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          payload.clientMetadata!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(
          payload.userContextData!,
          specifiedType: const FullType(_i5.UserContextDataType),
        ));
    }
    return result;
  }
}
