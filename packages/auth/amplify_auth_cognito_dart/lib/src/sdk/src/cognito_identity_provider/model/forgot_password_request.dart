// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.forgot_password_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'forgot_password_request.g.dart';

/// Represents the request to reset a user's password.
abstract class ForgotPasswordRequest
    with
        _i1.HttpInput<ForgotPasswordRequest>,
        _i2.AWSEquatable<ForgotPasswordRequest>
    implements Built<ForgotPasswordRequest, ForgotPasswordRequestBuilder> {
  /// Represents the request to reset a user's password.
  factory ForgotPasswordRequest({
    required String clientId,
    String? secretHash,
    _i3.UserContextDataType? userContextData,
    required String username,
    _i4.AnalyticsMetadataType? analyticsMetadata,
    Map<String, String>? clientMetadata,
  }) {
    return _$ForgotPasswordRequest._(
      clientId: clientId,
      secretHash: secretHash,
      userContextData: userContextData,
      username: username,
      analyticsMetadata: analyticsMetadata,
      clientMetadata:
          clientMetadata == null ? null : _i5.BuiltMap(clientMetadata),
    );
  }

  /// Represents the request to reset a user's password.
  factory ForgotPasswordRequest.build(
          [void Function(ForgotPasswordRequestBuilder) updates]) =
      _$ForgotPasswordRequest;

  const ForgotPasswordRequest._();

  factory ForgotPasswordRequest.fromRequest(
    ForgotPasswordRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ForgotPasswordRequest>> serializers = [
    ForgotPasswordRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ForgotPasswordRequestBuilder b) {}

  /// The ID of the client associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i3.UserContextDataType? get userContextData;

  /// The user name of the user for whom you want to enter a code to reset a forgotten password.
  String get username;

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `ForgotPassword` calls.
  _i4.AnalyticsMetadataType? get analyticsMetadata;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any functions that are assigned to the following triggers: _pre sign-up_, _custom message_, and _user migration_. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ForgotPassword request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
  ForgotPasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientId,
        secretHash,
        userContextData,
        username,
        analyticsMetadata,
        clientMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ForgotPasswordRequest')
      ..add(
        'clientId',
        '***SENSITIVE***',
      )
      ..add(
        'secretHash',
        '***SENSITIVE***',
      )
      ..add(
        'userContextData',
        userContextData,
      )
      ..add(
        'username',
        '***SENSITIVE***',
      )
      ..add(
        'analyticsMetadata',
        analyticsMetadata,
      )
      ..add(
        'clientMetadata',
        clientMetadata,
      );
    return helper.toString();
  }
}

class ForgotPasswordRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ForgotPasswordRequest> {
  const ForgotPasswordRequestAwsJson11Serializer()
      : super('ForgotPasswordRequest');

  @override
  Iterable<Type> get types => const [
        ForgotPasswordRequest,
        _$ForgotPasswordRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ForgotPasswordRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForgotPasswordRequestBuilder();
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
        case 'UserContextData':
          result.userContextData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.UserContextDataType),
          ) as _i3.UserContextDataType));
        case 'Username':
          result.username = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AnalyticsMetadata':
          result.analyticsMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AnalyticsMetadataType),
          ) as _i4.AnalyticsMetadataType));
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
    ForgotPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ForgotPasswordRequest(
      :clientId,
      :secretHash,
      :userContextData,
      :username,
      :analyticsMetadata,
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
    ]);
    if (secretHash != null) {
      result$
        ..add('SecretHash')
        ..add(serializers.serialize(
          secretHash,
          specifiedType: const FullType(String),
        ));
    }
    if (userContextData != null) {
      result$
        ..add('UserContextData')
        ..add(serializers.serialize(
          userContextData,
          specifiedType: const FullType(_i3.UserContextDataType),
        ));
    }
    if (analyticsMetadata != null) {
      result$
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          analyticsMetadata,
          specifiedType: const FullType(_i4.AnalyticsMetadataType),
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
