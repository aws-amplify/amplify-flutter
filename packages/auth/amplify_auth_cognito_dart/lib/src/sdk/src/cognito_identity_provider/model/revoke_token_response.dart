// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.revoke_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'revoke_token_response.g.dart';

abstract class RevokeTokenResponse
    with _i1.AWSEquatable<RevokeTokenResponse>
    implements
        Built<RevokeTokenResponse, RevokeTokenResponseBuilder>,
        _i2.EmptyPayload {
  factory RevokeTokenResponse() {
    return _$RevokeTokenResponse._();
  }

  factory RevokeTokenResponse.build(
          [void Function(RevokeTokenResponseBuilder) updates]) =
      _$RevokeTokenResponse;

  const RevokeTokenResponse._();

  /// Constructs a [RevokeTokenResponse] from a [payload] and [response].
  factory RevokeTokenResponse.fromResponse(
    RevokeTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RevokeTokenResponse>> serializers = [
    RevokeTokenResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeTokenResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeTokenResponse');
    return helper.toString();
  }
}

class RevokeTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RevokeTokenResponse> {
  const RevokeTokenResponseAwsJson11Serializer() : super('RevokeTokenResponse');

  @override
  Iterable<Type> get types => const [
        RevokeTokenResponse,
        _$RevokeTokenResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RevokeTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return RevokeTokenResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RevokeTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
