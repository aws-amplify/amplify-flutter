// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_sign_up_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_sign_up_response.g.dart';

/// Represents the response from the server for the registration confirmation.
abstract class ConfirmSignUpResponse
    with _i1.AWSEquatable<ConfirmSignUpResponse>
    implements
        Built<ConfirmSignUpResponse, ConfirmSignUpResponseBuilder>,
        _i2.EmptyPayload {
  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse() {
    return _$ConfirmSignUpResponse._();
  }

  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse.build(
          [void Function(ConfirmSignUpResponseBuilder) updates]) =
      _$ConfirmSignUpResponse;

  const ConfirmSignUpResponse._();

  /// Constructs a [ConfirmSignUpResponse] from a [payload] and [response].
  factory ConfirmSignUpResponse.fromResponse(
    ConfirmSignUpResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ConfirmSignUpResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmSignUpResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmSignUpResponse');
    return helper.toString();
  }
}

class ConfirmSignUpResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmSignUpResponse> {
  const ConfirmSignUpResponseAwsJson11Serializer()
      : super('ConfirmSignUpResponse');

  @override
  Iterable<Type> get types => const [
        ConfirmSignUpResponse,
        _$ConfirmSignUpResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfirmSignUpResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ConfirmSignUpResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
