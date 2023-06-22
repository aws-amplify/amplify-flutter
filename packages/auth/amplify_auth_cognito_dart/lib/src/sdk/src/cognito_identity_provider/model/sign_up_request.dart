// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.sign_up_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'sign_up_request.g.dart';

/// Represents the request to register a user.
abstract class SignUpRequest
    with _i1.HttpInput<SignUpRequest>, _i2.AWSEquatable<SignUpRequest>
    implements Built<SignUpRequest, SignUpRequestBuilder> {
  /// Represents the request to register a user.
  factory SignUpRequest({
    required String clientId,
    String? secretHash,
    required String username,
    required String password,
    List<_i3.AttributeType>? userAttributes,
    List<_i3.AttributeType>? validationData,
    _i4.AnalyticsMetadataType? analyticsMetadata,
    _i5.UserContextDataType? userContextData,
    Map<String, String>? clientMetadata,
  }) {
    return _$SignUpRequest._(
      clientId: clientId,
      secretHash: secretHash,
      username: username,
      password: password,
      userAttributes:
          userAttributes == null ? null : _i6.BuiltList(userAttributes),
      validationData:
          validationData == null ? null : _i6.BuiltList(validationData),
      analyticsMetadata: analyticsMetadata,
      userContextData: userContextData,
      clientMetadata:
          clientMetadata == null ? null : _i6.BuiltMap(clientMetadata),
    );
  }

  /// Represents the request to register a user.
  factory SignUpRequest.build([void Function(SignUpRequestBuilder) updates]) =
      _$SignUpRequest;

  const SignUpRequest._();

  factory SignUpRequest.fromRequest(
    SignUpRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SignUpRequest>> serializers = [
    SignUpRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignUpRequestBuilder b) {}

  /// The ID of the client associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// The user name of the user you want to register.
  String get username;

  /// The password of the user you want to register.
  String get password;

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  _i6.BuiltList<_i3.AttributeType>? get userAttributes;

  /// The validation data in the request to register a user.
  _i6.BuiltList<_i3.AttributeType>? get validationData;

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `SignUp` calls.
  _i4.AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i5.UserContextDataType? get userContextData;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the following triggers: _pre sign-up_, _custom message_, and _post confirmation_. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your SignUp request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
  @override
  SignUpRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientId,
        secretHash,
        username,
        password,
        userAttributes,
        validationData,
        analyticsMetadata,
        userContextData,
        clientMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignUpRequest')
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
        'password',
        '***SENSITIVE***',
      )
      ..add(
        'userAttributes',
        userAttributes,
      )
      ..add(
        'validationData',
        validationData,
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

class SignUpRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SignUpRequest> {
  const SignUpRequestAwsJson11Serializer() : super('SignUpRequest');

  @override
  Iterable<Type> get types => const [
        SignUpRequest,
        _$SignUpRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SignUpRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpRequestBuilder();
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
        case 'Password':
          result.password = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserAttributes':
          result.userAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.AttributeType)],
            ),
          ) as _i6.BuiltList<_i3.AttributeType>));
        case 'ValidationData':
          result.validationData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.AttributeType)],
            ),
          ) as _i6.BuiltList<_i3.AttributeType>));
        case 'AnalyticsMetadata':
          result.analyticsMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AnalyticsMetadataType),
          ) as _i4.AnalyticsMetadataType));
        case 'UserContextData':
          result.userContextData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.UserContextDataType),
          ) as _i5.UserContextDataType));
        case 'ClientMetadata':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SignUpRequest(
      :clientId,
      :secretHash,
      :username,
      :password,
      :userAttributes,
      :validationData,
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
    if (userAttributes != null) {
      result$
        ..add('UserAttributes')
        ..add(serializers.serialize(
          userAttributes,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.AttributeType)],
          ),
        ));
    }
    if (validationData != null) {
      result$
        ..add('ValidationData')
        ..add(serializers.serialize(
          validationData,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.AttributeType)],
          ),
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
    if (userContextData != null) {
      result$
        ..add('UserContextData')
        ..add(serializers.serialize(
          userContextData,
          specifiedType: const FullType(_i5.UserContextDataType),
        ));
    }
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          clientMetadata,
          specifiedType: const FullType(
            _i6.BuiltMap,
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
