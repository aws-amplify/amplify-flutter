// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_sign_up_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
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
    _i3.AnalyticsMetadataType? analyticsMetadata,
    _i4.UserContextDataType? userContextData,
    Map<String, String>? clientMetadata,
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
      clientMetadata:
          clientMetadata == null ? null : _i5.BuiltMap(clientMetadata),
    );
  }

  /// Represents the request to confirm registration of a user.
  factory ConfirmSignUpRequest.build(
          [void Function(ConfirmSignUpRequestBuilder) updates]) =
      _$ConfirmSignUpRequest;

  const ConfirmSignUpRequest._();

  factory ConfirmSignUpRequest.fromRequest(
    ConfirmSignUpRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ConfirmSignUpRequest>> serializers = [
    ConfirmSignUpRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmSignUpRequestBuilder b) {
    b.forceAliasCreation = false;
  }

  /// The ID of the app client associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// The user name of the user whose registration you want to confirm.
  String get username;

  /// The confirmation code sent by a user's request to confirm registration.
  String get confirmationCode;

  /// Boolean to be specified to force user confirmation irrespective of existing alias. By default set to `False`. If this parameter is set to `True` and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to `False`, the API will throw an **AliasExistsException** error.
  bool get forceAliasCreation;

  /// The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmSignUp` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i4.UserContextDataType? get userContextData;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is assigned to the _post confirmation_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmSignUpRequest')
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
        'forceAliasCreation',
        forceAliasCreation,
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
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
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
        case 'ForceAliasCreation':
          result.forceAliasCreation = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
      'ForceAliasCreation',
      serializers.serialize(
        forceAliasCreation,
        specifiedType: const FullType(bool),
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
