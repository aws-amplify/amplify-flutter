// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_forgot_password_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_forgot_password_response.g.dart';

/// The response from the server that results from a user's request to retrieve a forgotten password.
abstract class ConfirmForgotPasswordResponse
    with
        _i1.AWSEquatable<ConfirmForgotPasswordResponse>
    implements
        Built<ConfirmForgotPasswordResponse,
            ConfirmForgotPasswordResponseBuilder>,
        _i2.EmptyPayload {
  /// The response from the server that results from a user's request to retrieve a forgotten password.
  factory ConfirmForgotPasswordResponse() {
    return _$ConfirmForgotPasswordResponse._();
  }

  /// The response from the server that results from a user's request to retrieve a forgotten password.
  factory ConfirmForgotPasswordResponse.build(
          [void Function(ConfirmForgotPasswordResponseBuilder) updates]) =
      _$ConfirmForgotPasswordResponse;

  const ConfirmForgotPasswordResponse._();

  /// Constructs a [ConfirmForgotPasswordResponse] from a [payload] and [response].
  factory ConfirmForgotPasswordResponse.fromResponse(
    ConfirmForgotPasswordResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ConfirmForgotPasswordResponse>>
      serializers = [ConfirmForgotPasswordResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmForgotPasswordResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmForgotPasswordResponse');
    return helper.toString();
  }
}

class ConfirmForgotPasswordResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmForgotPasswordResponse> {
  const ConfirmForgotPasswordResponseAwsJson11Serializer()
      : super('ConfirmForgotPasswordResponse');

  @override
  Iterable<Type> get types => const [
        ConfirmForgotPasswordResponse,
        _$ConfirmForgotPasswordResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfirmForgotPasswordResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ConfirmForgotPasswordResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfirmForgotPasswordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
