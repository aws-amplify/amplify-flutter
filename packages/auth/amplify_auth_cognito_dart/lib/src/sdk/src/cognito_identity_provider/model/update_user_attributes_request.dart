// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.update_user_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_user_attributes_request.g.dart';

/// Represents the request to update user attributes.
abstract class UpdateUserAttributesRequest
    with
        _i1.HttpInput<UpdateUserAttributesRequest>,
        _i2.AWSEquatable<UpdateUserAttributesRequest>
    implements
        Built<UpdateUserAttributesRequest, UpdateUserAttributesRequestBuilder> {
  /// Represents the request to update user attributes.
  factory UpdateUserAttributesRequest({
    required List<_i3.AttributeType> userAttributes,
    required String accessToken,
    Map<String, String>? clientMetadata,
  }) {
    return _$UpdateUserAttributesRequest._(
      userAttributes: _i4.BuiltList(userAttributes),
      accessToken: accessToken,
      clientMetadata:
          clientMetadata == null ? null : _i4.BuiltMap(clientMetadata),
    );
  }

  /// Represents the request to update user attributes.
  factory UpdateUserAttributesRequest.build(
          [void Function(UpdateUserAttributesRequestBuilder) updates]) =
      _$UpdateUserAttributesRequest;

  const UpdateUserAttributesRequest._();

  factory UpdateUserAttributesRequest.fromRequest(
    UpdateUserAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateUserAttributesRequest>>
      serializers = [UpdateUserAttributesRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserAttributesRequestBuilder b) {}

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  ///
  /// If you have set an attribute to require verification before Amazon Cognito updates its value, this request doesn’t immediately update the value of that attribute. After your user receives and responds to a verification message to verify the new value, Amazon Cognito updates the attribute value. Your user can sign in and receive messages with the original attribute value until they verify the new value.
  _i4.BuiltList<_i3.AttributeType> get userAttributes;

  /// A valid access token that Amazon Cognito issued to the user whose user attributes you want to update.
  String get accessToken;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action initiates.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the _custom message_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your UpdateUserAttributes request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
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
  _i4.BuiltMap<String, String>? get clientMetadata;
  @override
  UpdateUserAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userAttributes,
        accessToken,
        clientMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserAttributesRequest')
      ..add(
        'userAttributes',
        userAttributes,
      )
      ..add(
        'accessToken',
        '***SENSITIVE***',
      )
      ..add(
        'clientMetadata',
        clientMetadata,
      );
    return helper.toString();
  }
}

class UpdateUserAttributesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UpdateUserAttributesRequest> {
  const UpdateUserAttributesRequestAwsJson11Serializer()
      : super('UpdateUserAttributesRequest');

  @override
  Iterable<Type> get types => const [
        UpdateUserAttributesRequest,
        _$UpdateUserAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UpdateUserAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserAttributes':
          result.userAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AttributeType)],
            ),
          ) as _i4.BuiltList<_i3.AttributeType>));
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientMetadata':
          result.clientMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateUserAttributesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateUserAttributesRequest(
      :userAttributes,
      :accessToken,
      :clientMetadata
    ) = object;
    result$.addAll([
      'UserAttributes',
      serializers.serialize(
        userAttributes,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.AttributeType)],
        ),
      ),
      'AccessToken',
      serializers.serialize(
        accessToken,
        specifiedType: const FullType(String),
      ),
    ]);
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          clientMetadata,
          specifiedType: const FullType(
            _i4.BuiltMap,
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
